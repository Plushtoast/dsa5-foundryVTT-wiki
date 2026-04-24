#!/usr/bin/env ruby

require "json"
require "net/http"
require "pathname"
require "set"
require "uri"
require "yaml"

ROOT = Pathname.new(__dir__).join("..").expand_path
SITE_DIR = ROOT.join("_site")
DOCS_DIR = ROOT.join("docs")
CONFIG_PATH = ROOT.join("_config.yml")
NAVIGATION_PATH = DOCS_DIR.join("_data", "navigation.json")
CSS_PATH = DOCS_DIR.join("assets", "stylesheets", "extra.css")
HOME_HTML_PATH = SITE_DIR.join("index.html")
HERO_ASSET_PATH = SITE_DIR.join("assets", "images", "hero-banner.webp")
LOCAL_ASSET_EXTENSIONS = %w[.png .jpg .jpeg .gif .webp .svg .css .js].freeze
HREF_RE = /(?:href|src)="([^"]+)"/
MAX_WARNING_OUTPUT = 40

def normalize_page_url(raw_url)
  return "/" if raw_url.nil? || raw_url.empty? || raw_url == "/"

  path = raw_url.split(/[?#]/, 2).first.to_s
  return "/" if path.empty? || path == "/"

  normalized = path.start_with?("/") ? path : "/#{path}"
  normalized = normalized.chomp("/")
  normalized.empty? ? "/" : normalized
end

def html_pages
  Dir.glob(SITE_DIR.join("**", "*.html")).sort.map { |path| Pathname.new(path) }
end

def page_url_for(path)
  relative = path.relative_path_from(SITE_DIR).to_s.tr("\\", "/")
  return "/" if relative == "index.html"
  if relative.end_with?("/index.html")
    return normalize_page_url(relative.delete_suffix("/index.html"))
  end

  normalize_page_url(relative.delete_suffix(".html"))
end

def page_urls
  html_pages.map { |path| page_url_for(path) }.to_set
end

def resolve_relative_path(current_page_url, target)
  clean_target = target.split(/[?#]/, 2).first.to_s
  return "/" if clean_target.empty?
  return clean_target if clean_target.start_with?("/")

  current_dir = current_page_url == "/" ? "/" : "#{current_page_url}/"
  joined = Pathname.new(current_dir).join(clean_target).cleanpath.to_s.tr("\\", "/")
  joined.start_with?("/") ? joined : "/#{joined}"
end

def local_target_path(baseurl, current_page_url, link)
  clean_link = link.split(/[?#]/, 2).first.to_s
  return nil if clean_link.empty?
  return nil if clean_link.start_with?("http://", "https://", "mailto:", "tel:", "javascript:", "data:", "#")
  clean_link = URI::DEFAULT_PARSER.unescape(clean_link)

  if !baseurl.empty? && clean_link.start_with?(baseurl)
    clean_link = clean_link.delete_prefix(baseurl)
    clean_link = "/" if clean_link.empty?
  end

  resolved = resolve_relative_path(current_page_url, clean_link)
  return nil unless resolved.start_with?("/")

  resolved
end

def site_path_exists?(target_path)
  candidate = target_path.split(/[?#]/, 2).first.to_s
  return SITE_DIR.join("index.html").exist? if candidate == "/"

  ext = File.extname(candidate)
  if ext.empty?
    return SITE_DIR.join(candidate.delete_prefix("/"), "index.html").exist?
  end

  SITE_DIR.join(candidate.delete_prefix("/")).exist?
end

def navigation_urls
  navigation = JSON.parse(NAVIGATION_PATH.read)
  urls = Set.new(["/", "/automation-status"])
  navigation.each_value do |groups|
    groups.each do |group|
      group.fetch("items", []).each do |item|
        urls << normalize_page_url(item.fetch("url"))
      end
    end
  end
  urls
end

def validate_internal_links(baseurl)
  warnings = Set.new

  html_pages.each do |path|
    current_page_url = page_url_for(path)
    content = path.read
    content.scan(HREF_RE).flatten.each do |link|
      target_path = local_target_path(baseurl, current_page_url, link)
      next if target_path.nil?
      next if site_path_exists?(target_path)

      warnings << "Broken local reference in #{path.relative_path_from(ROOT)} (#{current_page_url}): #{link}"
    end
  end

  warnings.to_a
end

def validate_navigation_completeness
  expected = page_urls - Set.new(["/"])
  reachable = navigation_urls
  missing = expected.reject { |url| reachable.include?(url) }
  missing.map { |url| "Generated page is not reachable from navigation or top-level entry points: #{url}" }
end

def validate_hero_presentation
  issues = []

  issues << "Missing hero background asset: #{HERO_ASSET_PATH.relative_path_from(ROOT)}" unless HERO_ASSET_PATH.exist?

  css = CSS_PATH.read
  issues << "Hero CSS no longer references the local hero banner asset." unless css.include?("hero-banner.webp")
  issues << "Hero CSS no longer applies a gradient overlay." unless css.include?("linear-gradient(135deg")

  home_html = HOME_HTML_PATH.read
  issues << "Homepage is missing the hero section." unless home_html.include?("<section class=\"hero\">")
  issues << "Homepage is missing hero copy text." unless home_html.include?("hero-copy")
  issues << "Homepage is missing documentation call-to-action links." unless home_html.include?("English documentation") && home_html.include?("Deutsche Dokumentation")

  issues
end

def validate_local_images(baseurl)
  warnings = Set.new

  html_pages.each do |path|
    content = path.read
    content.scan(/<img[^>]+src="([^"]+)"/).flatten.each do |src|
      target_path = local_target_path(baseurl, page_url_for(path), src)
      next if target_path.nil?
      next unless LOCAL_ASSET_EXTENSIONS.include?(File.extname(target_path).downcase)
      next if site_path_exists?(target_path)

      warnings << "Missing image asset in #{path.relative_path_from(ROOT)}: #{src}"
    end
  end

  warnings.to_a
end

def validate_public_url(config)
  baseurl = config.fetch("baseurl", "").to_s
  url = config.fetch("url", "").to_s
  public_url = "#{url}#{baseurl}/"
  uri = URI(public_url)
  response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == "https", open_timeout: 10, read_timeout: 10) do |http|
    request = Net::HTTP::Get.new(uri)
    http.request(request)
  end

  unless response.is_a?(Net::HTTPSuccess)
    return ["Public Pages URL check failed for #{public_url}: HTTP #{response.code}"]
  end

  body = response.body.to_s
  issues = []
  issues << "Public Pages URL check failed for #{public_url}: homepage title text not found" unless body.include?("DSA5 Foundry VTT Wiki")
  issues
rescue StandardError => error
  ["Public Pages URL check failed for #{public_url}: #{error.class}: #{error.message}"]
end

def load_site_config
  @load_site_config ||= YAML.load_file(CONFIG_PATH)
end

def main
  check_public_url = ARGV.include?("--check-public-url")

  unless SITE_DIR.directory?
    warn "Missing built site directory: #{SITE_DIR}"
    exit 1
  end

  unless NAVIGATION_PATH.exist?
    warn "Missing generated navigation data: #{NAVIGATION_PATH}"
    exit 1
  end

  config = load_site_config
  baseurl = config.fetch("baseurl", "").to_s
  issues = []
  warnings = []
  warnings.concat(validate_internal_links(baseurl))
  issues.concat(validate_navigation_completeness)
  issues.concat(validate_hero_presentation)
  warnings.concat(validate_local_images(baseurl))
  issues.concat(validate_public_url(config)) if check_public_url

  sorted_warnings = warnings.sort
  sorted_warnings.first(MAX_WARNING_OUTPUT).each { |warning| warn "Warning: #{warning}" }
  if sorted_warnings.length > MAX_WARNING_OUTPUT
    warn "Warning: #{sorted_warnings.length - MAX_WARNING_OUTPUT} additional warnings omitted."
  end

  if issues.empty?
    if sorted_warnings.empty?
      puts check_public_url ? "Site validation passed, including the public Pages URL check." : "Site validation passed."
    else
      puts check_public_url ? "Site validation passed with #{sorted_warnings.length} warnings, including the public Pages URL check." : "Site validation passed with #{sorted_warnings.length} warnings."
    end
    return
  end

  warn "Site validation failed:"
  issues.each { |issue| warn "- #{issue}" }
  exit 1
end

main