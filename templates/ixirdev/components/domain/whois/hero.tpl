 <section id="home-banner" class="ixir-hero">
  <picture class="ixir-hero-photo">
   <source srcset="{$WEB_ROOT}/templates/{$template}/img/hero-whois.webp?v=r2" type="image/webp">
   <img src="{$WEB_ROOT}/templates/{$template}/img/hero-whois.jpg?v=r2" alt="">
  </picture>
  <div class="container">
   <div class="ixir-hero-main">
    <div class="ixir-hero-copy">
     <h1>Whois Domain Sorgulama</h1>
     <p>Domain'inin sahiplik bilgilerini ücretsiz ve anında sorgulayın.</p>
    </div>
    <form method="post" action="{$WEB_ROOT}/whois-sorgulama"
     class="ixir-whois-form{if $ixirWhoisInvalid} ixir-dc-invalid{/if}" id="frmWhoisChecker" novalidate>
     <input type="hidden" name="token" value="{$token}" />
     <div class="ixir-domain-checker">
      <div class="ixir-dc-input">
       <span class="ixir-dc-icon" aria-hidden="true"><i class="fas fa-globe"></i></span>
       <label for="ixir-whois-domain" class="sr-only">Domain</label>
       <input type="text" id="ixir-whois-domain" class="form-control" name="domain" value="{$ixirWhoisDomain|escape}"
        placeholder="Bir domain yazınız (örn: ixirhost.com)" data-placeholder="Bir domain yazınız (örn: ixirhost.com)"
        data-placeholder-error="Lütfen bir domain girin." autocapitalize="none" autocomplete="off" spellcheck="false" />
      </div>
      <div class="ixir-dc-button">
       <button type="submit" class="btn btn-primary btn-block search">
        <i class="fas fa-search" aria-hidden="true"></i> Sorgula
       </button>
      </div>
     </div>
     <p class="ixir-whois-field-error" id="ixir-whois-field-error" role="alert" {if !$ixirWhoisInvalid} hidden{/if}>
      <i class="fas fa-exclamation-circle" aria-hidden="true"></i>
      <span>Lütfen geçerli bir domain girin. Örneğin: <b>ixirhost.com</b></span>
     </p>
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
       <a href="{$WEB_ROOT}/domain-transfer" title="Domain Transfer">
        <i class="fas fa-retweet fa-fw" aria-hidden="true"></i><span>Domain Transfer</span>
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
</div>