<section class="ixir-ssl-plans ixir-wh-plans ixir-slide ixir-slide--right is-slide-on" id="ixir-wh-plans" aria-labelledby="ixir-ssl-plans-title">
 <div class="container">
  <header class="ixir-wh-plans-head ixir-ssl-head">
   <div class="ixir-badge-pill ixir-ssl-badge-pill">
    <i class="fas fa-shield-check" aria-hidden="true"></i> SSL PAKETLERİ</div>
   {include file="$template/components/Heading.tpl" title="SSL Sertifikası Çözümleri" id="ixir-ssl-plans-title" align="center"}
   <p>Web sitenizi ve ziyaretçilerinizi dünyanın lider SSL markalarıyla en uygun fiyatlarla güvence altına alın.</p>
  </header>

  <div class="ixir-ssl-layout">
   <aside class="ixir-ssl-sidebar" aria-label="SSL Filtreleri">
    <div class="ixir-ssl-filter-card">
     <div class="filter-card-head">
      <div class="filter-card-icon"><i class="fas fa-sliders-h" aria-hidden="true"></i></div>
      <div>
       <h3>Sertifika Filtresi</h3>
       <span>İhtiyacınıza uygun SSL'i seçin</span>
      </div>
     </div>

     <div class="filter-group">
      <div class="filter-group-title">DOĞRULAMA TÜRÜ</div>
      <ul class="filter-list" role="tablist">
       <li>
        <button type="button" class="filter-btn is-active" data-filter="all" role="tab" aria-selected="true">
         <span class="filter-btn-left">
          <i class="fas fa-layer-group" aria-hidden="true"></i>
          <span>Tüm SSL Sertifikaları</span>
         </span>
         <span class="filter-count">10</span>
        </button>
       </li>
       <li>
        <button type="button" class="filter-btn" data-filter="dv" role="tab" aria-selected="false">
         <span class="filter-btn-left">
          <i class="fas fa-bolt" aria-hidden="true"></i>
          <span>Hızlı Kurulum (DV SSL)</span>
         </span>
         <span class="filter-count">4</span>
        </button>
       </li>
       <li>
        <button type="button" class="filter-btn" data-filter="ov" role="tab" aria-selected="false">
         <span class="filter-btn-left">
          <i class="fas fa-building" aria-hidden="true"></i>
          <span>Şirketler İçin (OV SSL)</span>
         </span>
         <span class="filter-count">1</span>
        </button>
       </li>
       <li>
        <button type="button" class="filter-btn" data-filter="ev" role="tab" aria-selected="false">
         <span class="filter-btn-left">
          <i class="fas fa-award" aria-hidden="true"></i>
          <span>Kurumsal SSL (EV SSL)</span>
         </span>
         <span class="filter-count">1</span>
        </button>
       </li>
       <li>
        <button type="button" class="filter-btn" data-filter="wildcard" role="tab" aria-selected="false">
         <span class="filter-btn-left">
          <i class="fas fa-asterisk" aria-hidden="true"></i>
          <span>Wildcard SSL (Subdomain)</span>
         </span>
         <span class="filter-count">4</span>
        </button>
       </li>
      </ul>
     </div>

     <div class="filter-group">
      <div class="filter-group-title">MARKALAR</div>
      <div class="filter-brands-grid">
       <button type="button" class="brand-filter-btn" data-brand="comodo" title="COMODO (Sectigo)">
        <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/Comodo.webp" alt="Comodo" width="100" height="28" loading="lazy">
       </button>
       <button type="button" class="brand-filter-btn" data-brand="digicert" title="DigiCert">
        <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/digicert-ssl.webp" alt="DigiCert" width="100" height="28" loading="lazy">
       </button>
       <button type="button" class="brand-filter-btn" data-brand="rapidssl" title="RapidSSL">
        <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/Rapid.webp" alt="RapidSSL" width="100" height="28" loading="lazy">
       </button>
       <button type="button" class="brand-filter-btn" data-brand="geotrust" title="GeoTrust">
        <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/Geotrust.webp" alt="GeoTrust" width="100" height="28" loading="lazy">
       </button>
       <button type="button" class="brand-filter-btn" data-brand="essential" title="Essential SSL">
        <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/essential-ssl.webp" alt="Essential SSL" width="100" height="28" loading="lazy">
       </button>
       <button type="button" class="brand-filter-btn" data-brand="certum" title="Certum">
        <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/Certum.webp" alt="Certum" width="100" height="28" loading="lazy">
       </button>
      </div>
     </div>

     <div class="filter-footer">
      <button type="button" class="filter-reset-action" id="ixirSslResetBtn">
       <i class="fas fa-sync-alt" aria-hidden="true"></i> Filtreleri Sıfırla
      </button>
     </div>
    </div>
   </aside>

   <main class="ixir-ssl-main" aria-label="SSL Sertifikaları Listesi">
    <div class="ixir-ssl-toolbar">
     <div class="toolbar-stat">
      <span class="active-filter-label" id="sslActiveFilterName">Tüm SSL Sertifikaları</span>
      <span class="active-count-tag"><b id="sslVisibleCount">10</b> sertifika bulundu</span>
     </div>
     <div class="toolbar-actions">
      <button type="button" class="toolbar-sort-btn" id="sslToolbarSortBtn" data-sort="asc" title="Fiyata göre sırala (Artan / Azalan)">
       <i class="fas fa-sort-amount-down-alt" id="sslToolbarSortIcon" aria-hidden="true"></i>
       <span>Sıralama: <b id="sslToolbarSortText">En Düşük Fiyat</b></span>
      </button>
      <div class="toolbar-features">
       <span><i class="fas fa-check-circle" aria-hidden="true"></i> %99.9 Tarayıcı Uyumu</span>
       <span><i class="fas fa-check-circle" aria-hidden="true"></i> Ücretsiz Kurulum</span>
      </div>
     </div>
    </div>

    <div class="ixir-ssl-table-head" aria-label="Tablo Başlıkları">
     <div class="col-head col-head--brand">Marka</div>
     <div class="col-head col-head--info">Ürün & Özellikler</div>
     <div class="col-head col-head--warranty">Garanti</div>
     <div class="col-head col-head--duration">Süre</div>
     <div class="col-head col-head--price">Fiyat & Sipariş</div>
    </div>

    <div class="ixir-ssl-items" id="ixirSslItems">

     <article class="ixir-ssl-row" data-type="dv" data-brand="certum" data-price="269">
      <div class="col-brand">
       <div class="brand-badge-box">
        <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/Certum.webp" alt="Certum" width="105" height="28" loading="lazy">
       </div>
      </div>
      <div class="col-info">
       <div class="item-title-wrap">
        <h3 class="item-title">Certum Commercial DV SSL</h3>
        <span class="pill-crypto">2048-bit</span>
       </div>
       <div class="item-tags">
        <span class="tag-validation tag-validation--auto"><i class="fas fa-envelope-open-text" aria-hidden="true"></i> E-Posta, DNS veya TXT Dosyası ile Doğrulama</span>
       </div>
      </div>
      <div class="col-warranty">
       <span class="col-mobile-label">Garanti:</span>
       <span class="warranty-badge">200.000 €</span>
      </div>
      <div class="col-duration">
       <span class="col-mobile-label">Süre:</span>
       <span class="duration-badge"><i class="far fa-calendar-alt" aria-hidden="true"></i> 1 Yıl</span>
      </div>
      <div class="col-price">
       <div class="discount-pill">%30 İNDİRİMLİ</div>
       <div class="price-stack">
        <s class="old-price">384 TL</s>
        <div class="current-price"><b>269</b><small>TL<span class="period">/yıl</span></small></div>
       </div>
       <a href="{$WEB_ROOT}/sepet" class="ssl-buy-btn" title="Certum Commercial DV SSL Satın Al">
        <span>Satın Al</span> <i class="fas fa-arrow-right" aria-hidden="true"></i>
       </a>
      </div>
     </article>

     <article class="ixir-ssl-row" data-type="dv" data-brand="digicert" data-price="299">
      <div class="col-brand">
       <div class="brand-badge-box">
        <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/digicert-ssl.webp" alt="DigiCert" width="105" height="28" loading="lazy">
       </div>
      </div>
      <div class="col-info">
       <div class="item-title-wrap">
        <h3 class="item-title">DigiCert DV SSL</h3>
        <span class="pill-crypto">2048-bit</span>
       </div>
       <div class="item-tags">
        <span class="tag-validation tag-validation--auto"><i class="fas fa-network-wired" aria-hidden="true"></i> DNS veya TXT Dosyası ile Doğrulama</span>
       </div>
      </div>
      <div class="col-warranty">
       <span class="col-mobile-label">Garanti:</span>
       <span class="warranty-badge">10.000 $</span>
      </div>
      <div class="col-duration">
       <span class="col-mobile-label">Süre:</span>
       <span class="duration-badge"><i class="far fa-calendar-alt" aria-hidden="true"></i> 1 Yıl</span>
      </div>
      <div class="col-price">
       <div class="discount-pill">%30 İNDİRİMLİ</div>
       <div class="price-stack">
        <s class="old-price">428 TL</s>
        <div class="current-price"><b>299</b><small>TL<span class="period">/yıl</span></small></div>
       </div>
       <a href="{$WEB_ROOT}/sepet" class="ssl-buy-btn" title="DigiCert DV SSL Satın Al">
        <span>Satın Al</span> <i class="fas fa-arrow-right" aria-hidden="true"></i>
       </a>
      </div>
     </article>

     <article class="ixir-ssl-row ixir-ssl-row--featured" data-type="dv" data-brand="comodo" data-price="359">
      <div class="col-brand">
       <div class="brand-badge-box">
        <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/Comodo.webp" alt="COMODO" width="105" height="28" loading="lazy">
       </div>
      </div>
      <div class="col-info">
       <div class="item-title-wrap">
        <h3 class="item-title">COMODO (Sectigo) Positive SSL</h3>
        <span class="pill-featured"><i class="fas fa-fire-alt" aria-hidden="true"></i> En Çok Satan</span>
        <span class="pill-crypto">2048-bit</span>
       </div>
       <div class="item-tags">
        <span class="tag-validation tag-validation--auto"><i class="fas fa-envelope-open-text" aria-hidden="true"></i> E-Posta, DNS veya TXT Dosyası ile Doğrulama</span>
       </div>
      </div>
      <div class="col-warranty">
       <span class="col-mobile-label">Garanti:</span>
       <span class="warranty-badge">10.000 $</span>
      </div>
      <div class="col-duration">
       <span class="col-mobile-label">Süre:</span>
       <span class="duration-badge"><i class="far fa-calendar-alt" aria-hidden="true"></i> 1 Yıl</span>
      </div>
      <div class="col-price">
       <div class="discount-pill">%30 İNDİRİMLİ</div>
       <div class="price-stack">
        <s class="old-price">513 TL</s>
        <div class="current-price"><b>359</b><small>TL<span class="period">/yıl</span></small></div>
       </div>
       <a href="{$WEB_ROOT}/sepet" class="ssl-buy-btn" title="COMODO Positive SSL Satın Al">
        <span>Satın Al</span> <i class="fas fa-arrow-right" aria-hidden="true"></i>
       </a>
      </div>
     </article>

     <article class="ixir-ssl-row" data-type="dv" data-brand="rapidssl" data-price="599">
      <div class="col-brand">
       <div class="brand-badge-box">
        <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/Rapid.webp" alt="RapidSSL" width="105" height="28" loading="lazy">
       </div>
      </div>
      <div class="col-info">
       <div class="item-title-wrap">
        <h3 class="item-title">RapidSSL Standard DV</h3>
        <span class="pill-crypto">2048-bit</span>
       </div>
       <div class="item-tags">
        <span class="tag-validation tag-validation--auto"><i class="fas fa-envelope-open-text" aria-hidden="true"></i> E-Posta, DNS veya TXT Dosyası ile Doğrulama</span>
       </div>
      </div>
      <div class="col-warranty">
       <span class="col-mobile-label">Garanti:</span>
       <span class="warranty-badge">10.000 $</span>
      </div>
      <div class="col-duration">
       <span class="col-mobile-label">Süre:</span>
       <span class="duration-badge"><i class="far fa-calendar-alt" aria-hidden="true"></i> 1 Yıl</span>
      </div>
      <div class="col-price">
       <div class="discount-pill">%30 İNDİRİMLİ</div>
       <div class="price-stack">
        <s class="old-price">856 TL</s>
        <div class="current-price"><b>599</b><small>TL<span class="period">/yıl</span></small></div>
       </div>
       <a href="{$WEB_ROOT}/sepet" class="ssl-buy-btn" title="RapidSSL Satın Al">
        <span>Satın Al</span> <i class="fas fa-arrow-right" aria-hidden="true"></i>
       </a>
      </div>
     </article>

     <article class="ixir-ssl-row" data-type="wildcard" data-brand="certum" data-price="2699">
      <div class="col-brand">
       <div class="brand-badge-box">
        <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/Certum.webp" alt="Certum" width="105" height="28" loading="lazy">
       </div>
      </div>
      <div class="col-info">
       <div class="item-title-wrap">
        <h3 class="item-title">Certum Commercial SSL Wildcard</h3>
        <span class="pill-wildcard"><i class="fas fa-asterisk" aria-hidden="true"></i> Wildcard</span>
        <span class="pill-crypto">2048-bit</span>
       </div>
       <div class="item-tags">
        <span class="tag-validation tag-validation--auto"><i class="fas fa-envelope-open-text" aria-hidden="true"></i> E-Posta, DNS veya TXT Dosyası ile Doğrulama</span>
       </div>
      </div>
      <div class="col-warranty">
       <span class="col-mobile-label">Garanti:</span>
       <span class="warranty-badge">200.000 €</span>
      </div>
      <div class="col-duration">
       <span class="col-mobile-label">Süre:</span>
       <span class="duration-badge"><i class="far fa-calendar-alt" aria-hidden="true"></i> 1 Yıl</span>
      </div>
      <div class="col-price">
       <div class="discount-pill">%30 İNDİRİMLİ</div>
       <div class="price-stack">
        <s class="old-price">3.856 TL</s>
        <div class="current-price"><b>2.699</b><small>TL<span class="period">/yıl</span></small></div>
       </div>
       <a href="{$WEB_ROOT}/sepet" class="ssl-buy-btn" title="Certum Commercial SSL Wildcard Satın Al">
        <span>Satın Al</span> <i class="fas fa-arrow-right" aria-hidden="true"></i>
       </a>
      </div>
     </article>

     <article class="ixir-ssl-row" data-type="wildcard" data-brand="essential" data-price="2999">
      <div class="col-brand">
       <div class="brand-badge-box">
        <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/essential-ssl.webp" alt="Essential SSL" width="105" height="28" loading="lazy">
       </div>
      </div>
      <div class="col-info">
       <div class="item-title-wrap">
        <h3 class="item-title">EssentialSSL (Sectigo) Wildcard SSL</h3>
        <span class="pill-wildcard"><i class="fas fa-asterisk" aria-hidden="true"></i> Wildcard</span>
        <span class="pill-crypto">2048-bit</span>
       </div>
       <div class="item-tags">
        <span class="tag-validation tag-validation--auto"><i class="fas fa-envelope-open-text" aria-hidden="true"></i> E-Posta, DNS veya TXT Dosyası ile Doğrulama</span>
       </div>
      </div>
      <div class="col-warranty">
       <span class="col-mobile-label">Garanti:</span>
       <span class="warranty-badge">10.000 $</span>
      </div>
      <div class="col-duration">
       <span class="col-mobile-label">Süre:</span>
       <span class="duration-badge"><i class="far fa-calendar-alt" aria-hidden="true"></i> 1 Yıl</span>
      </div>
      <div class="col-price">
       <div class="discount-pill">%30 İNDİRİMLİ</div>
       <div class="price-stack">
        <s class="old-price">4.284 TL</s>
        <div class="current-price"><b>2.999</b><small>TL<span class="period">/yıl</span></small></div>
       </div>
       <a href="{$WEB_ROOT}/sepet" class="ssl-buy-btn" title="EssentialSSL Wildcard SSL Satın Al">
        <span>Satın Al</span> <i class="fas fa-arrow-right" aria-hidden="true"></i>
       </a>
      </div>
     </article>

     <article class="ixir-ssl-row" data-type="wildcard" data-brand="comodo" data-price="3719">
      <div class="col-brand">
       <div class="brand-badge-box">
        <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/Comodo.webp" alt="COMODO" width="105" height="28" loading="lazy">
       </div>
      </div>
      <div class="col-info">
       <div class="item-title-wrap">
        <h3 class="item-title">COMODO Positive SSL Wildcard</h3>
        <span class="pill-wildcard"><i class="fas fa-asterisk" aria-hidden="true"></i> Wildcard</span>
        <span class="pill-crypto">2048-bit</span>
       </div>
       <div class="item-tags">
        <span class="tag-validation tag-validation--auto"><i class="fas fa-envelope-open-text" aria-hidden="true"></i> E-Posta, DNS veya TXT Dosyası ile Doğrulama</span>
       </div>
      </div>
      <div class="col-warranty">
       <span class="col-mobile-label">Garanti:</span>
       <span class="warranty-badge">10.000 $</span>
      </div>
      <div class="col-duration">
       <span class="col-mobile-label">Süre:</span>
       <span class="duration-badge"><i class="far fa-calendar-alt" aria-hidden="true"></i> 1 Yıl</span>
      </div>
      <div class="col-price">
       <div class="discount-pill">%30 İNDİRİMLİ</div>
       <div class="price-stack">
        <s class="old-price">5.313 TL</s>
        <div class="current-price"><b>3.719</b><small>TL<span class="period">/yıl</span></small></div>
       </div>
       <a href="{$WEB_ROOT}/sepet" class="ssl-buy-btn" title="COMODO Positive SSL Wildcard Satın Al">
        <span>Satın Al</span> <i class="fas fa-arrow-right" aria-hidden="true"></i>
       </a>
      </div>
     </article>

     <article class="ixir-ssl-row" data-type="ov" data-brand="geotrust" data-price="5399">
      <div class="col-brand">
       <div class="brand-badge-box">
        <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/Geotrust.webp" alt="GeoTrust" width="105" height="28" loading="lazy">
       </div>
      </div>
      <div class="col-info">
       <div class="item-title-wrap">
        <h3 class="item-title">GeoTrust TrueBusinessID OV SSL</h3>
        <span class="pill-ov"><i class="fas fa-building" aria-hidden="true"></i> Kurumsal OV</span>
        <span class="pill-crypto">2048-bit</span>
       </div>
       <div class="item-tags">
        <span class="tag-validation tag-validation--doc"><i class="fas fa-file-invoice" aria-hidden="true"></i> Şirket Evrakı ile Kurumsal Doğrulama</span>
       </div>
      </div>
      <div class="col-warranty">
       <span class="col-mobile-label">Garanti:</span>
       <span class="warranty-badge warranty-badge--high">1.250.000 $</span>
      </div>
      <div class="col-duration">
       <span class="col-mobile-label">Süre:</span>
       <span class="duration-badge"><i class="far fa-calendar-alt" aria-hidden="true"></i> 1 Yıl</span>
      </div>
      <div class="col-price">
       <div class="discount-pill">%30 İNDİRİMLİ</div>
       <div class="price-stack">
        <s class="old-price">7.713 TL</s>
        <div class="current-price"><b>5.399</b><small>TL<span class="period">/yıl</span></small></div>
       </div>
       <a href="{$WEB_ROOT}/sepet" class="ssl-buy-btn" title="GeoTrust TrueBusiness ID SSL Satın Al">
        <span>Satın Al</span> <i class="fas fa-arrow-right" aria-hidden="true"></i>
       </a>
      </div>
     </article>

     <article class="ixir-ssl-row" data-type="ev" data-brand="comodo" data-price="5999">
      <div class="col-brand">
       <div class="brand-badge-box">
        <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/Comodo.webp" alt="COMODO" width="105" height="28" loading="lazy">
       </div>
      </div>
      <div class="col-info">
       <div class="item-title-wrap">
        <h3 class="item-title">COMODO (Sectigo) Positive EV SSL</h3>
        <span class="pill-ev"><i class="fas fa-shield-alt" aria-hidden="true"></i> Üst Düzey EV</span>
        <span class="pill-crypto">2048-bit</span>
       </div>
       <div class="item-tags">
        <span class="tag-validation tag-validation--doc"><i class="fas fa-file-check" aria-hidden="true"></i> Şirket Evrakı & Yeşil Adres Güvencesi</span>
       </div>
      </div>
      <div class="col-warranty">
       <span class="col-mobile-label">Garanti:</span>
       <span class="warranty-badge">10.000 $</span>
      </div>
      <div class="col-duration">
       <span class="col-mobile-label">Süre:</span>
       <span class="duration-badge"><i class="far fa-calendar-alt" aria-hidden="true"></i> 1 Yıl</span>
      </div>
      <div class="col-price">
       <div class="discount-pill">%30 İNDİRİMLİ</div>
       <div class="price-stack">
        <s class="old-price">8.570 TL</s>
        <div class="current-price"><b>5.999</b><small>TL<span class="period">/yıl</span></small></div>
       </div>
       <a href="{$WEB_ROOT}/sepet" class="ssl-buy-btn" title="COMODO Positive EV SSL Satın Al">
        <span>Satın Al</span> <i class="fas fa-arrow-right" aria-hidden="true"></i>
       </a>
      </div>
     </article>

     <article class="ixir-ssl-row" data-type="wildcard" data-brand="rapidssl" data-price="6359">
      <div class="col-brand">
       <div class="brand-badge-box">
        <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/Rapid.webp" alt="RapidSSL" width="105" height="28" loading="lazy">
       </div>
      </div>
      <div class="col-info">
       <div class="item-title-wrap">
        <h3 class="item-title">RapidSSL Wildcard SSL</h3>
        <span class="pill-wildcard"><i class="fas fa-asterisk" aria-hidden="true"></i> Wildcard</span>
        <span class="pill-crypto">2048-bit</span>
       </div>
       <div class="item-tags">
        <span class="tag-validation tag-validation--auto"><i class="fas fa-envelope-open-text" aria-hidden="true"></i> E-Posta, DNS veya TXT Dosyası ile Doğrulama</span>
       </div>
      </div>
      <div class="col-warranty">
       <span class="col-mobile-label">Garanti:</span>
       <span class="warranty-badge">10.000 $</span>
      </div>
      <div class="col-duration">
       <span class="col-mobile-label">Süre:</span>
       <span class="duration-badge"><i class="far fa-calendar-alt" aria-hidden="true"></i> 1 Yıl</span>
      </div>
      <div class="col-price">
       <div class="discount-pill">%30 İNDİRİMLİ</div>
       <div class="price-stack">
        <s class="old-price">9.084 TL</s>
        <div class="current-price"><b>6.359</b><small>TL<span class="period">/yıl</span></small></div>
       </div>
       <a href="{$WEB_ROOT}/sepet" class="ssl-buy-btn" title="RapidSSL Wildcard Satın Al">
        <span>Satın Al</span> <i class="fas fa-arrow-right" aria-hidden="true"></i>
       </a>
      </div>
     </article>

    </div>

    <div class="ixir-ssl-empty" id="ixirSslEmpty" style="display: none;">
     <div class="empty-icon"><i class="fas fa-search" aria-hidden="true"></i></div>
     <h4>Seçilen filtrelere uygun sertifika bulunamadı</h4>
     <p>Farklı bir doğrulama türü veya marka seçebilir, ya da filtreleri temizleyebilirsiniz.</p>
     <button type="button" class="empty-reset-btn" id="ixirSslEmptyReset">Tüm Sertifikaları Göster</button>
    </div>
   </main>
  </div>
 </div>
</section>
