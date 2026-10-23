{if $templatefile != 'clientareahome' && $templatefile != 'clientareaproducts' && $templatefile != 'clientareadomains' && $templatefile != 'whois-sorgulama' && !$ixirCorporate && !$ixirDomainSearchPage && !$ixirDomainTransferPage && !($templatefile == 'product-landing' && ($ixirPageSlug == 'linux-hosting' || $ixirPageSlug == 'windows-hosting' || $ixirPageSlug == 'wordpress-hosting' || $ixirPageSlug == 'developer-hosting' || $ixirPageSlug == 'cloud-drive' || $ixirPageSlug == 'kurumsal-mail-hosting' || $ixirPageSlug == 'kurumsal-mail-server' || $ixirPageSlug == 'linux-reseller-hosting' || $ixirPageSlug == 'windows-reseller-hosting' || $ixirPageSlug == 'cloud-server' || $ixirPageSlug == 'dedicated-server' || $ixirPageSlug == 'colocation' || $ixirPageSlug == 'pci-tarama' || $ixirPageSlug == 'ek-servisler' || $ixirPageSlug == 'server-servisleri' || $ixirPageSlug == 'antispam' || $ixirPageSlug == 'outbound-mail-gateway' || $ixirPageSlug == 'site-pratik' || $ixirPageSlug == 'ssl-sertifikalari')) && ($templatefile != 'homepage' || $twitterusername || $announcements)}
 </div>
 {if !$inShoppingCart && $secondarySidebar && $secondarySidebar->hasChildren()}
  <div class="col-md-3 pull-md-left sidebar sidebar-secondary">
   {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
  </div>
 {/if}
 <div class="clearfix"></div>
 </div>
 </div>
 </section>
{/if}

{if $templatefile == 'homepage'}
 {include file="$template/components/home/ixir-next/ixir-next.tpl"}
{/if}

{if !$ixirIsAuthPage && !$showingLoginPage && $templatefile != 'login' && $templatefile != 'clientregister' && $templatefile != 'password-reset' && $templatefile != 'clientareahome' && $templatefile != 'clientareaproducts' && $templatefile != 'clientareadomains' && $filename != 'ixir-hesabim' && $filename != 'register'}
 {include file="$template/components/help/help.tpl"}
{/if}

{include file="$template/components/animations/ixir-slides.tpl"}

{include file="$template/components/footer/footer.tpl"}

<div id="fullpage-overlay" class="hidden">
 <div class="outer-wrapper">
  <div class="inner-wrapper">
   <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg">
   <br>
   <span class="msg"></span>
  </div>
 </div>
</div>

<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
 <div class="modal-dialog">
  <div class="modal-content panel-primary">
   <div class="modal-header panel-heading">
    <button type="button" class="close" data-dismiss="modal">
     <span aria-hidden="true">&times;</span>
     <span class="sr-only">{$LANG.close}</span>
    </button>
    <h4 class="modal-title"></h4>
   </div>
   <div class="modal-body panel-body">
    {$LANG.loading}
   </div>
   <div class="modal-footer panel-footer">
    <div class="pull-left loader">
     <i class="fas fa-circle-notch fa-spin"></i>
     {$LANG.loading}
    </div>
    <button type="button" class="btn btn-default" data-dismiss="modal">
     {$LANG.close}
    </button>
    <button type="button" class="btn btn-primary modal-submit">
     {$LANG.submit}
    </button>
   </div>
  </div>
 </div>
</div>

{include file="$template/includes/generate-password.tpl"}

<script>
 {literal}
  (function() {
   function getStickyOffset() {
    var bottom = 0;
    var selectors = ['.ixir-header', '.mobile-header', '.news-bar'];
    for (var i = 0; i < selectors.length; i++) {
     var el = document.querySelector(selectors[i]);
     if (!el || el.classList.contains('is-hidden')) continue;
     var style = window.getComputedStyle(el);
     if (style.display === 'none' || style.visibility === 'hidden' || style.position !== 'fixed') continue;
     var rect = el.getBoundingClientRect();
     if (rect.height > 0 && rect.bottom > bottom) bottom = rect.bottom;
    }
    return Math.ceil(bottom);
   }

   function cleanHashFromUrl() {
    if (window.location.hash && (window.location.hash.indexOf('ixir-') !== -1 || window.location.hash ===
      '#ixir-wh-plans')) {
     if (window.history && window.history.replaceState) {
      window.history.replaceState(null, document.title, window.location.pathname + window.location.search);
     }
    }
   }

   cleanHashFromUrl();
   if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', cleanHashFromUrl);
   }
   window.addEventListener('load', cleanHashFromUrl);
   window.addEventListener('hashchange', cleanHashFromUrl);

   document.addEventListener('click', function(e) {
    var link = e.target.closest('a');
    if (!link) return;

    var href = link.getAttribute('href');
    if (!href) return;

    var hashIndex = href.indexOf('#');
    if (hashIndex === -1) return;

    var hash = href.slice(hashIndex);
    if (!hash || hash === '#' || hash.length < 2) return;

    if (link.hasAttribute('data-toggle') || link.getAttribute('role') === 'tab') return;

    var targetId = hash.slice(1);
    var targetEl = document.getElementById(targetId);
    if (!targetEl) return;

    var linkPath = (link.pathname || '').replace(/\/+$/, '');
    var currPath = (window.location.pathname || '').replace(/\/+$/, '');
    if (link.origin && link.origin !== window.location.origin) return;
    if (linkPath && linkPath !== currPath && href.charAt(0) !== '#') return;

    var alreadyPrevented = e.defaultPrevented;
    e.preventDefault();

    if (!alreadyPrevented) {
     if (e.metaKey || e.ctrlKey || e.shiftKey || e.altKey || (e.button !== undefined && e.button !== 0)) return;
     var y = window.pageYOffset || document.documentElement.scrollTop || 0;
     var dest = Math.max(0, Math.round(targetEl.getBoundingClientRect().top + y - getStickyOffset()));
     var reduce = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
     if (reduce || Math.abs(dest - y) < 2) {
      window.scrollTo(0, dest);
     } else {
      window.scrollTo({
       top: dest,
       behavior: 'smooth'
      });
     }
    }

    cleanHashFromUrl();
   }, false);
  })();
 {/literal}
</script>

{if $templatefile == 'viewcart' && !$checkout}
 <link href="{$WEB_ROOT}/templates/{$template}/css/cart.css?v={$versionHash}-r25" rel="stylesheet">
 <script>
  {literal}
   (function() {
    var planNames = {
     'budgetdev': 'Starter', 'budget dev': 'Starter', 'economydev': 'Essential', 'economy dev': 'Essential',
     'prodev': 'Advanced', 'professional dev': 'Advanced', 'extremedev': 'Premium', 'extreme dev': 'Premium',
     'budgetlin': 'Starter', 'economylin': 'Essential', 'prolin': 'Advanced', 'extremelin': 'Premium',
     'budgetwin': 'Starter', 'economywin': 'Essential', 'prowin': 'Advanced', 'extremewin': 'Premium',
     'budgetwp': 'Starter', 'ecowp': 'Growth', 'prowp': 'Advanced',
     'corelin': 'Starter', 'starterlin': 'Essential', 'premiumresellerlin': 'Advanced', 'expertresellerlin': 'Premium',
     'corewin': 'Starter', 'starterwin': 'Essential', 'premiumresellerwin': 'Advanced', 'expertresellerwin': 'Premium',
     'budgetmail': 'Starter', 'essentialmail': 'Essential', 'economymail': 'Advanced', 'professionalmail': 'Premium',
     'budgetmailserver': 'Starter', 'economymailserver': 'Essential', 'professionalmailserver': 'Advanced', 'expertmailserver': 'Premium',
     'budgetcloud': 'Starter', 'economycloud': 'Essential', 'premiumcloud': 'Advanced', 'expertcloud': 'Premium',
     'budgetcloudpro': 'Starter', 'economycloudpro': 'Essential', 'premiumcloudpro': 'Advanced', 'expertcloudpro': 'Premium',
     'cloud drive sprinkle': 'Starter', 'cloud drive thunderstrom': 'Growth', 'cloud drive typhoon': 'Advanced',
     'budgetantispam': 'Starter', 'essentialantispam': 'Essential', 'economyantispam': 'Advanced', 'professionalantispam': 'Premium',
     'budgetoutbound': 'Starter', 'economyoutbound': 'Growth', 'professionaloutbound': 'Advanced',
     'sitepratikstarter': 'Starter', 'sitepratikgrowth': 'Growth', 'sitepratikadvanced': 'Advanced',
     'budgetmanagement': 'Starter', 'economymanagement': 'Growth', 'advancedmanagement': 'Advanced'
    };

    function planLabel(name) {
     var key = String(name || '').replace(/\s+/g, ' ').trim().toLowerCase();
     return planNames[key] || name;
    }

    function plain(node) {
     if (!node) return '';
     var copy = node.cloneNode(true);
     var controls = copy.querySelectorAll('a, button');
     for (var i = 0; i < controls.length; i++) controls[i].remove();
     return copy.textContent.replace(/\s+/g, ' ').trim();
    }

    function parseMoney(text) {
     var cleaned = String(text || '').replace(/[^\d,.\-]/g, '');
     if (!cleaned) return NaN;
     var comma = cleaned.lastIndexOf(',');
     var dot = cleaned.lastIndexOf('.');
     if (comma > -1 && dot > -1) {
      cleaned = comma > dot ? cleaned.replace(/\./g, '').replace(',', '.') : cleaned.replace(/,/g, '');
     } else if (comma > -1) {
      var bits = cleaned.split(',');
      cleaned = bits[bits.length - 1].length === 2 ? cleaned.replace(',', '.') : cleaned.replace(/,/g, '');
     }
     return parseFloat(cleaned);
    }

    function stripCurrency(text) {
     return String(text || '')
      .replace(/^\s*(?:₺|TL|TRY|USD|EUR|GBP|\$|€|£)\s*/i, '')
      .replace(/\s*(?:₺|TL|TRY|USD|EUR|GBP|\$|€|£)\s*$/i, '')
      .trim();
    }

    function formatMoney(sample, value) {
     var commaDecimal = String(sample).lastIndexOf(',') > String(sample).lastIndexOf('.');
     var fixed = value.toFixed(2).split('.');
     return commaDecimal ? fixed[0] + ',' + fixed[1] : fixed[0] + '.' + fixed[1];
    }

    function taxRate() {
     var summary = document.getElementById('orderSummary');
     if (!summary) return 0;
     var match = summary.textContent.match(/%\s*([0-9]+(?:[.,][0-9]+)?)/);
     if (!match) return 0;
     return parseFloat(match[1].replace(',', '.')) / 100;
    }

    function cartPageUrl() {
     var base = (typeof whmcsBaseUrl === 'string' ? whmcsBaseUrl : '').replace(/\/$/, '');
     return base + '/sepet';
    }

    function paintRowPrice(row, price) {
     if (!row || !price) return;
     var priceEl = row.querySelector('.ixir-cart-price');
     var totalEl = row.querySelector('.ixir-cart-total');
     var sample = (priceEl && priceEl.textContent) ? priceEl.textContent : price;
     var amount = parseMoney(price);
     var shown = !isNaN(amount) ? formatMoney(sample, amount) : stripCurrency(price);
     if (priceEl) priceEl.textContent = shown;
     if (!totalEl) return;
     var rate = taxRate();
     totalEl.textContent = (rate && !isNaN(amount)) ? formatMoney(shown, Math.round(amount * (1 + rate) * 100) / 100) : shown;
    }

    function linePriceFromItem(item) {
     var priceNode = item && item.querySelector('.item-price span:not(.cycle)');
     return priceNode ? priceNode.textContent.replace(/\s+/g, ' ').trim() : '';
    }

    function findCartItem(doc, kind, key) {
     var items = doc.querySelectorAll('#order-standard_cart .view-cart-items .item');
     for (var i = 0; i < items.length; i++) {
      if (kind === 'domain') {
       var domain = items[i].querySelector('.item-domain');
       if (domain && domain.textContent.replace(/\s+/g, ' ').trim().toLowerCase() === String(key).toLowerCase()) return items[i];
       continue;
      }
      var remove = items[i].querySelector('.btn-remove-from-cart');
      var source = remove ? ((remove.getAttribute('onclick') || '') + ' ' + (remove.getAttribute('href') || '')) : '';
      if (new RegExp("removeItem\\(\\s*['\"]p['\"]\\s*,\\s*['\"]?" + key + "['\"]?\\s*\\)").test(source)) return items[i];
     }
     return null;
    }

    function plainAmount(text) {
     var amount = parseMoney(text);
     return !isNaN(amount) ? formatMoney(text, amount) : stripCurrency(text);
    }

    function paintTotals() {
     var ids = ['ixirSubtotal', 'ixirDiscount', 'ixirTax', 'ixirTax2', 'ixirGrand'];
     for (var i = 0; i < ids.length; i++) {
      var node = document.getElementById(ids[i]);
      if (node) node.textContent = plainAmount(node.textContent);
     }
    }

    function applySummary(doc) {
     var ids = ['subtotal', 'discount', 'taxTotal1', 'taxTotal2', 'totalDueToday'];
     var mirrors = { subtotal: 'ixirSubtotal', discount: 'ixirDiscount', taxTotal1: 'ixirTax', taxTotal2: 'ixirTax2', totalDueToday: 'ixirGrand' };
     for (var i = 0; i < ids.length; i++) {
      var next = doc.getElementById(ids[i]);
      var current = document.getElementById(ids[i]);
      var text = next ? next.textContent.replace(/\s+/g, ' ').trim() : '';
      if (next && current) current.textContent = text;
      var mirror = document.getElementById(mirrors[ids[i]]);
      if (mirror && text) mirror.textContent = plainAmount(text);
     }
     var recurring = ['recurringMonthly', 'recurringQuarterly', 'recurringSemiAnnually', 'recurringAnnually', 'recurringBiennially', 'recurringTriennially'];
     for (var r = 0; r < recurring.length; r++) {
      var nextRecurring = doc.getElementById(recurring[r]);
      var currentRecurring = document.getElementById(recurring[r]);
      if (!nextRecurring || !currentRecurring) continue;
      currentRecurring.style.display = nextRecurring.style.display;
      var cost = nextRecurring.querySelector('.cost');
      var live = currentRecurring.querySelector('.cost');
      if (cost && live) live.textContent = cost.textContent.replace(/\s+/g, ' ').trim();
     }
    }

    var priceRefresh = 0;
    function refreshCartPrices(kind, key, row, fallbackPrice) {
     if (fallbackPrice) paintRowPrice(row, fallbackPrice);
     var ticket = ++priceRefresh;
     if (row) row._ixirPriceTicket = ticket;
     return fetch(cartPageUrl(), { credentials: 'same-origin', cache: 'no-store' })
      .then(function(response) { return response.text(); })
      .then(function(html) {
       var doc = new DOMParser().parseFromString(html, 'text/html');
       if (!row || row._ixirPriceTicket === ticket) {
        var price = linePriceFromItem(findCartItem(doc, kind, key));
        if (price) paintRowPrice(row, price);
       }
       if (ticket === priceRefresh) applySummary(doc);
      });
    }

    function paintMiniMeta(type, index, label) {
     var links = document.querySelectorAll('.ixir-cart-item-remove');
     for (var i = 0; i < links.length; i++) {
      if (links[i].getAttribute('data-type') !== type) continue;
      if (String(links[i].getAttribute('data-index')) !== String(index)) continue;
      if ((links[i].getAttribute('data-indexes') || String(index)) !== String(index)) continue;
      var meta = links[i].closest('li') && links[i].closest('li').querySelector('.ixir-cart-item-meta');
      if (meta) meta.textContent = label;
     }
    }

    function markCycleOption(list, selected) {
     var options = list.querySelectorAll('.ixir-cart-cycle-option');
     for (var i = 0; i < options.length; i++) {
      var on = options[i] === selected;
      options[i].classList.toggle('is-current', on);
      options[i].setAttribute('aria-selected', on ? 'true' : 'false');
     }
    }

    function domainPeriodMenu(item, domainName) {
   var labels = {};
   var prices = {};
   var links = item.querySelectorAll('a[onclick*="selectDomainPeriodInCart"]');
   for (var i = 0; i < links.length; i++) {
    var match = (links[i].getAttribute('onclick') || '').match(/selectDomainPeriodInCart\(\s*'([^']*)'\s*,\s*'([^']*)'\s*,\s*(\d+)\s*,\s*'([^']*)'\s*\)/);
    if (!match) continue;
    if (!domainName) domainName = match[1];
    labels[parseInt(match[3], 10)] = match[3] + ' ' + match[4];
    prices[parseInt(match[3], 10)] = match[2];
   }
   for (var year = 1; year <= 10; year++) {
    if (!labels[year]) labels[year] = year + ' Yıl';
   }
   var currentText = '';
   var toggle = item.querySelector('.dropdown-toggle');
   var periodNode = item.querySelector('.cycle:not(.renewal)');
   if (toggle) currentText = toggle.textContent.replace(/\s+/g, ' ').trim();
   else if (periodNode) currentText = periodNode.textContent.replace(/\s+/g, ' ').trim();
   var currentYear = parseInt(currentText, 10);
   if (!currentYear || currentYear < 1 || currentYear > 10) currentYear = 1;

   var menu = document.createElement('div');
   menu.className = 'ixir-cart-cycle-menu';
   var button = document.createElement('button');
   button.type = 'button';
   button.className = 'ixir-cart-cycle-btn';
   button.setAttribute('aria-haspopup', 'listbox');
   button.setAttribute('aria-expanded', 'false');
   button.setAttribute('aria-label', 'Kayıt Periyodu');
   var value = document.createElement('span');
   value.className = 'ixir-cart-cycle-value';
   value.textContent = labels[currentYear];
   var chevron = document.createElement('span');
   chevron.className = 'ixir-cart-cycle-chevron';
   chevron.setAttribute('aria-hidden', 'true');
   button.appendChild(value);
   button.appendChild(chevron);
   var list = document.createElement('div');
   list.className = 'ixir-cart-cycle-list';
   list.setAttribute('role', 'listbox');
   list.hidden = true;

   function chooseYear(year, option) {
    if (menu.classList.contains('is-busy')) return;
    if (year === currentYear) {
     closeCycleMenus();
     return;
    }
    if (!domainName) return;
    menu.classList.add('is-busy');
    button.disabled = true;
    value.textContent = labels[year];
    closeCycleMenus();
    var body = new FormData();
    body.append('a', 'updateDomainPeriod');
    body.append('domain', domainName);
    body.append('period', String(year));
    body.append('token', tokenValue());
    var base = (typeof whmcsBaseUrl === 'string' ? whmcsBaseUrl : '').replace(/\/$/, '');
    var previousYear = currentYear;
    fetch(base + '/cart.php', { method: 'POST', credentials: 'same-origin', body: body })
     .then(function(response) {
      if (!response.ok) throw new Error('period');
      currentYear = year;
      markCycleOption(list, option);
      var row = menu.closest('.ixir-cart-row');
      return refreshCartPrices('domain', domainName, row, prices[year]).catch(function() {});
     })
     .then(function() {
      menu.classList.remove('is-busy');
      button.disabled = false;
     })
     .catch(function() {
      currentYear = previousYear;
      value.textContent = labels[previousYear];
      menu.classList.remove('is-busy');
      button.disabled = false;
     });
   }

   for (var n = 1; n <= 10; n++) {
    var option = document.createElement('button');
    option.type = 'button';
    option.className = 'ixir-cart-cycle-option' + (n === currentYear ? ' is-current' : '');
    option.setAttribute('role', 'option');
    option.setAttribute('aria-selected', n === currentYear ? 'true' : 'false');
    option.textContent = labels[n];
    option.addEventListener('click', (function(year, node) {
     return function(event) {
      event.stopPropagation();
      chooseYear(year, node);
     };
    })(n, option));
    list.appendChild(option);
   }
   button.addEventListener('click', function(event) {
    event.stopPropagation();
    if (menu.classList.contains('is-busy')) return;
    var willOpen = !menu.classList.contains('is-open');
    closeCycleMenus();
    if (!willOpen) return;
    menu.classList.add('is-open');
    button.setAttribute('aria-expanded', 'true');
    placeCycleList(menu);
   });
   menu.appendChild(button);
   menu.appendChild(list);
   return menu;
  }

  function buildTable() {
     var cart = document.getElementById('order-standard_cart');
     var header = cart && cart.querySelector('.view-cart-items-header');
     var list = cart && cart.querySelector('.view-cart-items');
     var title = cart && cart.querySelector('.header-lined h1');
     if (!cart || !list || list.getAttribute('data-ixir-table') === '1') return;
     var items = list.querySelectorAll('.item');
     if (title) {
      title.textContent = 'Sepet';
      title.setAttribute('data-count', items.length ? items.length + ' ürün' : '');
     }
     if (!items.length) {
      if (header) header.style.display = 'none';
      return;
     }
     list.setAttribute('data-ixir-table', '1');
     var rate = taxRate();
     if (header) {
      header.innerHTML =
       '<div class="ixir-cart-head"><span>Ürün/Seçenek</span><span>Açıklama</span><span>Kayıt Periyodu</span><span>Birim Fiyat (₺)</span><span>Toplam (₺)</span><span></span><span></span></div>';
     }
     for (var i = 0; i < items.length; i++) {
      var item = items[i];
      var titleNode = item.querySelector('.item-title');
      var groupNode = item.querySelector('.item-group');
      var domainNode = item.querySelector('.item-domain');
      var notes = item.querySelector('small');
      var cycleNode = item.querySelector('.cycle');
      var priceNode = item.querySelector('.item-price span:not(.cycle)');
      var remove = item.querySelector('.btn-remove-from-cart');
      var qty = item.querySelector('.item-qty');
      var group = plain(groupNode);
      var name = plain(titleNode);
      if (group && name.indexOf(group) === 0) {
       name = name.slice(group.length).replace(/^[\s\-–—:]+/, '').trim();
      }
      name = planLabel(name);
      var kind = item.getAttribute('data-ixir-kind') || '';
      var kindLabel = { register: 'Kayıt', transfer: 'Transfer', renew: 'Yenileme' }[kind] || '';
      var desc = [];
      var domain = plain(domainNode);
      var note = plain(notes);
      if (kindLabel) {
       desc.push(kindLabel);
      } else {
       if (domain) desc.push(domain);
       if (note) desc.push(note);
      }
      var rawPrice = priceNode ? priceNode.textContent.replace(/\s+/g, ' ').trim() : '';
      var amount = parseMoney(rawPrice);
      var price = !isNaN(amount) ? formatMoney(rawPrice, amount) : stripCurrency(rawPrice);
      var total = price;
      if (rate && !isNaN(amount)) total = formatMoney(rawPrice, Math.round(amount * (1 + rate) * 100) / 100);

      var product = document.createElement('div');
      product.className = 'ixir-cart-product';
      var nameRow = document.createElement('div');
      nameRow.className = 'ixir-cart-name';
      var nameText = document.createElement('div');
      nameText.textContent = name || group;
      nameRow.appendChild(nameText);
      if (qty) nameRow.appendChild(qty);
      product.appendChild(nameRow);
      if (kindLabel && domain) {
       var domainEl = document.createElement('div');
       domainEl.className = 'ixir-cart-group';
       domainEl.textContent = domain;
       product.appendChild(domainEl);
      } else if (group && group !== name) {
       var groupEl = document.createElement('div');
       groupEl.className = 'ixir-cart-group';
       groupEl.textContent = group;
       product.appendChild(groupEl);
      }

      var descEl = document.createElement('div');
      descEl.className = 'ixir-cart-desc';
      descEl.textContent = desc.join(' · ');
      var cycleText = cycleNode ? cycleNode.textContent.replace(/\s+/g, ' ').trim() : '';
      if (kindLabel) {
       var periodToggle = item.querySelector('.dropdown-toggle');
       var periodNode = item.querySelector('.cycle:not(.renewal)');
       if (periodToggle) {
        cycleText = periodToggle.textContent.replace(/\s+/g, ' ').trim();
       } else if (periodNode) {
        cycleText = periodNode.textContent.replace(/\s+/g, ' ').trim();
       }
      }
      var cycleEl = document.createElement('div');
      cycleEl.className = 'ixir-cart-cycle';
      if ((kind === 'register' || kind === 'transfer') && domain) {
       cycleEl.appendChild(domainPeriodMenu(item, domain));
      } else {
       cycleEl.textContent = cycleText;
      }
      var indexSource = remove ? ((remove.getAttribute('onclick') || '') + ' ' + (remove.getAttribute('href') || '')) :
       '';
      var indexMatch = indexSource.match(/removeItem\(\s*['"]p['"]\s*,\s*['"]?(\d+)['"]?\s*\)/) || indexSource.match(
     /[?&](?:amp;)?r=p&(?:amp;)?i=(\d+)/);
      var domainMatch = indexSource.match(/removeItem\(\s*['"]d['"]\s*,\s*['"]?(\d+)['"]?\s*\)/);
      var payKind = '';
      var payIndex = '';
      if (indexMatch) {
       payKind = 'product';
       payIndex = indexMatch[1];
       item.setAttribute('data-cart-index', payIndex);
      } else if (domainMatch && (kind === 'register' || kind === 'transfer')) {
       payKind = 'domain';
       payIndex = domainMatch[1];
      }
    if (payKind) {
     var pay = document.createElement('button');
     pay.type = 'button';
     pay.className = 'ixir-cart-pay';
     pay.textContent = 'Ödeme Yap';
     pay.setAttribute('data-pay-index', payIndex);
     pay.setAttribute('data-pay-kind', payKind);
     pay.addEventListener('click', function() {
      var button = this;
      var url = cartAddUrl();
      if (!url || button.disabled) return;
      button.disabled = true;
      var update = new FormData();
      update.append('action', 'checkout');
      update.append('kind', button.getAttribute('data-pay-kind') || 'product');
      update.append('i', button.getAttribute('data-pay-index'));
      update.append('token', tokenValue());
      fetch(url, { method: 'POST', credentials: 'same-origin', body: update })
       .then(function(response) { return response.json(); })
       .then(function(result) {
        if (result && result.ok) {
         var base = (typeof whmcsBaseUrl === 'string' ? whmcsBaseUrl : '').replace(/\/$/, '');
         window.location.href = base + '/sepet/odeme';
         return;
        }
        button.disabled = false;
       })
       .catch(function() { button.disabled = false; });
     });
    }
    var priceEl = document.createElement('div');
    priceEl.className = 'ixir-cart-price';
    priceEl.textContent = price;
    var totalEl = document.createElement('div');
    totalEl.className = 'ixir-cart-total';
    totalEl.textContent = total;
    if (remove) {
     remove.className = 'ixir-cart-remove';
     remove.innerHTML = '<i class="fas fa-trash-alt" aria-hidden="true"></i>';
     remove.setAttribute('aria-label', 'Kaldır');
    }

    if (remove && remove.parentNode) remove.parentNode.removeChild(remove);
    item.className = 'item ixir-cart-row';
    item.innerHTML = '';
    item.appendChild(product);
    item.appendChild(descEl);
    item.appendChild(cycleEl);
    item.appendChild(priceEl);
    item.appendChild(totalEl);
    if (remove) item.appendChild(remove);
    if (payKind) item.appendChild(pay);
   }
  }

  function useTry() {
   var selects = document.querySelectorAll('#order-standard_cart select[name="currency"]');
   if (!selects.length) return;
   var select = selects[selects.length - 1];
   var option = null;
   for (var i = 0; i < select.options.length; i++) {
    var label = (select.options[i].text || '').replace(/\s+/g, ' ').toUpperCase();
    if (label.indexOf('TRY') !== -1 || /(^|[^A-Z])TL([^A-Z]|$)/.test(label)) {
     option = select.options[i];
     break;
    }
   }
   if (!option || String(select.value) === String(option.value) || !select.form) {
    try { sessionStorage.removeItem('ixirCartTry'); } catch (e) {}
    return;
   }
   try {
    if (sessionStorage.getItem('ixirCartTry') === 'done') return;
    sessionStorage.setItem('ixirCartTry', 'done');
   } catch (e) {}
   select.value = option.value;
   select.form.action = window.location.pathname.replace(/\/goruntule\/?$/, '') || '/sepet';
   select.form.submit();
  }

  function cartAddUrl() {
   var menu = document.querySelector('.ixir-cart-menu[data-cart-add]');
   return menu ? menu.getAttribute('data-cart-add') : '';
  }

  function tokenValue() {
   if (typeof window.csrfToken === 'string' && window.csrfToken) return window.csrfToken;
   if (typeof csrfToken === 'string' && csrfToken) return csrfToken;
   return '';
  }

  function closeCycleMenus(except) {
   var menus = document.querySelectorAll('.ixir-cart-cycle-menu.is-open');
   for (var i = 0; i < menus.length; i++) {
    if (except && menus[i] === except) continue;
    menus[i].classList.remove('is-open');
    var button = menus[i].querySelector('.ixir-cart-cycle-btn');
    var list = menus[i].querySelector('.ixir-cart-cycle-list');
    if (button) button.setAttribute('aria-expanded', 'false');
    if (list) list.hidden = true;
   }
  }

  function placeCycleList(menu) {
   var button = menu.querySelector('.ixir-cart-cycle-btn');
   var list = menu.querySelector('.ixir-cart-cycle-list');
   if (!button || !list) return;
   var rect = button.getBoundingClientRect();
   var width = Math.max(rect.width, 176);
   var left = Math.min(Math.max(12, rect.left), window.innerWidth - width - 12);
   list.hidden = false;
   list.style.width = width + 'px';
   list.style.left = left + 'px';
   list.style.top = (rect.bottom + 8) + 'px';
  }

  document.addEventListener('click', function() { closeCycleMenus(); });
  document.addEventListener('keydown', function(event) {
   if (event.key === 'Escape') closeCycleMenus();
  });
  window.addEventListener('resize', function() { closeCycleMenus(); });
  window.addEventListener('scroll', function() { closeCycleMenus(); }, true);

  function bindCycleChoices() {
   var url = cartAddUrl();
   var rows = document.querySelectorAll('.ixir-cart-row[data-cart-index]');
   if (!url || !rows.length) return;
   var body = new FormData();
   body.append('action', 'cycles');
   body.append('token', tokenValue());
   fetch(url, { method: 'POST', credentials: 'same-origin', body: body })
    .then(function(response) { return response.json(); })
    .then(function(data) {
     if (!data || !data.ok || !data.items) return;
     data.items.forEach(function(item) {
      if (!item.cycles || !item.cycles.length) return;
      var row = document.querySelector('.ixir-cart-row[data-cart-index="' + item.index + '"]');
      var cell = row && row.querySelector('.ixir-cart-cycle');
      if (!cell) return;
      var current = null;
      for (var c = 0; c < item.cycles.length; c++) {
       if (item.cycles[c].id === item.current) current = item.cycles[c];
      }
      if (!current) current = item.cycles[item.cycles.length - 1];

      var menu = document.createElement('div');
      menu.className = 'ixir-cart-cycle-menu';
      var button = document.createElement('button');
      button.type = 'button';
      button.className = 'ixir-cart-cycle-btn';
      button.setAttribute('aria-haspopup', 'listbox');
      button.setAttribute('aria-expanded', 'false');
      button.setAttribute('aria-label', 'Kayıt Periyodu');
      var value = document.createElement('span');
      value.className = 'ixir-cart-cycle-value';
      value.textContent = current.label;
      var chevron = document.createElement('span');
      chevron.className = 'ixir-cart-cycle-chevron';
      chevron.setAttribute('aria-hidden', 'true');
      button.appendChild(value);
      button.appendChild(chevron);

      var list = document.createElement('div');
      list.className = 'ixir-cart-cycle-list';
      list.setAttribute('role', 'listbox');
      list.hidden = true;
      item.cycles.forEach(function(cycle) {
       var option = document.createElement('button');
       option.type = 'button';
       option.className = 'ixir-cart-cycle-option' + (cycle.id === current.id ? ' is-current' : '');
       option.setAttribute('role', 'option');
       option.setAttribute('data-cycle', cycle.id);
       option.setAttribute('aria-selected', cycle.id === current.id ? 'true' : 'false');
       option.textContent = cycle.label;
       option.addEventListener('click', function(event) {
        event.stopPropagation();
        if (menu.classList.contains('is-busy')) return;
        if (cycle.id === current.id) {
         closeCycleMenus();
         return;
        }
        menu.classList.add('is-busy');
        button.disabled = true;
        value.textContent = cycle.label;
        closeCycleMenus();
        var update = new FormData();
        update.append('action', 'cycle');
        update.append('i', String(item.index));
        update.append('billingcycle', cycle.id);
        update.append('token', tokenValue());
        var previous = current;
        fetch(url, { method: 'POST', credentials: 'same-origin', body: update })
         .then(function(response) { return response.json(); })
         .then(function(result) {
          if (!result || !result.ok) throw new Error('cycle');
          current = cycle;
          markCycleOption(list, option);
          paintMiniMeta('p', item.index, cycle.label);
          return refreshCartPrices('product', item.index, row, '').catch(function() {});
         })
         .then(function() {
          menu.classList.remove('is-busy');
          button.disabled = false;
         })
         .catch(function() {
          current = previous;
          value.textContent = previous.label;
          menu.classList.remove('is-busy');
          button.disabled = false;
         });
       });
       list.appendChild(option);
      });

      button.addEventListener('click', function(event) {
       event.stopPropagation();
       if (menu.classList.contains('is-busy')) return;
       var willOpen = !menu.classList.contains('is-open');
       closeCycleMenus();
       if (!willOpen) return;
       menu.classList.add('is-open');
       button.setAttribute('aria-expanded', 'true');
       placeCycleList(menu);
      });

      menu.appendChild(button);
      menu.appendChild(list);
      cell.textContent = '';
      cell.appendChild(menu);
     });
    })
    .catch(function() {});
  }

  function restoreHeldCart(done) {
   var url = cartAddUrl();
   if (!url) {
    done();
    return;
   }
   var body = new FormData();
   body.append('action', 'restore');
   body.append('token', tokenValue());
   fetch(url, { method: 'POST', credentials: 'same-origin', body: body })
      .then(function(response) { return response.json(); })
      .then(function(data) {
       if (data && data.restored) {
        window.location.reload();
        return;
       }
       done();
      })
      .catch(function() { done(); });
    }

    function returnToCart(form) {
     if (!form || form.getAttribute('data-ixir-return')) return;
     form.setAttribute('data-ixir-return', '1');
     form.addEventListener('submit', function(event) {
      event.preventDefault();
      fetch(form.action, { method: 'POST', credentials: 'same-origin', body: new FormData(form) })
       .then(function() {
        var base = (typeof whmcsBaseUrl === 'string' ? whmcsBaseUrl : '').replace(/\/$/, '');
        window.location.href = base + '/sepet';
       })
       .catch(function() {
        window.location.href = '/sepet';
       });
     });
    }
    function lockPageShift() {
     var root = document.documentElement;
     root.style.setProperty('padding-right', '0px', 'important');
     root.style.setProperty('margin-right', '0px', 'important');
     document.body.style.setProperty('padding-right', '0px', 'important');
     document.body.style.setProperty('margin-right', '0px', 'important');
    }
    if (window.jQuery) {
     window.jQuery(document).on('show.bs.modal shown.bs.modal', function() {
      lockPageShift();
      setTimeout(lockPageShift, 0);
     });
    }

    var removeModal = document.getElementById('modalRemoveItem');
    var emptyModal = document.getElementById('modalEmptyCart');
    if (removeModal) returnToCart(removeModal.closest('form'));
    if (emptyModal) returnToCart(emptyModal.closest('form'));

    restoreHeldCart(function() {
     buildTable();
     paintTotals();
     bindCycleChoices();
     useTry();
    });
   })();
  {/literal}
 </script>
{/if}
{$footeroutput}

</body>

</html>