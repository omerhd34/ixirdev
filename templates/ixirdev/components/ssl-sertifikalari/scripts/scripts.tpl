<script>
 {literal}
  (function() {
    var itemsContainer = document.getElementById('ixirSslItems');
    if (!itemsContainer) return;

    var rows = Array.prototype.slice.call(itemsContainer.querySelectorAll('.ixir-ssl-row'));
    var typeBtns = Array.prototype.slice.call(document.querySelectorAll('.filter-btn'));
    var brandBtns = Array.prototype.slice.call(document.querySelectorAll('.brand-filter-btn'));
    var countEl = document.getElementById('sslVisibleCount');
    var labelEl = document.getElementById('sslActiveFilterName');
    var emptyEl = document.getElementById('ixirSslEmpty');
    var resetBtn = document.getElementById('ixirSslResetBtn');
    var emptyResetBtn = document.getElementById('ixirSslEmptyReset');

    var sortToolbarBtn = document.getElementById('sslToolbarSortBtn');
    var sortToolbarIcon = document.getElementById('sslToolbarSortIcon');
    var sortToolbarText = document.getElementById('sslToolbarSortText');

    var currentType = 'all';
    var currentBrand = null;
    var currentSort = 'asc';

    var typeNames = {
      'all': 'Tüm SSL Sertifikaları',
      'dv': 'Hızlı Kurulum (DV SSL)',
      'ov': 'Şirketler İçin (OV SSL)',
      'ev': 'Kurumsal SSL (EV SSL)',
      'wildcard': 'Wildcard SSL (Subdomain)'
    };

    var brandNames = {
      'comodo': 'COMODO (Sectigo)',
      'digicert': 'DigiCert',
      'rapidssl': 'RapidSSL',
      'geotrust': 'GeoTrust',
      'essential': 'Essential SSL',
      'certum': 'Certum'
    };

    function sortRows(direction) {
      currentSort = direction;

      rows.sort(function(a, b) {
        var priceA = parseFloat(a.getAttribute('data-price') || '0');
        var priceB = parseFloat(b.getAttribute('data-price') || '0');
        return currentSort === 'asc' ? (priceA - priceB) : (priceB - priceA);
      });

      rows.forEach(function(row) {
        itemsContainer.appendChild(row);
      });

      var isAsc = (currentSort === 'asc');
      if (sortToolbarBtn) {
        sortToolbarBtn.setAttribute('data-sort', currentSort);
      }
      if (sortToolbarIcon) {
        sortToolbarIcon.className = isAsc ? 'fas fa-sort-amount-down-alt' : 'fas fa-sort-amount-down';
      }
      if (sortToolbarText) {
        sortToolbarText.textContent = isAsc ? 'En Düşük Fiyat' : 'En Yüksek Fiyat';
      }
    }

    function toggleSort() {
      var nextSort = (currentSort === 'asc') ? 'desc' : 'asc';
      sortRows(nextSort);
      applyFilter();
    }

    if (sortToolbarBtn) {
      sortToolbarBtn.addEventListener('click', toggleSort);
    }

    function applyFilter() {
      var visibleCount = 0;

      rows.forEach(function(row) {
        var rowTypes = (row.getAttribute('data-type') || '').split(' ');
        var rowBrand = row.getAttribute('data-brand') || '';

        var matchType = (currentType === 'all') || rowTypes.indexOf(currentType) !== -1;
        var matchBrand = !currentBrand || (rowBrand === currentBrand);

        if (matchType && matchBrand) {
          row.style.display = '';
          visibleCount++;
        } else {
          row.style.display = 'none';
        }
      });

      if (countEl) {
        countEl.textContent = visibleCount;
      }

      if (labelEl) {
        if (currentBrand && currentType !== 'all') {
          labelEl.textContent = brandNames[currentBrand] + ' - ' + typeNames[currentType];
        } else if (currentBrand) {
          labelEl.textContent = brandNames[currentBrand] + ' Sertifikaları';
        } else {
          labelEl.textContent = typeNames[currentType] || 'SSL Sertifikaları';
        }
      }

      if (emptyEl) {
        emptyEl.style.display = visibleCount === 0 ? 'block' : 'none';
      }
    }

    typeBtns.forEach(function(btn) {
      btn.addEventListener('click', function() {
        typeBtns.forEach(function(b) {
          b.classList.remove('is-active');
          b.setAttribute('aria-selected', 'false');
        });
        btn.classList.add('is-active');
        btn.setAttribute('aria-selected', 'true');
        currentType = btn.getAttribute('data-filter') || 'all';
        applyFilter();
      });
    });

    brandBtns.forEach(function(btn) {
      btn.addEventListener('click', function() {
        var brand = btn.getAttribute('data-brand');
        if (btn.classList.contains('is-active')) {
          btn.classList.remove('is-active');
          currentBrand = null;
        } else {
          brandBtns.forEach(function(b) { b.classList.remove('is-active'); });
          btn.classList.add('is-active');
          currentBrand = brand;
        }
        applyFilter();
      });
    });

    function resetFilters() {
      currentType = 'all';
      currentBrand = null;
      typeBtns.forEach(function(b, idx) {
        var isFirst = idx === 0;
        b.classList.toggle('is-active', isFirst);
        b.setAttribute('aria-selected', isFirst ? 'true' : 'false');
      });
      brandBtns.forEach(function(b) {
        b.classList.remove('is-active');
      });
      sortRows('asc');
      applyFilter();
    }

    if (resetBtn) resetBtn.addEventListener('click', resetFilters);
    if (emptyResetBtn) emptyResetBtn.addEventListener('click', resetFilters);

    function scrollToPlans() {
      var targetSection = document.querySelector('.ixir-ssl-head') || document.getElementById('ixir-ssl-plans-title') || document.getElementById('ixir-wh-plans');
      if (targetSection) {
        var header = document.querySelector('.ixir-header') || document.querySelector('.menuTopFix') || document.querySelector('.header');
        var headerHeight = header ? header.offsetHeight : 113;
        var rect = targetSection.getBoundingClientRect();
        var scrollTop = window.pageYOffset || document.documentElement.scrollTop;
        var targetY = rect.top + scrollTop - headerHeight - 15;
        window.scrollTo({
          top: Math.max(0, targetY),
          behavior: 'smooth'
        });
      }
    }

    var jumpBtns = Array.prototype.slice.call(document.querySelectorAll('.ssl-type-jump-btn, .ixir-ssl-plans-btn, .ixir-wh-plans-btn'));
    jumpBtns.forEach(function(jBtn) {
      jBtn.addEventListener('click', function(e) {
        e.preventDefault();
        var targetFilter = jBtn.getAttribute('data-target-filter');
        if (targetFilter) {
          var matchedBtn = document.querySelector('.filter-btn[data-filter="' + targetFilter + '"]');
          if (matchedBtn) {
            matchedBtn.click();
          }
        }
        scrollToPlans();
      });
    });

    sortRows('asc');

    if (window.IntersectionObserver) {
      var obs = new IntersectionObserver(function(entries) {
        entries.forEach(function(entry) {
          if (entry.isIntersecting) {
            entry.target.classList.add('is-in');
            obs.unobserve(entry.target);
          }
        });
      }, { threshold: 0.1 });

      rows.forEach(function(row) {
        obs.observe(row);
      });
    }
  })();
 {/literal}
</script>
