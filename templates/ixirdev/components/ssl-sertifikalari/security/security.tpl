<section class="ixir-ssl-security-section ixir-slide ixir-slide--right is-slide-on" id="ssl-tarayici-gorunumu" aria-labelledby="ssl-security-title">
 <div class="container">
  <header class="ixir-ssl-plans-head ixir-wh-plans-head">
   <div class="ixir-badge-pill ixir-ssl-badge-pill">
    <i class="fas fa-lock" aria-hidden="true"></i> TARAYICI GÖRÜNÜMÜ</div>
   {include file="$template/components/Heading.tpl" title="SSL İle Sitenizi Güvenli Olarak İşaretleyin!" id="ssl-security-title" align="center"}
   <p>SSL sertifikası olmayan siteler tarayıcılarda "Güvenli Değil" uyarısıyla ziyaretçileri kaçırırken, SSL sertifikalı siteler güven verir.</p>
  </header>

  <div class="ixir-ssl-compare-grid">
   <div class="ssl-compare-card is-danger">
    <div class="ssl-compare-card-head">
     <div class="ssl-compare-badge danger-badge">
      <i class="fas fa-exclamation-triangle" aria-hidden="true"></i> Güvensiz Bağlantı (HTTP)
     </div>
     <h3 class="ssl-compare-title">SSL Olmayan Web Sitesi</h3>
    </div>
    <div class="ssl-compare-media">
     <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/non-ssl.webp" alt="SSL Olmayan Güvensiz Site Görünümü" width="560" height="315" loading="lazy">
    </div>
    <ul class="ssl-compare-features danger-list">
     <li>
      <i class="fas fa-times" aria-hidden="true"></i>
      <span><strong>Kırmızı Uyarı Gösterilir:</strong> Tarayıcılar adres çubuğunda "Güvenli Değil" uyarısı verir.</span>
     </li>
     <li>
      <i class="fas fa-times" aria-hidden="true"></i>
      <span><strong>Veriler Şifrelenmez:</strong> Şifreler ve ödeme bilgileri saldırganlar tarafından çalınabilir.</span>
     </li>
     <li>
      <i class="fas fa-times" aria-hidden="true"></i>
      <span><strong>Müşteri Kaybı Yaşanır:</strong> Ziyaretçiler güvensiz uyarıyı görünce siteyi hemen terk eder.</span>
     </li>
     <li>
      <i class="fas fa-times" aria-hidden="true"></i>
      <span><strong>SEO Gerilemesi:</strong> Google güvenli olmayan web sitelerini alt sıralara iter.</span>
     </li>
    </ul>
   </div>

   <div class="ssl-compare-card is-success">
    <div class="ssl-compare-card-head">
     <div class="ssl-compare-badge success-badge">
      <i class="fas fa-shield-check" aria-hidden="true"></i> 256-Bit Güvenli Bağlantı (HTTPS)
     </div>
     <h3 class="ssl-compare-title">SSL Sertifikalı Web Sitesi</h3>
    </div>
    <div class="ssl-compare-media">
     <img src="{$WEB_ROOT}/templates/{$template}/img/ssl-sertifikalari/ssl.webp" alt="SSL Sertifikalı Güvenli Site Görünümü" width="560" height="315" loading="lazy">
    </div>
    <ul class="ssl-compare-features success-list">
     <li>
      <i class="fas fa-check" aria-hidden="true"></i>
      <span><strong>Yeşil Güven Kilidi:</strong> Adres çubuğunda güvenli kilit ve şirket kimliği onaylanır.</span>
     </li>
     <li>
      <i class="fas fa-check" aria-hidden="true"></i>
      <span><strong>Uçtan Uca Şifreleme:</strong> Tüm veri trafiği 256-bit güçlü algoritmalarla korunur.</span>
     </li>
     <li>
      <i class="fas fa-check" aria-hidden="true"></i>
      <span><strong>Maksimum Güven & Dönüşüm:</strong> Ziyaretçileriniz rahatça form doldurur ve alışveriş yapar.</span>
     </li>
     <li>
      <i class="fas fa-check" aria-hidden="true"></i>
      <span><strong>Google SEO Önceliği:</strong> HTTPS uyumlu siteler arama motorlarında üst sıralara çıkar.</span>
     </li>
    </ul>
   </div>
  </div>

  <div class="ssl-security-cta">
   <div class="ssl-security-cta-info">
    <div class="ssl-security-cta-icon"><i class="fas fa-shield-alt" aria-hidden="true"></i></div>
    <div>
     <h4>Hemen Sitenizi Güvence Altına Alın</h4>
     <p>Ziyaretçilerinize güvenli bir deneyim sunun ve arama sonuçlarında yükselin.</p>
    </div>
   </div>
   <a href="#ixir-wh-plans" class="ssl-security-cta-btn ssl-type-jump-btn" data-target-filter="all" title="SSL Sertifikası Paketlerini İncele">
    <span>SSL Çözümlerini İncele</span> <i class="fas fa-arrow-right" aria-hidden="true"></i>
   </a>
  </div>
 </div>
</section>
