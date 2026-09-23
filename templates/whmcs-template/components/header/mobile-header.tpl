<div class="mobile-header menuTopFix">
 <div class="mobile-top">
  <div class="container">
   <div class="mobile-top-row">
    <div class="mobile-top-left">
     <a href="tel:+908503027111" class="mobile-top-phone" title="Telefon">
      <i class="far fa-phone-volume"></i>
      <span class="sr-only">0850 302 7 111</span>
     </a>
     <a href="//blog.ixirhost.com" title="ixirhost blog" rel="nofollow" target="_blank">
      <i class="fas fa-newspaper"></i>
      <span class="sr-only">Blog</span>
     </a>
     <a href="{$WEB_ROOT}/kurumsal" title="ixirhost hakkında">
      <i class="far fa-building"></i>
      <span class="sr-only">Kurumsal</span>
     </a>
    </div>
    <div class="mobile-top-right">
     {if $loggedin}
      <div class="ixir-account-menu">
       <a href="#" class="ixir-account-toggle" title="Hesap menüsü" aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-user"></i>
        <span class="mobile-auth-text">Hoşgeldiniz{if $ixirFirstName} {$ixirFirstName}{/if}</span>
        <b class="caret"></b>
       </a>
       {include file="$template/components/header/ixir-account-menu.tpl"}
      </div>
     {else}
      <a href="{$WEB_ROOT}/hesabim" class="mobile-auth-link" title="Hesabım">
       <i class="far fa-user"></i>
       <span class="mobile-auth-text">Hesabım</span>
      </a>
     {/if}
    </div>
   </div>
  </div>
 </div>
 <div class="container">
  <div class="mobile-header-main">
   <a href="{$WEB_ROOT}/" class="mobile-logo">
    <img src="{$WEB_ROOT}/templates/{$template}/img/logo-color.webp" alt="ixirhost logo">
   </a>
   <div class="mobile-header-actions">
    <div class="nav-cart dropdown">
     <a href="#" class="ixir-cart-toggle mobile-cart" title="Sepet" aria-label="Sepet" aria-haspopup="true"
      aria-expanded="false">
      <i class="far fa-shopping-basket" aria-hidden="true"></i>
      {if (isset($cartitemcount) && $cartitemcount > 0) || (isset($ixirCartCount) && $ixirCartCount > 0)}
       <span
        class="badge badge-danger cart-item-count">{if isset($cartitemcount) && $cartitemcount > 0}{$cartitemcount}{else}{$ixirCartCount}{/if}</span>
      {/if}
     </a>
     {include file="$template/components/header/ixir-cart-menu.tpl"}
    </div>
    <button type="button" class="ixir-hamburger" aria-controls="ixirMobileMenu" aria-expanded="false" aria-label="Menü">
     <span class="ixir-hamburger-box" aria-hidden="true">
      <span class="ixir-hamburger-bar"></span>
      <span class="ixir-hamburger-bar"></span>
      <span class="ixir-hamburger-bar"></span>
     </span>
    </button>
   </div>
  </div>
 </div>
 <div class="ixir-mobile-overlay"></div>
 <nav class="ixir-mobile-drawer" id="ixirMobileMenu" aria-hidden="true" aria-label="Mobil menü">
  <div class="ixir-mobile-drawer-head">
   <a href="{$WEB_ROOT}/" class="ixir-mobile-drawer-logo">
    <img src="{$WEB_ROOT}/templates/{$template}/img/logo-color.webp" alt="ixirhost">
   </a>
   <button type="button" class="ixir-mobile-drawer-close ixir-close" title="Kapat" aria-label="Menüyü kapat">
    <i class="fas fa-times"></i>
   </button>
  </div>
  <div
   class="ixir-mobile-auth{if $loggedin} is-loggedin{elseif !$condlinks.allowClientRegistration} is-login-only{/if}">
   {if $loggedin}
    <a href="{$WEB_ROOT}/musteri-paneli" class="ixir-mobile-auth-btn ixir-mobile-auth-btn--account">
     <i class="fas fa-user"></i>
     <span>
      <strong>Hesabım</strong>
      <small>Müşteri paneli</small>
     </span>
    </a>
    <a href="{$WEB_ROOT}/cikis" class="ixir-mobile-auth-btn ixir-mobile-auth-btn--logout">
     <i class="fas fa-sign-out-alt"></i>
     <span>
      <strong>Çıkış Yap</strong>
      <small>Oturumu kapat</small>
     </span>
    </a>
   {else}
    <a href="{$WEB_ROOT}/hesabim" class="ixir-mobile-auth-btn ixir-mobile-auth-btn--login">
     <i class="fas fa-user"></i>
     <span>
      <strong>Hesabım</strong>
      <small>Giriş yapın veya kayıt olun.</small>
     </span>
    </a>
   {/if}
  </div>
  <ul class="ixir-mobile-nav">
   <li class="has-children">
    <button type="button" class="ixir-mobile-toggle" aria-expanded="false">
     <i class="fas fa-globe"></i>
     <span>Domain</span>
     <i class="fas fa-chevron-down ixir-mobile-caret"></i>
    </button>
    <div class="ixir-mobile-sub">
     <div class="ixir-mobile-sub-inner">
      <a href="{$WEB_ROOT}/domain-sorgu">
       <i class="far fa-search"></i>
       <span>
        Domain Sorgulama
        <small>125 TL'den başlayan fiyatlarla</small>
       </span>
      </a>
      <a href="{$WEB_ROOT}/domain-transfer">
       <i class="fas fa-retweet"></i>
       <span>
        Domain Transfer
        <small>Domain'inizi en iyi fiyatla taşıyın</small>
       </span>
      </a>
      <a href="{$WEB_ROOT}/whois-sorgulama">
       <i class="far fa-eye"></i>
       <span>
        Whois Sorgulama
        <small>Hızlı ve güvenilir whois sorgulama</small>
       </span>
      </a>
     </div>
    </div>
   </li>
   <li class="has-children">
    <button type="button" class="ixir-mobile-toggle" aria-expanded="false">
     <i class="fas fa-hdd"></i>
     <span>Hosting</span>
     <span class="menu-kampanya blink ixir-mobile-badge">İNDİRİM</span>
     <i class="fas fa-chevron-down ixir-mobile-caret"></i>
    </button>
    <div class="ixir-mobile-sub">
     <div class="ixir-mobile-sub-inner">
      <a href="{$WEB_ROOT}/webhosting">
       <i class="fas fa-infinity"></i>
       <span>
        Web Hosting
        <small>NVMe, LiteSpeed, ücretsiz SSL</small>
       </span>
      </a>
      <a href="{$WEB_ROOT}/windows-hosting">
       <i class="fab fa-windows"></i>
       <span>
        Windows Hosting
        <small>Windows 2022, SQL Server, ASP.NET</small>
       </span>
      </a>
      <a href="{$WEB_ROOT}/wordpress-hosting">
       <i class="fab fa-wordpress-simple"></i>
       <span>
        WordPress Hosting
        <small>WordPress sitelere özel altyapı</small>
       </span>
      </a>
      <a href="{$WEB_ROOT}/kurumsal-mail-hosting">
       <i class="far fa-envelope"></i>
       <span>
        Kurumsal Mail Hosting
        <small>Kişi, takvim ve mesajlaşma</small>
       </span>
      </a>
      <a href="{$WEB_ROOT}/developer-hosting">
       <i class="fas fa-code"></i>
       <span>
        Developer Hosting
        <small>Laravel, Node.js, Python, SSH</small>
       </span>
      </a>
      <a href="{$WEB_ROOT}/cloud-drive">
       <i class="fas fa-cloud-upload-alt"></i>
       <span>
        Cloud Drive
        <small>Yüksek kotalı bulut depolama</small>
       </span>
      </a>
      <a href="{$WEB_ROOT}/reseller-hosting">
       <i class="fab fa-cpanel"></i>
       <span>
        Linux Bayi Hosting
        <small>WHM / cPanel reseller</small>
       </span>
      </a>
      <a href="{$WEB_ROOT}/windows-reseller-hosting">
       <i class="fas fa-atom"></i>
       <span>
        Windows Bayi Hosting
        <small>Plesk panel reseller</small>
       </span>
      </a>
     </div>
    </div>
   </li>
   <li class="has-children">
    <button type="button" class="ixir-mobile-toggle" aria-expanded="false">
     <i class="fas fa-envelope"></i>
     <span>E-posta</span>
     <i class="fas fa-chevron-down ixir-mobile-caret"></i>
    </button>
    <div class="ixir-mobile-sub">
     <div class="ixir-mobile-sub-inner">
      <a href="{$WEB_ROOT}/kurumsal-mail-hosting">
       <i class="far fa-envelope"></i>
       <span>
        Kurumsal Mail Hosting
        <small>Kişi, takvim ve mesajlaşma</small>
       </span>
      </a>
      <a href="{$WEB_ROOT}/kurumsal-mail-server">
       <i class="fas fa-server"></i>
       <span>
        Kurumsal Mail Server
        <small>İşletmenize özel mail altyapısı</small>
       </span>
      </a>
      <a href="{$WEB_ROOT}/antispam">
       <i class="fas fa-shield-alt"></i>
       <span>
        AntiSpam
        <small>Yapay zeka destekli, KVKK uyumlu</small>
       </span>
      </a>
      <a href="{$WEB_ROOT}/outbound-mail-gateway">
       <i class="fas fa-check-double"></i>
       <span>
        Outbound Mail Gateway
        <small>Yüksek reputation &amp; senderscore</small>
       </span>
      </a>
     </div>
    </div>
   </li>
   <li class="has-children">
    <button type="button" class="ixir-mobile-toggle" aria-expanded="false">
     <i class="fas fa-server"></i>
     <span>Sunucu</span>
     <i class="fas fa-chevron-down ixir-mobile-caret"></i>
    </button>
    <div class="ixir-mobile-sub">
     <div class="ixir-mobile-sub-inner">
      <a href="{$WEB_ROOT}/cloud">
       <i class="far fa-cloud"></i>
       <span>
        Bulut Sunucu
        <small>60 saniyede kurulan cloud sunucu</small>
       </span>
      </a>
      <a href="{$WEB_ROOT}/dedicated-server">
       <i class="fas fa-server"></i>
       <span>
        Dedicated Server
        <small>İstanbul merkezli, operatör yedekli</small>
       </span>
      </a>
      <a href="{$WEB_ROOT}/colocation">
       <i class="fas fa-database"></i>
       <span>
        Co-Location
        <small>Tier III veri merkezinde barındırma</small>
       </span>
      </a>
      <a href="{$WEB_ROOT}/ek-servisler">
       <i class="far fa-life-ring"></i>
       <span>
        Sunucu Servisleri
        <small>Çözüm odaklı sunucu desteği</small>
       </span>
      </a>
      <a href="{$WEB_ROOT}/pci-tarama">
       <i class="fas fa-shield-alt"></i>
       <span>
        PCI-DSS
        <small>Sunucu güvenlik kontrol hizmeti</small>
       </span>
      </a>
     </div>
    </div>
   </li>
   <li>
    <a href="{$WEB_ROOT}/site-pratik">
     <i class="fas fa-magic"></i>
     <span>Site Pratik</span>
     <span class="menu-yeni blink ixir-mobile-badge">AI Destekli</span>
    </a>
   </li>
   <li>
    <a href="{$WEB_ROOT}/ssl-sertifikalari">
     <i class="fas fa-lock"></i>
     <span>SSL Sertifikaları</span>
    </a>
   </li>
  </ul>
  <div class="ixir-mobile-drawer-foot">
   <a href="tel:+908503027111">
    <i class="far fa-phone-volume"></i>
    0850 302 7 111
   </a>
   <a href="//blog.ixirhost.com" rel="nofollow" target="_blank">
    <i class="fas fa-newspaper"></i>
    Blog
   </a>
   <a href="{$WEB_ROOT}/kurumsal">
    <i class="far fa-building"></i>
    Kurumsal
   </a>
  </div>
 </nav>
</div>