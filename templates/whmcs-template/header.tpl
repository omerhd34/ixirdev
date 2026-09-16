<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex, nofollow">
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

{include file="$template/components/header/mobile-header.tpl"}

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
                {include file="$template/components/header/ixir-navbar.tpl"}
            </div>
        </div>
    </nav>
</div>

{include file="$template/components/news-bar/news-bar.tpl"}
{include file="$template/components/header/header-scripts.tpl"}
{include file="$template/includes/verifyemail.tpl"}

{if $templatefile != 'homepage'}
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
            {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && !$skipMainBodyContainer}
                {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
            {/if}
{/if}
