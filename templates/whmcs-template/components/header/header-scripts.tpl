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

   function updateIxirSticky() {
    var y = $(window).scrollTop();
    var isMobile = $(window).width() <= 992;
    var $header = isMobile ? $('.mobile-header') : $('.ixir-header');
    var $other = isMobile ? $('.ixir-header') : $('.mobile-header');
    $other.removeClass('sticky');
    if ($other.next().hasClass('ixir-header-spacer')) {
     $other.next('.ixir-header-spacer').remove();
    }
    if (!isMobile) {
     setIxirMobileMenu(false);
    }
    if ($header.hasClass('menu-open')) {
     return;
    }
    if (y > 36) {
     if (!$header.hasClass('sticky')) {
      var height = $header.outerHeight() || 0;
      $header.addClass('sticky');
      $header.after('<div class="ixir-header-spacer" style="height:' + height + 'px"></div>');
     }
    } else {
     $header.removeClass('sticky');
     if ($header.next().hasClass('ixir-header-spacer')) {
      $header.next('.ixir-header-spacer').remove();
     }
    }
   }
   $(window).on('scroll resize', updateIxirSticky);
  });
 {/literal}
</script>