<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/components/server/pci-tarama/how-it-works/how-it-works.css?v={$versionHash}-r3">

<section class="ixir-pci-how ixir-slide ixir-slide--right is-slide-on" id="ixir-pci-how" aria-labelledby="ixir-pci-how-title">
  <script>
    {literal}
      (function() {
        var root = document.getElementById('ixir-pci-how');
        if (!root || !window.IntersectionObserver) return;
        if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
        if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
        root.classList.add('is-armed');
      })();
    {/literal}
  </script>

  <!-- Arka plan görsel ışıması -->
  <div class="pci-how-bg-glow" aria-hidden="true"></div>

  <div class="container">
    <div class="pci-how-grid">

      <!-- Sol Kolon: Başlık ve Adımlar -->
      <div class="pci-how-left">
        <header class="pci-how-header">
          <span class="pci-how-badge">
            <i class="fas fa-cogs" aria-hidden="true"></i>
            <span>Adım Adım Denetim Süreci</span>
          </span>
          {include file="$template/components/Heading.tpl" title="PCI - DSS Tarama Hizmeti Nasıl Çalışır?" id="ixir-pci-how-title" class="text-left"}
          <p class="pci-how-subhead">
            Uluslararası standartlarda 4 aşamalı uçtan uca tarama ve iyileştirme metodolojisiyle güvenlik açıklarınızı tespit edip kapatıyoruz.
          </p>
        </header>

        <!-- Süreç Adımları (Interactive Process Timeline) -->
        <div class="pci-how-steps" role="list">

          <!-- Adım 1 -->
          <div class="pci-how-step" role="listitem">
            <div class="pci-how-step-indicator" aria-hidden="true">
              <span class="pci-how-step-num">01</span>
              <span class="pci-how-step-line"></span>
            </div>
            <div class="pci-how-step-card">
              <div class="pci-how-step-top">
                <h3 class="pci-how-step-title">Ön Analiz & Kapsamlı Güvenlik Taraması</h3>
                <span class="pci-how-step-pill">
                  <i class="fas fa-search" aria-hidden="true"></i> Analiz
                </span>
              </div>
              <p class="pci-how-step-desc">
                Kart ödemelerinin işlem türü ve bu işlemler sırasındaki veri iletimi kontrol edilerek kart sahiplik bilgilerinin tutulma şekli, tutulan verilerin türü, saklanma şekilleri ve olası riskler analiz edilir ve kapsamlı bir rapor oluşturulur.
              </p>
            </div>
          </div>

          <!-- Adım 2 -->
          <div class="pci-how-step" role="listitem">
            <div class="pci-how-step-indicator" aria-hidden="true">
              <span class="pci-how-step-num">02</span>
              <span class="pci-how-step-line"></span>
            </div>
            <div class="pci-how-step-card">
              <div class="pci-how-step-top">
                <h3 class="pci-how-step-title">Açıkların Tespiti & İyileştirme Planı</h3>
                <span class="pci-how-step-pill">
                  <i class="fas fa-tools" aria-hidden="true"></i> İyileştirme
                </span>
              </div>
              <p class="pci-how-step-desc">
                Raporlar doğrultusunda varsa gerekli iyileştirme çalışmalarının listesi oluşturulur, açıkların kapatılması ve kişisel bilgilerinin olması gerektiği gibi saklanması sağlanır.
              </p>
            </div>
          </div>

          <!-- Adım 3 -->
          <div class="pci-how-step" role="listitem">
            <div class="pci-how-step-indicator" aria-hidden="true">
              <span class="pci-how-step-num">03</span>
              <span class="pci-how-step-line"></span>
            </div>
            <div class="pci-how-step-card">
              <div class="pci-how-step-top">
                <h3 class="pci-how-step-title">Doğrulama & Tekrar Kontrol Taramaları</h3>
                <span class="pci-how-step-pill">
                  <i class="fas fa-sync-alt" aria-hidden="true"></i> Yeniden Tarama
                </span>
              </div>
              <p class="pci-how-step-desc">
                Yapılan iyileştirmelerin sonuçlarının görülebilmesi için tekrar kontrol taraması yapılır. Kontrol taramaları ilk taramada belirlenen açıklar kapatılana kadar devam eder.
              </p>
            </div>
          </div>

          <!-- Adım 4 -->
          <div class="pci-how-step is-last" role="listitem">
            <div class="pci-how-step-indicator" aria-hidden="true">
              <span class="pci-how-step-num"><i class="fas fa-check" aria-hidden="true"></i></span>
            </div>
            <div class="pci-how-step-card">
              <div class="pci-how-step-top">
                <h3 class="pci-how-step-title">Sıfır Hata Doğrulaması & Nihai Rapor</h3>
                <span class="pci-how-step-pill is-success">
                  <i class="fas fa-shield-alt" aria-hidden="true"></i> Tam Uyum
                </span>
              </div>
              <p class="pci-how-step-desc">
                Tüm açıklar kapatıldıktan sonra nihai rapor firmaya gönderilir.
              </p>
            </div>
          </div>

        </div>
      </div>

      <!-- Sağ Kolon: Görsel & İllüstrasyon Vitrini -->
      <div class="pci-how-right">
        <div class="pci-how-visual-wrapper">
          <div class="pci-how-visual-aura" aria-hidden="true"></div>
          
          <picture class="pci-how-photo">
            <img src="{$WEB_ROOT}/templates/{$template}/img/server/pci-dss.webp" 
                 alt="PCI - DSS Tarama Hizmeti Nasıl Çalışır?" 
                 loading="lazy" 
                 width="720" 
                 height="780" 
                 class="pci-how-img">
          </picture>

          <!-- Yüzen Rozet (Floating Trust Badge) -->
          <div class="pci-how-floating-badge" aria-hidden="true">
            <div class="pci-how-floating-icon">
              <i class="fas fa-shield-check"></i>
            </div>
            <div class="pci-how-floating-text">
              <strong>%100 Uyum Garantisi</strong>
              <span>Açıklar kapanana kadar sınırsız tarama</span>
            </div>
          </div>

          <!-- İkinci Yüzen Metrik Rozeti -->
          <div class="pci-how-floating-badge pci-how-floating-badge--secondary" aria-hidden="true">
            <div class="pci-how-floating-icon pci-how-floating-icon--green">
              <i class="fas fa-certificate"></i>
            </div>
            <div class="pci-how-floating-text">
              <strong>ASV Standartları</strong>
              <span>Banka ve sanal POS onaylı</span>
            </div>
          </div>

        </div>
      </div>

    </div>
  </div>
</section>
