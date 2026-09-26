{include file="orderforms/standard_cart/common.tpl"}

<div id="order-standard_cart" class="ixir-domain-page ixir-transfer-page">
 <div class="cart-sidebar hidden">{include file="orderforms/standard_cart/sidebar-categories.tpl"}</div>
 <div class="cart-body ixir-domain-body">
  {include file="orderforms/standard_cart/sidebar-categories-collapsed.tpl"}

  <section id="home-banner" class="ixir-hero">
   <picture class="ixir-hero-photo">
    <source srcset="{$WEB_ROOT}/templates/{$template}/img/hero-domain-transfer.webp?v=r1" type="image/webp">
    <img src="{$WEB_ROOT}/templates/{$template}/img/hero-domain-transfer.jpg?v=r1" alt="">
   </picture>
   <div class="container">
    <div class="ixir-hero-main">
     <div class="ixir-hero-copy">
      <h1>Domain Transferi</h1>
      <p>Alan adınızı en uygun fiyata transfer edin ve yüksek yenileme maliyetlerinden kurtulun.</p>
     </div>
     <form method="post" action="{$WEB_ROOT}/cart.php" id="frmDomainTransfer">
      <input type="hidden" name="a" value="addDomainTransfer" class="no-icheck">
      <div class="ixir-domain-checker ixir-domain-checker--solo">
       <div class="ixir-dc-input">
        <span class="ixir-dc-icon" aria-hidden="true"><i class="fas fa-globe"></i></span>
        <label for="inputTransferDomain" class="sr-only">Transfer edilecek alan adı</label>
        <input type="text" name="domain" class="form-control no-icheck ixir-transfer-input" id="inputTransferDomain"
         value="{$lookupTerm}" placeholder="Transfer etmek istediğiniz alan adını yazınız."
         data-placeholder="Transfer etmek istediğiniz alan adını yazınız."
         data-placeholder-error="Lütfen bir alan adı girin." autocapitalize="none" autocomplete="off" spellcheck="false"
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
        <a href="{$WEB_ROOT}/webhosting" title="Web Hosting">
         <i class="fas fa-hdd fa-fw" aria-hidden="true"></i><span>Web Hosting</span>
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

  <section class="ixir-xfer-steps ixir-slide ixir-slide--right is-armed" aria-labelledby="ixirXferStepsTitle">
   <div class="container">
    <h2 id="ixirXferStepsTitle">Domain Transferi Nasıl Yapılır?</h2>
    <p class="ixir-xfer-lead">Dört adımda alan adınızı İXİRHOST'a taşıyın.</p>
     <ol class="ixir-xfer-step-list">
      <li>
       <span class="ixir-xfer-step-no" aria-hidden="true">1</span>
       <h3>Transfer Hazırlık</h3>
       <p>Domain firmanızdan transfer (EPP) kodunu alın. Alan adı transfer kilidini ve whois gizliliğini kaldırın.</p>
       <i class="fas fa-long-arrow-alt-right ixir-xfer-step-arrow" aria-hidden="true"></i>
      </li>
      <li>
       <span class="ixir-xfer-step-no" aria-hidden="true">2</span>
       <h3>Transferi Başlat</h3>
       <p>Transfer etmek istediğiniz alan adını, transfer kodu ile birlikte girerek işlemi başlatın.</p>
       <i class="fas fa-long-arrow-alt-right ixir-xfer-step-arrow" aria-hidden="true"></i>
      </li>
      <li>
       <span class="ixir-xfer-step-no" aria-hidden="true">3</span>
       <h3>Transferi Onayla</h3>
       <p>Alan adınızın whois bilgilerinde yer alan e-posta adresine gelecek transfer iletisini onaylayın.</p>
       <i class="fas fa-long-arrow-alt-right ixir-xfer-step-arrow" aria-hidden="true"></i>
      </li>
      <li>
       <span class="ixir-xfer-step-no" aria-hidden="true">4</span>
       <h3>Transfer Tamamlandı</h3>
       <p>Alan adınızın transferi maksimum 7 gün içinde başarıyla tamamlanacaktır.</p>
      </li>
     </ol>
    </div>
   </section>

   <section class="ixir-xfer-notes ixir-slide ixir-slide--left is-armed" aria-labelledby="ixirXferNotesTitle">
    <div class="container">
     <div class="ixir-xfer-notes-grid">
      <div>
       <h2 id="ixirXferNotesTitle">Domain Transferi ile İlgili Önemli Bilgiler</h2>
       <ul>
        <li>Alan adının transfer kodunu(authorization code, epp code, vs.) alan adı tescil firmanızdan alın.</li>
        <li>Alan adınızın tescil, yenileme veya transfer işleminin üzerinden 60 gün geçmiş olması gerektiğini unutmayın.
        </li>
        <li>Transfer onayı, alan adınızın sahiplik (whois) bilgisinde yer alan e-postaya gideceğinden, e-posta adresi
         çalışır olduğundan emin olun.</li>
        <li>Alan adı firmanızın müşteri panelinde domain yönetimi alanına girerek domain transfer kilidini kaldırın.</li>
        <li>Askıda ve pasif olan alan adlarının transfer edilemeyeceğini unutmayın.</li>
        <li>Alan adının hangi firmada olduğunu <a href="{$WEB_ROOT}/whois-sorgulama">whois sorgulama</a> ile
         öğrenebilirsiniz.</li>
       </ul>
      </div>
      <div class="ixir-xfer-notes-art">
       <img src="{$WEB_ROOT}/templates/{$template}/img/domain-transfer-notes.png" alt="" width="439" height="415">
      </div>
     </div>
    </div>
   </section>

   <section class="ixir-xfer-uses ixir-slide ixir-slide--right is-armed" aria-labelledby="ixirXferUsesTitle">
    <div class="container">
     <h2 id="ixirXferUsesTitle">Alan Adınız ile Ne Yapacaksınız?</h2>
     <div class="ixir-xfer-use-grid">
      <article>
       <div class="ixir-xfer-use-art">
        <img src="{$WEB_ROOT}/templates/{$template}/img/domain-use-web.png" alt="" width="626" height="268">
       </div>
       <h3>Web Sitesi Kur</h3>
       <p>Alan adınızın üzerine web sitesi kurmak için hazır site aracımızı kullanabilisiniz.</p>
      </article>
      <article>
       <div class="ixir-xfer-use-art">
        <img src="{$WEB_ROOT}/templates/{$template}/img/domain-use-mail.png" alt="" width="626" height="268">
       </div>
       <h3>E-posta Aç</h3>
       <p>Kurumsal e-posta hizmeti alarak alan adınıza bağlı profesyonek e-posta kullanabilirsiniz.</p>
      </article>
      <article>
       <div class="ixir-xfer-use-art">
        <img src="{$WEB_ROOT}/templates/{$template}/img/domain-use-social.png" alt="" width="626" height="268">
       </div>
       <h3>Sosyal Medyaya Yönlendir</h3>
       <p>Alan adınızı sosyal ağlarınıza yönlendirerek, ziyaretçilerinizi sosyal medyanıza çekebilirsiniz.</p>
      </article>
     </div>
    </div>
   </section>

   <section class="ixir-domain-features ixir-slide ixir-slide--left is-armed">
    <div class="container">
     <h2>Alan Adınızı Bize Transfer Etmek İçin Mükemmel Sebepler</h2>
     <p class="ixir-domain-features-lead">Alan adınızı gelişmiş domain paneli ile zahmetsizce yönetin.</p>
     <div class="ixir-domain-feature-grid">
      <article>
       <span class="ixir-domain-feature-icon" aria-hidden="true"><i class="fas fa-cog"></i></span>
       <div>
        <h3>Gelişmiş Yönetim Paneli</h3>
        <p>Gelişmiş Türkçe domain yönetim paneli ile pratik domain yönetimi gerçekleştirin.</p>
       </div>
      </article>
      <article>
       <span class="ixir-domain-feature-icon" aria-hidden="true"><i class="fas fa-percent"></i></span>
       <div>
        <h3>Ekonomik Fiyatlar</h3>
        <p>Yıl boyu en ekonomik fiyatlardan alan adı kaydedin, ayrıca zaman zaman bazı uzantılarda çok cazip fiyatlar
         sunmaktayız.</p>
       </div>
      </article>
      <article>
       <span class="ixir-domain-feature-icon" aria-hidden="true"><i class="fas fa-map-marker-alt"></i></span>
       <div>
        <h3>Özel NS Yönetimi</h3>
        <p>Kendi isim sunucunuzu oluşturarak web sitenize ve markanıza değer katın.</p>
       </div>
      </article>
      <article>
       <span class="ixir-domain-feature-icon" aria-hidden="true"><i class="fas fa-search"></i></span>
       <div>
        <h3>Zengin Domain Portföyü</h3>
        <p>Yüzlerce domain uzantısı arasından dilediğinizi seçin ve en iyi fiyatlara kaydedin.</p>
       </div>
      </article>
      <article>
       <span class="ixir-domain-feature-icon" aria-hidden="true"><i class="fas fa-exchange-alt"></i></span>
       <div>
        <h3>İç Transfer</h3>
        <p>Kullanıcılar arasında alan adını ücretsiz ve hızlı transfer edin.</p>
       </div>
      </article>
      <article>
       <span class="ixir-domain-feature-icon" aria-hidden="true"><i class="fas fa-lock"></i></span>
       <div>
        <h3>Ücretsiz Bir Çok Servis</h3>
        <p>Whois Gizleme, DNS Yönetimi, URL Yönlendirme, Mail Yönlendirme gibi servisleri ücretsiz kullanabilirsiniz.</p>
       </div>
      </article>
     </div>
    </div>
   </section>

   <section class="ixir-domain-prices ixir-slide ixir-slide--right is-armed" id="ixirDomainPrices">
    <div class="container">
     <h2>Domain Fiyatları</h2>
     <p class="ixir-domain-prices-lead">Yıl boyu ekonomik domain fiyatlaması ile yatırım ve yenileme maliyetlerinizi
      düşürün.</p>
     <div class="ixir-domain-prices-search">
      <label for="ixirDomainPriceSearch">Domain Uzantı Ara:</label>
      <input type="search" id="ixirDomainPriceSearch" placeholder="">
     </div>
     <div class="ixir-domain-prices-table-wrap">
      <table class="ixir-domain-prices-table">
       <thead>
        <tr>
         <th data-sort="tld">Domain Uzantı Adı <span class="ixir-dp-sort" aria-hidden="true"></span></th>
         <th data-sort="period">Süre <span class="ixir-dp-sort" aria-hidden="true"></span></th>
         <th data-sort="register">Domain Tescil <span class="ixir-dp-sort" aria-hidden="true"></span></th>
         <th data-sort="transfer">Domain Transfer <span class="ixir-dp-sort" aria-hidden="true"></span></th>
         <th data-sort="renew">Domain Yenileme <span class="ixir-dp-sort" aria-hidden="true"></span></th>
        </tr>
       </thead>
       <tbody id="ixirDomainPriceBody">
        {if $ixirDomainPrices}

      {foreach $ixirDomainPrices as $price}
          <tr data-tld="{$price.tld|escape:'html'}" data-period="{$price.period|escape:'html'}"
           data-register="{$price.registerNum}" data-transfer="{$price.transferNum}" data-renew="{$price.renewNum}">
           <td><span class="ixir-dp-tld">{$price.tld}</span></td>
           <td>{$price.period}</td>
           <td>{$price.register}</td>
           <td>{$price.transfer}</td>
           <td>{$price.renew}</td>
          </tr>

      {/foreach}

     {/if}
       </tbody>
      </table>
     </div>
     <div class="ixir-domain-prices-pager" id="ixirDomainPricePager"></div>
    </div>
   </section>

   <section class="ixir-wh-faq" aria-labelledby="ixir-transfer-faq-title">
    <div class="container">
     <header class="ixir-wh-plans-head">
      <h2 id="ixir-transfer-faq-title">Sıkça Sorulan Sorular</h2>
      <p>Alan adı transfer ile ilgili detaylı bilgiye mi ihtiyacınız var?</p>
     </header>
     <div class="ixir-wh-faq-list">
      <div class="ixir-wh-faq-item">
       <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
         aria-hidden="true"></i>Alan adı transfer öncesi neler yapılmalıdır?</button>
       <div class="ixir-wh-faq-a">
        <p>Mevcut sağlayıcınızdan <strong>EPP / transfer kodunu</strong> alın, <strong>transfer kilidi</strong> açıksa
         kapatın. Kayıt, yenileme veya son
         transferin üzerinden <strong>60 gün</strong> geçtiğinden ve bitiş tarihine en az <strong>7 gün</strong>
         kaldığından emin olun. Bu şartlar
         sağlandıktan sonra EPP kodu ile sipariş verebilirsiniz.</p>
       </div>
      </div>
      <div class="ixir-wh-faq-item">
       <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
         aria-hidden="true"></i>Alan adımı neden İxirhost’a transfer edeyim?</button>
       <div class="ixir-wh-faq-a">
        <p><strong>Şeffaf fiyat</strong> uygulanır, <strong>gizli ücret yoktur</strong>. Süresi biten alan adını
         yenileme
         bekleme süresinde <strong>aynı fiyattan</strong>
         yenileyebilirsiniz; <strong>kurtarma bedeli uygulanmaz</strong>. <strong>Ücretsiz whois gizleme</strong>
         sunulur.
        </p>
       </div>
      </div>
      <div class="ixir-wh-faq-item">
       <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
         aria-hidden="true"></i>Ücretsiz Whois Gizliliği Sağlıyor musunuz?</button>
       <div class="ixir-wh-faq-a">
        <p><strong>Whois gizliliğini ücretsiz</strong> sağlıyoruz.</p>
       </div>
      </div>
      <div class="ixir-wh-faq-item">
       <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
         aria-hidden="true"></i>Transferim gerçekleşmezse ödediğim ücret iade oluyor mu?</button>
       <div class="ixir-wh-faq-a">
        <p>Transfer başarısız olursa ödediğiniz tutar <strong>müşteri hesabınıza kredi</strong> olarak eklenir.</p>
       </div>
      </div>
      <div class="ixir-wh-faq-item">
       <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
         aria-hidden="true"></i>Alan adı transferi kaç günde tamamlanır?</button>
       <div class="ixir-wh-faq-a">
        <p>Belge gerektirmeyen alan adlarında transfer genellikle <strong>3 ile 7 gün</strong> arasında tamamlanır. Belge
         gerektiren
         <strong>.com.tr</strong> gibi uzantılarda süre, belgenin doğrulanmasına bağlı olarak <strong>15 güne
          kadar</strong> uzayabilir. Transfer
         tamamlandığında veya başarısız olduğunda sizi bilgilendiririz.
        </p>
       </div>
      </div>
      <div class="ixir-wh-faq-item">
       <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
         aria-hidden="true"></i>Süresi biten alan adlarını transfer edebilir miyim?</button>
       <div class="ixir-wh-faq-a">
        <p>Süresi bitmiş alan adları <strong>transfer edilemez</strong>. Alan adını bulunduğu firmada yeniledikten ve
         yenilemenin üzerinden
         ortalama <strong>60 gün</strong> geçtikten sonra transfer edebilirsiniz.</p>
       </div>
      </div>
     </div>
    </div>
   </section>
   <script>
    
     {literal}
     (function() {
      var list = document.querySelector('.ixir-wh-faq-list');
      if (!list) return;
      Array.prototype.forEach.call(list.querySelectorAll('.ixir-wh-faq-q'), function(btn) {
       btn.addEventListener('click', function() {
        var item = btn.parentNode;
        var open = item.classList.toggle('is-open');
        btn.setAttribute('aria-expanded', open ? 'true' : 'false');
       });
      });
     })();



     
     {/literal}
   </script>
  </div>
 </div>

 <script>
  
     {literal}
   (function() {
    var inputs = document.querySelectorAll('.ixir-transfer-input');
    if (!inputs.length) {
     return;
    }
    var phone = window.matchMedia('(max-width: 991px)').matches ||
     window.matchMedia('(pointer: coarse)').matches ||
     window.matchMedia('(hover: none)').matches;

    function arm(input) {
     input.removeAttribute('readonly');
     input.removeAttribute('inputmode');
    }
    window.ixirArmTransferInput = arm;
    if (!phone) {
     Array.prototype.forEach.call(inputs, arm);
     return;
    }
    Array.prototype.forEach.call(inputs, function(input) {
     var nativeFocus = HTMLElement.prototype.focus;

     function openFromTouch() {
      arm(input);
      input.focus = function() {
       nativeFocus.call(input);
      };
      nativeFocus.call(input);
     }
     input.focus = function() {};
     input.addEventListener('touchend', openFromTouch);
     input.addEventListener('pointerup', function(e) {
      if (!e.pointerType || e.pointerType === 'touch' || e.pointerType === 'pen') {
       openFromTouch();
      }
     });
    });
   })();

   (function() {
    var form = document.getElementById('frmDomainTransfer');
    var domain = document.getElementById('inputTransferDomain');
    var epp = document.getElementById('inputAuthCode');
    if (!form || !domain || !epp) {
     return;
    }

    function mark(input, invalid) {
     var box = input.closest ? input.closest('.ixir-domain-checker') : null;
     var normal = input.getAttribute('data-placeholder') || '';
     var error = input.getAttribute('data-placeholder-error') || '';
     if (!box) {
      return;
     }
     if (invalid) {
      box.classList.remove('is-shake');
      void box.offsetWidth;
      box.classList.add('is-invalid', 'is-shake');
      input.setAttribute('placeholder', error);
      input.setAttribute('aria-invalid', 'true');
     } else {
      box.classList.remove('is-invalid', 'is-shake');
      input.setAttribute('placeholder', normal);
      input.removeAttribute('aria-invalid');
     }
    }

    function empty(input) {
     return !String(input.value || '').replace(/^\s+|\s+$/g, '');
    }
    domain.addEventListener('input', function() {
     if (!empty(domain)) {
      mark(domain, false);
     }
    });
    epp.addEventListener('input', function() {
     if (!empty(epp)) {
      mark(epp, false);
     }
    });
    form.addEventListener('submit', function(e) {
     var domainBad = empty(domain);
     var eppBad = empty(epp);
     mark(domain, domainBad);
     mark(epp, eppBad);
     if (!domainBad && !eppBad) {
      return;
     }
     e.preventDefault();
     e.stopPropagation();
     var first = domainBad ? domain : epp;
     if (window.ixirArmTransferInput) {
      window.ixirArmTransferInput(first);
     }
     first.focus();
    }, true);
   })();

   (function() {
    var input = document.getElementById('inputTransferDomain');
    var chips = document.querySelectorAll('.ixir-dc-tld');
    if (!input || !chips.length) {
     return;
    }
    var known = [];
    Array.prototype.forEach.call(chips, function(chip) {
     var name = chip.getAttribute('data-tld');
     if (name && known.indexOf(name) === -1) {
      known.push(name);
     }
    });
    known.sort(function(a, b) {
     return b.length - a.length;
    });
    var fallback = 'ixirhost';

    function extractSld(value) {
     var name = (value || '').replace(/^\s+|\s+$/g, '');
     if (!name) {
      return fallback;
     }
     name = name.replace(/^https?:\/\//i, '').replace(/^www\./i, '').split('/')[0].split('?')[0].replace(/\.+$/, '');
     if (!name || name.charAt(0) === '.') {
      return fallback;
     }
     var lower = name.toLowerCase();
     var i;
     var suffix;
     for (i = 0; i < known.length; i++) {
      suffix = '.' + known[i];
      if (lower.length > suffix.length && lower.slice(-suffix.length) === suffix) {
       name = name.slice(0, name.length - suffix.length);
       break;
      }
     }
     if (!name || name.charAt(0) === '.') {
      return fallback;
     }
     return name;
    }

    function endsWithTld(value, tld) {
     var lower = (value || '').replace(/^\s+|\s+$/g, '').toLowerCase();
     var suffix = '.' + String(tld).toLowerCase();
     return lower.length > suffix.length && lower.slice(-suffix.length) === suffix;
    }

    Array.prototype.forEach.call(chips, function(chip) {
     chip.addEventListener('click', function() {
      var tld = chip.getAttribute('data-tld');
      if (!tld) {
       return;
      }
      if (window.ixirArmTransferInput) {
       window.ixirArmTransferInput(input);
      }
      if (chip.classList.contains('is-selected') && endsWithTld(input.value, tld)) {
       var raw = (input.value || '').replace(/^\s+|\s+$/g, '').replace(/\.+$/, '');
       input.value = raw.slice(0, raw.length - (String(tld).length + 1));
       Array.prototype.forEach.call(chips, function(item) {
        item.classList.remove('is-selected');
       });
      } else {
       input.value = extractSld(input.value) + '.' + tld;
       Array.prototype.forEach.call(chips, function(item) {
        item.classList.toggle('is-selected', item === chip);
       });
      }
      input.focus();
     });
    });
   })();

   (function() {
    var hero = document.getElementById('home-banner');
    if (!hero) {
     return;
    }

    function apply() {
     var offsetY = Math.max(0, Math.round(hero.getBoundingClientRect().top + (window.pageYOffset || window.scrollY ||
      0)));
     hero.style.setProperty('--ixir-hero-offset', offsetY + 'px');
    }
    apply();
    window.addEventListener('resize', apply);
    window.addEventListener('load', apply);
   })();

   (function() {
    var viewport = document.getElementById('ixirDomainTlds');
    if (!viewport) {
     return;
    }
    var track = viewport.querySelector('.ixir-tld-track');
    if (!track || !track.children.length) {
     return;
    }
    var originalHTML = track.innerHTML;
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
    var speed = reduceMotion ? 0 : 0.45;

    function build() {
     var keep = x;
     track.innerHTML = originalHTML;
     var baseWidth = track.scrollWidth;
     var need = Math.max(2, Math.ceil((viewport.clientWidth * 2) / Math.max(baseWidth, 1)) + 1);
     var i;
     var html = originalHTML;
     for (i = 1; i < need; i++) {
      html += originalHTML;
     }
     track.innerHTML = html + html;
     setWidth = track.scrollWidth / 2;
     x = keep;
     apply();
    }

    function wrap() {
     if (!setWidth) {
      return;
     }
     while (x <= -setWidth) {
      x += setWidth;
     }
     while (x > 0) {
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
     resumeTimer = window.setTimeout(function() {
      if (!dragging) {
       paused = false;
      }
     }, 350);
    }
    viewport.addEventListener('pointerdown', function(e) {
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
     if (viewport.setPointerCapture) {
      viewport.setPointerCapture(e.pointerId);
     }
     e.preventDefault();
    });
    viewport.addEventListener('pointermove', function(e) {
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
    viewport.addEventListener('pointerenter', function(e) {
     if (e.pointerType === 'mouse' && !dragging) {
      paused = true;
     }
    });
    viewport.addEventListener('pointerleave', function(e) {
     if (e.pointerType === 'mouse' && !dragging) {
      paused = false;
     }
    });
    window.addEventListener('resize', build);
    window.addEventListener('load', build);
    build();
    window.requestAnimationFrame(tick);
   })();

   (function initIxirDomainPrices() {
    var body = document.getElementById('ixirDomainPriceBody');
    var pager = document.getElementById('ixirDomainPricePager');
    var search = document.getElementById('ixirDomainPriceSearch');
    var table = body ? body.closest('table') : null;
    if (!body || !pager) {
     return;
    }
    var rows = Array.prototype.slice.call(body.querySelectorAll('tr'));
    var perPage = 10;
    var page = 1;
    var sortKey = '';
    var sortDir = 'asc';

    function value(row, key) {
     var raw = row.getAttribute('data-' + key) || '';
     if (key === 'tld' || key === 'period') {
      return raw.toLowerCase();
     }
     return parseFloat(raw) || 0;
    }

    function filtered() {
     var q = (search && search.value ? search.value : '').toLowerCase().replace(/^\s+|\s+$/g, '');
     var list = !q ? rows.slice() : rows.filter(function(row) {
      return (row.getAttribute('data-tld') || row.textContent || '').toLowerCase().indexOf(q) !== -1;
     });
     if (!sortKey) {
      return list;
     }
     return list.sort(function(a, b) {
      var av = value(a, sortKey);
      var bv = value(b, sortKey);
      if (av < bv) {
       return sortDir === 'asc' ? -1 : 1;
      }
      if (av > bv) {
       return sortDir === 'asc' ? 1 : -1;
      }
      return 0;
     });
    }

    function render() {
     var list = filtered();
     var pages = Math.max(1, Math.ceil(list.length / perPage));
     if (page > pages) {
      page = pages;
     }
     rows.forEach(function(row) {
      row.style.display = 'none';
     });
     var start = (page - 1) * perPage;
     list.slice(start, start + perPage).forEach(function(row) {
      row.style.display = '';
     });
     pager.innerHTML = '';
     var prev = document.createElement('button');
     prev.type = 'button';
     prev.textContent = 'Geri';
     prev.disabled = page <= 1;
     prev.addEventListener('click', function() {
      page -= 1;
      render();
     });
     pager.appendChild(prev);
     for (var i = 1; i <= pages; i += 1) {
      var btn = document.createElement('button');
      btn.type = 'button';
      btn.textContent = String(i);
      if (i === page) {
       btn.className = 'is-active';
      }
      btn.addEventListener('click', function(n) {
       return function() {
        page = n;
        render();
       };
      }(i));
      pager.appendChild(btn);
     }
     var next = document.createElement('button');
     next.type = 'button';
     next.textContent = 'İleri';
     next.disabled = page >= pages;
     next.addEventListener('click', function() {
      page += 1;
      render();
     });
     pager.appendChild(next);
    }

    if (table) {
     Array.prototype.forEach.call(table.querySelectorAll('th[data-sort]'), function(th) {
      th.addEventListener('click', function() {
       var key = th.getAttribute('data-sort') || '';
       if (sortKey === key) {
        sortDir = sortDir === 'asc' ? 'desc' : 'asc';
       } else {
        sortKey = key;
        sortDir = 'asc';
       }
       Array.prototype.forEach.call(table.querySelectorAll('th[data-sort]'), function(item) {
        item.classList.toggle('is-sorted', item === th);
        item.classList.toggle('is-desc', item === th && sortDir === 'desc');
       });
       page = 1;
       render();
      });
     });
    }
    if (search) {
     search.addEventListener('input', function() {
      page = 1;
      render();
     });
    }
    render();
   })();
   (function() {
    var root = document.getElementById('order-standard_cart');
    if (!root || !root.classList.contains('ixir-transfer-page')) return;
    var nodes = root.querySelectorAll('.ixir-slide');
    if (!nodes.length) return;
    var reduce = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
    if (reduce || !window.IntersectionObserver) {
     Array.prototype.forEach.call(nodes, function(node) {
      node.classList.add('is-armed', 'is-in');
     });
     return;
    }
    Array.prototype.forEach.call(nodes, function(node) {
     node.classList.add('is-armed');
    });

    function hide(el) {
     if (!el.classList.contains('is-in')) return;
     el.classList.add('is-reset');
     el.classList.remove('is-in');
     el.style.transitionDelay = '';
    }

    function show(el, delay) {
     if (el.classList.contains('is-in')) return;
     el.classList.add('is-reset');
     el.classList.remove('is-in');
     void el.offsetWidth;
     el.style.transitionDelay = delay ? delay + 'ms' : '';
     el.classList.remove('is-reset');
     el.classList.add('is-in');
    }

    var enter = new IntersectionObserver(function(entries) {
     var batch = [];
     entries.forEach(function(entry) {
      if (!entry.isIntersecting) return;
      if (entry.target.classList.contains('is-in')) return;
      batch.push(entry.target);
     });
     batch.sort(function(a, b) {
      return a.compareDocumentPosition(b) & Node.DOCUMENT_POSITION_FOLLOWING ? -1 : 1;
     });
     batch.forEach(function(el, index) {
      show(el, index * 90);
     });
    }, {
     threshold: 0,
     rootMargin: '-10% 0px -10% 0px'
    });

    var leave = new IntersectionObserver(function(entries) {
     entries.forEach(function(entry) {
      if (entry.isIntersecting) return;
      hide(entry.target);
     });
    }, {
     threshold: 0
    });

    Array.prototype.forEach.call(nodes, function(node) {
     enter.observe(node);
     leave.observe(node);
    });
   })();
  {/literal}
 </script>