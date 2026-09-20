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
 class="ixir-auth-page" data-phone-cc-input="" {else} data-phone-cc-input="{$phoneNumberInputStyle}" 
 {/if}>
 {if $captcha && ($templatefile != 'clientregister' || !$loggedin)}{$captcha->getMarkup()}{/if}
 {$headeroutput}

 <style>
  html {
   --ixir-scroll-size: 18px;
   height: auto !important;
   overflow-x: hidden !important;
   overflow-y: scroll !important;
   scrollbar-width: auto;
   scrollbar-color: #d4d4d4 #2a2a2a;
  }

  body {
   height: auto !important;
   overflow: visible !important;
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
   background: #2a2a2a !important;
  }

  html::-webkit-scrollbar-track,
  body::-webkit-scrollbar-track {
   background: #2a2a2a !important;
  }

  html::-webkit-scrollbar-thumb,
  body::-webkit-scrollbar-thumb {
   background: #d4d4d4 !important;
   border-radius: 999px !important;
   border: 3px solid #2a2a2a !important;
   background-clip: padding-box !important;
  }

  html::-webkit-scrollbar-thumb:hover,
  body::-webkit-scrollbar-thumb:hover {
   background: #e4e4e4 !important;
   border: 3px solid #2a2a2a !important;
   background-clip: padding-box !important;
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

  @media only screen and (max-width: 992px) {
   .ixir-header-spacer {
    height: 96px;
   }

   body:has(.news-bar:not(.is-hidden)) .ixir-header-spacer {
    height: 142px;
   }
  }

  body.ixir-auth-page .ixir-header-spacer {
   height: 113px;
  }

  @media only screen and (max-width: 992px) {
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
      <a href="tel:+908503027111" class="topbar-phone"><i class="far fa-phone-volume"></i><span class="topbar-text">0850
        302 7 111</span></a>
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

 {if !$ixirIsAuthPage && !$showingLoginPage && $templatefile != 'login' && $templatefile != 'clientregister' && $templatefile != 'password-reset' && $filename != 'ixir-hesabim' && $filename != 'register'}
  {include file="$template/components/news-bar/news-bar.tpl"}
 {/if}
 {include file="$template/components/header/header-scripts.tpl"}
 {if $templatefile != 'clientregister'}
  {include file="$template/includes/verifyemail.tpl"}
 {/if}

 {if $templatefile != 'homepage'}
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