<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/components/server/pci-tarama/audience/audience.css?v={$versionHash}-r1">

<section class="ixir-pci-audience ixir-slide ixir-slide--right is-slide-on" id="ixir-pci-audience" aria-labelledby="ixir-pci-audience-title">
  <script>
    {literal}
      (function() {
        var root = document.getElementById('ixir-pci-audience');
        if (!root || !window.IntersectionObserver) return;
        if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
        if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
        root.classList.add('is-armed');
      })();
    {/literal}
  </script>

  <div class="pci-aud-bg-glow" aria-hidden="true"></div>

  <div class="container">
    <header class="pci-aud-header">
      <span class="pci-aud-badge">
        <i class="fas fa-user-shield" aria-hidden="true"></i>
        <span>Kapsam & Hedef Kitle</span>
      </span>
      {include file="$template/components/Heading.tpl" title="Kimler PCI - DSS Tarama Hizmeti Kullanmalıdır?" id="ixir-pci-audience-title"}
      <p class="pci-aud-subhead">
        Online ödeme ve kart hamili verilerini işleyen, saklayan veya aracı kurumlara aktaran tüm işletmeler için uluslararası PCI standartlarına uyum zorunludur.
      </p>
    </header>

    <div class="pci-aud-grid">

      <article class="pci-aud-card">
        <div class="pci-aud-icon-wrap" aria-hidden="true">
          <svg viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg" class="pci-aud-svg">
            <path d="M10 10H15L18.8 28.5C19.1 29.8 20.2 30.7 21.5 30.7H37.5C38.7 30.7 39.8 29.9 40.1 28.7L43 18C43.3 16.7 42.3 15.4 41 15.4H16" stroke="#ffffff" stroke-width="2.6" stroke-linecap="round" stroke-linejoin="round"/>
            <circle cx="22" cy="38" r="3" fill="#ffffff"/>
            <circle cx="36" cy="38" r="3" fill="#ffffff"/>
            <path d="M24 21H34" stroke="#ffffff" stroke-width="2.2" stroke-linecap="round"/>
            <path d="M26 25H31" stroke="#ffffff" stroke-width="2.2" stroke-linecap="round"/>
            <circle cx="37" cy="11" r="5" fill="#60a5fa"/>
            <path d="M35.5 11L36.8 12.3L39.2 9.7" stroke="#ffffff" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
        </div>
        <div class="pci-aud-body">
          <div class="pci-aud-meta">
            <span class="pci-aud-chip">E-Ticaret & Satış</span>
          </div>
          <h3 class="pci-aud-title">E-Ticaret Siteleri</h3>
          <p class="pci-aud-desc">
            İnternet üzerinden satış yapan ve site üzerinde kredi kartı bilgisi girilerek ödeme alan tüm e-ticaret siteleri tarama hizmetine sahip olmalıdır.
          </p>
          <div class="pci-aud-feature">
            <i class="fas fa-check-circle" aria-hidden="true"></i>
            <span>Sanal POS kesintilerini önler, güvenli satışı garantiler</span>
          </div>
        </div>
      </article>

      <article class="pci-aud-card">
        <div class="pci-aud-icon-wrap" aria-hidden="true">
          <svg viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg" class="pci-aud-svg">
            <path d="M9 41H39" stroke="#ffffff" stroke-width="2.6" stroke-linecap="round"/>
            <path d="M12 37V18C12 16.9 12.9 16 14 16H34C35.1 16 36 16.9 36 18V37H12Z" stroke="#ffffff" stroke-width="2.6" stroke-linejoin="round"/>
            <rect x="16" y="21" width="4" height="4" rx="1" fill="#ffffff"/>
            <rect x="22" y="21" width="4" height="4" rx="1" fill="#ffffff"/>
            <rect x="28" y="21" width="4" height="4" rx="1" fill="#ffffff"/>
            <rect x="16" y="28" width="4" height="4" rx="1" fill="#ffffff"/>
            <rect x="22" y="28" width="4" height="4" rx="1" fill="#ffffff"/>
            <rect x="28" y="28" width="4" height="4" rx="1" fill="#ffffff"/>
            <path d="M8 16L24 7L40 16" stroke="#ffffff" stroke-width="2.6" stroke-linecap="round" stroke-linejoin="round"/>
            <circle cx="37" cy="11" r="5" fill="#60a5fa"/>
            <path d="M37 8.5V13.5M34.5 11H39.5" stroke="#ffffff" stroke-width="1.6" stroke-linecap="round"/>
          </svg>
        </div>
        <div class="pci-aud-body">
          <div class="pci-aud-meta">
            <span class="pci-aud-chip">Finansal Hizmetler</span>
          </div>
          <h3 class="pci-aud-title">Ödeme Kuruluşları</h3>
          <p class="pci-aud-desc">
            Online ödeme, fatura ödemesi, abonelik ücreti gibi yine site veya uygulama üzerinden ödeme alan internet siteleri tarama hizmetine sahip olmalıdır.
          </p>
          <div class="pci-aud-feature">
            <i class="fas fa-check-circle" aria-hidden="true"></i>
            <span>Banka ve BDDK mevzuat standartlarına tam uyumluluk</span>
          </div>
        </div>
      </article>

      <article class="pci-aud-card">
        <div class="pci-aud-icon-wrap" aria-hidden="true">
          <svg viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg" class="pci-aud-svg">
            <rect x="7" y="11" width="34" height="23" rx="4" stroke="#ffffff" stroke-width="2.6"/>
            <path d="M7 18H41" stroke="#ffffff" stroke-width="2.6"/>
            <rect x="12" y="23" width="7" height="5" rx="1.5" fill="#60a5fa"/>
            <path d="M23 25.5H33" stroke="#ffffff" stroke-width="2.2" stroke-linecap="round"/>
            <path d="M33 22L39 19.5V27.5C39 31.8 36 34.8 33 36C30 34.8 27 31.8 27 27.5V19.5L33 22Z" fill="#2563eb" stroke="#ffffff" stroke-width="2"/>
            <path d="M31 27L32.6 28.8L35.5 25.5" stroke="#ffffff" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
        </div>
        <div class="pci-aud-body">
          <div class="pci-aud-meta">
            <span class="pci-aud-chip">Veri Güvenliği</span>
          </div>
          <h3 class="pci-aud-title">Kart Bilgisi Saklayan Kuruluşlar</h3>
          <p class="pci-aud-desc">
            Herhangi bir şekilde müşterilerinin kart bilgilerini sistem üzerinde saklayan kuruluşlar da PCI - DSS tarama hizmetine sahip olmalıdır.
          </p>
          <div class="pci-aud-feature">
            <i class="fas fa-check-circle" aria-hidden="true"></i>
            <span>Kart havuzu ve depolanan verilerin sızıntılara karşı korunması</span>
          </div>
        </div>
      </article>

      <article class="pci-aud-card">
        <div class="pci-aud-icon-wrap" aria-hidden="true">
          <svg viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg" class="pci-aud-svg">
            <rect x="8" y="9" width="19" height="30" rx="3.5" stroke="#ffffff" stroke-width="2.6"/>
            <line x1="14.5" y1="34" x2="20.5" y2="34" stroke="#ffffff" stroke-width="2.2" stroke-linecap="round"/>
            <rect x="12" y="14" width="11" height="13" rx="2" fill="#60a5fa" fill-opacity="0.35" stroke="#ffffff" stroke-width="1.4"/>
            <path d="M29 17H38C39.1 17 40 17.9 40 19V32C40 33.1 39.1 34 38 34H32" stroke="#ffffff" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M35 14L38 17L35 20" stroke="#ffffff" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round"/>
            <circle cx="34" cy="26" r="4.5" fill="#60a5fa"/>
            <path d="M32.2 26H35.8M34 24.2V27.8" stroke="#ffffff" stroke-width="1.5" stroke-linecap="round"/>
          </svg>
        </div>
        <div class="pci-aud-body">
          <div class="pci-aud-meta">
            <span class="pci-aud-chip">Veri İletimi & Entegrasyon</span>
          </div>
          <h3 class="pci-aud-title">Ödeme Kuruluşuna Bilgi Aktaran Siteler</h3>
          <p class="pci-aud-desc">
            Herhangi bir nedenden ötürü bilgi girişi olan ve bu bilgiyi herhangi bir kuruluşa aktaran web siteleri de PCI - DSS tarama hizmetine sahip olmalıdır.
          </p>
          <div class="pci-aud-feature">
            <i class="fas fa-check-circle" aria-hidden="true"></i>
            <span>Şifreli veri tüneli, API güvenliği ve MitM koruması</span>
          </div>
        </div>
      </article>

    </div>

    <div class="pci-aud-footer-bar">
      <div class="pci-aud-footer-info">
        <div class="pci-aud-footer-icon" aria-hidden="true">
          <i class="fas fa-shield-alt"></i>
        </div>
        <div class="pci-aud-footer-text">
          <h4 class="pci-aud-footer-title">Hangi Tarama Düzeyine İhtiyacınız Olduğunu Birlikte Belirleyelim</h4>
          <p class="pci-aud-footer-desc">Altyapınızı, sanal pos akışınızı ve veri işleme modelinizi inceleyerek size en uygun PCI - DSS çözümünü planlayalım.</p>
        </div>
      </div>
      <a href="#ixir-pci-cta-title" class="pci-aud-footer-btn" title="Hemen Bilgi Alın">
        <span>Uzman Danışman Desteği</span>
        <i class="fas fa-arrow-right" aria-hidden="true"></i>
      </a>
    </div>

  </div>
</section>

