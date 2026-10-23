<script>
 {literal}
  function ixirEscCartText(text) {
   return String(text || '').replace(/[&<>"']/g, function(char) {
   return ({
    '&': '&amp;',
    '<': '&lt;',
    '>': '&gt;',
    '"': '&quot;',
    "'": '&#39;'
   })[char];
  });
 }

 function ixirNormalizeCartItems(items) {
  var order = [];
  var map = {};
  (items || []).forEach(function(item) {
   var name = String(item.name || 'Ürün').trim();
   var nameQty = 0;
   var nameMatch = name.match(/^(.*?)\s+x(\d+)$/i);
   if (nameMatch) {
    name = nameMatch[1].trim() || name;
    nameQty = parseInt(nameMatch[2], 10) || 0;
   }
   var meta = item.meta || '';
   var type = item.type || 'product';
   var product = item.product || '';
   var key = type + '|' + product + '|' + name + '|' + meta;
   var indexes = [];
   if (Object.prototype.toString.call(item.removeIndexes) === '[object Array]') {
    item.removeIndexes.forEach(function(index) {
     indexes.push(String(index));
    });
   } else if (item.removeIndex !== undefined && item.removeIndex !== null && item.removeIndex !== '') {
    String(item.removeIndex).split(',').forEach(function(index) {
     if (index !== '') indexes.push(String(index));
    });
   }
   var qty = parseInt(item.qty, 10);
   if (!qty || qty < 1) qty = 1;
   if (nameQty > qty) qty = nameQty;
   if (!map[key]) {
    map[key] = {
     type: type,
     name: name,
     product: product,
     meta: meta,
     qty: 0,
     indexes: [],
     renewalType: item.renewalType || ''
    };
    order.push(map[key]);
   }
   if (!map[key].product && product) map[key].product = product;
   map[key].qty += qty;
   indexes.forEach(function(index) {
    if (map[key].indexes.indexOf(index) === -1) map[key].indexes.push(index);
   });
   if (item.renewalType) map[key].renewalType = item.renewalType;
  });
  return order;
 }

 function ixirCartGroupsHtml(groups) {
  var root = window.whmcsBaseUrl || '';
  var html = '';
  groups.forEach(function(group) {
   var name = ixirEscCartText(group.name || 'Ürün');
   var product = group.product ? '<span class="ixir-cart-item-product">' + ixirEscCartText(group.product) +
    '</span>' : '';
   var meta = group.meta ? '<span class="ixir-cart-item-meta">' + ixirEscCartText(group.meta) + '</span>' : '';
   var qty = group.qty > 1 ? '<span class="ixir-cart-item-qty">' + group.qty + '</span>' : '';
   var icon = group.type === 'domain' || group.type === 'renewal' ? 'fa-globe' :
    group.type === 'addon' ? 'fa-puzzle-piece' : 'fa-cube';
   var remove = '';
   if (group.indexes.length && group.type) {
    var indexes = group.indexes.join(',');
    var first = group.indexes[0];
    var href = root + '/cart.php?a=remove&r=' + encodeURIComponent(group.type) + '&i=' + encodeURIComponent(first);
    if (group.renewalType) href += '&rt=' + encodeURIComponent(group.renewalType);
    remove = '<a href="' + href + '" class="ixir-cart-item-remove" data-type="' + ixirEscCartText(group.type) +
     '" data-index="' + ixirEscCartText(first) + '" data-indexes="' + ixirEscCartText(indexes) +
     '" data-name="' + name + '"' +
     (group.renewalType ? ' data-rt="' + ixirEscCartText(group.renewalType) + '"' : '') +
     ' title="Tümünü kaldır" aria-label="' + name + ' paketinin tümünü sepetten kaldır">' +
     '<i class="fas fa-trash-alt" aria-hidden="true"></i></a>';
   }
   html += '<li><span class="ixir-cart-item-icon"><i class="fas ' + icon +
    '"></i></span><span class="ixir-cart-item-body"><span class="ixir-cart-item-name">' + name +
    '</span>' + product + meta + '</span>' + qty + remove + '</li>';
  });
  return html;
 }

 window.ixirPaintCartMenus = function(items, count) {
  var groups = ixirNormalizeCartItems(items);
  count = parseInt(count, 10);
  if (isNaN(count) || count < 0) {
   count = 0;
   groups.forEach(function(group) {
    count += group.qty;
   });
  }
  var $ = window.jQuery;
  if (!$) return;
  $('.ixir-cart-toggle').each(function() {
   var $toggle = $(this);
   var $badge = $toggle.find('.cart-item-count');
   if (count > 0) {
    if (!$badge.length) {
     $toggle.append('<span class="badge badge-danger cart-item-count">' + count + '</span>');
    } else {
     $badge.text(count).show();
    }
   } else {
    $badge.remove();
   }
  });
  $('#cartItemCount').text(count);
  $('.ixir-cart-menu').each(function() {
   var $menu = $(this);
   var $actions = $menu.find('.ixir-cart-head-actions');
   var $label = $actions.find('.ixir-cart-count');
   if (count > 0) {
    if (!$label.length) {
     $actions.prepend('<span class="ixir-cart-count">' + count + ' ürün</span>');
    } else {
     $label.text(count + ' ürün').show();
    }
   } else {
    $label.remove();
   }
   var $clear = $actions.find('.ixir-cart-clear');
   if (count > 0) {
    if (!$clear.length) {
     $clear = $(
      '<button type="button" class="ixir-cart-clear" title="Sepeti boşalt" aria-label="Sepetteki tüm ürünleri sil"><i class="fas fa-trash-alt" aria-hidden="true"></i></button>'
     );
     var $close = $actions.find('.ixir-cart-close');
     if ($close.length) $close.before($clear);
     else $actions.append($clear);
    }
   } else {
    $clear.remove();
   }
   $menu.find('.ixir-cart-items, .ixir-cart-empty').remove();
   var html = '';
   if (groups.length) {
    html = '<ul class="ixir-cart-items">' + ixirCartGroupsHtml(groups) + '</ul>';
   } else {
    html =
     '<div class="ixir-cart-empty"><span class="ixir-cart-empty-icon"><i class="fas fa-shopping-basket"></i></span>' +
     '<strong>Sepetiniz boş.</strong><span class="ixir-cart-empty-text">Henüz ürün eklemediniz.</span></div>';
   }
   $menu.find('.ixir-cart-head').after(html);
  });
 };

 jQuery(function($) {
  function closeIxirCart() {
   $('.nav-cart').removeClass('open')
    .find('.ixir-cart-toggle').attr('aria-expanded', 'false');
  }

  function closeIxirAccount() {
   $('.ixir-account-menu').removeClass('open')
    .find('.ixir-account-toggle').attr('aria-expanded', 'false');
  }

  function setIxirMobileMenu(open) {
   var $header = $('.mobile-header');
   var $drawer = $('#ixirMobileMenu');
   var $toggle = $header.find('.ixir-hamburger');
   $header.toggleClass('menu-open', open);
   $('html, body').toggleClass('ixir-mobile-menu-open', open);
   $toggle.attr('aria-expanded', open ? 'true' : 'false');
   $drawer.attr('aria-hidden', open ? 'false' : 'true');
   if (!open) {
    $header.find('.ixir-mobile-nav > li.has-children').removeClass('is-open')
     .find('.ixir-mobile-toggle').attr('aria-expanded', 'false');
   }
  }
  $(document).on('click', '.ixir-cart-toggle', function(e) {
   e.preventDefault();
   e.stopPropagation();
   var $cart = $(this).closest('.nav-cart');
   var isOpen = $cart.hasClass('open');
   closeIxirCart();
   closeIxirAccount();
   if (!isOpen) {
    setIxirMobileMenu(false);
    $cart.addClass('open');
    $(this).attr('aria-expanded', 'true');
   }
  });
  $(document).on('click', '.ixir-account-toggle', function(e) {
   e.preventDefault();
   e.stopPropagation();
   var $menu = $(this).closest('.ixir-account-menu');
   var isOpen = $menu.hasClass('open');
   closeIxirCart();
   closeIxirAccount();
   if (!isOpen) {
    setIxirMobileMenu(false);
    $menu.addClass('open');
    $(this).attr('aria-expanded', 'true');
   }
  });
  $(document).on('click', function(e) {
   if (!$(e.target).closest('.nav-cart').length) {
    closeIxirCart();
   }
   if (!$(e.target).closest('.ixir-account-menu').length) {
    closeIxirAccount();
   }
  });
  $(document).on('click', '.ixir-cart-menu', function(e) {
   e.stopPropagation();
  });

  function closeIxirMega($item, forceHide) {
   var $target = $item && $item.length ?
    $item :
    $('.ixir-header .ixir-nav > li.dropdown:not(.nav-cart)');
   $target.removeClass('open').toggleClass('mega-closed', !!forceHide)
    .find('.dropdown-toggle').attr('aria-expanded', 'false').trigger('blur');
  }
  $(document).on('mouseenter', '.ixir-header .ixir-nav > li.dropdown:not(.nav-cart)', function() {
   $(this).removeClass('mega-closed');
   $(this).siblings('li.dropdown:not(.nav-cart)').removeClass('open mega-closed');
  });
  $(document).on('mouseleave', '.ixir-header .ixir-nav > li.dropdown:not(.nav-cart)', function() {
   closeIxirMega($(this), false);
  });
  $(document).on('click', '.ixir-header .ixir-nav > li.dropdown:not(.nav-cart) > .dropdown-toggle', function() {
   var $item = $(this).closest('li.dropdown');
   var wasOpen = $item.hasClass('open');
   setTimeout(function() {
    if ($item.hasClass('open')) {
     $item.removeClass('mega-closed');
    } else if (wasOpen) {
     $item.addClass('mega-closed');
    }
   }, 0);
  });
  $(document).on('click', function(e) {
   if (!$(e.target).closest('.ixir-header .ixir-nav > li.dropdown:not(.nav-cart)').length) {
    closeIxirMega(null, false);
   }
  });
  $(document).on('keydown', function(e) {
   if (e.key === 'Escape' || e.keyCode === 27) {
    closeIxirCart();
    closeIxirAccount();
    setIxirMobileMenu(false);
    closeIxirMega($(
     '.ixir-header .ixir-nav > li.dropdown:not(.nav-cart).open, .ixir-header .ixir-nav > li.dropdown:not(.nav-cart):hover'
    ), true);
   }
  });
  $(document).on('click', '.ixir-cart-close', function(e) {
   e.preventDefault();
   e.stopPropagation();
   closeIxirCart();
  });

  function ixirCollapseRenderedCart() {
   $('.ixir-cart-menu .ixir-cart-items').each(function() {
    var $list = $(this);
    var items = [];
    $list.children('li').each(function() {
     var $li = $(this);
     var $name = $li.find('.ixir-cart-item-name').first().clone();
     $name.children().remove();
     var $remove = $li.find('.ixir-cart-item-remove').first();
     var indexes = String($remove.attr('data-indexes') || $remove.attr('data-index') || '');
     var qty = parseInt($.trim($li.find('.ixir-cart-item-qty').first().text()), 10);
     if (!qty) {
      qty = parseInt($li.find('.ixir-cart-item-name em').first().text().replace(/[^\d]/g, ''), 10) || 1;
     }
     var icon = $li.find('.ixir-cart-item-icon i').attr('class') || '';
     var type = $remove.attr('data-type') || 'product';
     if (icon.indexOf('fa-globe') !== -1) type = $remove.attr('data-type') || 'domain';
     items.push({
      type: type,
      name: $.trim($name.text()),
      product: $.trim($li.find('.ixir-cart-item-product').first().text()),
      meta: $.trim($li.find('.ixir-cart-item-meta').first().text()),
      qty: qty,
      removeIndex: indexes,
      removeIndexes: indexes ? indexes.split(',') : [],
      renewalType: $remove.attr('data-rt') || ''
     });
    });
    var groups = ixirNormalizeCartItems(items);
    var needsProduct = groups.some(function(group) {
     return !!group.product;
    });
    var alreadyGrouped = groups.length === $list.children('li').length && !$list.find('.ixir-cart-item-name em')
     .length &&
     (!needsProduct || $list.find('.ixir-cart-item-product').length);
    if (!groups.length || alreadyGrouped) {
     return;
    }
    $list.html(ixirCartGroupsHtml(groups));
   });
  }

  function ixirEnsureCartClear() {
   $('.ixir-cart-menu').each(function() {
    var $menu = $(this);
    var $actions = $menu.find('.ixir-cart-head-actions');
    var hasItems = $menu.find('.ixir-cart-items li').length > 0;
    var $clear = $actions.find('.ixir-cart-clear');
    if (hasItems) {
     if (!$clear.length) {
      $clear = $(
       '<button type="button" class="ixir-cart-clear" title="Sepeti boşalt" aria-label="Sepetteki tüm ürünleri sil"><i class="fas fa-trash-alt" aria-hidden="true"></i></button>'
      );
      var $close = $actions.find('.ixir-cart-close');
      if ($close.length) $close.before($clear);
      else $actions.append($clear);
     }
    } else {
     $clear.remove();
    }
   });
  }
  ixirCollapseRenderedCart();
  ixirEnsureCartClear();

  function ixirCartEmptyHtml() {
   return '<div class="ixir-cart-empty">' +
    '<span class="ixir-cart-empty-icon"><i class="fas fa-shopping-basket"></i></span>' +
    '<strong>Sepetiniz boş.</strong>' +
    '<span class="ixir-cart-empty-text">Henüz ürün eklemediniz.</span>' +
    '</div>';
  }

  function ixirResetDomainCartButton(domain) {
   if (!domain) {
    return;
   }
   var needle = String(domain).toLowerCase();
   $('button.btn-add-to-cart').each(function() {
    var value = String($(this).attr('data-domain') || '').toLowerCase();
    if (value !== needle) {
     return;
    }
    $(this).removeClass('checkout').removeAttr('disabled');
    $(this).find('span.added, span.loading, span.unavailable').hide();
    $(this).find('span.to-add').show();
   });
  }

  function ixirApplyMiniCartCount(count) {
   count = parseInt(count, 10) || 0;
   if (count > 0) {
    $('.ixir-cart-count').text(count + ' ürün');
    $('.cart-item-count').text(count).show();
    $('#cartItemCount').text(count);
   } else {
    $('.ixir-cart-count').remove();
    $('.cart-item-count').remove();
    $('#cartItemCount').text('0');
    $('.ixir-cart-items').each(function() {
     $(this).replaceWith(ixirCartEmptyHtml());
    });
   }
  }

  $(document).on('click', '.ixir-cart-item-remove', function(e) {
   e.preventDefault();
   e.stopPropagation();
   var $btn = $(this);
   if ($btn.hasClass('is-busy')) {
    return;
   }
   var type = $btn.attr('data-type');
   var key = String($btn.attr('data-indexes') || $btn.attr('data-index') || '');
   var indexes = key.split(',').map(function(value) {
    return parseInt(value, 10);
   }).filter(function(value) {
    return !isNaN(value);
   });
   indexes.sort(function(a, b) {
    return b - a;
   });
   if (!indexes.length) {
    return;
   }
   var domain = $btn.attr('data-name') || '';
   var renewalType = $btn.attr('data-rt') || '';
   var $targets = $('.ixir-cart-item-remove').filter(function() {
    return $(this).attr('data-type') === type &&
     String($(this).attr('data-indexes') || $(this).attr('data-index')) === key;
   });
   $targets.addClass('is-busy');

   function removeNext() {
    var index = indexes.shift();
    var data = {
     r: type,
     i: index,
     token: typeof csrfToken !== 'undefined' ? csrfToken : ''
    };
    if (renewalType) {
     data.rt = renewalType;
    }
    $.ajax({
     url: (window.whmcsBaseUrl || '') + '/ixir-cart-remove.php',
     type: 'POST',
     dataType: 'json',
     data: data
    }).done(function(res) {
     if (!res || !res.ok) {
      $targets.removeClass('is-busy');
      return;
     }
     if (indexes.length) {
      removeNext();
      return;
     }
     $targets.closest('li').remove();
     ixirApplyMiniCartCount(res.count);
     ixirResetDomainCartButton(res.removedName || domain);
    }).fail(function() {
     $targets.removeClass('is-busy');
    });
   }
   removeNext();
  });
  $(document).on('click', '.ixir-cart-clear', function(e) {
   e.preventDefault();
   e.stopPropagation();
   var $btn = $(this);
   if ($btn.hasClass('is-busy')) {
    return;
   }
   var $menu = $btn.closest('.ixir-cart-menu');
   var url = $menu.attr('data-cart-add') || '';
   if (!url) {
    return;
   }
   $('.ixir-cart-clear').addClass('is-busy');
   $.ajax({
    url: url,
    type: 'POST',
    dataType: 'json',
    data: {
     action: 'clear',
     token: typeof csrfToken !== 'undefined' ? csrfToken : ''
    }
   }).done(function(res) {
    if (!res || !res.ok) {
     $('.ixir-cart-clear').removeClass('is-busy');
     return;
    }
    if (window.ixirPaintCartMenus) {
     window.ixirPaintCartMenus([], 0);
    }
   }).fail(function() {
    $('.ixir-cart-clear').removeClass('is-busy');
   });
  });
  $(document).on('click', '.ixir-hamburger', function(e) {
   e.preventDefault();
   e.stopPropagation();
   var open = !$('.mobile-header').hasClass('menu-open');
   if (open) {
    closeIxirCart();
    closeIxirAccount();
   }
   setIxirMobileMenu(open);
  });
  $(document).on('click', '.ixir-mobile-overlay, .ixir-mobile-drawer-close', function(e) {
   e.preventDefault();
   setIxirMobileMenu(false);
  });
  $(document).on('click', '.ixir-mobile-toggle', function(e) {
   e.preventDefault();
   var $item = $(this).closest('li.has-children');
   var open = !$item.hasClass('is-open');
   $item.siblings('.has-children').removeClass('is-open')
    .find('.ixir-mobile-toggle').attr('aria-expanded', 'false');
   $item.toggleClass('is-open', open);
   $(this).attr('aria-expanded', open ? 'true' : 'false');
  });

  function ixirIsMobileHeader() {
   return window.matchMedia('(max-width: 1024px)').matches;
  }

  function updateIxirHeaderSpacer() {
   var isMobile = ixirIsMobileHeader();
   var $header = isMobile ? $('.mobile-header') : $('.ixir-header');
   var $spacer = $('.ixir-header-spacer');
   var $news = $('#ixirNewsBar');
   if (!isMobile) {
    setIxirMobileMenu(false);
   }
   if (!$header.length || !$spacer.length) {
    return;
   }
   var headerEl = $header[0];
   var headerHeight = headerEl.getBoundingClientRect().height || 0;
   var newsVisible = $news.length && $news.is(':visible') && !$news.hasClass('is-hidden') && !$('body').hasClass(
    'ixir-auth-page');
   var height = headerHeight;
   if (newsVisible) {
    $news.css('top', headerHeight + 'px');
    height = $news[0].getBoundingClientRect().bottom - headerEl.getBoundingClientRect().top;
    if (height > headerHeight) {
     height -= 1;
    }
   }
   if (height > 0) {
    $spacer.css('height', height + 'px');
    document.documentElement.style.setProperty('--ixir-hero-offset', Math.round(height) + 'px');
   }
  }
  window.updateIxirHeaderSpacer = updateIxirHeaderSpacer;
  $(window).on('load resize', updateIxirHeaderSpacer);
  updateIxirHeaderSpacer();
 });

 function ixirOpenMiniCart() {
  document.querySelectorAll('.ixir-account-menu').forEach(function(menu) {
   menu.classList.remove('open');
   var toggle = menu.querySelector('.ixir-account-toggle');
   if (toggle) toggle.setAttribute('aria-expanded', 'false');
  });
  var carts = document.querySelectorAll('.nav-cart');
  var cart = null;
  carts.forEach(function(item) {
   if (!cart && item.offsetParent !== null) cart = item;
  });
  if (!cart && carts.length) cart = carts[0];
  carts.forEach(function(item) {
   item.classList.remove('open');
  });
  if (!cart) return;
  cart.classList.add('open');
  var toggle = cart.querySelector('.ixir-cart-toggle');
  if (toggle) toggle.setAttribute('aria-expanded', 'true');
 }

 document.addEventListener('click', function(event) {
  var node = event.target;
  while (node && node !== document) {
   if (node.tagName === 'A' && node.getAttribute('data-pid') &&
    (node.classList.contains('ixir-wh-buy') || node.classList.contains('ssl-buy-btn'))) {
    event.preventDefault();
    event.stopPropagation();
    if (typeof event.stopImmediatePropagation === 'function') {
     event.stopImmediatePropagation();
    }
    if (node.classList.contains('is-adding')) return;
    var menu = document.querySelector('.ixir-cart-menu');
    var url = menu ? menu.getAttribute('data-cart-add') : '';
    if (!url || !window.jQuery) return;
    var label = node.textContent;
    var card = node.closest('article');
    var amount = card ? card.querySelector('.ixir-wh-amount, .ixir-cs-amount') : null;
    var price = amount ? amount.textContent.replace(/\s+/g, ' ').trim() : '';
    node.classList.add('is-adding');
    node.setAttribute('aria-disabled', 'true');
    window.jQuery.ajax({
     url: url,
     type: 'POST',
     dataType: 'json',
     data: {
      pid: node.getAttribute('data-pid'),
      billingcycle: node.getAttribute('data-billingcycle') || 'triennially',
      price: price,
      token: window.csrfToken || (typeof csrfToken !== 'undefined' ? csrfToken : '')
     }
    }).done(function(data) {
     if (!data || !data.ok || !data.items) {
      node.textContent = 'Eklenemedi';
      window.setTimeout(function() {
       node.textContent = label;
      }, 1600);
      return;
     }
     if (window.ixirPaintCartMenus) {
      window.ixirPaintCartMenus(data.items, parseInt(data.cartCount, 10) || data.items.length);
     }
     ixirOpenMiniCart();
     node.textContent = 'Sepete Eklendi';
     window.setTimeout(function() {
      node.textContent = label;
     }, 1600);
    }).fail(function() {
     node.textContent = 'Eklenemedi';
     window.setTimeout(function() {
      node.textContent = label;
     }, 1600);
    }).always(function() {
     node.classList.remove('is-adding');
     node.removeAttribute('aria-disabled');
     });
     return;
    }
    node = node.parentNode;
   }
  }, true);
 {/literal}
</script>