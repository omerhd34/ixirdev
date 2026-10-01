<script>
 {literal}
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
    var index = $btn.attr('data-index');
    var domain = $btn.attr('data-name') || '';
    var $targets = $('.ixir-cart-item-remove').filter(function() {
     return $(this).attr('data-type') === type && String($(this).attr('data-index')) === String(index);
    });
    $targets.addClass('is-busy');
    var data = {
     r: type,
     i: index,
     token: typeof csrfToken !== 'undefined' ? csrfToken : ''
    };
    var renewalType = $btn.attr('data-rt');
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
     $targets.closest('li').remove();
     ixirApplyMiniCartCount(res.count);
     ixirResetDomainCartButton(res.removedName || domain);
    }).fail(function() {
     $targets.removeClass('is-busy');
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
    return window.matchMedia('(max-width: 1023px)').matches;
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
 {/literal}
</script>