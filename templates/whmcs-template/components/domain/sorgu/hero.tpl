  <section id="home-banner" class="ixir-hero">
   <picture class="ixir-hero-photo">
    <source srcset="{$WEB_ROOT}/templates/{$template}/img/hero-domain-sorgu.webp?v=r1" type="image/webp">
    <img src="{$WEB_ROOT}/templates/{$template}/img/hero-domain-sorgu.jpg?v=r1" alt="">
   </picture>
   <div class="container">
    <div class="ixir-hero-main">
     <div class="ixir-hero-copy">
      <h1>Mükemmel Bir Domain İle Başlayın!</h1>
      <p>125 TL'den başlayan fiyatlarla mükemmel bir alan adına sahip olun!</p>
      </div>
      <form method="post" action="{$WEB_ROOT}/cart.php" id="frmDomainChecker" novalidate>
       <input type="hidden" name="a" value="checkDomain" class="no-icheck">
       <input type="hidden" name="token" value="{$token}" class="no-icheck">
       <div class="ixir-domain-checker">
        <div class="ixir-dc-input">
         <span class="ixir-dc-icon" aria-hidden="true"><i class="fas fa-globe"></i></span>
         <label for="inputDomain" class="sr-only">Domain sorgula</label>
         <input type="text" name="domain" class="form-control no-icheck" placeholder="Örneğin ixirhost.com"
          value="{$lookupTerm}" id="inputDomain" data-placeholder="Örneğin ixirhost.com"
          data-placeholder-sm="ixirhost.com" data-placeholder-error="Lütfen bir alan adı girin." autocapitalize="none"
          autocomplete="off" inputmode="none" readonly />
         <script>
          (function() {
           var input = document.getElementById('inputDomain');
           if (!input) {
            return;
           }
           var phone = window.matchMedia('(max-width: 991px)').matches ||
            window.matchMedia('(pointer: coarse)').matches ||
            window.matchMedia('(hover: none)').matches;
           if (!phone) {
            input.removeAttribute('readonly');
            input.removeAttribute('inputmode');
            return;
           }
           var nativeFocus = HTMLElement.prototype.focus;
           input.focus = function() {};
           window.ixirArmDomainInput = function() {
            input.removeAttribute('readonly');
            input.removeAttribute('inputmode');
            input.focus = function() {
             nativeFocus.call(input);
            };
           };

           function openFromTouch() {
            window.ixirArmDomainInput();
            nativeFocus.call(input);
           }
           input.addEventListener('touchend', openFromTouch);
           input.addEventListener('pointerup', function(e) {
            if (!e.pointerType || e.pointerType === 'touch' || e.pointerType === 'pen') {
             openFromTouch();
            }
           });
          })();
         </script>
        </div>
        <div class="ixir-dc-button">
         <button type="submit" id="btnCheckAvailability" class="btn btn-primary btn-block search">
          <i class="fas fa-search" aria-hidden="true"></i> Sorgula
         </button>
        </div>
       </div>
      </form>
      <div class="ixir-dc-tlds" aria-label="Popüler uzantılar">
       <button type="button" class="ixir-dc-tld" data-tld="com" aria-label=".com uzantısını seç, 615 TL">
        <span class="ixir-dc-tld-name">.com</span>
        <span class="ixir-dc-tld-price">615 TL</span>
       </button>
       <button type="button" class="ixir-dc-tld" data-tld="xyz" aria-label=".xyz uzantısını seç, 125 TL">
        <span class="ixir-dc-tld-name">.xyz</span>
        <span class="ixir-dc-tld-price">125 TL</span>
       </button>
       <button type="button" class="ixir-dc-tld" data-tld="tr" aria-label=".tr uzantısını seç, 200 TL">
        <span class="ixir-dc-tld-name">.tr</span>
        <span class="ixir-dc-tld-price">200 TL</span>
       </button>
       <button type="button" class="ixir-dc-tld" data-tld="com.tr" aria-label=".com.tr uzantısını seç, 150 TL">
        <span class="ixir-dc-tld-name">.com.tr</span>
        <span class="ixir-dc-tld-price">150 TL</span>
       </button>
       <button type="button" class="ixir-dc-tld" data-tld="net" aria-label=".net uzantısını seç, 655 TL">
        <span class="ixir-dc-tld-name">.net</span>
        <span class="ixir-dc-tld-price">655 TL</span>
       </button>
       <button type="button" class="ixir-dc-tld" data-tld="info" aria-label=".info uzantısını seç, 220 TL">
        <span class="ixir-dc-tld-name">.info</span>
        <span class="ixir-dc-tld-price">220 TL</span>
       </button>
       <button type="button" class="ixir-dc-tld" data-tld="pro" aria-label=".pro uzantısını seç, 200 TL">
        <span class="ixir-dc-tld-name">.pro</span>
        <span class="ixir-dc-tld-price">200 TL</span>
       </button>
       <button type="button" class="ixir-dc-tld" data-tld="net.tr" aria-label=".net.tr uzantısını seç, 150 TL">
        <span class="ixir-dc-tld-name">.net.tr</span>
        <span class="ixir-dc-tld-price">150 TL</span>
       </button>
       {if $ixirDomainPrices}




        {foreach $ixirDomainPrices as $price}




         {assign var="ixirTldPlain" value=$price.tld|regex_replace:"/^\./":""}




         {if !in_array($ixirTldPlain, array('com','xyz','tr','com.tr','net','info','pro','net.tr'))}
          <button type="button" class="ixir-dc-tld ixir-dc-tld--more" data-tld="{$ixirTldPlain|escape:'html'}"
           aria-label="{$price.tld|escape:'html'} uzantısını seç, {$price.registerNum|string_format:'%d'} TL">
           <span class="ixir-dc-tld-name">{$price.tld|escape:'html'}</span>
           <span class="ixir-dc-tld-price">{$price.registerNum|string_format:"%d"} TL</span>
          </button>
         {/if}
        {/foreach}
       {/if}
      </div>
      <div class="ixir-domain-links-wrap" role="region" aria-label="İxirhost hizmetleri">
       <p class="ixir-domain-links-title">Bazı Hizmetler</p>
       <ul class="ixir-domain-links">
        <li>
         <a href="{$WEB_ROOT}/domain-sorgu" title="Domain Sorgula">
          <i class="fas fa-globe fa-fw" aria-hidden="true"></i><span>Domain Sorgulama</span>
         </a>
        </li>
        <li>
         <a href="{$WEB_ROOT}/domain-transfer" title="Domain Transfer">
          <i class="fas fa-retweet fa-fw" aria-hidden="true"></i><span>Domain Transfer</span>
         </a>
        </li>
        <li>
         <a href="{$WEB_ROOT}/whois-sorgulama" title="Whois Sorgulama">
          <i class="far fa-eye fa-fw" aria-hidden="true"></i><span>Whois Sorgulama</span>
         </a>
        </li>
        <li>
         <a href="{$WEB_ROOT}/ssl-sertifikalari" title="SSL Sertifikaları">
          <i class="far fa-lock fa-fw" aria-hidden="true"></i><span>SSL Sertifikaları</span>
         </a>
        </li>
       </ul>
       <ul class="ixir-domain-links">
        <li>
         <a href="{$WEB_ROOT}/linux-hosting" title="Linux Hosting">
          <i class="fas fa-hdd fa-fw" aria-hidden="true"></i><span>Linux Hosting</span>
         </a>
        </li>
        <li>
         <a href="{$WEB_ROOT}/windows-hosting" title="Windows Hosting">
          <i class="fab fa-windows fa-fw" aria-hidden="true"></i><span>Windows Hosting</span>
         </a>
        </li>
        <li>
         <a href="{$WEB_ROOT}/wordpress-hosting" title="WordPress Hosting">
          <i class="fab fa-wordpress-simple fa-fw" aria-hidden="true"></i><span>WordPress Hosting</span>
         </a>
        </li>
        <li>
         <a href="{$WEB_ROOT}/reseller-hosting" title="Linux Bayi Hosting">
          <i class="fab fa-linux fa-fw" aria-hidden="true"></i><span>Linux Bayi Hosting</span>
         </a>
        </li>
       </ul>
       <ul class="ixir-domain-links">
        <li>
         <a href="{$WEB_ROOT}/kurumsal-mail-hosting" title="Kurumsal Mail Hosting">
          <i class="far fa-envelope fa-fw" aria-hidden="true"></i><span>Kurumsal Mail Hosting</span>
         </a>
        </li>
        <li>
         <a href="{$WEB_ROOT}/kurumsal-mail-server" title="Kurumsal Mail Server">
          <i class="fas fa-mail-bulk fa-fw" aria-hidden="true"></i><span>Kurumsal Mail Server</span>
         </a>
        </li>
        <li>
         <a href="{$WEB_ROOT}/cloud" title="Bulut Sunucu">
          <i class="fas fa-cloud fa-fw" aria-hidden="true"></i><span>Bulut Sunucu</span>
         </a>
        </li>
        <li>
         <a href="{$WEB_ROOT}/dedicated-server" title="Dedicated Server">
          <i class="fas fa-server fa-fw" aria-hidden="true"></i><span>Dedicated Server</span>
         </a>
        </li>
       </ul>
      </div>
     </div>
    </div>
    <div class="ixir-domain-tlds" id="ixirDomainTlds" aria-label="İndirimli uzantılar">
     <div class="ixir-tld-track">
      <div class="ixir-tld" aria-label=".net, 855 TL yerine 655 TL, yüzde 23 indirim">
       <span class="ixir-tld-off">%23</span>
       <span class="ixir-tld-name">.net</span>
       <span class="ixir-tld-prices">
        <del class="ixir-tld-old">855 TL</del>
        <span class="ixir-tld-new">655 TL</span>
       </span>
      </div>
      <div class="ixir-tld" aria-label=".pro, 1700 TL yerine 200 TL, yüzde 88 indirim">
       <span class="ixir-tld-off">%88</span>
       <span class="ixir-tld-name">.pro</span>
       <span class="ixir-tld-prices">
        <del class="ixir-tld-old">1700 TL</del>
        <span class="ixir-tld-new">200 TL</span>
       </span>
      </div>
      <div class="ixir-tld" aria-label=".tr, 300 TL yerine 200 TL, yüzde 33 indirim">
       <span class="ixir-tld-off">%33</span>
       <span class="ixir-tld-name">.tr</span>
       <span class="ixir-tld-prices">
        <del class="ixir-tld-old">300 TL</del>
        <span class="ixir-tld-new">200 TL</span>
       </span>
      </div>
      <div class="ixir-tld" aria-label=".xyz, 775 TL yerine 125 TL, yüzde 84 indirim">
       <span class="ixir-tld-off">%84</span>
       <span class="ixir-tld-name">.xyz</span>
       <span class="ixir-tld-prices">
        <del class="ixir-tld-old">775 TL</del>
        <span class="ixir-tld-new">125 TL</span>
       </span>
      </div>
      <div class="ixir-tld" aria-label=".info, 1390 TL yerine 220 TL, yüzde 84 indirim">
       <span class="ixir-tld-off">%84</span>
       <span class="ixir-tld-name">.info</span>
       <span class="ixir-tld-prices">
        <del class="ixir-tld-old">1390 TL</del>
        <span class="ixir-tld-new">220 TL</span>
       </span>
      </div>
      <div class="ixir-tld" aria-label=".net.tr, 200 TL yerine 150 TL, yüzde 25 indirim">
       <span class="ixir-tld-off">%25</span>
       <span class="ixir-tld-name">.net.tr</span>
       <span class="ixir-tld-prices">
        <del class="ixir-tld-old">200 TL</del>
        <span class="ixir-tld-new">150 TL</span>
       </span>
      </div>
      <div class="ixir-tld" aria-label=".com.tr, 200 TL yerine 150 TL, yüzde 25 indirim">
       <span class="ixir-tld-off">%25</span>
       <span class="ixir-tld-name">.com.tr</span>
       <span class="ixir-tld-prices">
        <del class="ixir-tld-old">200 TL</del>
        <span class="ixir-tld-new">150 TL</span>
       </span>
      </div>
      <div class="ixir-tld" aria-label=".com, 775 TL yerine 615 TL, yüzde 21 indirim">
       <span class="ixir-tld-off">%21</span>
       <span class="ixir-tld-name">.com</span>
       <span class="ixir-tld-prices">
        <del class="ixir-tld-old">775 TL</del>
        <span class="ixir-tld-new">615 TL</span>
       </span>
      </div>
     </div>
    </div>
 </section>