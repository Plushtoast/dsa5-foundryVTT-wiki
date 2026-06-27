#!/usr/bin/env ruby

require "cgi"
require "json"
require "pathname"
require "zlib"

module AutomationStatusGenerator
  ROOT = Pathname.new(__dir__).join("..").expand_path
  LAZY_DIR = ROOT.join("..", "..", "foundry14", "lazy").expand_path
  INDEX_PATH = LAZY_DIR.join("module_contents_index.json")
  CONTENTS_PATH = LAZY_DIR.join("module_contents.json.gz")
  EXPANSIONS_DE_PATH = LAZY_DIR.join("expansions_de.json")
  EXPANSIONS_EN_PATH = LAZY_DIR.join("expansions_en.json")

  module_function

  def load_json(path)
    JSON.parse(path.read)
  end

  def load_gzip_json(path)
    Zlib::GzipReader.open(path.to_s, &:read).then { |payload| JSON.parse(payload) }
  end

  def flatten_expansion_items(payload)
    payload.fetch("categories", []).each_with_object({}) do |category, items|
      category.fetch("items", []).each do |item|
        item_id = item["id"]
        items[item_id] = item if item_id
      end
    end
  end

  def extract_categories(module_details)
    return [] unless module_details.is_a?(Hash)

    categories = module_details.fetch("categories", nil)
    return categories if categories.is_a?(Array)

    []
  end

  def category_label(category)
    label = category.fetch("label", nil)
    return label.fetch("en", nil) || label.fetch("de", nil) if label.is_a?(Hash)
    return label if label.is_a?(String) && !label.empty?

    category.fetch("rawCategory", nil) || category.fetch("id", "unknown")
  end

  def tracked_categories(module_details)
    detail_categories(module_details).map do |category|
      stats = category.fetch("stats", nil)
      tracked = stats.is_a?(Hash) ? stats.fetch("tracked", 0).to_i : 0
      automated = stats.is_a?(Hash) ? stats.fetch("automated", 0).to_i : 0
      percentage = tracked.zero? ? nil : ((automated.to_f / tracked) * 100).round(1)
      entries = category.fetch("entries", [])

      {
        id: category.fetch("id", nil),
        label: category_label(category),
        automation_tracked: !!category.fetch("automationTracked", false),
        automated: automated,
        tracked: tracked,
        percentage: percentage,
        entries: entries.is_a?(Array) ? entries : []
      }
    end
  end

  def detail_categories(module_details)
    extract_categories(module_details).filter do |category|
      entries = category.fetch("entries", [])
      stats = category.fetch("stats", nil)
      tracked = stats.is_a?(Hash) ? stats.fetch("tracked", 0).to_i : 0
      entries.is_a?(Array) && (!entries.empty? || tracked.positive?)
    end
  end

  def automation_state(entry, automation_tracked:)
    return nil unless automation_tracked

    case entry.fetch("automation", nil)
    when true then :automated
    when false then :manual
    else nil
    end
  end

  def automation_label(state)
    case state
    when :automated then "Automated"
    when :manual then "Not Automated"
    else "Not Tracked"
    end
  end

  def entry_name(entry, key)
    value = entry.fetch(key, nil)
    return value unless value.nil? || value.to_s.strip.empty?

    fallback_key = key == "nameDe" ? "nameEn" : "nameDe"
    fallback = entry.fetch(fallback_key, nil)
    return fallback unless fallback.nil? || fallback.to_s.strip.empty?

    "-"
  end

  def category_coverage_label(category)
    tracked = category[:tracked].to_i
    return "Coverage: not tracked separately" if tracked.zero?

    percentage = category[:percentage] || 0.0
    "Coverage: #{category[:automated]}/#{tracked} (#{format('%.1f%%', percentage)})"
  end

  def html_escape(value)
    CGI.escapeHTML(value.to_s)
  end

  def module_anchor(row)
    "module-#{row[:module_id].to_s.gsub(/[^a-zA-Z0-9_-]+/, '-').downcase}"
  end

  def module_search_query(row)
    [row[:module_id], row[:label_de], row[:label_en]].compact.join(" ").downcase
  end

  def entry_search_query(entry)
    [entry_name(entry, "nameDe"), entry_name(entry, "nameEn"), entry.fetch("documentGroup", nil)].compact.join(" ").downcase
  end

  def progress_tier(percentage)
    value = percentage.to_f
    return "none" if value <= 0
    return "red" if value < 30
    return "orange" if value < 60
    return "blue" if value < 85

    "green"
  end

  def render_progress_bar(row)
    tracked = row[:tracked].to_i
    if tracked.zero?
      return <<~HTML
        <div class="automation-progress automation-progress--green" aria-label="No automation-tracked categories for this module, treated as fully complete">
          <div class="automation-progress__bar"><span class="automation-progress__fill automation-progress__fill--green" style="width: 100%"></span></div>
          <span class="automation-progress__label">Nothing to automate (100%)</span>
        </div>
      HTML
    end

    percentage_value = row[:percentage_value].to_f
    tier = progress_tier(percentage_value)

    <<~HTML
      <div class="automation-progress automation-progress--#{tier}" aria-label="Automation progress #{row[:automated]} of #{tracked}, #{format('%.1f', percentage_value)} percent">
        <div class="automation-progress__bar"><span class="automation-progress__fill automation-progress__fill--#{tier}" style="width: #{format('%.1f', percentage_value)}%"></span></div>
        <span class="automation-progress__label">#{row[:automated]}/#{tracked} (#{row[:percentage]})</span>
      </div>
    HTML
  end

  def render_toc_entry(row)
    links = []
    links << %(<a href="#{html_escape(row[:de_link])}">DE</a>) if row[:de_link]
    links << %(<a href="#{html_escape(row[:en_link])}">EN</a>) if row[:en_link]
    query = html_escape(module_search_query(row))

    <<~HTML
      <li data-automation-toc-item data-automation-query="#{query}">
        <a href="##{module_anchor(row)}" data-automation-module-highlight>#{html_escape(row[:label_de])}</a>
        <span data-automation-module-highlight>#{html_escape(row[:label_en])}</span>
        #{render_progress_bar(row).strip}
        <span>#{links.empty? ? '-' : links.join(' / ')}</span>
      </li>
    HTML
  end

  def entry_anchor_id(module_anchor, entry, index)
    slug = [entry_name(entry, "nameDe"), entry_name(entry, "nameEn"), index.to_s].join("-")
    slug = slug.gsub(/[^a-zA-Z0-9_-]+/, "-").downcase
    slug = slug.gsub(/^-+|-+$/, "")
    slug = "entry" if slug.empty?

    "entry-#{module_anchor}-#{slug}"[0, 96]
  end

  def element_index_query(entry, row, category)
    [
      entry_name(entry, "nameDe"),
      entry_name(entry, "nameEn"),
      entry.fetch("documentGroup", nil),
      row[:label_de],
      row[:label_en],
      row[:module_id],
      category[:label],
      module_search_query(row)
    ].compact.join(" ").downcase
  end

  def render_element_index_row(entry, row, category, entry_anchor)
    state = automation_state(entry, automation_tracked: category[:automation_tracked])
    state_value = state || :untracked
    query = html_escape(element_index_query(entry, row, category))
    module_anchor_id = module_anchor(row)

    <<~HTML
      <tr data-automation-element-result data-automation-element-query="#{query}" data-automation-state="#{state_value}" data-automation-module-anchor="#{module_anchor_id}" data-automation-entry-id="#{entry_anchor}" hidden>
        <td data-automation-element-highlight>#{html_escape(entry_name(entry, "nameDe"))}</td>
        <td data-automation-element-highlight>#{html_escape(entry_name(entry, "nameEn"))}</td>
        <td data-automation-element-highlight>#{html_escape(row[:label_de])} / #{html_escape(row[:label_en])}</td>
        <td data-automation-element-highlight>#{html_escape(category[:label])}</td>
        <td><span class="automation-status-pill automation-status-pill--#{state_value}">#{automation_label(state)}</span></td>
        <td><a href="##{entry_anchor}" data-automation-element-jump>Open</a></td>
      </tr>
    HTML
  end

  def sorted_detail_categories(row)
    row[:detail_categories].sort_by { |category| [-category[:tracked], category[:label].to_s] }
  end

  def each_module_entry(row)
    anchor = module_anchor(row)
    entry_index = 0

    sorted_detail_categories(row).each do |category|
      category[:entries].each do |entry|
        entry_anchor = entry_anchor_id(anchor, entry, entry_index)
        yield entry, row, category, entry_anchor
        entry_index += 1
      end
    end
  end

  def render_element_index_rows(rows)
    rows.map do |row|
      index_rows = []
      each_module_entry(row) do |entry, module_row, category, entry_anchor|
        index_rows << render_element_index_row(entry, module_row, category, entry_anchor)
      end
      index_rows.join
    end.join
  end

  def render_element_search_section(rows)
    <<~HTML
      <section class="automation-element-search">
        <h2>Find an Element</h2>
        <p>Search across all modules to quickly find where an element exists and whether it is automated, manual, or not tracked.</p>
        <div class="automation-search-row automation-search-row--elements">
          <label class="automation-search-label" for="automation-element-search">Find element across modules</label>
          <input id="automation-element-search" class="automation-search-input" type="search" placeholder="Search by DE, EN, document, module, or category" autocomplete="off" data-automation-element-search>
        </div>
        <p class="automation-empty-state" hidden data-automation-element-empty>No elements match this search.</p>
        <p class="automation-element-truncated" hidden data-automation-element-truncated-notice>Showing the first 200 matches. Refine your search to narrow the results.</p>
        <div class="automation-element-results" hidden data-automation-element-results>
          <div class="automation-table-wrap">
            <table class="automation-element-index-table">
              <thead>
                <tr>
                  <th scope="col">DE</th>
                  <th scope="col">EN</th>
                  <th scope="col">Module</th>
                  <th scope="col">Category</th>
                  <th scope="col">Status</th>
                  <th scope="col">Jump</th>
                </tr>
              </thead>
              <tbody>
      #{render_element_index_rows(rows)}      </tbody>
            </table>
          </div>
        </div>
      </section>
    HTML
  end

  def render_entry_row(entry, automation_tracked:, entry_anchor:, module_anchor_id:)
    state = automation_state(entry, automation_tracked: automation_tracked)
    status_cell = if state
      %(<span class="automation-status-pill automation-status-pill--#{state}">#{automation_label(state)}</span>)
    else
      ""
    end
    state_value = state || :untracked
    query = html_escape(entry_search_query(entry))

    <<~HTML
      <tr id="#{entry_anchor}" data-automation-entry data-automation-state="#{state_value}" data-automation-entry-query="#{query}" data-automation-module-anchor="#{module_anchor_id}" data-automation-entry-id="#{entry_anchor}">
        <td data-automation-entry-highlight>#{html_escape(entry_name(entry, "nameDe"))}</td>
        <td data-automation-entry-highlight>#{html_escape(entry_name(entry, "nameEn"))}</td>
        <td data-automation-entry-highlight>#{html_escape(entry.fetch("documentGroup", "-"))}</td>
        <td>#{status_cell}</td>
      </tr>
    HTML
  end

  def render_category_detail_lines(category, module_anchor_id:, entry_index_start:)
    entry_index = entry_index_start
    rows = category[:entries].map do |entry|
      entry_anchor = entry_anchor_id(module_anchor_id, entry, entry_index)
      entry_index += 1
      render_entry_row(entry, automation_tracked: category[:automation_tracked], entry_anchor: entry_anchor, module_anchor_id: module_anchor_id)
    end.join

    html = <<~HTML
      <section class="automation-category" data-automation-category>
        <div class="automation-category__header">
          <h4>#{html_escape(category[:label])}</h4>
          <p>#{html_escape(category_coverage_label(category))}</p>
        </div>
        <div class="automation-table-wrap">
          <table class="automation-entry-table">
            <thead>
              <tr>
                <th scope="col">DE</th>
                <th scope="col">EN</th>
                <th scope="col">Document</th>
                <th scope="col">Status</th>
              </tr>
            </thead>
            <tbody>
#{rows}            </tbody>
          </table>
        </div>
      </section>
    HTML

    [entry_index, html]
  end

  def render_module_detail_lines(row)
    categories = row.fetch(:detail_categories, [])
    return [] if categories.empty?

    links = []
    links << %(<a href="#{html_escape(row[:de_link])}">DE</a>) if row[:de_link]
    links << %(<a href="#{html_escape(row[:en_link])}">EN</a>) if row[:en_link]
    anchor = module_anchor(row)

    lines = []
    lines << "<div id=\"#{anchor}\" class=\"automation-module-anchor\" aria-hidden=\"true\"></div>"
    lines << "<details class=\"automation-module\" data-automation-module data-automation-anchor-id=\"#{anchor}\" data-automation-query=\"#{html_escape(module_search_query(row))}\">"
    lines << "<summary><span class=\"automation-module__title\"><strong data-automation-module-highlight>#{html_escape(row[:label_de])}</strong> <span data-automation-module-highlight>#{html_escape(row[:label_en])}</span></span><span class=\"automation-module__meta\">#{render_progress_bar(row).strip}</span></summary>"
    lines << ""
    lines << "<div class=\"automation-module__body\">"
    lines << "<p class=\"automation-module__links\"><strong>Module links:</strong> #{links.empty? ? '-' : links.join(' / ')}</p>"
    lines << ""

    entry_index = 0
    sorted_detail_categories(row).each do |category|
      entry_index, category_html = render_category_detail_lines(category, module_anchor_id: anchor, entry_index_start: entry_index)
      lines << category_html
    end

    lines << "</div>"
    lines << "</details>"
    lines << ""
    lines
  end

  def build_rows
    index_data = load_json(INDEX_PATH).fetch("modules", {})
    details_data = load_gzip_json(CONTENTS_PATH).fetch("modules", {})
    expansions_de = flatten_expansion_items(load_json(EXPANSIONS_DE_PATH))
    expansions_en = flatten_expansion_items(load_json(EXPANSIONS_EN_PATH))

    index_data.sort_by { |_module_id, info| -info.fetch("percentage", 0).to_f }.map do |module_id, info|
      de_item = expansions_de.fetch(module_id, {})
      en_item = expansions_en.fetch(module_id, {})
      details = details_data.is_a?(Hash) ? details_data.fetch(module_id, {}) : {}

      {
        module_id: module_id,
        label_de: de_item.fetch("label", module_id),
        label_en: en_item.fetch("label", module_id),
        tracked: info.fetch("tracked", 0).to_i,
        automated: info.fetch("automated", 0).to_i,
        percentage_value: info.fetch("percentage", 0).to_f,
        percentage: format("%.1f%%", info.fetch("percentage", 0).to_f),
        de_link: de_item.fetch("href", nil),
        en_link: en_item.fetch("href", nil),
        detail_categories: tracked_categories(details)
      }
    end
  end

  def render_markdown(rows)
    lines = []
    lines << "---"
    lines << "layout: default"
    lines << "title: Automation Status"
    lines << "nav_key: automation"
    lines << "---"
    lines << ""
    lines << "# Automation Status"
    lines << ""
    lines << ""
    lines << "This page summarizes how much content is automated across official DSA5 Foundry modules. The page is generated from the localized expansion metadata and the Foundry module content exports."
    lines << ""
    lines << render_element_search_section(rows)
    lines << ""
    lines << "> Use the module list in the sidebar to jump directly to a module. The sidebar search filters the sidebar, the table of contents, and the module sections together."
    lines << ""
    lines << "## Meaning of Automated"
    lines << ""
    lines << "Automation coverage indicates how many tracked elements in a module currently have automated support in the exported Foundry content data. Module totals on this page are based only on categories marked as automation-tracked in the Foundry export, not on all module content."
    lines << ""
    lines << "## Table of Contents"
    lines << ""
    lines << "<div class=\"automation-search-row automation-search-row--modules\">"
    lines << "  <label class=\"automation-search-label\" for=\"automation-module-search\">Find module in table of contents</label>"
    lines << "  <input id=\"automation-module-search\" class=\"automation-search-input\" type=\"search\" placeholder=\"Search DE, EN, or module id\" autocomplete=\"off\" data-automation-module-search>"
    lines << "</div>"
    lines << ""
    lines << "<p class=\"automation-empty-state\" hidden data-automation-module-empty>No modules match this filter.</p>"
    lines << ""
    lines << "<ol class=\"automation-toc\">"
    rows.each do |row|
      lines << render_toc_entry(row)
    end
    lines << "</ol>"

    lines << ""
    lines << "## Per-Module Details"
    lines << ""
    lines << "The sections below list every exported element for every module. Automation badges are shown only for categories that the Foundry export marks as automation-tracked."
    lines << ""
    lines << "<div class=\"automation-search-row automation-search-row--entries\">"
    lines << "  <label class=\"automation-search-label\" for=\"automation-entry-search\">Filter elements in module details</label>"
    lines << "  <input id=\"automation-entry-search\" class=\"automation-search-input\" type=\"search\" placeholder=\"Search all entries by DE, EN, or document\" autocomplete=\"off\" data-automation-entry-search>"
    lines << "</div>"
    lines << ""
    lines << "<p class=\"automation-empty-state\" hidden data-automation-entry-empty>No elements match this search.</p>"
    lines << ""

    rows.each do |row|
      lines.concat(render_module_detail_lines(row))
    end

    lines.join("\n") + "\n"
  end

  def write_automation_status(docs_dir)
    missing = [INDEX_PATH, CONTENTS_PATH, EXPANSIONS_DE_PATH, EXPANSIONS_EN_PATH].reject(&:exist?)
    unless missing.empty?
      abort("Missing automation data sources:\n- #{missing.map(&:to_s).join("\n- ")}")
    end

    rows = build_rows
    docs_dir.join("automation-status.md").write(render_markdown(rows))
  end
end

AutomationStatusGenerator.write_automation_status(AutomationStatusGenerator::ROOT.join("docs")) if $PROGRAM_NAME == __FILE__