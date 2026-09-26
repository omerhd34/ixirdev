<!DOCTYPE html>
<html lang="tr">

<head>
 <script>
  {literal}
   (function() {
    var key = 'ixirScroll';

    function readY() {
     return window.pageYOffset || document.documentElement.scrollTop || (document.body && document.body.scrollTop) || 0;
    }

    function save() {
     try {
      sessionStorage.setItem(key, JSON.stringify({
       u: location.pathname + location.search + location.hash,
       y: readY()
      }));
     } catch (e) {}
    }

    function navType() {
     var list = performance.getEntriesByType && performance.getEntriesByType('navigation');
     if (list && list[0] && list[0].type) return list[0].type;
     if (performance.navigation && performance.navigation.type === 1) return 'reload';
     return 'navigate';
    }
    var saved = null;
    try {
     saved = JSON.parse(sessionStorage.getItem(key) || 'null');
    } catch (e) {}
    var here = location.pathname + location.search + location.hash;
    if (navType() === 'reload' && saved && saved.u === here && saved.y > 8) {
     var target = saved.y;

     function restore() {
      var height = Math.max(document.documentElement.scrollHeight, document.body ? document.body.scrollHeight : 0);
      var max = Math.max(0, height - window.innerHeight);
      if (max + 8 < target && document.readyState !== 'complete') return;
      window.scrollTo(0, Math.min(target, max));
     }
     if ('scrollRestoration' in history) history.scrollRestoration = 'manual';
     restore();
     document.addEventListener('DOMContentLoaded', restore);
     window.addEventListener('load', function() {
      restore();
      window.setTimeout(restore, 60);
      window.setTimeout(function() {
       restore();
       if ('scrollRestoration' in history) history.scrollRestoration = 'auto';
      }, 400);
     });
    }
    var scrollTimer = 0;
    window.addEventListener('scroll', function() {
     if (scrollTimer) return;
     scrollTimer = window.setTimeout(function() {
      scrollTimer = 0;
      save();
     }, 150);
    }, { passive: true });
    window.addEventListener('pagehide', save);
    window.addEventListener('beforeunload', save);
   })();
  {/literal}
 </script>
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
    (function() {
     try {
      if (/\/index\.php\/?$/i.test(location.pathname) && !location.search) {
       history.replaceState(null, '', location.pathname.replace(/\/index\.php\/?$/i, '/') || '/');
      }
     } catch (e) {}
     var originalTitle = document.title;
     var promoTitle = '20. Yılımıza Özel Süper İndirimler Başladı!';
     setInterval(function() {
      document.title = promoTitle;
      setTimeout(function() {
       document.title = originalTitle;
      }, 2500);
     }, 5000);
    })();
   {/literal}
  </script>
 {/if}
</head>

<body
 {if $ixirIsAuthPage || $showingLoginPage || $templatefile == 'login' || $templatefile == 'clientregister' || $templatefile == 'password-reset' || $filename == 'ixir-hesabim'}
 class="ixir-auth-page" data-phone-cc-input="" {else}
  class="{if $ixirCorporate}ixir-corporate-page{/if}{if $ixirDomainSearchPage} ixir-domain-search-page{/if}{if $ixirDomainTransferPage} ixir-domain-transfer-page{/if}"
 data-phone-cc-input="{$phoneNumberInputStyle}" {/if}>
 {if $ixirLoadRecaptcha && $captcha && ($templatefile != 'clientregister' || !$loggedin)}{$captcha->getMarkup()}{/if}
 {$headeroutput}

 <style>
  html {
   --ixir-scroll-size: 18px;
   --ixir-scroll-track: #101624;
   --ixir-hero-offset: 113px;
   height: auto !important;
   overflow-x: clip !important;
   overflow-y: scroll !important;
   scrollbar-width: auto !important;
   scrollbar-color: #4d7ef0 var(--ixir-scroll-track) !important;
  }

  body {
   height: auto !important;
   overflow-x: clip !important;
   overflow-y: visible !important;
   display: block !important;
  }

  body.ixir-auth-page {
   display: flex !important;
   flex-direction: column !important;
   min-height: 100vh;
   min-height: 100dvh;
  }

  html::-webkit-scrollbar,
  body::-webkit-scrollbar {
   width: var(--ixir-scroll-size) !important;
   height: var(--ixir-scroll-size) !important;
   display: block !important;
   background: var(--ixir-scroll-track) !important;
  }

  html::-webkit-scrollbar-track,
  body::-webkit-scrollbar-track {
   background:
    linear-gradient(90deg, rgba(255, 255, 255, 0.08), transparent 1px),
    var(--ixir-scroll-track) !important;
  }

  html::-webkit-scrollbar-thumb,
  body::-webkit-scrollbar-thumb {
   border-radius: 999px !important;
   border: 3px solid transparent !important;
   background-color: #386ce0 !important;
   background-image: linear-gradient(180deg, #9ec0ff 0%, #386ce0 46%, #1e4bb8 100%) !important;
   background-clip: padding-box !important;
   min-height: 64px !important;
  }

  html::-webkit-scrollbar-thumb:hover,
  body::-webkit-scrollbar-thumb:hover {
   border-width: 2px !important;
   background-color: #5b8ef5 !important;
   background-image: linear-gradient(180deg, #d4e4ff 0%, #4d7ef0 42%, #2a5ad4 100%) !important;
   background-clip: padding-box !important;
  }

  html::-webkit-scrollbar-thumb:active,
  body::-webkit-scrollbar-thumb:active {
   border-width: 3px !important;
   background-color: #1e4bb8 !important;
   background-image: linear-gradient(180deg, #6f9cf5 0%, #1e4bb8 100%) !important;
   background-clip: padding-box !important;
  }

  html::-webkit-scrollbar-button,
  body::-webkit-scrollbar-button {
   display: none !important;
   width: 0 !important;
   height: 0 !important;
  }

  html::-webkit-scrollbar-corner,
  body::-webkit-scrollbar-corner {
   background: var(--ixir-scroll-track) !important;
  }

  .ixir-header,
  .mobile-header {
   position: fixed !important;
   top: 0 !important;
   left: 0 !important;
   right: 0 !important;
   width: 100% !important;
   z-index: 10000;
   box-shadow: 0 2px 4px rgba(3, 27, 78, 0.1);
  }

  .ixir-header-spacer {
   display: block;
   width: 100%;
   height: 113px;
   pointer-events: none;
  }

  body:has(.news-bar:not(.is-hidden)) .ixir-header-spacer {
   height: 161px;
  }

  body:has(.news-bar:not(.is-hidden)) {
   --ixir-hero-offset: 161px;
  }

  @media only screen and (max-width: 1023px) {
   html {
    --ixir-hero-offset: 96px;
   }

   .ixir-header-spacer {
    height: 96px;
   }

   body:has(.news-bar:not(.is-hidden)) .ixir-header-spacer {
    height: 142px;
   }

   body:has(.news-bar:not(.is-hidden)) {
    --ixir-hero-offset: 142px;
   }
  }

  body.ixir-auth-page .ixir-header-spacer {
   height: 113px;
  }

  @media only screen and (max-width: 1023px) {
   body.ixir-auth-page .ixir-header-spacer {
    height: 96px;
   }
  }

  body.ixir-auth-page .news-bar,
  body.ixir-auth-page #ixirNewsBar {
   display: none !important;
   height: 0 !important;
   margin: 0 !important;
   padding: 0 !important;
   overflow: hidden !important;
   visibility: hidden !important;
  }
 </style>
 {include file="$template/components/header/mobile-header.tpl"}

 <div class="ixir-header header menuTopFix">
  <div class="topbar">
   <div class="container">
    <div class="topbar-row">
     <div class="top-bar-left">
      <a href="//blog.ixirhost.com" title="ixirhost blog" rel="nofollow" target="_blank"><i
        class="fas fa-newspaper"></i><span class="topbar-text">Blog</span></a>
      <a href="{$WEB_ROOT}/kurumsal" title="ixirhost hakkında"><i class="far fa-building"></i><span
        class="topbar-text">Kurumsal</span></a>
     </div>
     <div class="top-bar-right">
      {if $loggedin}
       {if $languagechangeenabled && isset($locales) && count($locales) > 1}
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
       <div class="ixir-account-menu">
        <a href="#" class="ixir-account-toggle" title="Hesap menüsü" aria-haspopup="true" aria-expanded="false">
         <span class="topbar-text">Hoşgeldiniz{if $ixirFirstName} {$ixirFirstName}{/if}</span>
         <b class="caret"></b>
        </a>
        {include file="$template/components/header/ixir-account-menu.tpl"}
       </div>
      {else}
       <a href="{$WEB_ROOT}/hesabim" title="Hesabım"><i class="far fa-user"></i><span
         class="topbar-text">Hesabım</span></a>
      {/if}
     </div>
    </div>
   </div>
  </div>

  <nav id="nav" class="navbar ixir-navbar" role="navigation">
   <div class="container">
    <a class="navbar-brand" href="{$WEB_ROOT}/">
     <span class="logo-group">
      <img class="logo" src="{$WEB_ROOT}/templates/{$template}/img/logo-color.webp" alt="ixirhost logo">
     </span>
    </a>
    <div class="navbar-collapse" id="ixirMenu">
     {include file="$template/components/header/ixir-navbar.tpl"}
    </div>
   </div>
  </nav>
 </div>
 <div class="ixir-header-spacer" aria-hidden="true"></div>

 {if $templatefile == 'homepage'}
  {include file="$template/components/news-bar/news-bar.tpl"}
 {/if}
 {include file="$template/components/header/header-scripts.tpl"}
 {if $templatefile != 'clientregister'}
  {include file="$template/includes/verifyemail.tpl"}
 {/if}

 {if $templatefile != 'homepage' && $templatefile != 'whois-sorgulama' && !$ixirCorporate && !$ixirDomainSearchPage && !$ixirDomainTransferPage && !($templatefile == 'product-landing' && ($ixirPageSlug == 'webhosting' || $ixirPageSlug == 'windows-hosting'))}
  <section id="main-body">
   <div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">
    <div class="row">

     {assign var="ixirHideSidebar" value=false}
     {if $templatefile == 'clientregister' || $templatefile == 'login' || $templatefile == 'password-reset' || $showingLoginPage}
      {assign var="ixirHideSidebar" value=true}
     {/if}

     {if !$ixirHideSidebar && !$inShoppingCart && $primarySidebar && $secondarySidebar && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
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
     <div
      class="{if !$ixirHideSidebar && !$inShoppingCart && $primarySidebar && $secondarySidebar && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
      {if !$ixirHideSidebar && $primarySidebar && !$primarySidebar->hasChildren() && !$showingLoginPage && $templatefile != 'clientregister' && !$inShoppingCart && !$skipMainBodyContainer}
       {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
      {/if}
{/if}