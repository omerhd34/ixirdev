<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{$companyname} | Hosting, Domain, Cloud, Dedicated Server</title>
    {include file="$template/includes/head.tpl"}
    {$headoutput}
    {if $templatefile == 'homepage'}
    <script>
    {literal}
    (function () {
        var originalTitle = document.title;
        var promoTitle = '20. Yılımıza Özel Süper İndirimler Başladı!';
        setInterval(function () {
            document.title = promoTitle;
            setTimeout(function () {
                document.title = originalTitle;
            }, 2500);
        }, 5000);
    })();
    {/literal}
    </script>
    {/if}
</head>

<body data-phone-cc-input="{$phoneNumberInputStyle}">
{if $captcha}{$captcha->getMarkup()}{/if}
{$headeroutput}

<div class="mobile-header menuTopFix">
    <div class="mobile-top">
        <div class="container">
            <div class="row">
                <div class="col-xs-6">
                    <ul class="toplink1">
                        {if $loggedin}
                            <li><a href="{$WEB_ROOT}/clientarea.php" title="Müşteri Paneli">Hesabım</a></li>
                            <li><a href="{$WEB_ROOT}/logout.php" title="Çıkış">Çıkış</a></li>
                        {else}
                            <li><a href="{$WEB_ROOT}/clientarea.php" title="Müşteri Paneli">Giriş Yap</a></li>
                            <li><a href="{$WEB_ROOT}/register.php" title="Kayıt Ol">Kayıt Ol</a></li>
                        {/if}
                    </ul>
                </div>
                <div class="col-xs-6">
                    <ul class="toplink2">
                        <li><a href="tel:+908503027111"><i class="fas fa-phone fa-fw"></i> 0850 302 7 111</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row mobile-header-main">
            <div class="col-xs-3">
                <a href="#ixirMobileMenu" class="mblMenu" data-toggle="collapse" title="Menü"><i class="fas fa-bars"></i></a>
            </div>
            <div class="col-xs-6">
                <a href="{$WEB_ROOT}/index.php" class="mobile-logo">
                    <img src="{$WEB_ROOT}/templates/{$template}/img/logo-color.webp" alt="ixirhost logo">
                </a>
            </div>
            <div class="col-xs-3">
                <a href="{$WEB_ROOT}/cart.php?a=view" class="mobile-cart">
                    <i class="fas fa-shopping-basket"></i>
                    {if isset($cartitemcount) && $cartitemcount > 0}
                        <span class="badge badge-danger">{$cartitemcount}</span>
                    {/if}
                </a>
            </div>
        </div>
    </div>
    <div class="collapse" id="ixirMobileMenu">
        <ul class="ixir-mobile-nav">
            <li><a href="{$WEB_ROOT}/alanaditescil"><i class="fas fa-globe"></i> Domain</a></li>
            <li><a href="{$WEB_ROOT}/webhosting"><i class="fas fa-hdd"></i> Web Hosting</a></li>
            <li><a href="{$WEB_ROOT}/kurumsal-mail-hosting"><i class="fas fa-envelope"></i> E-posta</a></li>
            <li><a href="{$WEB_ROOT}/cloud"><i class="fas fa-server"></i> Sunucu</a></li>
            <li><a href="{$WEB_ROOT}/website-olusturucu"><i class="fas fa-magic"></i> Site Pratik</a></li>
            <li><a href="{$WEB_ROOT}/ssl-sertifikalari"><i class="fas fa-lock"></i> SSL Sertifikaları</a></li>
            <li><a href="{$WEB_ROOT}/cart.php?a=view">Sepet</a></li>
        </ul>
    </div>
</div>

<div class="ixir-header header menuTopFix">
    <div class="topbar">
        <div class="container">
            <div class="topbar-row">
                <div class="top-bar-left">
                    <a href="tel:+908503027111"><i class="far fa-phone-volume"></i>0850 302 7 111</a>
                    <a href="//blog.ixirhost.com" title="ixirhost blog" rel="nofollow" target="_blank"><i class="far fa-rss"></i>Blog</a>
                    <a href="{$WEB_ROOT}/kurumsal" title="ixirhost hakkında"><i class="far fa-building"></i>Kurumsal</a>
                </div>
                <div class="top-bar-right">
                    {if $loggedin}
                        {if $languagechangeenabled && count($locales) > 1}
                            <a href="#" class="choose-language" data-toggle="popover" id="languageChooser">
                                {$activeLocale.localisedName}
                                <b class="caret"></b>
                            </a>
                            <div id="languageChooserContent" class="hidden">
                                <ul>
                                    {foreach $locales as $locale}
                                        <li>
                                            <a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a>
                                        </li>
                                    {/foreach}
                                </ul>
                            </div>
                        {/if}
                        <a href="#" data-toggle="popover" id="accountNotifications" data-placement="bottom">
                            <i class="far fa-flag"></i>{$LANG.notifications}
                            {if count($clientAlerts) > 0}
                                <span class="label label-info">{lang key='notificationsnew'}</span>
                            {/if}
                        </a>
                        <div id="accountNotificationsContent" class="hidden">
                            <ul class="client-alerts">
                            {foreach $clientAlerts as $alert}
                                <li>
                                    <a href="{$alert->getLink()}">
                                        <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                        <div class="message">{$alert->getMessage()}</div>
                                    </a>
                                </li>
                            {foreachelse}
                                <li class="none">
                                    {$LANG.notificationsnone}
                                </li>
                            {/foreach}
                            </ul>
                        </div>
                        <a href="{$WEB_ROOT}/clientarea.php" title="Müşteri paneli"><i class="fas fa-user"></i>Hesabım</a>
                        <a href="{$WEB_ROOT}/logout.php" title="Çıkış Yap"><i class="fas fa-sign-out-alt"></i>Çıkış Yap</a>
                    {else}
                        <a href="{$WEB_ROOT}/clientarea.php" title="Müşteri paneli"><i class="far fa-user"></i>Giriş Yap</a>
                        {if $condlinks.allowClientRegistration}
                            <a href="{$WEB_ROOT}/register.php" title="Kayıt Ol"><i class="far fa-key"></i>Kayıt Ol</a>
                        {/if}
                    {/if}
                </div>
            </div>
        </div>
    </div>

    <nav id="nav" class="navbar ixir-navbar" role="navigation">
        <div class="container">
            <a class="navbar-brand" href="{$WEB_ROOT}/index.php">
                <span class="logo-group">
                    <img class="logo" src="{$WEB_ROOT}/templates/{$template}/img/logo-color.webp" alt="ixirhost logo">
                    <span class="logo-desc">
                        <img src="{$WEB_ROOT}/templates/{$template}/img/20yil-logo.webp" alt="20. Yıl" height="30">
                    </span>
                </span>
            </a>
            <div class="navbar-collapse" id="ixirMenu">
                {include file="$template/includes/ixir-navbar.tpl"}
            </div>
        </div>
    </nav>
</div>

<div class="news-bar" id="ixirNewsBar">
    <div class="container">
        <div class="news-content">
            <span class="news-badge"><i class="far fa-envelope"></i></span>
            <p>İşletmeniz için en iyi çözüm; <strong>Mail Hosting</strong> paketlerimizi incelediniz mi?</p>
            <a href="{$WEB_ROOT}/kurumsal-mail-hosting" class="news-cta">Hemen İncele <i class="fas fa-arrow-right"></i></a>
            <a href="javascript:;" class="newsClose" title="Kapat" aria-label="Kapat"><i class="fas fa-times"></i></a>
        </div>
    </div>
</div>

<script>
{literal}
jQuery(function($) {
    try { localStorage.removeItem('ixirNewsBarClosed'); } catch (e) {}
    $('#ixirNewsBar').show();
    $(document).on('click', '.newsClose', function(e) {
        e.preventDefault();
        $('#ixirNewsBar').slideUp(200);
    });
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

    (function initIxirTldCarousel() {
        var viewport = document.getElementById('ixirDomainTlds');
        if (!viewport) {
            return;
        }
        var track = viewport.querySelector('.ixir-tld-track');
        if (!track || !track.children.length) {
            return;
        }
        var html = track.innerHTML;
        track.innerHTML = html + html + html;
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
        var speed = reduceMotion ? 0 : 0.55;

        function measure() {
            setWidth = track.scrollWidth / 3;
            wrap();
            apply();
        }
        function wrap() {
            if (!setWidth) {
                return;
            }
            while (x <= -setWidth * 2) {
                x += setWidth;
            }
            while (x >= 0) {
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
            resumeTimer = window.setTimeout(function () {
                if (!dragging) {
                    paused = false;
                }
            }, 350);
        }

        viewport.addEventListener('pointerdown', function (e) {
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
            viewport.setPointerCapture(e.pointerId);
            e.preventDefault();
        });
        viewport.addEventListener('pointermove', function (e) {
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
        window.addEventListener('resize', measure);
        window.addEventListener('load', measure);
        window.setTimeout(measure, 50);
        measure();
        window.requestAnimationFrame(tick);
    })();

    (function initIxirDomainChecker() {
        var form = document.getElementById('frmDomainHomepage');
        var input = document.getElementById('ixir-domain-query');
        var error = document.getElementById('ixirDomainError');
        if (!form || !input || !error) {
            return;
        }

        function showError() {
            form.classList.remove('ixir-dc-shake');
            void form.offsetWidth;
            form.classList.add('ixir-dc-invalid', 'ixir-dc-shake');
            input.focus();
        }

        function hideError() {
            form.classList.remove('ixir-dc-invalid', 'ixir-dc-shake');
        }

        form.addEventListener('submit', function (e) {
            if (!$.trim(input.value)) {
                e.preventDefault();
                e.stopImmediatePropagation();
                showError();
            }
        }, true);

        $(input).on('input keydown', function () {
            if ($.trim(input.value)) {
                hideError();
            }
        });
    })();
});
{/literal}
</script>

{if $templatefile == 'homepage'}
    <section id="home-banner" class="ixir-hero">
        <picture class="ixir-hero-photo">
            <source srcset="{$WEB_ROOT}/templates/{$template}/img/hero-bg.webp" type="image/webp">
            <img src="{$WEB_ROOT}/templates/{$template}/img/hero-bg.jpg" alt="">
        </picture>
        <div class="container">
            <div class="ixir-hero-copy">
                <h1>
                    Mükemmel Bir Domain İle Başlayın!
                    <span class="ixir-hero-badge" aria-hidden="true"></span>
                </h1>
                <p>125 TL'den başlayan fiyatlarla mükemmel bir alan adına sahip olun!</p>
            </div>
            {if $registerdomainenabled || $transferdomainenabled}
                <form method="post" action="domainchecker.php" id="frmDomainHomepage" novalidate>
                    <div class="ixir-domain-checker">
                        <div class="ixir-dc-input">
                            <label for="ixir-domain-query" class="sr-only">Alan adı sorgula</label>
                            <input type="text" id="ixir-domain-query" class="form-control" name="domain" placeholder="Lütfen bir alan adı girin ( örn: ixirhost.com )" autocapitalize="none" autocomplete="off" />
                        </div>
                        <div class="ixir-dc-button">
                            {if $registerdomainenabled}
                                <button type="submit" class="btn btn-primary btn-block search{$captcha->getButtonClass($captchaForm)}"><i class="fas fa-search" aria-hidden="true"></i> Sorgula</button>
                            {else}
                                <button type="submit" id="btnTransfer" class="btn btn-primary btn-block transfer{$captcha->getButtonClass($captchaForm)}"><i class="fas fa-exchange-alt" aria-hidden="true"></i> Transfer</button>
                            {/if}
                        </div>
                    </div>
                    <p class="ixir-dc-error" id="ixirDomainError" role="alert">Lütfen sorgulamak istediğiniz alan adını girin.</p>
                    {include file="$template/includes/captcha.tpl"}
                </form>
            {/if}
            <ul class="ixir-domain-links">
                <li><a href="{$WEB_ROOT}/alanaditransfer" title="Domain Transfer">Domain Transfer</a></li>
                <li><a href="{$WEB_ROOT}/whois-sorgulama" title="Whois Sorgulama">Whois Sorgulama</a></li>
                <li>Ücretsiz Whois Gizleme</li>
                <li>Ücretsiz DNS Yönetimi</li>
                <li>Ücretsiz URL Yönlendirme</li>
                <li>Ücretsiz Mail Yönlendirme</li>
            </ul>
            <ul class="ixir-domain-links">
                <li><b>.TR</b> Kayıtları Başladı!</li>
                <li>Belgesiz <b>.com.tr</b> Anında Tescil!</li>
                <li>Belgesiz <b>.net.tr</b> Anında Tescil!</li>
            </ul>
            <div class="ixir-domain-tlds" id="ixirDomainTlds">
                <div class="ixir-tld-track">
                    <div class="ixir-tld">
                        <span class="ixir-tld-name">.net</span>
                        <span class="ixir-tld-old">855 TL</span>
                        <span class="ixir-tld-new">655 TL</span>
                    </div>
                    <div class="ixir-tld">
                        <span class="ixir-tld-name">.pro</span>
                        <span class="ixir-tld-old">1700 TL</span>
                        <span class="ixir-tld-new">200 TL</span>
                    </div>
                    <div class="ixir-tld">
                        <span class="ixir-tld-name">.tr</span>
                        <span class="ixir-tld-old">300 TL</span>
                        <span class="ixir-tld-new">200 TL</span>
                    </div>
                    <div class="ixir-tld">
                        <span class="ixir-tld-name">.xyz</span>
                        <span class="ixir-tld-old">775 TL</span>
                        <span class="ixir-tld-new">125 TL</span>
                    </div>
                    <div class="ixir-tld">
                        <span class="ixir-tld-name">.info</span>
                        <span class="ixir-tld-old">1390 TL</span>
                        <span class="ixir-tld-new">220 TL</span>
                    </div>
                    <div class="ixir-tld">
                        <span class="ixir-tld-name">.net.tr</span>
                        <span class="ixir-tld-old">200 TL</span>
                        <span class="ixir-tld-new">150 TL</span>
                    </div>
                    <div class="ixir-tld">
                        <span class="ixir-tld-name">.com.tr</span>
                        <span class="ixir-tld-old">200 TL</span>
                        <span class="ixir-tld-new">150 TL</span>
                    </div>
                    <div class="ixir-tld">
                        <span class="ixir-tld-name">.com</span>
                        <span class="ixir-tld-old">775 TL</span>
                        <span class="ixir-tld-new">615 TL</span>
                    </div>
                </div>
            </div>
        </div>
    </section>
{/if}

{include file="$template/includes/verifyemail.tpl"}

<section id="main-body">
    <div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">
        <div class="row">

        {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
            {if $primarySidebar->hasChildren() && !$skipMainBodyContainer}
                <div class="col-md-9 pull-md-right">
                    {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
                </div>
            {/if}
            <div class="col-md-3 pull-md-left sidebar">
                {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
            </div>
        {/if}
        <!-- Container for main page display content -->
        <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
            {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage' && !$skipMainBodyContainer}
                {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
            {/if}
