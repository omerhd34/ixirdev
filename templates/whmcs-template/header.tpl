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

<body data-phone-cc-input="{$phoneNumberInputStyle}" {if $showingLoginPage} class="ixir-auth-page" {/if}>
 {if $captcha && ($templatefile != 'clientregister' || !$loggedin)}{$captcha->getMarkup()}{/if}
 {$headeroutput}

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
       <a href="{$WEB_ROOT}/giris" title="Giriş Yap"><i class="far fa-user"></i><span class="topbar-text">Giriş
         Yap</span></a>
       {if $condlinks.allowClientRegistration}
        <a href="{$WEB_ROOT}/kayit" title="Kayıt Ol"><i class="far fa-user-plus"></i><span class="topbar-text">Kayıt
          Ol</span></a>
       {/if}
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

 {include file="$template/components/news-bar/news-bar.tpl"}
 {include file="$template/components/header/header-scripts.tpl"}
 {if $templatefile != 'clientregister'}
  {include file="$template/includes/verifyemail.tpl"}
 {/if}

 {if $templatefile != 'homepage'}
  <section id="main-body">
   <div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">
    <div class="row">

     {if !$inShoppingCart && $primarySidebar && $secondarySidebar && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
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
      class="{if !$inShoppingCart && $primarySidebar && $secondarySidebar && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
      {if $primarySidebar && !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && !$skipMainBodyContainer}
       {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
      {/if}
{/if}