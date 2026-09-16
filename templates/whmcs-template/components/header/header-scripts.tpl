<script>
{literal}
jQuery(function($) {
    $(document).on('click', '.ixir-cart-toggle', function(e) {
        e.preventDefault();
        e.stopPropagation();
        var $cart = $(this).closest('.nav-cart');
        var isOpen = $cart.hasClass('open');
        $('.ixir-header .nav-cart').removeClass('open');
        $cart.toggleClass('open', !isOpen);
        $(this).attr('aria-expanded', !isOpen);
    });
    $(document).on('click', function(e) {
        if (!$(e.target).closest('.nav-cart').length) {
            $('.ixir-header .nav-cart').removeClass('open')
                .find('.ixir-cart-toggle').attr('aria-expanded', 'false');
        }
    });
    $(document).on('click', '.ixir-cart-menu', function(e) {
        e.stopPropagation();
    });
    function closeIxirMega($item, forceHide) {
        var $target = $item && $item.length
            ? $item
            : $('.ixir-header .ixir-nav > li.dropdown:not(.nav-cart)');
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
            closeIxirMega($('.ixir-header .ixir-nav > li.dropdown:not(.nav-cart).open, .ixir-header .ixir-nav > li.dropdown:not(.nav-cart):hover'), true);
        }
    });
    $(document).on('click', '.ixir-cart-close', function(e) {
        e.preventDefault();
        e.stopPropagation();
        $('.ixir-header .nav-cart').removeClass('open')
            .find('.ixir-cart-toggle').attr('aria-expanded', 'false');
    });
    function updateIxirSticky() {
        var y = $(window).scrollTop();
        var isMobile = $(window).width() <= 991;
        var $header = isMobile ? $('.mobile-header') : $('.ixir-header');
        var $other = isMobile ? $('.ixir-header') : $('.mobile-header');
        $other.removeClass('sticky');
        if ($other.next().hasClass('ixir-header-spacer')) {
            $other.next('.ixir-header-spacer').remove();
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
