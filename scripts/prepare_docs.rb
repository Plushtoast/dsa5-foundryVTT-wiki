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
  FileUtils.mkdir_p(DOCS_DIR.join("assets", "javascripts"))
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
      {% assign nav_key = page.nav_key | default: 'en' %}
      {% if page.nav_key == nil and page.url contains '/de/' %}
        {% assign nav_key = 'de' %}
      {% endif %}
      {% assign page_url = page.url | replace: '/index.html', '/' %}
      <header class="site-header">
        <div class="shell header-inner">
          <a class="site-title" href="{{ '/' | relative_url }}">{{ site.title }}</a>
          <nav class="site-nav">
            <a href="{{ '/Home' | relative_url }}">English</a>
            <a href="{{ '/de/de-Home' | relative_url }}">Deutsch</a>
            <a href="{{ '/automation-status' | relative_url }}">Automation</a>
          </nav>
        </div>
        {% if page.url != '/' %}
        {% if nav_key == 'de' %}
          {% assign sidebar_toggle_label = 'Abschnittsnavigation' %}
          {% assign sidebar_search_label = 'Navigation filtern' %}
          {% assign sidebar_search_placeholder = 'Kategorie oder Seite suchen' %}
          {% assign sidebar_search_empty = 'Keine passenden Kategorien oder Seiten.' %}
        {% elsif nav_key == 'automation' %}
          {% assign sidebar_toggle_label = 'Open navigation' %}
          {% assign sidebar_search_label = 'Filter module navigation' %}
          {% assign sidebar_search_placeholder = 'Search DE, EN, or module id' %}
          {% assign sidebar_search_empty = 'No matching modules.' %}
        {% else %}
          {% assign sidebar_toggle_label = 'Section navigation' %}
          {% assign sidebar_search_label = 'Filter navigation' %}
          {% assign sidebar_search_placeholder = 'Search category or page' %}
          {% assign sidebar_search_empty = 'No matching categories or pages.' %}
        {% endif %}
        <div class="sidebar-mobile-bar shell">
          <button type="button" class="sidebar-toggle" aria-expanded="false" aria-controls="sidebar-nav" data-sidebar-toggle>
            <span class="sidebar-toggle-icon" aria-hidden="true"><span></span></span>
            <span class="sidebar-toggle-label">{{ sidebar_toggle_label }}</span>
          </button>
        </div>
        {% endif %}
      </header>
      {% if page.url == '/' %}
      <main class="shell content-shell home-content">
        {{ content }}
      </main>
      <script>
        document.addEventListener('DOMContentLoaded', function () {
          const revealElements = Array.from(document.querySelectorAll('.home-reveal'));
          if (revealElements.length === 0) return;

          const revealNow = function (element) {
            element.classList.add('is-visible');
          };

          revealElements.filter(function (element) {
            return element.classList.contains('home-reveal--immediate');
          }).forEach(function (element) {
            requestAnimationFrame(function () {
              requestAnimationFrame(function () {
                revealNow(element);
              });
            });
          });

          if (!('IntersectionObserver' in window) || window.matchMedia('(prefers-reduced-motion: reduce)').matches) {
            revealElements.forEach(revealNow);
            return;
          }

          const observer = new IntersectionObserver(function (entries) {
            entries.forEach(function (entry) {
              if (!entry.isIntersecting) return;
              revealNow(entry.target);
              observer.unobserve(entry.target);
            });
          }, { threshold: 0.15, rootMargin: '0px 0px -5% 0px' });

          revealElements.forEach(function (element) {
            if (!element.classList.contains('is-visible')) observer.observe(element);
          });
        });
      </script>
      {% else %}
      <div class="sidebar-backdrop" data-sidebar-backdrop hidden></div>
      <div class="shell docs-layout with-sidebar">
        <aside id="sidebar-nav" class="sidebar" aria-label="{{ sidebar_toggle_label }}">
          {% assign nav_groups = site.data.navigation[nav_key] %}
          <div class="sidebar-search-wrap">
            <label class="sidebar-search-label" for="sidebar-nav-search">{{ sidebar_search_label }}</label>
            <input id="sidebar-nav-search" class="sidebar-search-input" type="search" placeholder="{{ sidebar_search_placeholder }}" autocomplete="off" data-sidebar-nav-search{% if nav_key == 'automation' %} data-automation-module-search data-automation-sidebar-search{% endif %}>
          </div>
          <p class="sidebar-search-empty" data-sidebar-nav-empty hidden>{{ sidebar_search_empty }}</p>
          {% for group in nav_groups %}
          <section class="sidebar-group" data-sidebar-nav-group data-sidebar-nav-query="{{ group.title | downcase | strip }}">
            {% if group.title != '' %}<h3>{{ group.title }}</h3>{% endif %}
            <ul>
              {% for item in group.items %}
              {% assign item_url = item.url %}
              {% assign item_url_slash = item.url | append: '/' %}
              <li data-sidebar-nav-item data-sidebar-nav-query="{{ item.label | downcase | strip }}"{% if nav_key == 'automation' %} data-automation-nav-item{% endif %}>
                <a class="{% if page_url == item_url or page_url == item_url_slash %}active{% endif %}" href="{{ item.url | relative_url }}">{{ item.label }}</a>
              </li>
              {% endfor %}
            </ul>
          </section>
          {% endfor %}
        </aside>
        <div class="docs-main content-shell">
          <article class="page-content prose">
            {{ content }}
          </article>
        </div>
      </div>
      <script src="{{ '/assets/javascripts/site.js' | relative_url }}" defer></script>
      {% if nav_key == 'automation' %}
      <script>
        document.addEventListener('DOMContentLoaded', function () {
          const sidebar = document.querySelector('.sidebar');
          const moduleInputs = Array.from(document.querySelectorAll('[data-automation-module-search]'));
          const entryInput = document.querySelector('[data-automation-entry-search]');
          const elementInput = document.querySelector('[data-automation-element-search]');
          const elementResults = document.querySelector('[data-automation-element-results]');
          const elementResultRows = Array.from(document.querySelectorAll('[data-automation-element-result]'));
          const elementEmptyState = document.querySelector('[data-automation-element-empty]');
          const elementTruncatedNotice = document.querySelector('[data-automation-element-truncated-notice]');
          const modules = Array.from(document.querySelectorAll('[data-automation-module]'));
          const tocItems = Array.from(document.querySelectorAll('[data-automation-toc-item]'));
          const navItems = Array.from(document.querySelectorAll('[data-automation-nav-item]'));
          const navGroups = Array.from(document.querySelectorAll('.sidebar-group'));
          const categories = Array.from(document.querySelectorAll('[data-automation-category]'));
          const entries = Array.from(document.querySelectorAll('[data-automation-entry]'));
          const moduleEmptyState = document.querySelector('[data-automation-module-empty]');
          const entryEmptyState = document.querySelector('[data-automation-entry-empty]');
          const moduleHighlightTargets = Array.from(document.querySelectorAll('[data-automation-module-highlight], [data-automation-nav-item] a'));
          const entryHighlightTargets = Array.from(document.querySelectorAll('[data-automation-entry-highlight]'));
          const elementHighlightTargets = Array.from(document.querySelectorAll('[data-automation-element-highlight]'));
          let pendingSidebarScrollTop = null;

          if (moduleInputs.length === 0 && !entryInput && !elementInput) return;

          const restoreSidebarScroll = function () {
            if (!sidebar || pendingSidebarScrollTop === null) return;

            const targetScrollTop = pendingSidebarScrollTop;
            requestAnimationFrame(function () {
              sidebar.scrollTop = targetScrollTop;
              requestAnimationFrame(function () {
                sidebar.scrollTop = targetScrollTop;
              });
            });
          };

          const escapeHtml = function (value) {
            return value
              .replace(/&/g, '&amp;')
              .replace(/</g, '&lt;')
              .replace(/>/g, '&gt;')
              .replace(/"/g, '&quot;')
              .replace(/'/g, '&#39;');
          };

          const escapeRegExp = function (value) {
            return value.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
          };

          const applyHighlights = function (elements, query) {
            const trimmed = query.trim();
            const matcher = trimmed === '' ? null : new RegExp('(' + escapeRegExp(trimmed) + ')', 'ig');

            elements.forEach(function (element) {
              if (!element.dataset.automationOriginalText) {
                element.dataset.automationOriginalText = element.textContent;
              }

              const original = element.dataset.automationOriginalText;

              if (!matcher) {
                element.innerHTML = escapeHtml(original);
                return;
              }

              element.innerHTML = escapeHtml(original).replace(matcher, '<mark class="automation-highlight">$1</mark>');
            });
          };

          const syncModuleInputs = function (source) {
            moduleInputs.forEach(function (input) {
              if (input !== source) input.value = source.value;
            });
          };

          const revealEntryTarget = function (entryId) {
            if (!entryId) return;

            const entryRow = document.getElementById(entryId);
            if (!entryRow) return;

            const moduleAnchor = entryRow.dataset.automationModuleAnchor;
            if (moduleAnchor) {
              const moduleAnchorNode = document.getElementById(moduleAnchor);
              const moduleDetails = moduleAnchorNode ? moduleAnchorNode.nextElementSibling : null;
              if (moduleDetails && moduleDetails.matches('[data-automation-module]')) {
                moduleDetails.hidden = false;
                moduleDetails.open = true;
              }
            }

            entryRow.scrollIntoView({ behavior: 'smooth', block: 'center' });
            entryRow.classList.add('automation-entry--focused');
            window.setTimeout(function () {
              entryRow.classList.remove('automation-entry--focused');
            }, 1800);
          };

          const revealHashTarget = function () {
            const hash = window.location.hash;
            if (!hash) return;

            if (hash.startsWith('#entry-')) {
              revealEntryTarget(hash.slice(1));
              restoreSidebarScroll();
              return;
            }

            const anchor = document.querySelector(hash + '.automation-module-anchor');
            if (!anchor) return;

            const details = anchor.nextElementSibling;
            if (details && details.matches('[data-automation-module]')) {
              details.open = true;
            }

            restoreSidebarScroll();
          };

          navItems.forEach(function (item) {
            const link = item.querySelector('a');
            if (!link) return;

            link.addEventListener('click', function () {
              if (!sidebar) return;
              pendingSidebarScrollTop = sidebar.scrollTop;
            });
          });

          const applyModuleFilter = function () {
            const query = (moduleInputs[0] ? moduleInputs[0].value : '').trim().toLowerCase();
            let visibleModules = 0;

            modules.forEach(function (element) {
              const haystack = element.dataset.automationQuery || '';
              element.hidden = query !== '' && !haystack.includes(query);
              if (!element.hidden) visibleModules += 1;
            });

            tocItems.forEach(function (element) {
              const haystack = element.dataset.automationQuery || '';
              element.hidden = query !== '' && !haystack.includes(query);
            });

            if (typeof window.applySidebarNavFilter === 'function') {
              window.applySidebarNavFilter(query);
            }

            if (moduleEmptyState) {
              moduleEmptyState.hidden = !(query !== '' && visibleModules === 0);
            }

            applyHighlights(moduleHighlightTargets, query);

            revealHashTarget();
          };

          const applyEntryFilter = function () {
            const query = entryInput ? entryInput.value.trim().toLowerCase() : '';
            let visibleEntries = 0;

            if (!entryInput) return;

            categories.forEach(function (category) {
              const categoryEntries = Array.from(category.querySelectorAll('[data-automation-entry]'));
              let hasVisibleEntries = false;

              categoryEntries.forEach(function (entry) {
                const haystack = entry.dataset.automationEntryQuery || '';
                const matches = query === '' || haystack.includes(query);
                entry.hidden = !matches;
                if (!entry.hidden) {
                  hasVisibleEntries = true;
                  visibleEntries += 1;
                }
              });

              category.hidden = !hasVisibleEntries;
            });

            modules.forEach(function (moduleElement) {
              const visibleCategories = Array.from(moduleElement.querySelectorAll('[data-automation-category]')).some(function (category) {
                return !category.hidden;
              });

              if (query !== '') {
                moduleElement.hidden = moduleElement.hidden || !visibleCategories;
                if (visibleCategories) moduleElement.open = true;
              }
            });

            if (entryEmptyState) {
              entryEmptyState.hidden = !(query !== '' && visibleEntries === 0);
            }

            applyHighlights(entryHighlightTargets, query);
          };

          const applyElementSearch = function () {
            const query = elementInput ? elementInput.value.trim().toLowerCase() : '';
            const maxResults = 200;
            const matchingRows = [];

            elementResultRows.forEach(function (row) {
              const haystack = row.dataset.automationElementQuery || '';
              const matches = query !== '' && haystack.includes(query);
              row.hidden = true;
              if (matches) matchingRows.push(row);
            });

            matchingRows.slice(0, maxResults).forEach(function (row) {
              row.hidden = false;
            });

            if (elementResults) {
              elementResults.hidden = query === '';
            }

            if (elementEmptyState) {
              elementEmptyState.hidden = !(query !== '' && matchingRows.length === 0);
            }

            if (elementTruncatedNotice) {
              elementTruncatedNotice.hidden = !(query !== '' && matchingRows.length > maxResults);
            }

            applyHighlights(elementHighlightTargets, query);
          };

          document.querySelectorAll('[data-automation-element-jump]').forEach(function (link) {
            link.addEventListener('click', function (event) {
              const row = link.closest('[data-automation-element-result]');
              const entryId = row ? row.dataset.automationEntryId : null;
              if (!entryId) return;

              event.preventDefault();
              history.replaceState(null, '', '#' + entryId);
              revealEntryTarget(entryId);
            });
          });

          moduleInputs.forEach(function (input) {
            input.addEventListener('input', function () {
              syncModuleInputs(input);
              applyModuleFilter();
              applyEntryFilter();
            });
          });

          if (entryInput) {
            entryInput.addEventListener('input', function () {
              applyModuleFilter();
              applyEntryFilter();
            });
          }

          if (elementInput) {
            elementInput.addEventListener('input', function () {
              applyElementSearch();
            });
          }

          revealHashTarget();
          window.addEventListener('hashchange', revealHashTarget);
          applyModuleFilter();
          applyEntryFilter();
          applyElementSearch();
        });
      </script>
      {% endif %}
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

def write_site_js
  js = <<~JS
    (function () {
      var mobileQuery = window.matchMedia('(max-width: 720px)');

      function isMobileNav() {
        return mobileQuery.matches;
      }

      function initDocsPage() {
        if (!document.body.classList.contains('docs-page')) return;

        var toggle = document.querySelector('[data-sidebar-toggle]');
        var backdrop = document.querySelector('[data-sidebar-backdrop]');
        var sidebar = document.getElementById('sidebar-nav');
        var siteHeader = document.querySelector('.site-header');
        var navSearchInputs = Array.prototype.slice.call(document.querySelectorAll('[data-sidebar-nav-search]'));
        var navEmptyState = document.querySelector('[data-sidebar-nav-empty]');

        var syncMobileNavOffset = function () {
          if (!siteHeader) return;
          document.documentElement.style.setProperty('--mobile-nav-offset', siteHeader.offsetHeight + 'px');
        };

        var setSidebarOpen = function (open) {
          if (!toggle || !sidebar) return;
          if (open && !isMobileNav()) return;

          document.body.classList.toggle('sidebar-open', open);
          toggle.setAttribute('aria-expanded', open ? 'true' : 'false');
          sidebar.classList.toggle('sidebar--open', open);
          if (backdrop) backdrop.hidden = !open;
        };

        window.applySidebarNavFilter = function (query) {
          if (!sidebar) return;

          var normalized = (query !== undefined ? query : (navSearchInputs[0] ? navSearchInputs[0].value : '')).trim().toLowerCase();
          var navGroups = Array.prototype.slice.call(sidebar.querySelectorAll('[data-sidebar-nav-group]'));
          var visibleItems = 0;

          navGroups.forEach(function (group) {
            var groupQuery = (group.dataset.sidebarNavQuery || '').trim();
            var groupMatches = normalized !== '' && groupQuery !== '' && groupQuery.includes(normalized);
            var items = Array.prototype.slice.call(group.querySelectorAll('[data-sidebar-nav-item]'));
            var hasVisibleItems = false;

            items.forEach(function (item) {
              var itemQuery = (item.dataset.sidebarNavQuery || item.textContent || '').trim().toLowerCase();
              var itemMatches = normalized === '' || itemQuery.includes(normalized) || groupMatches;
              item.hidden = !itemMatches;
              if (itemMatches) {
                hasVisibleItems = true;
                visibleItems += 1;
              }
            });

            group.hidden = !hasVisibleItems;
          });

          if (navEmptyState) {
            navEmptyState.hidden = !(normalized !== '' && visibleItems === 0);
          }
        };

        if (toggle) {
          toggle.addEventListener('click', function (event) {
            event.preventDefault();
            setSidebarOpen(!document.body.classList.contains('sidebar-open'));
          });
        }

        if (backdrop) {
          backdrop.addEventListener('click', function () {
            setSidebarOpen(false);
          });
        }

        if (sidebar) {
          sidebar.addEventListener('click', function (event) {
            if (event.target.closest('a')) setSidebarOpen(false);
          });
        }

        document.addEventListener('keydown', function (event) {
          if (event.key === 'Escape') setSidebarOpen(false);
        });

        window.addEventListener('resize', function () {
          syncMobileNavOffset();
          if (!isMobileNav()) setSidebarOpen(false);
        });

        if (typeof mobileQuery.addEventListener === 'function') {
          mobileQuery.addEventListener('change', function () {
            syncMobileNavOffset();
            if (!isMobileNav()) setSidebarOpen(false);
          });
        }

        navSearchInputs.forEach(function (input) {
          input.addEventListener('input', function () {
            navSearchInputs.forEach(function (other) {
              if (other !== input) other.value = input.value;
            });
            window.applySidebarNavFilter();
          });
        });

        syncMobileNavOffset();
        window.applySidebarNavFilter();
      }

      if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', initDocsPage);
      } else {
        initDocsPage();
      }
    })();
  JS

  DOCS_DIR.join("assets", "javascripts", "site.js").write(js)
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
    .docs-layout.with-sidebar,
    .with-sidebar {
      display: grid;
      grid-template-columns: minmax(16rem, 20rem) minmax(0, 1fr);
      gap: 1.5rem;
      align-items: start;
    }

    .docs-main {
      min-width: 0;
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

    .docs-page .sidebar-mobile-bar {
      display: none;
    }

    button.sidebar-toggle {
      -webkit-appearance: none;
      appearance: none;
      box-sizing: border-box;
      font-family: inherit;
    }

    .sidebar-toggle {
      display: inline-flex;
      align-items: center;
      gap: 0.65rem;
      width: 100%;
      margin: 0;
      padding: 0.7rem 0.95rem;
      border: 1px solid rgba(184, 146, 74, 0.24);
      border-radius: 0.75rem;
      background: linear-gradient(180deg, rgba(38, 33, 28, 0.96), rgba(27, 24, 21, 0.96));
      color: var(--dsa-text);
      font: inherit;
      font-size: 0.95rem;
      cursor: pointer;
      text-align: left;
    }

    .sidebar-toggle:hover,
    .sidebar-toggle:focus-visible {
      border-color: rgba(184, 146, 74, 0.42);
      outline: none;
      box-shadow: 0 0 0 3px rgba(184, 146, 74, 0.12);
    }

    .sidebar-toggle-icon {
      position: relative;
      display: block;
      width: 1.1rem;
      height: 0.12rem;
      flex: 0 0 auto;
      background: currentColor;
      border-radius: 999px;
      transition: background 160ms ease;
    }

    .sidebar-toggle-icon::before,
    .sidebar-toggle-icon::after {
      content: "";
      position: absolute;
      left: 0;
      width: 100%;
      height: 2px;
      border-radius: 999px;
      background: currentColor;
      transition: transform 160ms ease, top 160ms ease, opacity 160ms ease;
    }

    .sidebar-toggle-icon span {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 2px;
      border-radius: 999px;
      background: currentColor;
      transition: opacity 160ms ease;
    }

    .sidebar-toggle-icon::before { top: -0.33rem; }
    .sidebar-toggle-icon::after { top: 0.33rem; }

    .sidebar-toggle[aria-expanded="true"] .sidebar-toggle-icon {
      background: transparent;
    }

    .sidebar-toggle[aria-expanded="true"] .sidebar-toggle-icon span {
      opacity: 0;
    }

    .sidebar-toggle[aria-expanded="true"] .sidebar-toggle-icon::before {
      top: 0;
      transform: rotate(45deg);
    }

    .sidebar-toggle[aria-expanded="true"] .sidebar-toggle-icon::after {
      top: 0;
      transform: rotate(-45deg);
    }

    .sidebar-backdrop {
      position: fixed;
      top: var(--mobile-nav-offset, 0px);
      right: 0;
      bottom: 0;
      left: 0;
      z-index: 18;
      border: 0;
      background: rgba(8, 7, 6, 0.62);
      backdrop-filter: blur(2px);
    }

    body.sidebar-open {
      overflow: hidden;
    }

    .sidebar-search-wrap {
      display: grid;
      gap: 0.45rem;
      margin-bottom: 1rem;
    }

    .sidebar-search-label {
      color: var(--dsa-muted);
      font-size: 0.82rem;
      letter-spacing: 0.06em;
      text-transform: uppercase;
    }

    .sidebar-search-input {
      width: 100%;
      padding: 0.7rem 0.8rem;
      border: 1px solid rgba(184, 146, 74, 0.18);
      border-radius: 0.75rem;
      background: rgba(12, 11, 10, 0.7);
      color: var(--dsa-text);
      font: inherit;
    }

    .sidebar-search-input::placeholder {
      color: rgba(184, 171, 149, 0.75);
    }

    .sidebar-search-empty {
      margin: -0.35rem 0 1rem;
      padding: 0.75rem 0.85rem;
      border: 1px solid rgba(184, 146, 74, 0.18);
      border-radius: 0.75rem;
      background: rgba(108, 47, 42, 0.14);
      color: #f1dcc4;
      font-size: 0.92rem;
      font-style: italic;
    }

    .sidebar-search-input:focus,
    .automation-search-input:focus {
      outline: none;
      border-color: rgba(184, 146, 74, 0.46);
      box-shadow: 0 0 0 3px rgba(184, 146, 74, 0.12);
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
      position: relative;
      overflow: hidden;
      border: 1px solid rgba(184, 146, 74, 0.24);
      border-radius: 1.4rem;
      padding: clamp(3rem, 6vw, 5.5rem) clamp(1.2rem, 4vw, 3rem);
      margin-bottom: 2rem;
      background:
        linear-gradient(135deg, rgba(9, 8, 7, 0.7), rgba(8, 7, 6, 0.42)),
        url('../images/hero-banner.webp') center/cover no-repeat;
      box-shadow: 0 1rem 3rem rgba(0, 0, 0, 0.24);
      isolation: isolate;
    }

    .hero::before {
      content: "";
      position: absolute;
      inset: 0;
      background:
        radial-gradient(circle at 20% 20%, rgba(184, 146, 74, 0.16), transparent 42%),
        radial-gradient(circle at 80% 0%, rgba(108, 47, 42, 0.18), transparent 36%);
      opacity: 0.85;
      pointer-events: none;
      z-index: 0;
    }

    .hero::after {
      content: "";
      position: absolute;
      inset: -40% -20%;
      background: linear-gradient(115deg, transparent 35%, rgba(255, 236, 196, 0.07) 50%, transparent 65%);
      transform: translateX(-120%);
      animation: heroShine 7s ease-in-out infinite;
      pointer-events: none;
      z-index: 0;
    }

    .hero > * {
      position: relative;
      z-index: 1;
    }

    @keyframes heroShine {
      0%, 100% { transform: translateX(-120%); }
      45%, 55% { transform: translateX(120%); }
    }

    @keyframes homeFadeUp {
      from {
        opacity: 0;
        transform: translateY(1.4rem);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes homeFadeIn {
      from {
        opacity: 0;
        transform: translateY(0.6rem);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    .home-page .home-reveal {
      opacity: 0;
      transform: translateY(1.4rem);
      will-change: opacity, transform;
    }

    .home-page .home-reveal.is-visible {
      animation: homeFadeUp 0.75s cubic-bezier(0.22, 1, 0.36, 1) forwards;
      animation-delay: var(--reveal-delay, 0ms);
    }

    .home-page .home-reveal--fade.is-visible {
      animation-name: homeFadeIn;
    }

    @media (prefers-reduced-motion: reduce) {
      .hero::after {
        animation: none;
        display: none;
      }

      .home-page .home-reveal {
        opacity: 1;
        transform: none;
      }

      .home-page .home-reveal.is-visible {
        animation: none;
      }

      .home-page .card,
      .home-page .feature-card,
      .home-page .reference-card,
      .home-page .hero-actions a,
      .home-page .link-card,
      .home-page .reference-link {
        transition: none;
      }
    }

    .home-content {
      padding-bottom: 5rem;
    }

    .card-grid .card:nth-child(1) { --reveal-delay: 80ms; }
    .card-grid .card:nth-child(2) { --reveal-delay: 180ms; }
    .card-grid .card:nth-child(3) { --reveal-delay: 280ms; }

    .feature-grid .feature-card:nth-child(1) { --reveal-delay: 80ms; }
    .feature-grid .feature-card:nth-child(2) { --reveal-delay: 180ms; }
    .feature-grid .feature-card:nth-child(3) { --reveal-delay: 280ms; }

    .reference-grid .reference-card:nth-child(1) { --reveal-delay: 80ms; }
    .reference-grid .reference-card:nth-child(2) { --reveal-delay: 180ms; }
    .reference-grid .reference-card:nth-child(3) { --reveal-delay: 280ms; }

    .hero .eyebrow { --reveal-delay: 0ms; }
    .hero h1 { --reveal-delay: 90ms; }
    .hero-copy { --reveal-delay: 180ms; }
    .hero-actions { --reveal-delay: 270ms; }
    .hero-meta { --reveal-delay: 360ms; }

    .home-section > h2 { --reveal-delay: 0ms; }
    .home-section > .section-intro { --reveal-delay: 100ms; }

    .card-icon {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      width: 2.4rem;
      height: 2.4rem;
      margin-bottom: 0.85rem;
      border-radius: 0.75rem;
      border: 1px solid rgba(184, 146, 74, 0.28);
      background: rgba(184, 146, 74, 0.1);
      color: #f0dbb7;
      font-size: 0.78rem;
      font-weight: 700;
      letter-spacing: 0.06em;
      text-transform: uppercase;
    }

    .card-icon--automation {
      background: rgba(108, 47, 42, 0.24);
      border-color: rgba(192, 107, 76, 0.35);
      color: #f2bfab;
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
      transition: transform 180ms ease, background 180ms ease, border-color 180ms ease, box-shadow 180ms ease;
    }

    .hero-actions a:hover,
    .link-card:hover,
    .reference-link:hover {
      transform: translateY(-2px);
      border-color: rgba(184, 146, 74, 0.55);
      box-shadow: 0 0.65rem 1.4rem rgba(0, 0, 0, 0.22);
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
      transition: transform 220ms ease, border-color 220ms ease, box-shadow 220ms ease;
    }

    .home-page .card:hover,
    .home-page .feature-card:hover,
    .home-page .reference-card:hover {
      transform: translateY(-5px);
      border-color: rgba(184, 146, 74, 0.38);
      box-shadow: 0 1rem 2rem rgba(0, 0, 0, 0.28);
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
      transition: transform 220ms ease, border-color 220ms ease, box-shadow 220ms ease;
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

    .automation-element-search {
      display: grid;
      gap: 0.85rem;
      padding: 1.1rem 1.15rem;
      border: 1px solid rgba(184, 146, 74, 0.22);
      border-radius: 1rem;
      background:
        linear-gradient(180deg, rgba(47, 36, 28, 0.82), rgba(23, 19, 16, 0.88)),
        radial-gradient(circle at top right, rgba(184, 146, 74, 0.14), transparent 42%);
      box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.03);
    }

    .automation-element-search > h2 {
      margin: 0;
    }

    .automation-element-search > p {
      margin: 0;
      color: var(--dsa-muted);
      line-height: 1.7;
    }

    .automation-element-results {
      display: grid;
      gap: 0.75rem;
    }

    .automation-element-index-table {
      width: 100%;
      min-width: 42rem;
      border-collapse: collapse;
    }

    .automation-element-index-table th,
    .automation-element-index-table td {
      padding: 0.65rem 0.75rem;
      border-bottom: 1px solid rgba(184, 146, 74, 0.1);
      text-align: left;
      vertical-align: top;
    }

    .automation-element-index-table th {
      position: sticky;
      top: 0;
      background: rgba(37, 31, 26, 0.96);
      color: #f1e7d2;
      text-transform: uppercase;
      letter-spacing: 0.04em;
      font-size: 0.78rem;
    }

    .automation-element-truncated {
      margin: 0;
      color: var(--dsa-muted);
      font-size: 0.92rem;
      font-style: italic;
    }

    [data-automation-entry] {
      scroll-margin-top: 6rem;
    }

    .automation-entry--focused td {
      background: rgba(184, 146, 74, 0.16);
      box-shadow: inset 0 0 0 1px rgba(184, 146, 74, 0.24);
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

    .automation-search-row {
      display: grid;
      gap: 0.55rem;
      margin: 1rem 0 1.2rem;
      padding: 0.95rem 1rem;
      border: 1px solid rgba(184, 146, 74, 0.16);
      border-radius: 0.95rem;
      background:
        linear-gradient(180deg, rgba(47, 36, 28, 0.82), rgba(23, 19, 16, 0.88)),
        radial-gradient(circle at top right, rgba(184, 146, 74, 0.14), transparent 42%);
      box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.03);
    }

    .automation-search-label {
      color: #f1e7d2;
      font-size: 0.84rem;
      font-weight: 700;
      letter-spacing: 0.08em;
      text-transform: uppercase;
    }

    .automation-search-input {
      width: 100%;
      padding: 0.8rem 0.9rem;
      border: 1px solid rgba(184, 146, 74, 0.2);
      border-radius: 0.8rem;
      background: rgba(14, 12, 10, 0.78);
      color: var(--dsa-text);
      font: inherit;
    }

    .automation-search-input::placeholder {
      color: rgba(184, 171, 149, 0.7);
    }

    .automation-empty-state {
      margin: 0 0 1rem;
      padding: 0.85rem 1rem;
      border: 1px solid rgba(184, 146, 74, 0.18);
      border-radius: 0.85rem;
      background: rgba(108, 47, 42, 0.14);
      color: #f1dcc4;
      font-style: italic;
    }

    .automation-highlight {
      padding: 0.06rem 0.2rem;
      border-radius: 0.3rem;
      background: rgba(184, 146, 74, 0.3);
      color: #fff0d0;
      box-shadow: 0 0 0 1px rgba(184, 146, 74, 0.2);
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

    .automation-module-anchor {
      display: block;
      height: 0;
      margin: 0;
      scroll-margin-top: 5.75rem;
      visibility: hidden;
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

    .home-section + .home-section {
      padding-top: 0.5rem;
    }

    @media (min-width: 721px) {
      .docs-page .sidebar-mobile-bar,
      .docs-page .sidebar-backdrop {
        display: none !important;
      }

      .docs-page .sidebar {
        position: sticky;
        top: 5rem;
        left: auto;
        right: auto;
        width: auto;
        max-height: calc(100vh - 6rem);
        margin: 0;
        opacity: 1;
        visibility: visible;
        pointer-events: auto;
        transform: none;
        box-shadow: none;
      }
    }

    @media (max-width: 720px) {
      .header-inner { align-items: flex-start; flex-direction: column; }
      .site-nav { gap: 0.75rem; }
      .docs-page .site-header {
        position: sticky;
        top: 0;
        z-index: 20;
      }
      .docs-page .sidebar-mobile-bar {
        display: block;
        padding: 0 0 0.75rem;
        border-top: 1px solid rgba(184, 146, 74, 0.14);
      }
      .docs-page .content-shell { padding-top: 0.85rem; }
      .hero { padding: 3rem 1rem; }
      .docs-layout.with-sidebar,
      .with-sidebar { grid-template-columns: 1fr; }
      .docs-page .sidebar {
        position: fixed;
        top: var(--mobile-nav-offset, 6rem);
        left: 1rem;
        right: 1rem;
        z-index: 21;
        width: auto;
        max-height: calc(100vh - var(--mobile-nav-offset, 6rem) - 1rem);
        margin: 0;
        transform: translateY(-0.35rem);
        opacity: 0;
        visibility: hidden;
        pointer-events: none;
        transition: opacity 160ms ease, transform 160ms ease, visibility 160ms ease;
        box-shadow: 0 1.25rem 3rem rgba(0, 0, 0, 0.42);
        -webkit-overflow-scrolling: touch;
      }
      .docs-page .sidebar.sidebar--open {
        transform: translateY(0);
        opacity: 1;
        visibility: visible;
        pointer-events: auto;
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
      .automation-element-index-table {
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
    <div class="eyebrow home-reveal home-reveal--immediate">Documentation Hub for DSA5 Foundry</div>
    <h1 class="home-reveal home-reveal--immediate">DSA5 Foundry VTT Wiki</h1>
    <p class="hero-copy home-reveal home-reveal--immediate">This site documents features, workflows, automation coverage, and module usage for the Foundry VTT implementation of DSA5 / The Dark Eye 5. It complements the GitHub wiki with clearer navigation, a calmer reading layout, and a dedicated automation overview.</p>
    <div class="hero-actions home-reveal home-reveal--immediate">
    <a href="{{ '/Home' | relative_url }}">English documentation</a>
    <a href="{{ '/de/de-Home' | relative_url }}">Deutsche Dokumentation</a>
    <a href="{{ '/automation-status' | relative_url }}">Automation status</a>
    </div>
    <div class="hero-meta home-reveal home-reveal--immediate home-reveal--fade">
    <span>German and English docs</span>
    <span>Generated from wiki source</span>
    <span>Manual dual-publish workflow</span>
    </div>
    </section>

    <div class="card-grid">
    <div class="card home-reveal home-reveal--immediate">
    <span class="card-icon" aria-hidden="true">EN</span>
    <h3>English</h3>
    <p>Browse the English wiki pages with preserved page structure and search support.</p>
    <p><a class="link-card" href="{{ '/Home' | relative_url }}">Open English wiki</a></p>
    </div>
    <div class="card home-reveal home-reveal--immediate">
    <span class="card-icon" aria-hidden="true">DE</span>
    <h3>Deutsch</h3>
    <p>Nutze die deutsche Dokumentation mit derselben Seitenstruktur wie im Wiki.</p>
    <p><a class="link-card" href="{{ '/de/de-Home' | relative_url }}">Deutsches Wiki oeffnen</a></p>
    </div>
    <div class="card home-reveal home-reveal--immediate">
    <span class="card-icon card-icon--automation" aria-hidden="true">AT</span>
    <h3>Automation</h3>
    <p>See which modules and content areas are automated, with localized module metadata from the Foundry data exports.</p>
    <p><a class="link-card" href="{{ '/automation-status' | relative_url }}">Open automation status</a></p>
    </div>
    </div>

    <section class="home-section">
    <h2 class="home-reveal">What this site is for</h2>
    <p class="section-intro home-reveal">Use the site when you need quick access to system features, workflow documentation, journal guidance, and a generated view of automation coverage across official modules. The structure stays close to the wiki, but the presentation is tuned for longer reading sessions on desktop and mobile.</p>

    <div class="feature-grid">
    <div class="feature-card home-reveal">
    <h3>Readable long-form docs</h3>
    <p>Interior pages use a quieter parchment-like content surface, stronger heading hierarchy, and improved spacing for tables, lists, code, and screenshots.</p>
    </div>
    <div class="feature-card home-reveal">
    <h3>Language-specific navigation</h3>
    <p>English and German sidebars are generated directly from the wiki navigation files so the site stays aligned with the source material.</p>
    </div>
    <div class="feature-card home-reveal">
    <h3>Automation coverage overview</h3>
    <p>The generated automation page summarizes module coverage and links localized metadata from the Foundry export data.</p>
    </div>
    </div>
    </section>

    <section class="home-section">
    <h2 class="home-reveal">External references</h2>
    <p class="section-intro home-reveal">These links point to the official DSA and VTT references that complement the wiki documentation.</p>

    <div class="reference-grid">
    <div class="reference-card home-reveal">
    <h3>Ulisses Spiele</h3>
    <p>The German DSA landing page with the main game system overview and official product context.</p>
    <p><a class="reference-link" href="https://ulisses-spiele.de/game-system/das-schwarze-auge/">Open German DSA page</a></p>
    </div>
    <div class="reference-card home-reveal">
    <h3>Ulisses US VTT</h3>
    <p>The English Virtual Tabletop product page for The Dark Eye / DSA VTT ecosystem.</p>
    <p><a class="reference-link" href="https://ulisses-us.com/ulisses-virtual-tabletops/virtual-tabletop-dsa-vtt/">Open English VTT page</a></p>
    </div>
    <div class="reference-card home-reveal">
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

def automation_navigation_items
  rows = AutomationStatusGenerator.build_rows

  [{
    "title" => "Modules",
    "items" => rows.map do |row|
      {
        "label" => "#{row[:label_de]} / #{row[:label_en]}",
        "url" => "/automation-status##{AutomationStatusGenerator.module_anchor(row)}"
      }
    end
  }]
end

def write_navigation_data(lookup)
  en_groups = parse_sidebar(EN_SIDEBAR, DOCS_DIR.join("Home.md"), lookup)
  de_groups = parse_sidebar(DE_SIDEBAR, DOCS_DIR.join("de", "de-Home.md"), lookup)

  navigation = {
    "en" => additional_navigation_items("en", en_groups, lookup),
    "de" => additional_navigation_items("de", de_groups, lookup),
    "automation" => automation_navigation_items
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
write_site_js
ensure_hero_asset
copied = copied_markdown_files
copy_static_assets
rewrite_links(copied)
write_navigation_data(build_lookup(copied))
write_index_page
AutomationStatusGenerator.write_automation_status(DOCS_DIR)
puts "Prepared docs in #{DOCS_DIR}"