<script>
 (function ixirDomainBoot() {
  if (window.__ixirDomainBooted) {
   return;
  }
  if (!window.jQuery) {
   window.setTimeout(ixirDomainBoot, 30);
   return;
  }
  window.__ixirDomainBooted = true;
  var jQuery = window.jQuery;
  window.recaptchaValidationComplete = true;
  jQuery('#captchaContainer').remove();

  function ixirCheckUrl() {
   return (window.whmcsBaseUrl || '') + '/ixir-domain-check.php';
  }

  function ixirPostJson(payload) {
   return jQuery.ajax({
    type: 'POST',
    url: ixirCheckUrl(),
    data: payload,
    dataType: 'json',
    headers: {
     'X-Requested-With': 'XMLHttpRequest'
    }
   });
  }

  function ixirRegisterPrice(pricing, fallback) {
   if (pricing && typeof pricing === 'object') {
    var keys = Object.keys(pricing);
    if (keys.length && pricing[keys[0]] && pricing[keys[0]].register) {
     return pricing[keys[0]].register;
    }
   }
   return fallback || '';
  }

  function ixirShowResults() {
   jQuery('#DomainSearchResults')
    .removeClass('w-hidden hidden')
    .addClass('is-visible')
    .css({ display: 'block' });
  }

  function ixirParseTerm(raw) {
   raw = String(raw || '').trim().toLowerCase()
    .replace(/^https?:\/\//, '')
    .replace(/^www\./, '')
    .split('/')[0]
    .split('?')[0];
   if (!raw) {
    return { sld: '', tld: 'com', full: '' };
   }
   if (raw.indexOf('.') === -1) {
    return { sld: raw, tld: 'com', full: raw + '.com' };
   }
   var parts = raw.split('.');
   var last = parts[parts.length - 1];
   var second = parts.length > 1 ? parts[parts.length - 2] : '';
   var doubles = ['com', 'net', 'org', 'info', 'biz', 'gen', 'web', 'name', 'tv', 'co', 'dr', 'av', 'k12', 'bel',
    'gov'
   ];
   if (last === 'tr' && doubles.indexOf(second) !== -1 && parts.length >= 3) {
    return { sld: parts.slice(0, -2).join('.'), tld: second + '.tr', full: raw };
   }
   return { sld: parts.slice(0, -1).join('.'), tld: last, full: raw };
  }

  function ixirFirstDomain(data) {
   if (typeof data === 'string') {
    try {
     data = JSON.parse(data);
    } catch (err) {
     return { error: 'Sorgulanamadı, lütfen tekrar deneyin.' };
    }
   }
   if (!data || typeof data !== 'object' || !data.result) {
    return null;
   }
   var result = data.result;
   if (typeof result === 'string') {
    return { error: result };
   }
   if (result.error && !result.domainName && !result.isValidDomain) {
    return { error: result.error };
   }
   if (jQuery.isArray(result)) {
    return result[0] || null;
   }
   var found = null;
   jQuery.each(result, function(key, value) {
    if (found) {
     return;
    }
    if (key === 'error' && typeof value === 'string' && !result.domainName) {
     found = { error: value };
     return;
    }
    if (value && typeof value === 'object') {
     found = value;
    }
   });
   return found;
  }

  function ixirAvailability(domain) {
   if (!domain) {
    return null;
   }
   var value = domain.isAvailable;
   if (value === true || value === 1 || value === '1' || value === 'true') {
    return true;
   }
   if (value === false || value === 0 || value === '0' || value === 'false') {
    return false;
   }
   return null;
  }

  function ixirShowStatus($el) {
   $el.css('display', 'block');
  }

  function ixirShowError(message) {
   var $el = jQuery('#primaryLookupResult .domain-error');
   $el.find('.ixir-status-text').text(message || 'Sorgulanamadı, lütfen tekrar deneyin.');
   ixirShowStatus($el);
  }

  function ixirHeadline(domain, parsed) {
   var result = jQuery('#primaryLookupResult');
   jQuery('#primaryLookupSearching').hide();
   result.removeClass('w-hidden').show().children().hide();
   if (!domain) {
    ixirShowError('Sorgulanamadı, lütfen tekrar deneyin.');
    return;
   }
   if (domain.error && !domain.domainName) {
    ixirShowError('Sorgulanamadı, lütfen tekrar deneyin.');
    return;
   }
   if (domain.isValidDomain === false) {
    ixirShowStatus(result.find('.domain-invalid'));
    return;
   }
   var name = domain.domainName || domain.idnDomainName || (parsed && parsed.full) || jQuery('#inputDomain').val();
   var available = ixirAvailability(domain);
   if (available === true) {
    result.find('.domain-available .ixir-status-domain').text(name);
    ixirShowStatus(result.find('.domain-available'));
    if (domain.pricing && typeof domain.pricing !== 'string') {
     var priceBtn = result.find('.domain-price').css({ display: 'flex' })
      .find('span.price').html(ixirRegisterPrice(domain.pricing, '')).end()
      .find('button').attr('data-domain', String(name).toLowerCase()).show();
     ixirSetCartButtons(priceBtn, '');
    }
    return;
   }
   if (available === false) {
    result.find('.domain-unavailable .ixir-status-domain').text(name);
    ixirShowStatus(result.find('.domain-unavailable'));
    return;
   }
   ixirShowError('Sorgulanamadı, lütfen tekrar deneyin.');
  }

  function ixirFillSpotlight(domain) {
   var tldKey = String(domain.tldNoDots || (domain.tld || '').replace(/\./g, ''));
   var box = jQuery('#spotlight' + tldKey);
   if (!box.length) {
    return false;
   }
   var result = box.find('.domain-lookup-result');
   var fallbackPrice = box.find('span.available.price').attr('data-fallback') || box.find('span.available.price')
    .text();
   box.find('.domain-lookup-spotlight-loader').hide();
   result.find('button').removeClass('checkout').addClass('w-hidden').hide();
   result.find('span.available').html(ixirRegisterPrice(domain.pricing, fallbackPrice));
   var available = ixirAvailability(domain);
   if (domain.isValidDomain === false) {
    result.find('button.invalid').removeClass('w-hidden').show();
   } else if (available === true) {
    var addBtn = result.find('button.btn-add-to-cart').removeClass('w-hidden').show()
     .attr('data-domain', String(domain.domainName || '').toLowerCase());
    ixirSetCartButtons(addBtn, '');
   } else if (available === false) {
    result.find('button.unavailable').removeClass('w-hidden').show();
   } else {
    return false;
   }
   result.css('display', 'flex');
   return true;
  }

  function ixirMarkSpotlightOrder() {
   jQuery('.ixir-spotlights .spotlight-tld-container').each(function(index) {
    if (this.getAttribute('data-ixir-order') === null) {
     this.setAttribute('data-ixir-order', String(index));
    }
   });
  }

  function ixirSpotlightIsTaken(el) {
   return jQuery(el).find('button.unavailable:not(.w-hidden), button.invalid:not(.w-hidden)').length > 0;
  }

  function ixirSortSpotlight() {
   var container = jQuery('.ixir-spotlights .spotlight-tlds-container');
   if (!container.length) {
    return;
   }
   ixirMarkSpotlightOrder();
   var cards = container.children('.spotlight-tld-container').get();
   cards.sort(function(a, b) {
    var aTaken = ixirSpotlightIsTaken(a) ? 1 : 0;
    var bTaken = ixirSpotlightIsTaken(b) ? 1 : 0;
    if (aTaken !== bTaken) {
     return aTaken - bTaken;
    }
    return (parseInt(a.getAttribute('data-ixir-order'), 10) || 0) -
     (parseInt(b.getAttribute('data-ixir-order'), 10) || 0);
   });
   container.append(cards);
  }

  function ixirSpotlightFallback() {
   jQuery('.ixir-spotlights .spotlight-tld').each(function() {
    var box = jQuery(this);
    box.find('.domain-lookup-spotlight-loader').hide();
    box.find('.domain-lookup-result').hide();
   });
  }

  function ixirSpotlightTlds() {
   return {
    com: 1,
    net: 1,
    'com.tr': 1,
    'net.tr': 1,
    tr: 1,
    xyz: 1,
    info: 1,
    pro: 1,
    org: 1,
    work: 1
   };
  }

  function ixirSuggestionTld(domain) {
   return String((domain && domain.tld) || '').replace(/^\./, '').toLowerCase();
  }

  function ixirKeepSuggestion(domain, parsed) {
   if (!domain || (domain.error && !domain.domainName)) {
    return false;
   }
   if (ixirAvailability(domain) === false) {
    return false;
   }
   var tld = ixirSuggestionTld(domain);
   if (!tld) {
    return false;
   }
   if (ixirSpotlightTlds()[tld]) {
    return false;
   }
   if (parsed && tld === String(parsed.tld || '').toLowerCase()) {
    return false;
   }
   var full = String(domain.domainName || '').toLowerCase();
   if (parsed && parsed.full && full === String(parsed.full).toLowerCase()) {
    return false;
   }
   return true;
  }

  function ixirFillSuggestions(list, parsed, allowFallback) {
   var suggestions = jQuery('#domainSuggestions');
   suggestions.find('.clone').remove();
   jQuery('.domain-lookup-suggestions-loader').hide();
   list = jQuery.grep(list || [], function(domain) {
    return ixirKeepSuggestion(domain, parsed);
   });
   if (!list.length) {
    if (allowFallback !== false) {
     ixirFallbackSuggestions(parsed);
     return;
    }
    jQuery('.suggested-domains').hide();
    return;
   }
   jQuery('.suggested-domains').removeClass('w-hidden').css('display', 'block').show();
   suggestions.removeClass('w-hidden').show();
   var count = 0;
   jQuery.each(list, function(index, domain) {
    var pricing = domain.pricing;
    if (typeof pricing === 'string' && pricing === '') {
     return;
    }
    var tpl = suggestions.find('div.domain-suggestion').first();
    var row = tpl.clone(true, true).removeClass('w-hidden').addClass('clone');
    var sld = domain.sld || parsed.sld;
    var tld = ixirSuggestionTld(domain);
    var full = domain.domainName || (sld + '.' + tld);
    row.find('span.domain').text(sld);
    row.find('span.extension').text('.' + tld);
    if (typeof pricing === 'string') {
     row.find('button.btn-add-to-cart').remove();
     if (pricing) {
      row.find('button.domain-contact-support').show();
      row.find('span.price').hide();
     } else {
      return;
     }
    } else {
     row.find('button.btn-add-to-cart').attr('data-domain', String(full).toLowerCase());
     ixirSetCartButtons(row.find('button.btn-add-to-cart'), '');
     row.find('span.price').html(ixirRegisterPrice(pricing, domain.price || ''));
    }
    if (count >= 8) {
     row.hide();
    } else {
     row.css('display', 'flex');
    }
    suggestions.append(row);
    count += 1;
   });
   if (!suggestions.find('div.domain-suggestion.clone').length) {
    if (allowFallback !== false) {
     ixirFallbackSuggestions(parsed);
     return;
    }
    jQuery('.suggested-domains').hide();
    return;
   }
   if (suggestions.find('div.domain-suggestion.clone:hidden').length) {
    jQuery('div.more-suggestions').removeClass('w-hidden').show();
    jQuery('#moreSuggestions').show();
    jQuery('#noMoreSuggestions').hide();
   }
  }

  function ixirFallbackSuggestions(parsed) {
   var extras = [
    { tld: 'online', price: '350.00TL' },
    { tld: 'live', price: '169.00TL' },
    { tld: 'tech', price: '550.00TL' },
    { tld: 'app', price: '1150.00TL' },
    { tld: 'co', price: '2080.00TL' },
    { tld: 'eu', price: '600.00TL' },
    { tld: 'me', price: '1150.00TL' },
    { tld: 'club', price: '1400.00TL' },
    { tld: 'site', price: '1960.00TL' },
    { tld: 'blog', price: '1600.00TL' },
    { tld: 'biz', price: '1100.00TL' },
    { tld: 'pw', price: '260.00TL' },
    { tld: 'io', price: '1760.00TL' },
    { tld: 'studio', price: '1810.00TL' },
    { tld: 'gen.tr', price: '150.00TL' },
    { tld: 'web.tr', price: '150.00TL' },
    { tld: 'market', price: '2450.00TL' }
   ];
   var list = [];
   jQuery.each(extras, function(i, item) {
    list.push({
     sld: parsed.sld,
     tld: item.tld,
     domainName: parsed.sld + '.' + item.tld,
     pricing: { 1: { register: item.price } }
    });
   });
   ixirFillSuggestions(list, parsed, false);
  }

  var ixirBusy = false;

  function ixirQueryFromLocation() {
   var search = window.location.search || '';
   var match = search.match(/[?&]query=([^&]*)/);
   if (!match) {
    return '';
   }
   try {
    return decodeURIComponent(String(match[1]).replace(/\+/g, ' ')).trim();
   } catch (err) {
    return String(match[1] || '').trim();
   }
  }

  function ixirSearchHref(term) {
   var path = window.location.pathname || '/domain-sorgu';
   return path + '?query=' + encodeURIComponent(term);
  }

  function ixirSyncSearchUrl(term) {
   var next = ixirSearchHref(term);
   if (ixirQueryFromLocation().toLowerCase() !== String(term).toLowerCase()) {
    window.location.assign(next);
    return true;
   }
   if (window.history && window.history.replaceState) {
    window.history.replaceState({}, document.title, next);
   }
   return false;
  }

  function ixirHeaderOffset() {
   var spacer = document.querySelector('.ixir-header-spacer');
   return spacer ? spacer.getBoundingClientRect().height : 0;
  }

  function ixirScrollPastHero() {
   var hero = document.getElementById('home-banner');
   if (!hero) {
    return;
   }
   var input = document.getElementById('inputDomain');
   if (input && document.activeElement === input) {
    input.blur();
   }
   var top = Math.round(
    hero.getBoundingClientRect().bottom + (window.pageYOffset || window.scrollY || 0) - ixirHeaderOffset()
   );
   window.scrollTo({
    top: Math.max(0, top),
    behavior: 'smooth'
   });
  }

  function ixirScheduleScrollPastHero() {
   window.requestAnimationFrame(ixirScrollPastHero);
   window.setTimeout(ixirScrollPastHero, 180);
  }

  if (ixirQueryFromLocation() && !window.ixirArmDomainInput) {
   var stopHeroFocus = function(e) {
    if (e.target && e.target.id === 'inputDomain') {
     e.target.blur();
    }
   };
   document.addEventListener('focusin', stopHeroFocus, true);
   window.setTimeout(function() {
    document.removeEventListener('focusin', stopHeroFocus, true);
   }, 700);
  }

  function ixirEmptyError() {
   var form = document.getElementById('frmDomainChecker');
   var input = document.getElementById('inputDomain');
   if (!form || !input) {
    return {
     show: function() {},
     hide: function() {}
    };
   }
   var placeholderFull = input.getAttribute('data-placeholder') || input.getAttribute('placeholder');
   var placeholderSm = input.getAttribute('data-placeholder-sm') || 'ixirhost.com';
   var placeholderError = input.getAttribute('data-placeholder-error') || 'Lütfen bir domain girin.';

   function isSm() {
    return window.innerWidth <= 767;
   }

   var floatLabel = form.querySelector('.ixir-dc-label');

   function applyPlaceholder() {
    var text;
    if (form.classList.contains('ixir-dc-invalid')) {
     text = placeholderError;
    } else {
     text = isSm() ? placeholderSm : placeholderFull;
    }
    if (floatLabel) {
     floatLabel.textContent = text;
     return;
    }
    input.setAttribute('placeholder', text);
   }

   function show() {
    form.classList.remove('ixir-dc-shake');
    void form.offsetWidth;
    form.classList.add('ixir-dc-invalid', 'ixir-dc-shake');
    input.setAttribute('aria-invalid', 'true');
    applyPlaceholder();
    if (window.ixirArmDomainInput) {
     window.ixirArmDomainInput();
    }
    input.focus();
   }

   function hide() {
    form.classList.remove('ixir-dc-invalid', 'ixir-dc-shake');
    input.removeAttribute('aria-invalid');
    applyPlaceholder();
   }

   applyPlaceholder();
   window.addEventListener('resize', applyPlaceholder);
   jQuery(input).on('input keydown', function() {
    if (jQuery.trim(input.value)) {
     hide();
    }
   });

   return {
    show: show,
    hide: hide
   };
  }

  var ixirDomainEmptyError = ixirEmptyError();

  function ixirRunDomainSearch() {
   var frm = jQuery('#frmDomainChecker');
   var input = jQuery('#inputDomain');
   var term = String(input.val() || '').replace(/^\s+|\s+$/g, '');
   if (!term) {
    ixirDomainEmptyError.show();
    return;
   }
   ixirDomainEmptyError.hide();
   var parsed = ixirParseTerm(term);
   var urlTerm = parsed.full || term;
   if (urlTerm) {
    input.val(urlTerm);
   }
   if (ixirSyncSearchUrl(urlTerm)) {
    return;
   }
   if (ixirBusy) {
    return;
   }
   ixirBusy = true;
   var pending = 3;

   function doneOne() {
    pending -= 1;
    if (pending <= 0) {
     ixirBusy = false;
     jQuery('#btnCheckAvailability').removeAttr('disabled').removeClass('disabled');
    }
   }
   jQuery('#btnCheckAvailability').attr('disabled', 'disabled').addClass('disabled');
   ixirShowResults();
   ixirScheduleScrollPastHero();
   jQuery('#primaryLookupSearching').show();
   jQuery('#primaryLookupResult').addClass('w-hidden').hide();
   jQuery('.ixir-spotlights .domain-lookup-result').hide();
   jQuery('.ixir-spotlights .domain-lookup-spotlight-loader').show();
   jQuery('.domain-lookup-suggestions-loader').hide();
   jQuery('#domainSuggestions').find('.clone').remove();
   jQuery('#domainSuggestions').addClass('w-hidden');
   jQuery('.suggested-domains').removeClass('w-hidden').show();
   jQuery('div.more-suggestions').hide();
   ixirSetCartButtons(jQuery('.ixir-domain-page .btn-add-to-cart'), '');

   var payload = frm.serialize();

   ixirPostJson(payload + '&type=domain').done(function(data) {
    var domain = ixirFirstDomain(data);
    ixirHeadline(domain, parsed);
   }).fail(function() {
    ixirHeadline({ error: 'Sorgulanamadı, lütfen tekrar deneyin.' }, parsed);
   }).always(doneOne);

   ixirPostJson(payload + '&type=spotlight').done(function(data) {
    var filled = 0;
    if (data && data.result && !data.result.error) {
     jQuery.each(data.result, function(index, domain) {
      if (domain && (domain.tldNoDots || domain.tld)) {
       if (ixirFillSpotlight(domain)) {
        filled += 1;
       }
      }
     });
    }
    if (!filled) {
     ixirSpotlightFallback();
    } else {
     jQuery('.ixir-spotlights .spotlight-tld').each(function() {
      var box = jQuery(this);
      if (box.find('.domain-lookup-result').is(':visible')) {
       return;
      }
      box.find('.domain-lookup-spotlight-loader').hide();
      box.find('.domain-lookup-result').hide();
     });
     ixirSortSpotlight();
    }
   }).fail(function() {
    ixirSpotlightFallback();
   }).always(doneOne);

   ixirPostJson(payload + '&type=suggestions').done(function(data) {
    var list = [];
    if (data && data.result && !data.result.error) {
     if (jQuery.isArray(data.result)) {
      list = data.result;
     } else {
      jQuery.each(data.result, function(k, v) {
       if (v && typeof v === 'object' && k !== 'error') {
        list.push(v);
       }
      });
     }
    }
    ixirFillSuggestions(list, parsed);
   }).fail(function() {
    ixirFallbackSuggestions(parsed);
   }).always(doneOne);
  }

  function ixirCsrfToken() {
   if (typeof window.csrfToken === 'string' && window.csrfToken) {
    return window.csrfToken;
   }
   if (typeof csrfToken === 'string' && csrfToken) {
    return csrfToken;
   }
   return String(jQuery('#frmDomainChecker input[name="token"]').val() || '');
  }

  function ixirEsc(text) {
   return jQuery('<div/>').text(String(text || '')).html();
  }

  function ixirCartItemIcon(type) {
   if (type === 'domain' || type === 'renewal') {
    return 'fa-globe';
   }
   if (type === 'addon') {
    return 'fa-puzzle-piece';
   }
   return 'fa-cube';
  }

  function ixirPaintMiniCart(payload) {
   var items = (payload && payload.items) ? payload.items : [];
   var count = (payload && payload.cartCount !== undefined) ? parseInt(payload.cartCount, 10) : items.length;
   if (isNaN(count) || count < 0) {
    count = items.length;
   }
   var root = window.whmcsBaseUrl || '';
   jQuery('.ixir-cart-toggle').each(function() {
    var $a = jQuery(this);
    var $badge = $a.find('.cart-item-count');
    if (count > 0) {
     if (!$badge.length) {
      $a.append('<span class="badge badge-danger cart-item-count">' + count + '</span>');
     } else {
      $badge.text(count).show();
     }
    } else {
     $badge.remove();
    }
   });
   jQuery('#cartItemCount').text(count);
   jQuery('.ixir-cart-menu').each(function() {
    var $menu = jQuery(this);
    var $actions = $menu.find('.ixir-cart-head-actions');
    var $count = $actions.find('.ixir-cart-count');
    if (count > 0) {
     if (!$count.length) {
      $actions.prepend('<span class="ixir-cart-count">' + count + ' ürün</span>');
     } else {
      $count.text(count + ' ürün').show();
     }
    } else {
     $count.remove();
    }
    $menu.find('.ixir-cart-items, .ixir-cart-empty').remove();
    var html = '';
    if (items.length) {
     html += '<ul class="ixir-cart-items">';
     jQuery.each(items, function(i, item) {
      var type = item.type || 'product';
      var name = ixirEsc(item.name || 'Ürün');
      var meta = item.meta ? '<span class="ixir-cart-item-meta">' + ixirEsc(item.meta) + '</span>' : '';
      var qty = item.qty ? '<em>x' + ixirEsc(item.qty) + '</em>' : '';
      var remove = '';
      if (item.removeType) {
       var href = root + '/cart.php?a=remove&r=' + encodeURIComponent(item.removeType) +
        '&i=' + encodeURIComponent(item.removeIndex);
       if (item.renewalType) {
        href += '&rt=' + encodeURIComponent(item.renewalType);
       }
       remove = '<a href="' + href + '" class="ixir-cart-item-remove" data-type="' +
        ixirEsc(item.removeType) + '" data-index="' + ixirEsc(item.removeIndex) +
        '" data-name="' + name + '"' +
        (item.renewalType ? ' data-rt="' + ixirEsc(item.renewalType) + '"' : '') +
        ' title="Kaldır" aria-label="' + name + ' ürününü sepetten kaldır">' +
        '<i class="fas fa-times" aria-hidden="true"></i></a>';
      }
      html += '<li><span class="ixir-cart-item-icon"><i class="fas ' + ixirCartItemIcon(type) +
       '"></i></span><span class="ixir-cart-item-body"><span class="ixir-cart-item-name">' + name + qty +
       '</span>' + meta + '</span>' + remove + '</li>';
     });
     html += '</ul>';
    } else {
     html =
      '<div class="ixir-cart-empty"><span class="ixir-cart-empty-icon"><i class="fas fa-shopping-basket"></i></span>' +
      '<strong>Sepetiniz boş</strong><span class="ixir-cart-empty-text">Henüz ürün eklemediniz</span></div>';
    }
    $menu.find('.ixir-cart-head').after(html);
   });
  }

  function ixirSetCartButtons(buttons, state) {
   buttons.removeClass('is-loading is-added is-unavailable checkout');
   if (state && state !== 'is-added') {
    buttons.addClass(state);
   }
   buttons.find('span').hide();
   if (state === 'is-loading') {
    buttons.find('span.loading').show();
   } else if (state === 'is-unavailable') {
    buttons.find('span.unavailable').show();
    buttons.attr('disabled', 'disabled');
   } else {
    buttons.find('span.to-add').show();
    buttons.removeAttr('disabled');
   }
  }

  function ixirAddDomainToCart(btn) {
   var domain = String(btn.attr('data-domain') || '').trim().toLowerCase();
   if (!domain || btn.hasClass('is-loading')) {
    return;
   }
   var selector = 'button.btn-add-to-cart[data-domain="' + domain.replace(/"/g, '\\"') + '"]';
   var buttons = jQuery(selector);
   if (!buttons.length) {
    buttons = btn;
   }
   ixirSetCartButtons(buttons, 'is-loading');
   var token = ixirCsrfToken();
   jQuery.ajax({
    type: 'POST',
    url: ixirCheckUrl(),
    data: {
     a: 'addToCart',
     type: 'addToCart',
     domain: domain,
     token: token,
     whois: btn.attr('data-whois') || '0'
    },
    dataType: 'json',
    headers: {
     'X-Requested-With': 'XMLHttpRequest'
    }
   }).done(function(data) {
    if (data && data.result === 'added') {
     ixirSetCartButtons(buttons, '');
     ixirPaintMiniCart(data);
    } else {
     ixirSetCartButtons(buttons, 'is-unavailable');
    }
   }).fail(function() {
    ixirSetCartButtons(buttons, '');
   });
  }

  function ixirBindForm() {
   var form = document.getElementById('frmDomainChecker');
   if (form && !form.getAttribute('data-ixir-bound')) {
    form.setAttribute('data-ixir-bound', '1');
    form.addEventListener('submit', function(e) {
     e.preventDefault();
     e.stopImmediatePropagation();
     ixirRunDomainSearch();
    }, true);
   }
   jQuery('#frmDomainChecker').off('submit').on('submit', function(e) {
    e.preventDefault();
    e.stopImmediatePropagation();
    ixirRunDomainSearch();
   });
   jQuery('.ixir-domain-page .btn-add-to-cart').off('click');
  }

  var cartRoot = document.getElementById('order-standard_cart');
  if (cartRoot && !cartRoot.getAttribute('data-ixir-cart-bound')) {
   cartRoot.setAttribute('data-ixir-cart-bound', '1');
   cartRoot.addEventListener('click', function(e) {
    var node = e.target;
    while (node && node !== cartRoot && !(node.classList && node.classList.contains('btn-add-to-cart'))) {
     node = node.parentNode;
    }
    if (!node || node === cartRoot || !node.classList.contains('btn-add-to-cart')) {
     return;
    }
    e.preventDefault();
    e.stopPropagation();
    if (typeof e.stopImmediatePropagation === 'function') {
     e.stopImmediatePropagation();
    }
    ixirAddDomainToCart(jQuery(node));
   }, true);
  }

  ixirBindForm();
  window.setTimeout(ixirBindForm, 0);
  window.setTimeout(ixirBindForm, 400);

  jQuery('#moreSuggestions').off('click').on('click', function(e) {
   e.preventDefault();
   var hidden = jQuery('#domainSuggestions .domain-suggestion.clone:hidden');
   hidden.slice(0, 6).css('display', 'flex');
   if (!jQuery('#domainSuggestions .domain-suggestion.clone:hidden').length) {
    jQuery('#moreSuggestions').hide();
    jQuery('#noMoreSuggestions').removeClass('w-hidden').show();
   }
  });

  {if $lookupTerm && !$invalid}
  ixirShowResults();
  ixirRunDomainSearch();
  jQuery(function() {
   ixirScheduleScrollPastHero();
  });
  {/if}
  {if $invalid}
  ixirShowResults();
  jQuery('#primaryLookupSearching').hide();
  jQuery('#primaryLookupResult').removeClass('w-hidden').show().children().hide();
  jQuery('.domain-invalid').show();
  {/if}

  (function initIxirHeroFill() {
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

  (function initIxirTldCarousel() {
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
 })();
</script>