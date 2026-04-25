#!/usr/bin/env ruby

require "fileutils"
require "open-uri"
require "pathname"
require "json"
require "set"
require "yaml"
require_relative "generate_automation_status"

ROOT = Pathname.new(__dir__).join("..").expand_path
DOCS_DIR = ROOT.join("docs")
DE_DIR = ROOT.join("de")
IMAGES_DIR = ROOT.join("images")
DE_IMAGES_DIR = DE_DIR.join("images")
EN_SIDEBAR = ROOT.join("_sidebar.md")
DE_SIDEBAR = DE_DIR.join("_sidebar.md")
HERO_SOURCE = "https://ulisses-spiele.de/wp-content/uploads/2022/04/01_SystemseiteDSA_Banner_1920x594.webp"
HERO_TARGET = DOCS_DIR.join("assets", "images", "hero-banner.webp")
SITE_BASEURL = YAML.load_file(ROOT.join("_config.yml")).fetch("baseurl", "").to_s
MARKDOWN_SUFFIX = ".md"
IMAGE_SUFFIXES = %w[.png .jpg .jpeg .gif .webp .svg]
EXCLUDED_NAMES = %w[.git .github .gitignore .bundle docs _site instructions notes scripts Gemfile Gemfile.lock _config.yml sync.sh].freeze
LINK_RE = /\]\(([^)]+)\)/

def reset_docs_dir
  FileUtils.rm_rf(DOCS_DIR)
  FileUtils.mkdir_p(DOCS_DIR.join("assets", "images"))
  FileUtils.mkdir_p(DOCS_DIR.join("assets", "stylesheets"))
  FileUtils.mkdir_p(DOCS_DIR.join("_layouts"))
  FileUtils.mkdir_p(DOCS_DIR.join("_includes"))
  FileUtils.mkdir_p(DOCS_DIR.join("_data"))
end

def public_root_markdown?(path)
  path.file? && path.extname == MARKDOWN_SUFFIX && !%w[_Footer.md _sidebar.md README.md].include?(path.basename.to_s)
end

def write_layouts
  default_layout = <<~HTML
    <!doctype html>
    <html lang="en">
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>{% if page.title %}{{ page.title }} | {% endif %}{{ site.title }}</title>
      <link rel="stylesheet" href="{{ '/assets/stylesheets/extra.css' | relative_url }}">
    </head>
    <body class="{% if page.url == '/' %}home-page{% else %}docs-page{% endif %} page-{{ page.title | default: 'document' | slugify }}">
      <header class="site-header">
        <div class="shell header-inner">
          <a class="site-title" href="{{ '/' | relative_url }}">{{ site.title }}</a>
          <nav class="site-nav">
            <a href="{{ '/Home' | relative_url }}">English</a>
            <a href="{{ '/de/de-home' | relative_url }}">Deutsch</a>
            <a href="{{ '/automation-status' | relative_url }}">Automation</a>
          </nav>
        </div>
      </header>
      {% assign nav_key = 'en' %}
      {% if page.url contains '/de/' %}
        {% assign nav_key = 'de' %}
      {% endif %}
      {% assign page_url = page.url | replace: '/index.html', '/' %}
      {% if page.url == '/' %}
      <main class="shell content-shell">
        {{ content }}
      </main>
      {% else %}
      <main class="shell content-shell with-sidebar">
        <aside class="sidebar" aria-label="Section navigation">
          {% assign nav_groups = site.data.navigation[nav_key] %}
          {% for group in nav_groups %}
          <section class="sidebar-group">
            {% if group.title != '' %}<h3>{{ group.title }}</h3>{% endif %}
            <ul>
              {% for item in group.items %}
              {% assign item_url = item.url %}
              {% assign item_url_slash = item.url | append: '/' %}
              <li>
                <a class="{% if page_url == item_url or page_url == item_url_slash %}active{% endif %}" href="{{ item.url | relative_url }}">{{ item.label }}</a>
              </li>
              {% endfor %}
            </ul>
          </section>
          {% endfor %}
        </aside>
        <section class="page-content prose">
          {{ content }}
        </section>
      </main>
      {% endif %}
    </body>
    </html>
  HTML

  home_layout = <<~HTML
    ---
    layout: default
    ---
    {{ content }}
  HTML

  DOCS_DIR.join("_layouts", "default.html").write(default_layout)
  DOCS_DIR.join("_layouts", "home.html").write(home_layout)
end

def write_extra_css
  css = <<~CSS
    :root {
      --dsa-bg: #11110f;
      --dsa-surface: #1b1815;
      --dsa-surface-alt: #26211c;
      --dsa-text: #e7dcc8;
      --dsa-muted: #b8ab95;
      --dsa-accent: #b8924a;
      --dsa-accent-strong: #6c2f2a;
      --dsa-overlay: rgba(8, 7, 6, 0.72);
    }

    * { box-sizing: border-box; }
    body {
      position: relative;
      margin: 0;
      font-family: Georgia, "Times New Roman", serif;
      color: var(--dsa-text);
      background: var(--dsa-bg);
    }

    body::before,
    body::after {
      content: "";
      position: fixed;
      inset: 0;
      pointer-events: none;
    }

    body::before {
      z-index: -2;
      background: url('../images/hero-banner.webp') center/cover no-repeat;
      transform: scale(1.03);
      filter: saturate(0.9) brightness(0.42);
    }

    body::after {
      z-index: -1;
      background:
        linear-gradient(180deg, rgba(7, 6, 5, 0.32) 0%, rgba(10, 9, 8, 0.82) 18%, rgba(12, 11, 10, 0.92) 100%),
        radial-gradient(circle at top, rgba(108, 47, 42, 0.25), transparent 30%),
        linear-gradient(140deg, rgba(184, 146, 74, 0.08), rgba(8, 7, 6, 0.86));
    }

    body > * {
      position: relative;
      z-index: 1;
    }

    a { color: var(--dsa-accent); }
    a:hover { color: #d8b26d; }
    .shell { width: min(1100px, calc(100vw - 2rem)); margin: 0 auto; }
    .site-header {
      position: sticky;
      top: 0;
      z-index: 10;
      background: rgba(17, 17, 15, 0.78);
      border-bottom: 1px solid rgba(184, 146, 74, 0.2);
      backdrop-filter: blur(12px);
    }

    .header-inner {
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 1rem;
      padding: 0.85rem 0;
    }

    .site-title {
      color: var(--dsa-text);
      text-decoration: none;
      font-weight: 700;
      letter-spacing: 0.04em;
      text-transform: uppercase;
    }

    .site-nav {
      display: flex;
      flex-wrap: wrap;
      gap: 1rem;
    }

    .site-nav a {
      color: var(--dsa-muted);
      text-decoration: none;
      padding: 0.25rem 0;
      border-bottom: 1px solid transparent;
    }

    .site-nav a:hover {
      color: var(--dsa-text);
      border-bottom-color: rgba(184, 146, 74, 0.4);
    }

    .content-shell { padding: 2rem 0 4rem; }
    .with-sidebar {
      display: grid;
      grid-template-columns: minmax(16rem, 20rem) minmax(0, 1fr);
      gap: 1.5rem;
      align-items: start;
    }

    .sidebar {
      position: sticky;
      top: 5rem;
      max-height: calc(100vh - 6rem);
      overflow: auto;
      padding: 1rem;
      border: 1px solid rgba(184, 146, 74, 0.18);
      border-radius: 1rem;
      background: linear-gradient(180deg, rgba(38, 33, 28, 0.96), rgba(27, 24, 21, 0.96));
    }

    .sidebar-group + .sidebar-group {
      margin-top: 1.2rem;
      padding-top: 1.1rem;
      border-top: 1px solid rgba(184, 146, 74, 0.14);
    }

    .sidebar-group h3 {
      margin: 0 0 0.5rem;
      font-size: 0.95rem;
      color: var(--dsa-muted);
      letter-spacing: 0.03em;
      text-transform: uppercase;
    }

    .sidebar-group ul {
      list-style: none;
      margin: 0;
      padding: 0;
      display: grid;
      gap: 0.25rem;
    }

    .sidebar-group a {
      display: block;
      padding: 0.35rem 0.5rem;
      border-radius: 0.55rem;
      text-decoration: none;
      color: var(--dsa-text);
    }

    .sidebar-group a:hover,
    .sidebar-group a.active {
      background: rgba(184, 146, 74, 0.12);
      color: var(--dsa-accent);
    }

    .page-content {
      min-width: 0;
    }

    .prose {
      padding: 1.5rem clamp(1rem, 2vw, 2rem);
      border: 1px solid rgba(184, 146, 74, 0.14);
      border-radius: 1.1rem;
      background: linear-gradient(180deg, rgba(28, 24, 20, 0.86), rgba(18, 16, 14, 0.92));
      box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.28);
      backdrop-filter: blur(10px);
    }

    .prose > :first-child { margin-top: 0; }

    .prose h1,
    .prose h2,
    .prose h3 {
      line-height: 1.15;
      color: #f1e8d7;
    }

    .prose h1 {
      font-size: clamp(2rem, 4vw, 2.8rem);
      margin-bottom: 1rem;
    }

    .prose h2 {
      margin-top: 2.4rem;
      padding-top: 1rem;
      border-top: 1px solid rgba(184, 146, 74, 0.14);
      font-size: clamp(1.4rem, 2.6vw, 1.8rem);
    }

    .prose h3 {
      margin-top: 1.7rem;
      font-size: 1.15rem;
    }

    .prose p,
    .prose li,
    .prose blockquote {
      font-size: 1.02rem;
      line-height: 1.75;
      color: var(--dsa-text);
    }

    .prose ul,
    .prose ol {
      padding-left: 1.4rem;
    }

    .prose li + li {
      margin-top: 0.35rem;
    }

    .prose strong {
      color: #f3ead6;
    }

    .prose code {
      padding: 0.1rem 0.35rem;
      border-radius: 0.35rem;
      background: rgba(184, 146, 74, 0.12);
      color: #f0dbb7;
      font-size: 0.95em;
    }

    .prose pre {
      overflow-x: auto;
      padding: 1rem;
      border-radius: 0.9rem;
      background: rgba(10, 9, 8, 0.72);
      border: 1px solid rgba(184, 146, 74, 0.14);
    }

    .prose pre code {
      padding: 0;
      background: transparent;
    }

    .prose blockquote {
      margin: 1.5rem 0;
      padding: 0.2rem 1rem;
      border-left: 3px solid rgba(184, 146, 74, 0.45);
      color: var(--dsa-muted);
      background: rgba(184, 146, 74, 0.04);
    }

    .prose img {
      max-width: 100%;
      height: auto;
      border-radius: 0.8rem;
      border: 1px solid rgba(184, 146, 74, 0.16);
    }

    .prose hr {
      margin: 2rem 0;
      border: 0;
      border-top: 1px solid rgba(184, 146, 74, 0.14);
    }

    .hero {
      overflow: hidden;
      border: 1px solid rgba(184, 146, 74, 0.24);
      border-radius: 1.4rem;
      padding: clamp(3rem, 6vw, 5.5rem) clamp(1.2rem, 4vw, 3rem);
      margin-bottom: 2rem;
      background:
        linear-gradient(135deg, rgba(9, 8, 7, 0.7), rgba(8, 7, 6, 0.42)),
        url('../images/hero-banner.webp') center/cover no-repeat;
      box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.24);
    }

    .eyebrow {
      display: inline-flex;
      margin-bottom: 1rem;
      padding: 0.3rem 0.7rem;
      border-radius: 999px;
      border: 1px solid rgba(184, 146, 74, 0.3);
      background: rgba(17, 17, 15, 0.45);
      color: var(--dsa-muted);
      font-size: 0.83rem;
      letter-spacing: 0.08em;
      text-transform: uppercase;
    }

    .hero h1 {
      margin: 0;
      font-size: clamp(2.5rem, 6vw, 4.8rem);
      line-height: 0.95;
      text-wrap: balance;
    }

    .hero p { max-width: 48rem; }

    .hero-copy {
      max-width: 48rem;
      font-size: 1.08rem;
      line-height: 1.75;
      color: #f0e6d5;
    }

    .hero-meta {
      display: flex;
      flex-wrap: wrap;
      gap: 0.75rem;
      margin-top: 1.5rem;
      color: var(--dsa-muted);
      font-size: 0.95rem;
    }

    .hero-meta span {
      padding: 0.25rem 0.6rem;
      border-radius: 999px;
      background: rgba(17, 17, 15, 0.38);
      border: 1px solid rgba(184, 146, 74, 0.14);
    }

    .hero-actions, .card-grid, .feature-grid, .reference-grid { display: flex; gap: 1rem; flex-wrap: wrap; }
    .card-grid, .feature-grid, .reference-grid { margin-top: 1.5rem; }
    .hero-actions a, .link-card, .reference-link {
      display: inline-block;
      padding: 0.8rem 1rem;
      border-radius: 999px;
      border: 1px solid rgba(184, 146, 74, 0.35);
      background: rgba(27, 24, 21, 0.82);
      color: var(--dsa-text);
      text-decoration: none;
    }

    .hero-actions a:first-child,
    .link-card:hover,
    .reference-link:hover {
      background: rgba(108, 47, 42, 0.28);
    }

    .card {
      flex: 1 1 16rem;
      padding: 1.15rem 1.2rem;
      border-radius: 1rem;
      border: 1px solid rgba(184, 146, 74, 0.18);
      background: linear-gradient(180deg, rgba(38, 33, 28, 0.96), rgba(27, 24, 21, 0.96));
    }

    .card p,
    .feature-card p,
    .reference-card p {
      color: var(--dsa-muted);
      line-height: 1.7;
    }

    .section-intro {
      max-width: 44rem;
      color: var(--dsa-muted);
      line-height: 1.8;
    }

    .feature-card,
    .reference-card {
      flex: 1 1 18rem;
      padding: 1.25rem;
      border-radius: 1rem;
      border: 1px solid rgba(184, 146, 74, 0.16);
      background: linear-gradient(180deg, rgba(31, 27, 23, 0.96), rgba(20, 18, 15, 0.96));
      box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.02);
    }

    .feature-card h3,
    .reference-card h3,
    .card h3 {
      margin-top: 0;
      margin-bottom: 0.5rem;
      color: #f1e7d2;
    }

    .reference-link {
      margin-top: 0.7rem;
    }

    .content-shell table { width: 100%; border-collapse: collapse; }
    .content-shell th, .content-shell td {
      padding: 0.55rem 0.65rem;
      border-bottom: 1px solid rgba(184, 146, 74, 0.15);
      vertical-align: top;
    }

    .content-shell th {
      text-align: left;
      color: #f0e4cc;
      background: rgba(184, 146, 74, 0.06);
    }

    .automation-status {
      display: grid;
      gap: 1.25rem;
    }

    .automation-status > h1,
    .automation-status > h2,
    .automation-status > p,
    .automation-status > table {
      margin-top: 0;
    }

    .automation-toc {
      margin: 0;
      padding-left: 1.4rem;
      display: grid;
      gap: 0.55rem;
    }

    .automation-toc li {
      display: grid;
      gap: 0.35rem;
      padding: 0.7rem 0.85rem;
      border: 1px solid rgba(184, 146, 74, 0.14);
      border-radius: 0.85rem;
      background: rgba(18, 16, 14, 0.45);
    }

    .automation-toc li span {
      display: block;
      color: var(--dsa-muted);
      font-size: 0.94rem;
    }

    .automation-toc li span:last-child a {
      color: var(--dsa-accent);
    }

    .automation-progress {
      display: grid;
      gap: 0.35rem;
      min-width: min(18rem, 100%);
    }

    .automation-progress__bar {
      width: 100%;
      height: 0.7rem;
      overflow: hidden;
      border-radius: 999px;
      background: rgba(255, 255, 255, 0.08);
      box-shadow: inset 0 0 0 1px rgba(184, 146, 74, 0.14);
    }

    .automation-progress__fill {
      display: block;
      height: 100%;
      border-radius: inherit;
      transition: width 180ms ease-out;
    }

    .automation-progress__fill--red {
      background: linear-gradient(90deg, #8f2d23, #d95b48);
    }

    .automation-progress__fill--orange {
      background: linear-gradient(90deg, #a85616, #df9a38);
    }

    .automation-progress__fill--blue {
      background: linear-gradient(90deg, #245b84, #4ba1d9);
    }

    .automation-progress__fill--green {
      background: linear-gradient(90deg, #2f6d38, #7fca70);
    }

    .automation-progress__fill--none {
      background: linear-gradient(90deg, rgba(184, 146, 74, 0.12), rgba(184, 146, 74, 0.12));
    }

    .automation-progress__label {
      color: var(--dsa-muted);
      font-size: 0.88rem;
      line-height: 1.35;
    }

    .automation-module {
      border: 1px solid rgba(184, 146, 74, 0.2);
      border-radius: 1rem;
      background: linear-gradient(180deg, rgba(34, 29, 25, 0.92), rgba(19, 17, 15, 0.94));
      overflow: hidden;
      box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.03);
    }

    .automation-module + .automation-module {
      margin-top: 1rem;
    }

    .automation-module summary {
      display: flex;
      justify-content: space-between;
      align-items: baseline;
      gap: 1rem;
      padding: 1rem 1.1rem;
      cursor: pointer;
      list-style: none;
      background: linear-gradient(180deg, rgba(52, 41, 32, 0.88), rgba(31, 26, 22, 0.88));
    }

    .automation-module summary::-webkit-details-marker {
      display: none;
    }

    .automation-module__title {
      display: flex;
      flex-wrap: wrap;
      gap: 0.45rem;
      align-items: baseline;
      font-size: 1rem;
      color: #f3ead6;
    }

    .automation-module__title span {
      color: var(--dsa-muted);
      font-size: 0.95rem;
    }

    .automation-module__meta {
      width: min(18rem, 100%);
    }

    .automation-module__body {
      padding: 1rem 1.1rem 1.2rem;
    }

    .automation-module__links {
      margin: 0 0 1rem;
      color: var(--dsa-muted);
    }

    .automation-category + .automation-category {
      margin-top: 1.2rem;
      padding-top: 1.2rem;
      border-top: 1px solid rgba(184, 146, 74, 0.12);
    }

    .automation-category__header {
      display: flex;
      justify-content: space-between;
      align-items: baseline;
      gap: 1rem;
      margin-bottom: 0.75rem;
      flex-wrap: wrap;
    }

    .automation-category__header h4 {
      margin: 0;
      font-size: 1.05rem;
      color: #f1e7d2;
    }

    .automation-category__header p {
      margin: 0;
      color: var(--dsa-muted);
      font-size: 0.95rem;
    }

    .automation-table-wrap {
      overflow-x: auto;
      border: 1px solid rgba(184, 146, 74, 0.12);
      border-radius: 0.85rem;
      background: rgba(12, 11, 10, 0.42);
    }

    .automation-entry-table {
      width: 100%;
      min-width: 42rem;
      border-collapse: collapse;
    }

    .automation-entry-table th,
    .automation-entry-table td {
      padding: 0.65rem 0.75rem;
      border-bottom: 1px solid rgba(184, 146, 74, 0.1);
      text-align: left;
      vertical-align: top;
    }

    .automation-entry-table th {
      position: sticky;
      top: 0;
      background: rgba(37, 31, 26, 0.96);
      color: #f1e7d2;
      text-transform: uppercase;
      letter-spacing: 0.04em;
      font-size: 0.78rem;
    }

    .automation-entry-table td {
      color: var(--dsa-text);
      font-size: 0.96rem;
      line-height: 1.5;
    }

    .automation-entry-table tr:hover td {
      background: rgba(184, 146, 74, 0.04);
    }

    .automation-status-pill {
      display: inline-flex;
      align-items: center;
      padding: 0.25rem 0.55rem;
      border-radius: 999px;
      border: 1px solid transparent;
      font-size: 0.8rem;
      font-weight: 700;
      letter-spacing: 0.03em;
      text-transform: uppercase;
      white-space: nowrap;
    }

    .automation-status-pill--automated {
      background: rgba(90, 132, 76, 0.18);
      border-color: rgba(110, 176, 95, 0.28);
      color: #bfe7ac;
    }

    .automation-status-pill--manual {
      background: rgba(145, 75, 55, 0.18);
      border-color: rgba(192, 107, 76, 0.28);
      color: #f2bfab;
    }

    .automation-status-pill--untracked {
      background: rgba(184, 146, 74, 0.14);
      border-color: rgba(184, 146, 74, 0.25);
      color: #ead29f;
    }

    .home-section {
      margin-top: 2.75rem;
    }

    @media (max-width: 720px) {
      .header-inner { align-items: flex-start; flex-direction: column; }
      .site-nav { gap: 0.75rem; }
      .content-shell { padding-top: 1.25rem; }
      .hero { padding: 3rem 1rem; }
      .with-sidebar { grid-template-columns: 1fr; }
      .sidebar {
        position: static;
        max-height: none;
      }
      .prose {
        padding: 1.1rem 0.95rem;
      }
      .hero-actions a, .link-card, .reference-link {
        width: 100%;
        text-align: center;
      }
      .automation-module summary {
        flex-direction: column;
        align-items: flex-start;
      }
      .automation-entry-table {
        min-width: 34rem;
      }
    }
  CSS

  DOCS_DIR.join("assets", "stylesheets", "extra.css").write(css)
end

def ensure_hero_asset
  return if HERO_TARGET.exist?

  URI.open(HERO_SOURCE, read_timeout: 20) do |remote|
    HERO_TARGET.write(remote.read)
  end
rescue StandardError
  nil
end

def write_index_page
  content = <<~MARKDOWN
    ---
    layout: home
    title: DSA5 Foundry VTT Wiki
    ---

    <section class="hero">
    <div class="eyebrow">Documentation Hub for DSA5 Foundry</div>
    <h1>DSA5 Foundry VTT Wiki</h1>
    <p class="hero-copy">This site documents features, workflows, automation coverage, and module usage for the Foundry VTT implementation of DSA5 / The Dark Eye 5. It complements the GitHub wiki with clearer navigation, a calmer reading layout, and a dedicated automation overview.</p>
    <div class="hero-actions">
    <a href="{{ '/Home' | relative_url }}">English documentation</a>
    <a href="{{ '/de/de-home' | relative_url }}">Deutsche Dokumentation</a>
    <a href="{{ '/automation-status' | relative_url }}">Automation status</a>
    </div>
    <div class="hero-meta">
    <span>German and English docs</span>
    <span>Generated from wiki source</span>
    <span>Manual dual-publish workflow</span>
    </div>
    </section>

    <div class="card-grid">
    <div class="card">
    <h3>English</h3>
    <p>Browse the English wiki pages with preserved page structure and search support.</p>
    <p><a class="link-card" href="{{ '/Home' | relative_url }}">Open English wiki</a></p>
    </div>
    <div class="card">
    <h3>Deutsch</h3>
    <p>Nutze die deutsche Dokumentation mit derselben Seitenstruktur wie im Wiki.</p>
    <p><a class="link-card" href="{{ '/de/de-home' | relative_url }}">Deutsches Wiki oeffnen</a></p>
    </div>
    <div class="card">
    <h3>Automation</h3>
    <p>See which modules and content areas are automated, with localized module metadata from the Foundry data exports.</p>
    <p><a class="link-card" href="{{ '/automation-status' | relative_url }}">Open automation status</a></p>
    </div>
    </div>

    <section class="home-section">
    <h2>What this site is for</h2>
    <p class="section-intro">Use the site when you need quick access to system features, workflow documentation, journal guidance, and a generated view of automation coverage across official modules. The structure stays close to the wiki, but the presentation is tuned for longer reading sessions on desktop and mobile.</p>

    <div class="feature-grid">
    <div class="feature-card">
    <h3>Readable long-form docs</h3>
    <p>Interior pages use a quieter parchment-like content surface, stronger heading hierarchy, and improved spacing for tables, lists, code, and screenshots.</p>
    </div>
    <div class="feature-card">
    <h3>Language-specific navigation</h3>
    <p>English and German sidebars are generated directly from the wiki navigation files so the site stays aligned with the source material.</p>
    </div>
    <div class="feature-card">
    <h3>Automation coverage overview</h3>
    <p>The generated automation page summarizes module coverage and links localized metadata from the Foundry export data.</p>
    </div>
    </div>
    </section>

    <section class="home-section">
    <h2>External references</h2>
    <p class="section-intro">These links point to the official DSA and VTT references that complement the wiki documentation.</p>

    <div class="reference-grid">
    <div class="reference-card">
    <h3>Ulisses Spiele</h3>
    <p>The German DSA landing page with the main game system overview and official product context.</p>
    <p><a class="reference-link" href="https://ulisses-spiele.de/game-system/das-schwarze-auge/">Open German DSA page</a></p>
    </div>
    <div class="reference-card">
    <h3>Ulisses US VTT</h3>
    <p>The English Virtual Tabletop product page for The Dark Eye / DSA VTT ecosystem.</p>
    <p><a class="reference-link" href="https://ulisses-us.com/ulisses-virtual-tabletops/virtual-tabletop-dsa-vtt/">Open English VTT page</a></p>
    </div>
    <div class="reference-card">
    <h3>Foundry Virtual Tabletop</h3>
    <p>The platform reference for installation, licensing, and the broader Foundry ecosystem.</p>
    <p><a class="reference-link" href="https://foundryvtt.com/">Open Foundry site</a></p>
    </div>
    </div>
    </section>
  MARKDOWN

  DOCS_DIR.join("index.md").write(content)
end

def copy_static_assets
  FileUtils.cp_r(IMAGES_DIR, DOCS_DIR) if IMAGES_DIR.exist?
  if DE_IMAGES_DIR.exist?
    FileUtils.mkdir_p(DOCS_DIR.join("de"))
    FileUtils.cp_r(DE_IMAGES_DIR, DOCS_DIR.join("de"))
  end
end

def copied_markdown_files
  copied = []

  ROOT.each_child do |child|
    next if EXCLUDED_NAMES.include?(child.basename.to_s)
    next unless public_root_markdown?(child)

    destination = DOCS_DIR.join(child.basename)
    FileUtils.cp(child, destination)
    copied << destination
  end

  if DE_DIR.exist?
    DE_DIR.each_child do |child|
      next unless child.file? && child.extname == MARKDOWN_SUFFIX
      next if %w[_Footer.md _sidebar.md].include?(child.basename.to_s)

      destination = DOCS_DIR.join("de", child.basename)
      FileUtils.mkdir_p(destination.dirname)
      FileUtils.cp(child, destination)
      copied << destination
    end
  end

  copied
end

def build_lookup(markdown_files)
  markdown_files.each_with_object({}) do |path, lookup|
    relative = path.relative_path_from(DOCS_DIR).to_s.tr("\\", "/")
    lower = relative.downcase
    lookup[lower] = relative
    lookup[lower.delete_suffix(".md")] = relative if relative.end_with?(".md")
  end
end

def docs_url_for(target, current_file, lookup)
  normalized = normalize_target(target, current_file, lookup)
  if normalized.start_with?(SITE_BASEURL)
    normalized = normalized.delete_prefix(SITE_BASEURL)
    normalized = "/" if normalized.empty?
  end
  return normalized if normalized.start_with?("/")

  stripped = normalized.sub(/\.md(?=#|$)/, "")
  stripped = stripped.sub(/\/index(?=#|$)/, "/")
  return "/" if stripped == "index"
  stripped = stripped.delete_prefix("./")
  stripped = stripped.delete_suffix(".md")
  stripped = stripped.chomp("/")
  "/#{stripped}"
end

def parse_sidebar(sidebar_path, current_file, lookup)
  groups = []
  current_group = { "title" => "", "items" => [] }

  sidebar_path.read.each_line do |line|
    stripped = line.strip
    next if stripped.empty?
    next if stripped.start_with?("*[") || stripped.start_with?("*[x]") || stripped.start_with?("de |") || stripped.start_with?("[de]")

    heading = stripped.match(/^\*\*(.+?)\*\*$/)
    if heading
      groups << current_group if current_group["items"].any?
      current_group = { "title" => heading[1], "items" => [] }
      next
    end

    item = stripped.match(/^\*\s+\[(.+?)\]\((.+?)\)$/)
    next unless item

    label = item[1]
    target = item[2]
    current_group["items"] << {
      "label" => label,
      "url" => docs_url_for(target, current_file, lookup)
    }
  end

  groups << current_group if current_group["items"].any?
  groups
end

def pretty_page_path(path)
  stripped = path.sub(/\.md(?=#|$)/, "")
  stripped = stripped.sub(/\/index(?=#|$)/, "/")
  stripped = stripped.delete_prefix("./")
  stripped = stripped.chomp("/")
  return "/" if stripped == "index" || stripped.empty?

  "/#{stripped}"
end

def page_link_target(path, anchor = "")
  "#{SITE_BASEURL}#{pretty_page_path(path)}#{anchor}"
end

def additional_navigation_items(language_key, groups, lookup)
  known_urls = groups.flat_map { |group| group.fetch("items", []).map { |item| item.fetch("url") } }.to_set
  title = language_key == "de" ? "Weitere Seiten" : "Additional Pages"

  extras = lookup.values.uniq.sort.filter_map do |relative|
    next unless relative.end_with?(".md")
    next if language_key == "de" && !relative.start_with?("de/")
    next if language_key == "en" && relative.start_with?("de/")

    url = pretty_page_path(relative)
    next if known_urls.include?(url)

    {
      "label" => relative.sub(/\.md$/, "").split("/").last,
      "url" => url
    }
  end

  return groups if extras.empty?

  groups + [{ "title" => title, "items" => extras }]
end

def write_navigation_data(lookup)
  en_groups = parse_sidebar(EN_SIDEBAR, DOCS_DIR.join("Home.md"), lookup)
  de_groups = parse_sidebar(DE_SIDEBAR, DOCS_DIR.join("de", "de-home.md"), lookup)

  navigation = {
    "en" => additional_navigation_items("en", en_groups, lookup),
    "de" => additional_navigation_items("de", de_groups, lookup)
  }

  DOCS_DIR.join("_data", "navigation.json").write(JSON.pretty_generate(navigation))
end

def normalize_target(target, current_file, lookup)
  stripped = target.strip
  return target if stripped.empty? || stripped.start_with?("http://", "https://", "mailto:", "#")
  return target if stripped.end_with?("/")

  clean, anchor = stripped.split("#", 2)
  anchor = anchor ? "##{anchor}" : ""
  clean = clean.delete_prefix("./")
  return target if clean.empty? || clean.start_with?("/")

  if clean.start_with?("images/")
    candidate = clean
    docs_candidate = DOCS_DIR.join(candidate)
    return "#{SITE_BASEURL}/#{candidate}#{anchor}" if docs_candidate.file?
  elsif clean.start_with?("de/images/")
    candidate = clean
    docs_candidate = DOCS_DIR.join(candidate)
    return "#{SITE_BASEURL}/#{candidate}#{anchor}" if docs_candidate.file?
  end

  docs_candidate = current_file.dirname.join(clean).expand_path
  begin
    candidate = docs_candidate.relative_path_from(DOCS_DIR.expand_path).to_s.tr("\\", "/")
  rescue ArgumentError
    return target
  end

  [candidate.downcase, "#{candidate.downcase}.md"].each do |relative_candidate|
    actual = lookup[relative_candidate]
    return page_link_target(actual, anchor) if actual
  end

  return page_link_target(candidate, anchor) if docs_candidate.file? && docs_candidate.extname == MARKDOWN_SUFFIX
  return page_link_target("#{candidate}.md", anchor) if docs_candidate.sub_ext(".md").file?

  if docs_candidate.directory? && docs_candidate.join("index.md").file?
    return page_link_target("#{candidate}/index.md", anchor)
  end

  if docs_candidate.file? && docs_candidate.exist?
    if IMAGE_SUFFIXES.include?(docs_candidate.extname.downcase)
      return "#{SITE_BASEURL}/#{candidate}#{anchor}"
    end

    return "#{SITE_BASEURL}/#{candidate}#{anchor}" unless docs_candidate.extname == MARKDOWN_SUFFIX
  end

  target
end

def add_front_matter(content, layout: "default", title: nil)
  return content if content.start_with?("---\n")

  front_matter = ["---", "layout: #{layout}"]
  front_matter << "title: #{title}" if title
  front_matter << "---" << ""
  front_matter.join("\n") + content
end

def rewrite_links(markdown_files)
  lookup = build_lookup(markdown_files)

  markdown_files.each do |path|
    content = path.read
    rewritten = content.gsub(LINK_RE) do |match|
      original_target = Regexp.last_match(1)
      match.sub(original_target, normalize_target(original_target, path, lookup))
    end

    title = path.basename.sub_ext("").to_s
    path.write(add_front_matter(rewritten, title: title))
  end
end

reset_docs_dir
write_layouts
write_extra_css
ensure_hero_asset
copied = copied_markdown_files
copy_static_assets
rewrite_links(copied)
write_navigation_data(build_lookup(copied))
write_index_page
AutomationStatusGenerator.write_automation_status(DOCS_DIR)
puts "Prepared docs in #{DOCS_DIR}"