{include file="orderforms/standard_cart/common.tpl"}

<div id="order-standard_cart" class="ixir-domain-page">
 <div class="cart-sidebar hidden">{include file="orderforms/standard_cart/sidebar-categories.tpl"}</div>
 <div class="cart-body ixir-domain-body">
  {include file="orderforms/standard_cart/sidebar-categories-collapsed.tpl"}

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
     <div class="ixir-domain-links-wrap" role="region" aria-label="Domain hizmetleri">
      <p class="ixir-domain-links-title">Hizmetler</p>
      <ul class="ixir-domain-links">
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
       <li><i class="fas fa-server fa-fw" aria-hidden="true"></i>Ücretsiz DNS Yönetimi</li>
      </ul>
      <ul class="ixir-domain-links">
       <li><i class="far fa-eye-slash fa-fw" aria-hidden="true"></i>Ücretsiz Whois Gizleme</li>
       <li><i class="fas fa-link fa-fw" aria-hidden="true"></i>Ücretsiz URL Yönlendirme</li>
       <li><i class="far fa-envelope fa-fw" aria-hidden="true"></i>Ücretsiz Mail Yönlendirme</li>
      </ul>
      <ul class="ixir-domain-links">
       <li><i class="fas fa-flag fa-fw" aria-hidden="true"></i>.TR Kayıtları Başladı!</li>
       <li><i class="fas fa-bolt fa-fw" aria-hidden="true"></i>Belgesiz .com.tr Tescil!</li>
       <li><i class="fas fa-check-circle fa-fw" aria-hidden="true"></i>Belgesiz .net.tr Tescil!</li>
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

  <div id="DomainSearchResults" class="ixir-domain-results{if $lookupTerm} is-visible{else} w-hidden{/if}">
   <div id="searchDomainInfo" class="ixir-domain-headline domain-checker-result-headline">
    <p id="primaryLookupSearching"
     class="domain-lookup-loader domain-lookup-primary-loader domain-searching ixir-domain-status is-searching">
     <span class="ixir-status-card">
      <span class="ixir-status-icon" aria-hidden="true"><i class="fas fa-spinner fa-spin"></i></span>
      <span class="ixir-status-text">Sorgulanıyor...</span>
     </span>
    </p>
    <div id="primaryLookupResult" class="domain-lookup-result w-hidden">
     <p class="domain-invalid domain-checker-invalid ixir-domain-status is-invalid">
      <span class="ixir-status-card">
       <span class="ixir-status-icon" aria-hidden="true"><i class="fas fa-exclamation"></i></span>
       <span class="ixir-status-text">{lang key='orderForm.domainLetterOrNumber'}<span
         class="domain-length-restrictions">{lang key='orderForm.domainLengthRequirements'}</span></span>
      </span>
     </p>
     <p class="domain-unavailable domain-checker-unavailable ixir-domain-status is-taken">
      <span class="ixir-status-card">
       <span class="ixir-status-icon" aria-hidden="true"><i class="fas fa-times"></i></span>
       <strong class="ixir-status-domain"></strong>
       <span class="ixir-status-text">Uygun değil</span>
      </span>
     </p>
     <p class="domain-tld-unavailable domain-checker-unavailable ixir-domain-status is-taken">
      <span class="ixir-status-card">
       <span class="ixir-status-icon" aria-hidden="true"><i class="fas fa-times"></i></span>
       <span class="ixir-status-text">{lang key='orderForm.domainHasUnavailableTld'}</span>
      </span>
     </p>
     <p class="domain-available domain-checker-available ixir-domain-status is-free">
      <span class="ixir-status-card">
       <span class="ixir-status-icon" aria-hidden="true"><i class="fas fa-check"></i></span>
       <strong class="ixir-status-domain"></strong>
       <span class="domain-price">
        <span class="price"></span>
        <button type="button" class="btn btn-primary btn-add-to-cart" data-whois="0" data-domain="">
         <span class="to-add">Sepete Ekle</span>
         <span class="loading"><i class="fas fa-spinner fa-spin"></i> {lang key='loading'}</span>
         <span class="added"><i class="far fa-shopping-cart"></i> {lang key='domaincheckeradded'}</span>
         <span class="unavailable">{$LANG.domaincheckertaken}</span>
        </button>
       </span>
      </span>
     </p>
     <a class="domain-contact-support btn btn-primary">{$LANG.domainContactUs}</a>
     <div id="idnLanguageSelector" class="form-group idn-language-selector w-hidden">
      <div class="margin-10 text-center">{lang key='cart.idnLanguageDescription'}</div>
      <select name="idnlanguage" class="form-control">
       <option value="">{lang key='cart.idnLanguage'}</option>
       {foreach $idnLanguages as $idnLanguageKey => $idnLanguage}
       <option value="{$idnLanguageKey}">{lang key='idnLanguage.'|cat:$idnLanguageKey}</option>
       {/foreach}
      </select>
      <div class="field-error-msg">{lang key='cart.selectIdnLanguageForRegister'}</div>
     </div>
     <p class="domain-error domain-checker-unavailable ixir-domain-status is-invalid">
      <span class="ixir-status-card">
       <span class="ixir-status-icon" aria-hidden="true"><i class="fas fa-exclamation"></i></span>
       <span class="ixir-status-text"></span>
      </span>
     </p>
    </div>
   </div>

   {assign var="ixirSpotList" value=$ixirSpotlightTlds}
   {if !$ixirSpotList}
   {assign var="ixirSpotList" value=[
                                                                                                                          ['tldNoDots'=>'com','tld'=>'.com','register'=>'615.00TL'],
                                                                                                                          ['tldNoDots'=>'net','tld'=>'.net','register'=>'655.00TL'],
                                                                                                                          ['tldNoDots'=>'comtr','tld'=>'.com.tr','register'=>'150.00TL'],
                                                                                                                          ['tldNoDots'=>'nettr','tld'=>'.net.tr','register'=>'150.00TL'],
                                                                                                                          ['tldNoDots'=>'tr','tld'=>'.tr','register'=>'200.00TL'],
                                                                                                                          ['tldNoDots'=>'xyz','tld'=>'.xyz','register'=>'125.00TL'],
                                                                                                                          ['tldNoDots'=>'info','tld'=>'.info','register'=>'220.00TL'],
                                                                                                                          ['tldNoDots'=>'pro','tld'=>'.pro','register'=>'200.00TL'],
                                                                                                                          ['tldNoDots'=>'org','tld'=>'.org','register'=>'555.00TL'],
                                                                                                                          ['tldNoDots'=>'work','tld'=>'.work','register'=>'150.00TL']
                                                                                                                        ]}
   {/if}
   <div id="spotlightTlds" class="ixir-spotlights spotlight-tlds clearfix">
    <div class="spotlight-tlds-container">
     {foreach $ixirSpotList as $data}
     <div class="spotlight-tld-container spotlight-tld-container-{$ixirSpotList|count}">
      <div id="spotlight{$data.tldNoDots}" class="spotlight-tld">
       <span class="ixir-spot-tld">{$data.tld}</span>
       <span class="domain-lookup-loader domain-lookup-spotlight-loader">
        <i class="fas fa-spinner fa-spin"></i>
       </span>
       <div class="domain-lookup-result">
        <span class="available price" data-fallback="{$data.register|escape:'html'}">{$data.register}</span>
        <div class="ixir-spot-action">
         <button type="button" class="btn btn-add-to-cart w-hidden" data-whois="0" data-domain="">
          <span class="to-add">Ekle</span>
          <span class="loading"><i class="fas fa-spinner fa-spin"></i> {lang key='loading'}</span>
          <span class="added">{lang key='domaincheckeradded'}</span>
          <span class="unavailable">{$LANG.domaincheckertaken}</span>
         </button>
         <button type="button" class="btn unavailable w-hidden" disabled="disabled">Uygun değil</button>
         <button type="button" class="btn invalid w-hidden" disabled="disabled">Uygun değil</button>
        </div>
       </div>
      </div>
     </div>
     {/foreach}
    </div>
   </div>

   <div class="suggested-domains ixir-suggestions">
    <div class="panel-heading card-header ixir-suggestions-head">
     Önerilen Alan Adları
    </div>
    <div id="suggestionsLoader"
     class="panel-body card-body domain-lookup-loader domain-lookup-suggestions-loader w-hidden" aria-hidden="true">
    </div>
    <div id="domainSuggestions" class="domain-lookup-result list-group w-hidden">
     <div class="domain-suggestion list-group-item w-hidden">
      <span class="ixir-sugg-domain">
       <span class="ixir-sugg-icon" aria-hidden="true"><i class="fas fa-globe"></i></span>
       <span class="ixir-sugg-name"><span class="domain"></span><span class="extension"></span></span>
      </span>
      <span class="promo w-hidden">
       <span class="sales-group-hot w-hidden">{lang key='domainCheckerSalesGroup.hot'}</span>
       <span class="sales-group-new w-hidden">{lang key='domainCheckerSalesGroup.new'}</span>
       <span class="sales-group-sale w-hidden">{lang key='domainCheckerSalesGroup.sale'}</span>
      </span>
      <div class="actions">
       <span class="price"></span>
       <button type="button" class="btn btn-add-to-cart" data-whois="1" data-domain="">
        <span class="to-add">Sepete Ekle</span>
        <span class="loading"><i class="fas fa-spinner fa-spin"></i> {lang key='loading'}</span>
        <span class="added"><i class="far fa-shopping-cart"></i> {lang key='domaincheckeradded'}</span>
        <span class="unavailable">{$LANG.domaincheckertaken}</span>
       </button>
       <button type="button" class="btn btn-primary domain-contact-support w-hidden">
        {lang key='domainChecker.contactSupport'}
       </button>
      </div>
     </div>
    </div>
    <div class="panel-footer card-footer more-suggestions text-center w-hidden">
     <a id="moreSuggestions" href="#">Daha fazla öneri göster <i class="fas fa-chevron-down" aria-hidden="true"></i></a>
     <span id="noMoreSuggestions" class="no-more small w-hidden">Başka öneri yok</span>
    </div>
    <p class="text-center text-muted domain-suggestions-warning">Sepete eklerken alan adının hâlâ müsait olduğu tekrar
     kontrol edilir.</p>
   </div>
  </div>

  <div class="domain-pricing w-hidden" aria-hidden="true"></div>

  <section class="ixir-domain-features">
   <div class="container">
    <h2>Kolay ve Pratik Domain Yönetimi</h2>
    <p class="ixir-domain-features-lead">Alan adınızı gelişmiş domain paneli ile zahmetsizce yönetin</p>
    <div class="ixir-domain-feature-grid">
     <article>
      <span class="ixir-domain-feature-icon" aria-hidden="true"><i class="fas fa-cog"></i></span>
      <div>
       <h3>Gelişmiş Yönetim Paneli</h3>
       <p>Gelişmiş Türkçe domain yönetim paneli ile pratik domain yönetimi gerçekleştirin</p>
      </div>
     </article>
     <article>
      <span class="ixir-domain-feature-icon" aria-hidden="true"><i class="fas fa-percent"></i></span>
      <div>
       <h3>Ekonomik Fiyatlar</h3>
       <p>Yıl boyu en ekonomik fiyatlardan alan adı kaydedin, ayrıca zaman zaman bazı uzantılarda çok cazip fiyatlar
        sunmaktayız</p>
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

  <section class="ixir-domain-transfer">
   <div class="container">
    <div class="ixir-domain-transfer-grid">
     <div class="ixir-domain-transfer-copy">
      <h2>Alan adlarınızı transfer mi etmek istiyorsunuz?</h2>
      <p>Alan adlarınızı İxirhost’a transfer ederek yıl boyu en iyi alan adı fiyatlarına, mükemmel bir domain yönetim
       paneli ve kusursuz destek hizmetine sahip olun. Üstelik alan adı transferi sonrası 1 yıl otomatik yenileme!</p>
      <a class="btn ixir-domain-transfer-btn" href="{$WEB_ROOT}/domain-transfer">Transfer Et</a>
     </div>
     <div class="ixir-domain-transfer-art">
      <picture>
       <source srcset="{$WEB_ROOT}/templates/{$template}/img/domain-transfer.webp" type="image/webp">
       <img src="{$WEB_ROOT}/templates/{$template}/img/domain-transfer.png" alt="Alan adı transferi" width="540"
        height="360">
      </picture>
     </div>
    </div>
   </div>
  </section>

  <section class="ixir-domain-prices" id="ixirDomainPrices">
   <div class="container">
    <h2>Domain Fiyatları</h2>
    <p class="ixir-domain-prices-lead">Yıl boyu ekonomik domain fiyatlaması ile yatırım ve yenileme maliyetlerinizi
     düşürün</p>
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

  <section class="ixir-domain-faq">
   <div class="container">
    <h2>Sıkça Sorulan Sorular</h2>
    <p class="ixir-domain-faq-lead">Alan adı tescil ile ilgili detaylı bilgiye mi ihtiyacınız var?</p>
    <div class="ixir-domain-faq-list">
     <details>
      <summary>Alan adı tescili hemen gerçekleşiyor mu?</summary>
      <p>Tabi, alan adınız ödemeniz ardından anında tescil edilecektir.</p>
     </details>
     <details>
      <summary>Neden İxirhost’dan alan adı almalıyım?</summary>
      <p>Bir çok ücretsiz özellik ve maliyet fiyatına yakın fiyatlar ve en önemlisi 17 yıllık sektör tecrübemiz ile
       güvenle bizi tercih edebilirsiniz.</p>
     </details>
     <details>
      <summary>Alt isim sunucu oluşturabilir miyim?</summary>
      <p>Tabi müşteri panelinizden bir kaç tıklama ile yapabilirsiniz.</p>
     </details>
     <details>
      <summary>Alan adıyla birlikte hangi servisler ücretsiz?</summary>
      <p>Whois gizleme, dns yönetimi, url yönlendirme, e-posta yönlendirme gibi servisler alan adı alan müşterilerimize
       ücretsiz sağlanmaktadır.<br>*Bu servisler yalnızca .com, .net, .org gibi alan adlarını kapsamaktadır. .tr
       uzantılarda kullanılamamaktadır.</p>
     </details>
     <details>
      <summary>Hatalı domain (com/net/org) tescil ettim ne yapabilirim?</summary>
      <p>Aynı gün içerisinde yarı bedel kesilerek kalan tutar iade edilebilir. (Yalnızca com/net/org domainleri
       kapsamaktadır.)</p>
     </details>
     <details>
      <summary>Domanin Tesciline İptal ve İade Mevcut mu?</summary>
      <p>Hayır, domain tescili registrar (alan adı yazmanı) tarafından tescili ve kayıdı gerçekleştirildiğinden, tescil
       edilmiş domainin hiçbir firmada olmadığı gibi bizde de iptal ve iadesi mümkün değildir. Dolayısıyla alan adınız
       tescil dönemi boyunca açık kalacaktır. Tescil edilemeyen, tescile uygun olmayan domainlerin iadesi ise yalnızca
       müşteri hesabınıza bakiye ekleme yoluyla iadesi gerçekleştirilmektedir.</p>
     </details>
    </div>
   </div>
  </section>
 </div>
</div>

<script>
 (function ixirDomainBoot() {
  if (window.__ixirDomainBooted) {
   return;
  }
  if (!window.jQuery) {
   window.setTimeout(ixirDomainBoot, 30);
   return;
  }
  window.__ixirDomainBooted = true;
  var jQuery = window.jQuery;
  window.recaptchaValidationComplete = true;
  jQuery('#captchaContainer').remove();

  function ixirCheckUrl() {
   return (window.whmcsBaseUrl || '') + '/ixir-domain-check.php';
  }

  function ixirPostJson(payload) {
   return jQuery.ajax({
    type: 'POST',
    url: ixirCheckUrl(),
    data: payload,
    dataType: 'json',
    headers: {
     'X-Requested-With': 'XMLHttpRequest'
    }
   });
  }

  function ixirRegisterPrice(pricing, fallback) {
   if (pricing && typeof pricing === 'object') {
    var keys = Object.keys(pricing);
    if (keys.length && pricing[keys[0]] && pricing[keys[0]].register) {
     return pricing[keys[0]].register;
    }
   }
   return fallback || '';
  }

  function ixirShowResults() {
   jQuery('#DomainSearchResults')
    .removeClass('w-hidden hidden')
    .addClass('is-visible')
    .css({ display: 'block' });
  }

  function ixirParseTerm(raw) {
   raw = String(raw || '').trim().toLowerCase()
    .replace(/^https?:\/\//, '')
    .replace(/^www\./, '')
    .split('/')[0]
    .split('?')[0];
   if (!raw) {
    return { sld: '', tld: 'com', full: '' };
   }
   if (raw.indexOf('.') === -1) {
    return { sld: raw, tld: 'com', full: raw + '.com' };
   }
   var parts = raw.split('.');
   var last = parts[parts.length - 1];
   var second = parts.length > 1 ? parts[parts.length - 2] : '';
   var doubles = ['com', 'net', 'org', 'info', 'biz', 'gen', 'web', 'name', 'tv', 'co', 'dr', 'av', 'k12', 'bel',
    'gov'
   ];
   if (last === 'tr' && doubles.indexOf(second) !== -1 && parts.length >= 3) {
    return { sld: parts.slice(0, -2).join('.'), tld: second + '.tr', full: raw };
   }
   return { sld: parts.slice(0, -1).join('.'), tld: last, full: raw };
  }

  function ixirFirstDomain(data) {
   if (typeof data === 'string') {
    try {
     data = JSON.parse(data);
    } catch (err) {
     return { error: 'Sorgulanamadı, lütfen tekrar deneyin.' };
    }
   }
   if (!data || typeof data !== 'object' || !data.result) {
    return null;
   }
   var result = data.result;
   if (typeof result === 'string') {
    return { error: result };
   }
   if (result.error && !result.domainName && !result.isValidDomain) {
    return { error: result.error };
   }
   if (jQuery.isArray(result)) {
    return result[0] || null;
   }
   var found = null;
   jQuery.each(result, function(key, value) {
    if (found) {
     return;
    }
    if (key === 'error' && typeof value === 'string' && !result.domainName) {
     found = { error: value };
     return;
    }
    if (value && typeof value === 'object') {
     found = value;
    }
   });
   return found;
  }

  function ixirAvailability(domain) {
   if (!domain) {
    return null;
   }
   var value = domain.isAvailable;
   if (value === true || value === 1 || value === '1' || value === 'true') {
    return true;
   }
   if (value === false || value === 0 || value === '0' || value === 'false') {
    return false;
   }
   return null;
  }

  function ixirShowStatus($el) {
   $el.css('display', 'block');
  }

  function ixirShowError(message) {
   var $el = jQuery('#primaryLookupResult .domain-error');
   $el.find('.ixir-status-text').text(message || 'Sorgulanamadı, lütfen tekrar deneyin.');
   ixirShowStatus($el);
  }

  function ixirHeadline(domain, parsed) {
   var result = jQuery('#primaryLookupResult');
   jQuery('#primaryLookupSearching').hide();
   result.removeClass('w-hidden').show().children().hide();
   if (!domain) {
    ixirShowError('Sorgulanamadı, lütfen tekrar deneyin.');
    return;
   }
   if (domain.error && !domain.domainName) {
    ixirShowError('Sorgulanamadı, lütfen tekrar deneyin.');
    return;
   }
   if (domain.isValidDomain === false) {
    ixirShowStatus(result.find('.domain-invalid'));
    return;
   }
   var name = domain.domainName || domain.idnDomainName || (parsed && parsed.full) || jQuery('#inputDomain').val();
   var available = ixirAvailability(domain);
   if (available === true) {
    result.find('.domain-available .ixir-status-domain').text(name);
    ixirShowStatus(result.find('.domain-available'));
    if (domain.pricing && typeof domain.pricing !== 'string') {
     var priceBtn = result.find('.domain-price').css({ display: 'flex' })
      .find('span.price').html(ixirRegisterPrice(domain.pricing, '')).end()
      .find('button').attr('data-domain', String(name).toLowerCase()).show();
     ixirSetCartButtons(priceBtn, '');
    }
    return;
   }
   if (available === false) {
    result.find('.domain-unavailable .ixir-status-domain').text(name);
    ixirShowStatus(result.find('.domain-unavailable'));
    return;
   }
   ixirShowError('Sorgulanamadı, lütfen tekrar deneyin.');
  }

  function ixirFillSpotlight(domain) {
   var tldKey = String(domain.tldNoDots || (domain.tld || '').replace(/\./g, ''));
   var box = jQuery('#spotlight' + tldKey);
   if (!box.length) {
    return false;
   }
   var result = box.find('.domain-lookup-result');
   var fallbackPrice = box.find('span.available.price').attr('data-fallback') || box.find('span.available.price')
    .text();
   box.find('.domain-lookup-spotlight-loader').hide();
   result.find('button').removeClass('checkout').addClass('w-hidden').hide();
   result.find('span.available').html(ixirRegisterPrice(domain.pricing, fallbackPrice));
   var available = ixirAvailability(domain);
   if (domain.isValidDomain === false) {
    result.find('button.invalid').removeClass('w-hidden').show();
   } else if (available === true) {
    var addBtn = result.find('button.btn-add-to-cart').removeClass('w-hidden').show()
     .attr('data-domain', String(domain.domainName || '').toLowerCase());
    ixirSetCartButtons(addBtn, '');
   } else if (available === false) {
    result.find('button.unavailable').removeClass('w-hidden').show();
   } else {
    return false;
   }
   result.css('display', 'flex');
   return true;
  }

  function ixirMarkSpotlightOrder() {
   jQuery('.ixir-spotlights .spotlight-tld-container').each(function(index) {
    if (this.getAttribute('data-ixir-order') === null) {
     this.setAttribute('data-ixir-order', String(index));
    }
   });
  }

  function ixirSpotlightIsTaken(el) {
   return jQuery(el).find('button.unavailable:not(.w-hidden), button.invalid:not(.w-hidden)').length > 0;
  }

  function ixirSortSpotlight() {
   var container = jQuery('.ixir-spotlights .spotlight-tlds-container');
   if (!container.length) {
    return;
   }
   ixirMarkSpotlightOrder();
   var cards = container.children('.spotlight-tld-container').get();
   cards.sort(function(a, b) {
    var aTaken = ixirSpotlightIsTaken(a) ? 1 : 0;
    var bTaken = ixirSpotlightIsTaken(b) ? 1 : 0;
    if (aTaken !== bTaken) {
     return aTaken - bTaken;
    }
    return (parseInt(a.getAttribute('data-ixir-order'), 10) || 0) -
     (parseInt(b.getAttribute('data-ixir-order'), 10) || 0);
   });
   container.append(cards);
  }

  function ixirSpotlightFallback() {
   jQuery('.ixir-spotlights .spotlight-tld').each(function() {
    var box = jQuery(this);
    box.find('.domain-lookup-spotlight-loader').hide();
    box.find('.domain-lookup-result').hide();
   });
  }

  function ixirSpotlightTlds() {
   return {
    com: 1,
    net: 1,
    'com.tr': 1,
    'net.tr': 1,
    tr: 1,
    xyz: 1,
    info: 1,
    pro: 1,
    org: 1,
    work: 1
   };
  }

  function ixirSuggestionTld(domain) {
   return String((domain && domain.tld) || '').replace(/^\./, '').toLowerCase();
  }

  function ixirKeepSuggestion(domain, parsed) {
   if (!domain || (domain.error && !domain.domainName)) {
    return false;
   }
   if (ixirAvailability(domain) === false) {
    return false;
   }
   var tld = ixirSuggestionTld(domain);
   if (!tld) {
    return false;
   }
   if (ixirSpotlightTlds()[tld]) {
    return false;
   }
   if (parsed && tld === String(parsed.tld || '').toLowerCase()) {
    return false;
   }
   var full = String(domain.domainName || '').toLowerCase();
   if (parsed && parsed.full && full === String(parsed.full).toLowerCase()) {
    return false;
   }
   return true;
  }

  function ixirFillSuggestions(list, parsed, allowFallback) {
   var suggestions = jQuery('#domainSuggestions');
   suggestions.find('.clone').remove();
   jQuery('.domain-lookup-suggestions-loader').hide();
   list = jQuery.grep(list || [], function(domain) {
    return ixirKeepSuggestion(domain, parsed);
   });
   if (!list.length) {
    if (allowFallback !== false) {
     ixirFallbackSuggestions(parsed);
     return;
    }
    jQuery('.suggested-domains').hide();
    return;
   }
   jQuery('.suggested-domains').removeClass('w-hidden').css('display', 'block').show();
   suggestions.removeClass('w-hidden').show();
   var count = 0;
   jQuery.each(list, function(index, domain) {
    var pricing = domain.pricing;
    if (typeof pricing === 'string' && pricing === '') {
     return;
    }
    var tpl = suggestions.find('div.domain-suggestion').first();
    var row = tpl.clone(true, true).removeClass('w-hidden').addClass('clone');
    var sld = domain.sld || parsed.sld;
    var tld = ixirSuggestionTld(domain);
    var full = domain.domainName || (sld + '.' + tld);
    row.find('span.domain').text(sld);
    row.find('span.extension').text('.' + tld);
    if (typeof pricing === 'string') {
     row.find('button.btn-add-to-cart').remove();
     if (pricing) {
      row.find('button.domain-contact-support').show();
      row.find('span.price').hide();
     } else {
      return;
     }
    } else {
     row.find('button.btn-add-to-cart').attr('data-domain', String(full).toLowerCase());
     ixirSetCartButtons(row.find('button.btn-add-to-cart'), '');
     row.find('span.price').html(ixirRegisterPrice(pricing, domain.price || ''));
    }
    if (count >= 8) {
     row.hide();
    } else {
     row.css('display', 'flex');
    }
    suggestions.append(row);
    count += 1;
   });
   if (!suggestions.find('div.domain-suggestion.clone').length) {
    if (allowFallback !== false) {
     ixirFallbackSuggestions(parsed);
     return;
    }
    jQuery('.suggested-domains').hide();
    return;
   }
   if (suggestions.find('div.domain-suggestion.clone:hidden').length) {
    jQuery('div.more-suggestions').removeClass('w-hidden').show();
    jQuery('#moreSuggestions').show();
    jQuery('#noMoreSuggestions').hide();
   }
  }

  function ixirFallbackSuggestions(parsed) {
   var extras = [
    { tld: 'online', price: '350.00TL' },
    { tld: 'live', price: '169.00TL' },
    { tld: 'tech', price: '550.00TL' },
    { tld: 'app', price: '1150.00TL' },
    { tld: 'co', price: '2080.00TL' },
    { tld: 'eu', price: '600.00TL' },
    { tld: 'me', price: '1150.00TL' },
    { tld: 'club', price: '1400.00TL' },
    { tld: 'site', price: '1960.00TL' },
    { tld: 'blog', price: '1600.00TL' },
    { tld: 'biz', price: '1100.00TL' },
    { tld: 'pw', price: '260.00TL' },
    { tld: 'io', price: '1760.00TL' },
    { tld: 'studio', price: '1810.00TL' },
    { tld: 'gen.tr', price: '150.00TL' },
    { tld: 'web.tr', price: '150.00TL' },
    { tld: 'market', price: '2450.00TL' }
   ];
   var list = [];
   jQuery.each(extras, function(i, item) {
    list.push({
     sld: parsed.sld,
     tld: item.tld,
     domainName: parsed.sld + '.' + item.tld,
     pricing: { 1: { register: item.price } }
    });
   });
   ixirFillSuggestions(list, parsed, false);
  }

  var ixirBusy = false;

  function ixirQueryFromLocation() {
   var search = window.location.search || '';
   var match = search.match(/[?&]query=([^&]*)/);
   if (!match) {
    return '';
   }
   try {
    return decodeURIComponent(String(match[1]).replace(/\+/g, ' ')).trim();
   } catch (err) {
    return String(match[1] || '').trim();
   }
  }

  function ixirSearchHref(term) {
   var path = window.location.pathname || '/domain-sorgu';
   return path + '?query=' + encodeURIComponent(term);
  }

  function ixirSyncSearchUrl(term) {
   var next = ixirSearchHref(term);
   if (ixirQueryFromLocation().toLowerCase() !== String(term).toLowerCase()) {
    window.location.assign(next);
    return true;
   }
   if (window.history && window.history.replaceState) {
    window.history.replaceState({}, document.title, next);
   }
   return false;
  }

  function ixirHeaderOffset() {
   var spacer = document.querySelector('.ixir-header-spacer');
   return spacer ? spacer.getBoundingClientRect().height : 0;
  }

  function ixirScrollPastHero() {
   var hero = document.getElementById('home-banner');
   if (!hero) {
    return;
   }
   var input = document.getElementById('inputDomain');
   if (input && document.activeElement === input) {
    input.blur();
   }
   var top = Math.round(
    hero.getBoundingClientRect().bottom + (window.pageYOffset || window.scrollY || 0) - ixirHeaderOffset()
   );
   window.scrollTo({
    top: Math.max(0, top),
    behavior: 'smooth'
   });
  }

  function ixirScheduleScrollPastHero() {
   window.requestAnimationFrame(ixirScrollPastHero);
   window.setTimeout(ixirScrollPastHero, 180);
  }

  if (ixirQueryFromLocation() && !window.ixirArmDomainInput) {
   var stopHeroFocus = function(e) {
    if (e.target && e.target.id === 'inputDomain') {
     e.target.blur();
    }
   };
   document.addEventListener('focusin', stopHeroFocus, true);
   window.setTimeout(function() {
    document.removeEventListener('focusin', stopHeroFocus, true);
   }, 700);
  }

  function ixirEmptyError() {
   var form = document.getElementById('frmDomainChecker');
   var input = document.getElementById('inputDomain');
   if (!form || !input) {
    return {
     show: function() {},
     hide: function() {}
    };
   }
   var placeholderFull = input.getAttribute('data-placeholder') || input.getAttribute('placeholder');
   var placeholderSm = input.getAttribute('data-placeholder-sm') || 'ixirhost.com';
   var placeholderError = input.getAttribute('data-placeholder-error') || 'Lütfen bir alan adı girin.';

   function isSm() {
    return window.innerWidth <= 767;
   }

   function applyPlaceholder() {
    if (form.classList.contains('ixir-dc-invalid')) {
     input.setAttribute('placeholder', placeholderError);
    } else {
     input.setAttribute('placeholder', isSm() ? placeholderSm : placeholderFull);
    }
   }

   function show() {
    form.classList.remove('ixir-dc-shake');
    void form.offsetWidth;
    form.classList.add('ixir-dc-invalid', 'ixir-dc-shake');
    input.setAttribute('aria-invalid', 'true');
    applyPlaceholder();
    if (window.ixirArmDomainInput) {
     window.ixirArmDomainInput();
    }
    input.focus();
   }

   function hide() {
    form.classList.remove('ixir-dc-invalid', 'ixir-dc-shake');
    input.removeAttribute('aria-invalid');
    applyPlaceholder();
   }

   applyPlaceholder();
   window.addEventListener('resize', applyPlaceholder);
   jQuery(input).on('input keydown', function() {
    if (jQuery.trim(input.value)) {
     hide();
    }
   });

   return {
    show: show,
    hide: hide
   };
  }

  var ixirDomainEmptyError = ixirEmptyError();

  (function initIxirTldChips() {
   var input = document.getElementById('inputDomain');
   var chips = document.querySelectorAll('.ixir-dc-tld');
   if (!input || !chips.length) {
    return;
   }
   var knownTlds = [];
   var seenTld = {};
   var chipTld;
   for (var t = 0; t < chips.length; t++) {
    chipTld = chips[t].getAttribute('data-tld');
    if (chipTld && !seenTld[chipTld]) {
     seenTld[chipTld] = true;
     knownTlds.push(chipTld);
    }
   }
   knownTlds.sort(function(a, b) {
    return b.length - a.length;
   });
   var fallback = 'ixirhost';

   function extractSld(value) {
    var name = jQuery.trim(value);
    if (!name) {
     return fallback;
    }
    name = name.replace(/^https?:\/\//i, '').replace(/^www\./i, '');
    name = name.split('/')[0].split('?')[0].replace(/\.+$/, '');
    if (!name || name.charAt(0) === '.') {
     return fallback;
    }
    var lower = name.toLowerCase();
    var i;
    var suffix;
    for (i = 0; i < knownTlds.length; i++) {
     suffix = '.' + knownTlds[i];
     if (lower.length > suffix.length && lower.substring(lower.length - suffix.length) === suffix) {
      return name.slice(0, name.length - suffix.length);
     }
    }
    return name;
   }

   function selectChip(chip) {
    var i;
    for (i = 0; i < chips.length; i++) {
     chips[i].classList.toggle('is-selected', chips[i] === chip);
    }
   }

   function syncSelectionFromInput() {
    var value = jQuery.trim(input.value).toLowerCase();
    var i;
    var tld;
    var suffix;
    var match = null;
    var bestLen = -1;
    if (!value) {
     selectChip(null);
     return;
    }
    for (i = 0; i < chips.length; i++) {
     tld = chips[i].getAttribute('data-tld');
     if (!tld) {
      continue;
     }
     suffix = '.' + tld;
     if (value.length > suffix.length && value.substring(value.length - suffix.length) === suffix) {
      if (tld.length > bestLen) {
       bestLen = tld.length;
       match = chips[i];
      }
     }
    }
    selectChip(match);
   }

   function endsWithTld(value, tld) {
    var lower = jQuery.trim(value).toLowerCase();
    var suffix = '.' + String(tld).toLowerCase();
    return lower.length > suffix.length && lower.substring(lower.length - suffix.length) === suffix;
   }

   Array.prototype.forEach.call(chips, function(chip) {
    chip.addEventListener('click', function() {
     var tld = chip.getAttribute('data-tld');
     var raw;
     if (!tld) {
      return;
     }
     if (chip.classList.contains('is-selected') && endsWithTld(input.value, tld)) {
      raw = jQuery.trim(input.value).replace(/\.+$/, '');
      input.value = raw.slice(0, raw.length - (tld.length + 1));
      selectChip(null);
     } else {
      input.value = extractSld(input.value) + '.' + tld;
      selectChip(chip);
     }
     ixirDomainEmptyError.hide();
     input.focus();
    });
   });
   input.addEventListener('input', syncSelectionFromInput);
   syncSelectionFromInput();
  })();

  function ixirRunDomainSearch() {
   var frm = jQuery('#frmDomainChecker');
   var input = jQuery('#inputDomain');
   var term = String(input.val() || '').replace(/^\s+|\s+$/g, '');
   if (!term) {
    ixirDomainEmptyError.show();
    return;
   }
   ixirDomainEmptyError.hide();
   var parsed = ixirParseTerm(term);
   var urlTerm = parsed.full || term;
   if (urlTerm) {
    input.val(urlTerm);
   }
   if (ixirSyncSearchUrl(urlTerm)) {
    return;
   }
   if (ixirBusy) {
    return;
   }
   ixirBusy = true;
   var pending = 3;

   function doneOne() {
    pending -= 1;
    if (pending <= 0) {
     ixirBusy = false;
     jQuery('#btnCheckAvailability').removeAttr('disabled').removeClass('disabled');
    }
   }
   jQuery('#btnCheckAvailability').attr('disabled', 'disabled').addClass('disabled');
   ixirShowResults();
   ixirScheduleScrollPastHero();
   jQuery('#primaryLookupSearching').show();
   jQuery('#primaryLookupResult').addClass('w-hidden').hide();
   jQuery('.ixir-spotlights .domain-lookup-result').hide();
   jQuery('.ixir-spotlights .domain-lookup-spotlight-loader').show();
   jQuery('.domain-lookup-suggestions-loader').hide();
   jQuery('#domainSuggestions').find('.clone').remove();
   jQuery('#domainSuggestions').addClass('w-hidden');
   jQuery('.suggested-domains').removeClass('w-hidden').show();
   jQuery('div.more-suggestions').hide();
   ixirSetCartButtons(jQuery('.ixir-domain-page .btn-add-to-cart'), '');

   var payload = frm.serialize();

   ixirPostJson(payload + '&type=domain').done(function(data) {
    var domain = ixirFirstDomain(data);
    ixirHeadline(domain, parsed);
   }).fail(function() {
    ixirHeadline({ error: 'Sorgulanamadı, lütfen tekrar deneyin.' }, parsed);
   }).always(doneOne);

   ixirPostJson(payload + '&type=spotlight').done(function(data) {
    var filled = 0;
    if (data && data.result && !data.result.error) {
     jQuery.each(data.result, function(index, domain) {
      if (domain && (domain.tldNoDots || domain.tld)) {
       if (ixirFillSpotlight(domain)) {
        filled += 1;
       }
      }
     });
    }
    if (!filled) {
     ixirSpotlightFallback();
    } else {
     jQuery('.ixir-spotlights .spotlight-tld').each(function() {
      var box = jQuery(this);
      if (box.find('.domain-lookup-result').is(':visible')) {
       return;
      }
      box.find('.domain-lookup-spotlight-loader').hide();
      box.find('.domain-lookup-result').hide();
     });
     ixirSortSpotlight();
    }
   }).fail(function() {
    ixirSpotlightFallback();
   }).always(doneOne);

   ixirPostJson(payload + '&type=suggestions').done(function(data) {
    var list = [];
    if (data && data.result && !data.result.error) {
     if (jQuery.isArray(data.result)) {
      list = data.result;
     } else {
      jQuery.each(data.result, function(k, v) {
       if (v && typeof v === 'object' && k !== 'error') {
        list.push(v);
       }
      });
     }
    }
    ixirFillSuggestions(list, parsed);
   }).fail(function() {
    ixirFallbackSuggestions(parsed);
   }).always(doneOne);
  }

  function ixirCsrfToken() {
   if (typeof window.csrfToken === 'string' && window.csrfToken) {
    return window.csrfToken;
   }
   if (typeof csrfToken === 'string' && csrfToken) {
    return csrfToken;
   }
   return String(jQuery('#frmDomainChecker input[name="token"]').val() || '');
  }

  function ixirEsc(text) {
   return jQuery('<div/>').text(String(text || '')).html();
  }

  function ixirCartItemIcon(type) {
   if (type === 'domain' || type === 'renewal') {
    return 'fa-globe';
   }
   if (type === 'addon') {
    return 'fa-puzzle-piece';
   }
   return 'fa-cube';
  }

  function ixirPaintMiniCart(payload) {
   var items = (payload && payload.items) ? payload.items : [];
   var count = (payload && payload.cartCount !== undefined) ? parseInt(payload.cartCount, 10) : items.length;
   if (isNaN(count) || count < 0) {
    count = items.length;
   }
   var root = window.whmcsBaseUrl || '';
   jQuery('.ixir-cart-toggle').each(function() {
    var $a = jQuery(this);
    var $badge = $a.find('.cart-item-count');
    if (count > 0) {
     if (!$badge.length) {
      $a.append('<span class="badge badge-danger cart-item-count">' + count + '</span>');
     } else {
      $badge.text(count).show();
     }
    } else {
     $badge.remove();
    }
   });
   jQuery('#cartItemCount').text(count);
   jQuery('.ixir-cart-menu').each(function() {
    var $menu = jQuery(this);
    var $actions = $menu.find('.ixir-cart-head-actions');
    var $count = $actions.find('.ixir-cart-count');
    if (count > 0) {
     if (!$count.length) {
      $actions.prepend('<span class="ixir-cart-count">' + count + ' ürün</span>');
     } else {
      $count.text(count + ' ürün').show();
     }
    } else {
     $count.remove();
    }
    $menu.find('.ixir-cart-items, .ixir-cart-empty').remove();
    var html = '';
    if (items.length) {
     html += '<ul class="ixir-cart-items">';
     jQuery.each(items, function(i, item) {
      var type = item.type || 'product';
      var name = ixirEsc(item.name || 'Ürün');
      var meta = item.meta ? '<span class="ixir-cart-item-meta">' + ixirEsc(item.meta) + '</span>' : '';
      var qty = item.qty ? '<em>x' + ixirEsc(item.qty) + '</em>' : '';
      var remove = '';
      if (item.removeType) {
       var href = root + '/cart.php?a=remove&r=' + encodeURIComponent(item.removeType) +
        '&i=' + encodeURIComponent(item.removeIndex);
       if (item.renewalType) {
        href += '&rt=' + encodeURIComponent(item.renewalType);
       }
       remove = '<a href="' + href + '" class="ixir-cart-item-remove" data-type="' +
        ixirEsc(item.removeType) + '" data-index="' + ixirEsc(item.removeIndex) +
        '" data-name="' + name + '"' +
        (item.renewalType ? ' data-rt="' + ixirEsc(item.renewalType) + '"' : '') +
        ' title="Kaldır" aria-label="' + name + ' ürününü sepetten kaldır">' +
        '<i class="fas fa-times" aria-hidden="true"></i></a>';
      }
      html += '<li><span class="ixir-cart-item-icon"><i class="fas ' + ixirCartItemIcon(type) +
       '"></i></span><span class="ixir-cart-item-body"><span class="ixir-cart-item-name">' + name + qty +
       '</span>' + meta + '</span>' + remove + '</li>';
     });
     html += '</ul>';
    } else {
     html =
      '<div class="ixir-cart-empty"><span class="ixir-cart-empty-icon"><i class="fas fa-shopping-basket"></i></span>' +
      '<strong>Sepetiniz boş</strong><span class="ixir-cart-empty-text">Henüz ürün eklemediniz</span></div>';
    }
    $menu.find('.ixir-cart-head').after(html);
   });
  }

  function ixirSetCartButtons(buttons, state) {
   buttons.removeClass('is-loading is-added is-unavailable checkout');
   if (state && state !== 'is-added') {
    buttons.addClass(state);
   }
   buttons.find('span').hide();
   if (state === 'is-loading') {
    buttons.find('span.loading').show();
   } else if (state === 'is-unavailable') {
    buttons.find('span.unavailable').show();
    buttons.attr('disabled', 'disabled');
   } else {
    buttons.find('span.to-add').show();
    buttons.removeAttr('disabled');
   }
  }

  function ixirAddDomainToCart(btn) {
   var domain = String(btn.attr('data-domain') || '').trim().toLowerCase();
   if (!domain || btn.hasClass('is-loading')) {
    return;
   }
   var selector = 'button.btn-add-to-cart[data-domain="' + domain.replace(/"/g, '\\"') + '"]';
   var buttons = jQuery(selector);
   if (!buttons.length) {
    buttons = btn;
   }
   ixirSetCartButtons(buttons, 'is-loading');
   var token = ixirCsrfToken();
   jQuery.ajax({
    type: 'POST',
    url: ixirCheckUrl(),
    data: {
     a: 'addToCart',
     type: 'addToCart',
     domain: domain,
     token: token,
     whois: btn.attr('data-whois') || '0'
    },
    dataType: 'json',
    headers: {
     'X-Requested-With': 'XMLHttpRequest'
    }
   }).done(function(data) {
    if (data && data.result === 'added') {
     ixirSetCartButtons(buttons, '');
     ixirPaintMiniCart(data);
    } else {
     ixirSetCartButtons(buttons, 'is-unavailable');
    }
   }).fail(function() {
    ixirSetCartButtons(buttons, '');
   });
  }

  function ixirBindForm() {
   var form = document.getElementById('frmDomainChecker');
   if (form && !form.getAttribute('data-ixir-bound')) {
    form.setAttribute('data-ixir-bound', '1');
    form.addEventListener('submit', function(e) {
     e.preventDefault();
     e.stopImmediatePropagation();
     ixirRunDomainSearch();
    }, true);
   }
   jQuery('#frmDomainChecker').off('submit').on('submit', function(e) {
    e.preventDefault();
    e.stopImmediatePropagation();
    ixirRunDomainSearch();
   });
   jQuery('.ixir-domain-page .btn-add-to-cart').off('click');
  }

  var cartRoot = document.getElementById('order-standard_cart');
  if (cartRoot && !cartRoot.getAttribute('data-ixir-cart-bound')) {
   cartRoot.setAttribute('data-ixir-cart-bound', '1');
   cartRoot.addEventListener('click', function(e) {
    var node = e.target;
    while (node && node !== cartRoot && !(node.classList && node.classList.contains('btn-add-to-cart'))) {
     node = node.parentNode;
    }
    if (!node || node === cartRoot || !node.classList.contains('btn-add-to-cart')) {
     return;
    }
    e.preventDefault();
    e.stopPropagation();
    if (typeof e.stopImmediatePropagation === 'function') {
     e.stopImmediatePropagation();
    }
    ixirAddDomainToCart(jQuery(node));
   }, true);
  }

  ixirBindForm();
  window.setTimeout(ixirBindForm, 0);
  window.setTimeout(ixirBindForm, 400);

  jQuery('#moreSuggestions').off('click').on('click', function(e) {
   e.preventDefault();
   var hidden = jQuery('#domainSuggestions .domain-suggestion.clone:hidden');
   hidden.slice(0, 6).css('display', 'flex');
   if (!jQuery('#domainSuggestions .domain-suggestion.clone:hidden').length) {
    jQuery('#moreSuggestions').hide();
    jQuery('#noMoreSuggestions').removeClass('w-hidden').show();
   }
  });

  {if $lookupTerm && !$invalid}
   ixirShowResults();
   ixirRunDomainSearch();
   jQuery(function() {
    ixirScheduleScrollPastHero();
   });
  {/if}
  {if $invalid}
   ixirShowResults();
   jQuery('#primaryLookupSearching').hide();
   jQuery('#primaryLookupResult').removeClass('w-hidden').show().children().hide();
   jQuery('.domain-invalid').show();
  {/if}

  (function initIxirHeroFill() {
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

  (function initIxirTldCarousel() {
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
 })();
</script>