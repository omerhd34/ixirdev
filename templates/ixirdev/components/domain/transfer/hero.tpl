  <section id="home-banner" class="ixir-hero">
   <picture class="ixir-hero-photo">
    <source srcset="{$WEB_ROOT}/templates/{$template}/img/hero-domain-transfer.webp?v=r1" type="image/webp">
    <img src="{$WEB_ROOT}/templates/{$template}/img/hero-domain-transfer.jpg?v=r1" alt="">
   </picture>
   <div class="container">
    <div class="ixir-hero-main">
     <div class="ixir-hero-copy">
      <h1>Domain Transferi</h1>
      <p>Domain'inizi en uygun fiyata transfer edin ve yüksek yenileme maliyetlerinden kurtulun.</p>
     </div>
     <form method="post" action="{$WEB_ROOT}/cart.php" id="frmDomainTransfer">
      <input type="hidden" name="a" value="addDomainTransfer" class="no-icheck">
      <div class="ixir-domain-checker ixir-domain-checker--solo">
       <div class="ixir-dc-input">
        <span class="ixir-dc-icon" aria-hidden="true"><i class="fas fa-globe"></i></span>
        <label for="inputTransferDomain" class="sr-only">Transfer edilecek domain</label>
        <input type="text" name="domain" class="form-control no-icheck ixir-transfer-input" id="inputTransferDomain"
         value="{$lookupTerm}" placeholder="Transfer etmek istediğiniz domain'i yazınız."
         data-placeholder="Transfer etmek istediğiniz domain'i yazınız."
         data-placeholder-error="Lütfen bir domain girin." autocapitalize="none" autocomplete="off" spellcheck="false"
         inputmode="none" readonly>
       </div>
      </div>
      <div class="ixir-domain-checker">
       <div class="ixir-dc-input">
        <span class="ixir-dc-icon" aria-hidden="true"><i class="fas fa-key"></i></span>
        <label for="inputAuthCode" class="sr-only">{lang key='orderForm.authCode'}</label>
        <input type="text" name="epp" class="form-control no-icheck ixir-transfer-input" id="inputAuthCode"
         placeholder="Epp Code / Auth Code" data-placeholder="Epp Code / Auth Code"
         data-placeholder-error="Lütfen EPP / Auth kodunu girin." autocapitalize="none" autocomplete="off"
         spellcheck="false" inputmode="none" readonly>
       </div>
       <div class="ixir-dc-button">
        <button type="submit" id="btnTransferDomain" class="btn btn-primary btn-block">
         <span class="loader w-hidden" id="addTransferLoader">
          <i class="fas fa-fw fa-spinner fa-spin"></i>
         </span>
         <span id="addToCart">Transferi Başlat</span>
        </button>
       </div>
      </div>
      <div id="transferUnavailable" class="ixir-transfer-alert alert alert-warning slim-alert text-center w-hidden">
      </div>
     </form>
     <div class="ixir-domain-links-wrap" role="region" aria-label="İxirhost hizmetleri">
      <p class="ixir-hero-label">Bazı Hizmetler</p>
      <ul class="ixir-domain-links">
       <li>
        <a href="{$WEB_ROOT}/domain-sorgu" title="Domain Sorgula">
         <i class="fas fa-globe fa-fw" aria-hidden="true"></i><span>Domain Sorgulama</span>
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
       <li>
        <a href="{$WEB_ROOT}/site-pratik" title="Site Pratik">
         <i class="fas fa-globe fa-fw" aria-hidden="true"></i><span>Site Pratik</span>
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
        <a href="{$WEB_ROOT}/linux-reseller-hosting" title="Linux Reseller Hosting">
         <i class="fab fa-linux fa-fw" aria-hidden="true"></i><span>Linux Reseller Hosting</span>
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
        <a href="{$WEB_ROOT}/cloud-server" title="Cloud Server">
         <i class="fas fa-cloud fa-fw" aria-hidden="true"></i><span>Cloud Server</span>
        </a>
       </li>
       <li>
        <a href="{$WEB_ROOT}/kiralik-server" title="Kiralık Server">
         <i class="fas fa-server fa-fw" aria-hidden="true"></i><span>Kiralık Server</span>
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