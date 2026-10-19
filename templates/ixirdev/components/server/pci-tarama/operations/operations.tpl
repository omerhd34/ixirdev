<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/components/server/pci-tarama/operations/operations.css?v={$versionHash}-r3">

<section class="ixir-pci-ops bg-light-blue ixir-slide ixir-slide--right is-slide-on" id="ixir-pci-ops" aria-labelledby="ixir-pci-ops-title">
  <script>
    {literal}
      (function() {
        var root = document.getElementById('ixir-pci-ops');
        if (!root || !window.IntersectionObserver) return;
        if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
        if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
        root.classList.add('is-armed');
      })();
    {/literal}
  </script>

  <div class="pci-ops-bg-glow" aria-hidden="true"></div>

  <div class="container">
    <header class="pci-ops-header">
      <div class="ixir-badge-pill ixir-ssl-badge-pill"><i class="fas fa-tasks" aria-hidden="true"></i> TARAMA ADIMLARI</div>
      {include file="$template/components/Heading.tpl" title="PCI - DSS Taraması Sırasında Yapılan İşlemler" id="ixir-pci-ops-title"}
      <p class="pci-ops-subhead">
        Altyapınız, IP bloklarınız, web portallarınız ve ödeme kanallarınız uluslararası standartlara göre 12 kritik güvenlik maddesinde uçtan uca taranır.
      </p>
    </header>

    <div class="pci-ops-grid" role="list">

      <div class="pci-ops-card" role="listitem">
        <div class="pci-ops-icon-wrap" aria-hidden="true">
          <i class="fas fa-check"></i>
        </div>
        <div class="pci-ops-content">
          <h3 class="pci-ops-card-title">Eş Zamanlı Tarama</h3>
          <p class="pci-ops-card-desc">Tüm sunucu ve servislerinizde eş zamanlı kesintisiz güvenlik analizi</p>
        </div>
      </div>

      <div class="pci-ops-card" role="listitem">
        <div class="pci-ops-icon-wrap" aria-hidden="true">
          <i class="fas fa-check"></i>
        </div>
        <div class="pci-ops-content">
          <h3 class="pci-ops-card-title">Minumum 5 IP Tarama</h3>
          <p class="pci-ops-card-desc">Temel ve orta ölçekli altyapılar için başlangıç IP denetim paketi</p>
        </div>
      </div>

      <div class="pci-ops-card" role="listitem">
        <div class="pci-ops-icon-wrap" aria-hidden="true">
          <i class="fas fa-check"></i>
        </div>
        <div class="pci-ops-content">
          <h3 class="pci-ops-card-title">20 IP Adresine Kadar Tarama</h3>
          <p class="pci-ops-card-desc">Geniş sunucu ağları ve mikroservis mimarileri için esnek kapasite</p>
        </div>
      </div>

      <div class="pci-ops-card" role="listitem">
        <div class="pci-ops-icon-wrap" aria-hidden="true">
          <i class="fas fa-check"></i>
        </div>
        <div class="pci-ops-content">
          <h3 class="pci-ops-card-title">Her Çeyrek Yılda Sınırsız Tarama</h3>
          <p class="pci-ops-card-desc">3 aylık periyotlarda standartlara tam uyum için sınırsız kontrol</p>
        </div>
      </div>

      <div class="pci-ops-card" role="listitem">
        <div class="pci-ops-icon-wrap" aria-hidden="true">
          <i class="fas fa-check"></i>
        </div>
        <div class="pci-ops-content">
          <h3 class="pci-ops-card-title">Yönetimsel Özet Raporu</h3>
          <p class="pci-ops-card-desc">Karar vericiler ve yöneticiler için grafik destekli anlaşılır özet</p>
        </div>
      </div>

      <div class="pci-ops-card" role="listitem">
        <div class="pci-ops-icon-wrap" aria-hidden="true">
          <i class="fas fa-check"></i>
        </div>
        <div class="pci-ops-content">
          <h3 class="pci-ops-card-title">Güvenlik İçin Yönetici Önerileri</h3>
          <p class="pci-ops-card-desc">Tespit edilen risklerin hızla kapatılması için aksiyonel tavsiyeler</p>
        </div>
      </div>

      <div class="pci-ops-card" role="listitem">
        <div class="pci-ops-icon-wrap" aria-hidden="true">
          <i class="fas fa-check"></i>
        </div>
        <div class="pci-ops-content">
          <h3 class="pci-ops-card-title">ASV Tarama Raporları</h3>
          <p class="pci-ops-card-desc">Banka ve finansal kurumlara doğrudan sunulabilir akredite raporlar</p>
        </div>
      </div>

      <div class="pci-ops-card" role="listitem">
        <div class="pci-ops-icon-wrap" aria-hidden="true">
          <i class="fas fa-check"></i>
        </div>
        <div class="pci-ops-content">
          <h3 class="pci-ops-card-title">Alan Adlarını Tarayabilme</h3>
          <p class="pci-ops-card-desc">Ana domain, alt alan adları (subdomain) ve web servislerinin denetimi</p>
        </div>
      </div>

      <div class="pci-ops-card" role="listitem">
        <div class="pci-ops-icon-wrap" aria-hidden="true">
          <i class="fas fa-check"></i>
        </div>
        <div class="pci-ops-content">
          <h3 class="pci-ops-card-title">Ödeme Kimliği CVC Kapsamı</h3>
          <p class="pci-ops-card-desc">Kart hamili, CVC/CVV verisi ve hassas ödeme bilgilerinin korunması</p>
        </div>
      </div>

      <div class="pci-ops-card" role="listitem">
        <div class="pci-ops-icon-wrap" aria-hidden="true">
          <i class="fas fa-check"></i>
        </div>
        <div class="pci-ops-content">
          <h3 class="pci-ops-card-title">Post-Scan Denetim Raporları</h3>
          <p class="pci-ops-card-desc">Tarama tamamlandıktan sonra risk seviyelerini gösteren teknik döküm</p>
        </div>
      </div>

      <div class="pci-ops-card" role="listitem">
        <div class="pci-ops-icon-wrap" aria-hidden="true">
          <i class="fas fa-check"></i>
        </div>
        <div class="pci-ops-content">
          <h3 class="pci-ops-card-title">Website Açıkları Taranması</h3>
          <p class="pci-ops-card-desc">OWASP Top 10, SQLi, XSS gibi web uygulama açıklarının tespiti</p>
        </div>
      </div>

      <div class="pci-ops-card" role="listitem">
        <div class="pci-ops-icon-wrap" aria-hidden="true">
          <i class="fas fa-check"></i>
        </div>
        <div class="pci-ops-content">
          <h3 class="pci-ops-card-title">HackerProof Site Mührü</h3>
          <p class="pci-ops-card-desc">Ziyaretçilerinize güven veren onaylı dijital güvenlik rozeti</p>
        </div>
      </div>

    </div>

    <div class="pci-ops-trust-bar">
      <div class="pci-ops-trust-item">
        <div class="pci-ops-trust-icon" aria-hidden="true">
          <i class="fas fa-shield-alt"></i>
        </div>
        <div class="pci-ops-trust-text">
          <strong>ASV Akreditasyonu</strong>
          <span>PCI SSC onaylı resmi tarama standartları</span>
        </div>
      </div>

      <div class="pci-ops-trust-divider" aria-hidden="true"></div>

      <div class="pci-ops-trust-item">
        <div class="pci-ops-trust-icon pci-ops-trust-icon--emerald" aria-hidden="true">
          <i class="fas fa-sync-alt"></i>
        </div>
        <div class="pci-ops-trust-text">
          <strong>Sınırsız Tekrar Tarama</strong>
          <span>Açıklar kapanana kadar ek ücret ödemeden tarama</span>
        </div>
      </div>

      <div class="pci-ops-trust-divider" aria-hidden="true"></div>

      <div class="pci-ops-trust-item">
        <div class="pci-ops-trust-icon" aria-hidden="true">
          <i class="fas fa-file-invoice-dollar"></i>
        </div>
        <div class="pci-ops-trust-text">
          <strong>Resmi Banka Raporu</strong>
          <span>Tüm sanal POS ve bankalarda geçerli uyum belgesi</span>
        </div>
      </div>
    </div>

  </div>
</section>

