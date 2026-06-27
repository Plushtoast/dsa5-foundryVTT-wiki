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
