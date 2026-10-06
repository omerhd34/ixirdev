 <script>
  {literal}
   (function() {
    var inputs = document.querySelectorAll('.ixir-transfer-input');
    if (!inputs.length) {
     return;
    }
    var phone = window.matchMedia('(max-width: 991px)').matches ||
     window.matchMedia('(pointer: coarse)').matches ||
     window.matchMedia('(hover: none)').matches;

    function arm(input) {
     input.removeAttribute('readonly');
     input.removeAttribute('inputmode');
    }
    window.ixirArmTransferInput = arm;
    if (!phone) {
     Array.prototype.forEach.call(inputs, arm);
     return;
    }
    Array.prototype.forEach.call(inputs, function(input) {
     var nativeFocus = HTMLElement.prototype.focus;

     function openFromTouch() {
      arm(input);
      input.focus = function() {
       nativeFocus.call(input);
      };
      nativeFocus.call(input);
     }
     input.focus = function() {};
     input.addEventListener('touchend', openFromTouch);
     input.addEventListener('pointerup', function(e) {
      if (!e.pointerType || e.pointerType === 'touch' || e.pointerType === 'pen') {
       openFromTouch();
      }
     });
    });
   })();

   (function() {
    var form = document.getElementById('frmDomainTransfer');
    var domain = document.getElementById('inputTransferDomain');
    var epp = document.getElementById('inputAuthCode');
    if (!form || !domain || !epp) {
     return;
    }

    function mark(input, invalid) {
     var box = input.closest ? input.closest('.ixir-domain-checker') : null;
     var normal = input.getAttribute('data-placeholder') || '';
     var error = input.getAttribute('data-placeholder-error') || '';
     if (!box) {
      return;
     }
     if (invalid) {
      box.classList.remove('is-shake');
      void box.offsetWidth;
      box.classList.add('is-invalid', 'is-shake');
      input.setAttribute('aria-invalid', 'true');
      input.value = '';
      input.setAttribute('placeholder', error);
     } else {
      box.classList.remove('is-invalid', 'is-shake');
      input.removeAttribute('aria-invalid');
      input.setAttribute('placeholder', ' ');
     }
    }

    function empty(input) {
     return !String(input.value || '').replace(/^\s+|\s+$/g, '');
    }
    domain.addEventListener('input', function() {
     if (!empty(domain)) {
      mark(domain, false);
     }
    });
    epp.addEventListener('input', function() {
     if (!empty(epp)) {
      mark(epp, false);
     }
    });
    form.addEventListener('submit', function(e) {
     var domainBad = empty(domain);
     var eppBad = empty(epp);
     mark(domain, domainBad);
     mark(epp, eppBad);
     if (!domainBad && !eppBad) {
      return;
     }
     e.preventDefault();
     e.stopPropagation();
     var first = domainBad ? domain : epp;
     if (window.ixirArmTransferInput) {
      window.ixirArmTransferInput(first);
     }
     first.focus();
    }, true);
   })();

   (function() {
    var hero = document.getElementById('home-banner');
    if (!hero) {
     return;
    }

    function apply() {
     var offsetY = Math.max(0, Math.round(hero.getBoundingClientRect().top + (window.pageYOffset || window.scrollY ||
      0)));
     hero.style.setProperty('--ixir-hero-offset', offsetY + 'px');
    }
    apply();
    window.addEventListener('resize', apply);
    window.addEventListener('load', apply);
   })();

   (function() {
    var viewport = document.getElementById('ixirDomainTlds');
    if (!viewport) {
     return;
    }
    var track = viewport.querySelector('.ixir-tld-track');
    if (!track || !track.children.length) {
     return;
    }
    var originalHTML = track.innerHTML;
    var x = 0;
    var setWidth = 0;
    var dragging = false;
    var paused = false;
    var startX = 0;
    var startOffset = 0;
    var lastX = 0;
    var velocity = 0;
    var resumeTimer = null;
    var reduceMotion = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
    var speed = reduceMotion ? 0 : 0.45;

    function build() {
     var keep = x;
     track.innerHTML = originalHTML;
     var baseWidth = track.scrollWidth;
     var need = Math.max(2, Math.ceil((viewport.clientWidth * 2) / Math.max(baseWidth, 1)) + 1);
     var i;
     var html = originalHTML;
     for (i = 1; i < need; i++) {
      html += originalHTML;
     }
     track.innerHTML = html + html;
     setWidth = track.scrollWidth / 2;
     x = keep;
     apply();
    }

    function wrap() {
     if (!setWidth) {
      return;
     }
     while (x <= -setWidth) {
      x += setWidth;
     }
     while (x > 0) {
      x -= setWidth;
     }
    }

    function apply() {
     wrap();
     track.style.transform = 'translate3d(' + x + 'px,0,0)';
    }

    function tick() {
     if (!dragging && !paused && speed) {
      x -= speed;
      apply();
     }
     window.requestAnimationFrame(tick);
    }

    function endDrag() {
     if (!dragging) {
      return;
     }
     dragging = false;
     viewport.classList.remove('is-dragging');
     x += velocity * 10;
     apply();
     window.clearTimeout(resumeTimer);
     resumeTimer = window.setTimeout(function() {
      if (!dragging) {
       paused = false;
      }
     }, 350);
    }
    viewport.addEventListener('pointerdown', function(e) {
     if (e.pointerType === 'mouse' && e.button !== 0) {
      return;
     }
     dragging = true;
     paused = true;
     startX = e.clientX;
     startOffset = x;
     lastX = e.clientX;
     velocity = 0;
     viewport.classList.add('is-dragging');
     if (viewport.setPointerCapture) {
      viewport.setPointerCapture(e.pointerId);
     }
     e.preventDefault();
    });
    viewport.addEventListener('pointermove', function(e) {
     if (!dragging) {
      return;
     }
     velocity = e.clientX - lastX;
     lastX = e.clientX;
     x = startOffset + (e.clientX - startX);
     apply();
    });
    viewport.addEventListener('pointerup', endDrag);
    viewport.addEventListener('pointercancel', endDrag);
    viewport.addEventListener('pointerenter', function(e) {
     if (e.pointerType === 'mouse' && !dragging) {
      paused = true;
     }
    });
    viewport.addEventListener('pointerleave', function(e) {
     if (e.pointerType === 'mouse' && !dragging) {
      paused = false;
     }
    });
    window.addEventListener('resize', build);
    window.addEventListener('load', build);
    build();
    window.requestAnimationFrame(tick);
   })();

   (function initIxirDomainPrices() {
    var body = document.getElementById('ixirDomainPriceBody');
    var pager = document.getElementById('ixirDomainPricePager');
    var search = document.getElementById('ixirDomainPriceSearch');
    var table = body ? body.closest('table') : null;
    if (!body || !pager) {
     return;
    }
    var rows = Array.prototype.slice.call(body.querySelectorAll('tr'));
    var perPage = 10;
    var page = 1;
    var sortKey = '';
    var sortDir = 'asc';

    function value(row, key) {
     var raw = row.getAttribute('data-' + key) || '';
     if (key === 'tld' || key === 'period') {
      return raw.toLowerCase();
     }
     return parseFloat(raw) || 0;
    }

    function filtered() {
     var q = (search && search.value ? search.value : '').toLowerCase().replace(/^\s+|\s+$/g, '');
     var list = !q ? rows.slice() : rows.filter(function(row) {
      return (row.getAttribute('data-tld') || row.textContent || '').toLowerCase().indexOf(q) !== -1;
     });
     if (!sortKey) {
      return list;
     }
     return list.sort(function(a, b) {
      var av = value(a, sortKey);
      var bv = value(b, sortKey);
      if (av < bv) {
       return sortDir === 'asc' ? -1 : 1;
      }
      if (av > bv) {
       return sortDir === 'asc' ? 1 : -1;
      }
      return 0;
     });
    }

    function render() {
     var list = filtered();
     var pages = Math.max(1, Math.ceil(list.length / perPage));
     if (page > pages) {
      page = pages;
     }
     rows.forEach(function(row) {
      row.style.display = 'none';
     });
     var start = (page - 1) * perPage;
     list.slice(start, start + perPage).forEach(function(row) {
      row.style.display = '';
     });
     pager.innerHTML = '';
     var prev = document.createElement('button');
     prev.type = 'button';
     prev.textContent = 'Geri';
     prev.disabled = page <= 1;
     prev.addEventListener('click', function() {
      page -= 1;
      render();
     });
     pager.appendChild(prev);
     for (var i = 1; i <= pages; i += 1) {
      var btn = document.createElement('button');
      btn.type = 'button';
      btn.textContent = String(i);
      if (i === page) {
       btn.className = 'is-active';
      }
      btn.addEventListener('click', function(n) {
       return function() {
        page = n;
        render();
       };
      }(i));
      pager.appendChild(btn);
     }
     var next = document.createElement('button');
     next.type = 'button';
     next.textContent = 'İleri';
     next.disabled = page >= pages;
     next.addEventListener('click', function() {
      page += 1;
      render();
     });
     pager.appendChild(next);
    }

    if (table) {
     Array.prototype.forEach.call(table.querySelectorAll('th[data-sort]'), function(th) {
      th.addEventListener('click', function() {
       var key = th.getAttribute('data-sort') || '';
       if (sortKey === key) {
        sortDir = sortDir === 'asc' ? 'desc' : 'asc';
       } else {
        sortKey = key;
        sortDir = 'asc';
       }
       Array.prototype.forEach.call(table.querySelectorAll('th[data-sort]'), function(item) {
        item.classList.toggle('is-sorted', item === th);
        item.classList.toggle('is-desc', item === th && sortDir === 'desc');
       });
       page = 1;
       render();
      });
     });
    }
    if (search) {
     search.addEventListener('input', function() {
      page = 1;
      render();
     });
    }
    render();
   })();
  {/literal}
</script>