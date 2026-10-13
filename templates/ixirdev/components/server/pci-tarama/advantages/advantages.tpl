<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/components/server/pci-tarama/advantages/advantages.css?v={$versionHash}-r3">

<section class="ixir-pci-advantages ixir-slide ixir-slide--right is-slide-on" aria-labelledby="ixir-pci-advantages-title">
  <div class="container">
    <div class="pci-adv-header">
      <span class="pci-adv-badge">
        <i class="fas fa-shield-alt" aria-hidden="true"></i>
        <span>Avantajlar</span>
      </span>
      {include file="$template/components/Heading.tpl" title="PCI - DSS Avantajları" id="ixir-pci-advantages-title"}
      <p class="pci-adv-subhead">PCI - DSS uyumluluğu ile online ödeme güvenliğinizi en üst standartlara taşıyın, marka itibarınızı ve satışlarınızı güvenceye alın.</p>
    </div>

    <div class="pci-adv-grid">
      <div class="pci-adv-card">
        <div class="pci-adv-icon-wrap" aria-hidden="true">
          <svg viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
            <defs>
              <linearGradient id="pciShieldGrad" x1="8" y1="4" x2="40" y2="44" gradientUnits="userSpaceOnUse">
                <stop offset="0%" stop-color="#3b82f6"/>
                <stop offset="100%" stop-color="#1d4ed8"/>
              </linearGradient>
              <linearGradient id="pciShieldCore" x1="14" y1="12" x2="34" y2="36" gradientUnits="userSpaceOnUse">
                <stop offset="0%" stop-color="#60a5fa"/>
                <stop offset="100%" stop-color="#2563eb"/>
              </linearGradient>
            </defs>
            <path d="M24 4L8 10.5V22.5C8 32.5 14.8 41.8 24 44.5C33.2 41.8 40 32.5 40 22.5V10.5L24 4Z" fill="url(#pciShieldGrad)"/>
            <path d="M24 8L12 13V22.5C12 30.5 17.1 37.8 24 40.2C30.9 37.8 36 30.5 36 22.5V13L24 8Z" fill="#ffffff" fill-opacity="0.2"/>
            <path d="M24 16C21.8 16 20 17.8 20 20V22.5H19C17.9 22.5 17 23.4 17 24.5V31.5C17 32.6 17.9 33.5 19 33.5H29C30.1 33.5 31 32.6 31 31.5V24.5C31 23.4 30.1 22.5 29 22.5H28V20C28 17.8 26.2 16 24 16ZM22.5 20C22.5 19.2 23.2 18.5 24 18.5C24.8 18.5 25.5 19.2 25.5 20V22.5H22.5V20ZM24 26.5C24.8 26.5 25.5 27.2 25.5 28C25.5 28.6 25.1 29.1 24.6 29.4L25 31.5H23L23.4 29.4C22.9 29.1 22.5 28.6 22.5 28C22.5 27.2 23.2 26.5 24 26.5Z" fill="#ffffff"/>
          </svg>
        </div>
        <h3 class="pci-adv-card-title">Veri Güvenliği</h3>
        <p class="pci-adv-card-desc">Müşterinin girmiş olduğu <strong>hassas kredi kartı bilgilerinin güvenliği</strong> tüm dünyada sağlanmış olur.</p>
        <div class="pci-adv-card-footer">
          <span class="pci-adv-tag"><i class="fas fa-shield-alt" aria-hidden="true"></i> Global Koruma</span>
        </div>
      </div>

      <div class="pci-adv-card">
        <div class="pci-adv-icon-wrap" aria-hidden="true">
          <svg viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
            <defs>
              <linearGradient id="pciPeopleGrad" x1="10" y1="18" x2="38" y2="42" gradientUnits="userSpaceOnUse">
                <stop offset="0%" stop-color="#3b82f6"/>
                <stop offset="100%" stop-color="#1d4ed8"/>
              </linearGradient>
              <linearGradient id="pciStarGrad" x1="12" y1="4" x2="36" y2="15" gradientUnits="userSpaceOnUse">
                <stop offset="0%" stop-color="#f59e0b"/>
                <stop offset="100%" stop-color="#d97706"/>
              </linearGradient>
            </defs>
            <path d="M14 6L15.2 8.7L18.1 9L15.9 11L16.5 13.9L14 12.5L11.5 13.9L12.1 11L9.9 9L12.8 8.7L14 6Z" fill="url(#pciStarGrad)"/>
            <path d="M24 3L25.6 6.6L29.5 7L26.6 9.7L27.4 13.6L24 11.7L20.6 13.6L21.4 9.7L18.5 7L22.4 6.6L24 3Z" fill="url(#pciStarGrad)"/>
            <path d="M34 6L35.2 8.7L38.1 9L35.9 11L36.5 13.9L34 12.5L31.5 13.9L32.1 11L29.9 9L32.8 8.7L34 6Z" fill="url(#pciStarGrad)"/>

            <circle cx="15" cy="22" r="3.5" fill="url(#pciPeopleGrad)" fill-opacity="0.8"/>
            <path d="M9 36C9 31.8 11.7 29.5 15 29.5C16.8 29.5 18.5 30.3 19.5 31.6C18.3 32.8 17.5 34.5 17.5 36.5V37H9V36Z" fill="url(#pciPeopleGrad)" fill-opacity="0.8"/>

            <circle cx="33" cy="22" r="3.5" fill="url(#pciPeopleGrad)" fill-opacity="0.8"/>
            <path d="M39 36C39 31.8 36.3 29.5 33 29.5C31.2 29.5 29.5 30.3 28.5 31.6C29.7 32.8 30.5 34.5 30.5 36.5V37H39V36Z" fill="url(#pciPeopleGrad)" fill-opacity="0.8"/>

            <circle cx="24" cy="20.5" r="4.5" fill="url(#pciPeopleGrad)"/>
            <path d="M16 38C16 33 19.5 30 24 30C28.5 30 32 33 32 38C32 39 31.5 40 30 40H18C16.5 40 16 39 16 38Z" fill="url(#pciPeopleGrad)"/>
          </svg>
        </div>
        <h3 class="pci-adv-card-title">Müşteri Sadakati</h3>
        <p class="pci-adv-card-desc">Müşteriler <strong>güvenli sitelerden</strong> alışveriş yapar. PCI - DSS'in sağladığı veri güvenliği ile <strong>müşteri sadakati</strong> oluşur.</p>
        <div class="pci-adv-card-footer">
          <span class="pci-adv-tag"><i class="fas fa-heart" aria-hidden="true"></i> Müşteri Güveni</span>
        </div>
      </div>

      <div class="pci-adv-card">
        <div class="pci-adv-icon-wrap" aria-hidden="true">
          <svg viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
            <defs>
              <linearGradient id="pciMedalGrad" x1="10" y1="4" x2="38" y2="34" gradientUnits="userSpaceOnUse">
                <stop offset="0%" stop-color="#3b82f6"/>
                <stop offset="100%" stop-color="#1d4ed8"/>
              </linearGradient>
              <linearGradient id="pciRibbonGrad" x1="14" y1="26" x2="34" y2="45" gradientUnits="userSpaceOnUse">
                <stop offset="0%" stop-color="#2563eb"/>
                <stop offset="100%" stop-color="#1e40af"/>
              </linearGradient>
            </defs>
            <path d="M17 27L13 44L21 40L23 33" fill="url(#pciRibbonGrad)"/>
            <path d="M31 27L35 44L27 40L25 33" fill="url(#pciRibbonGrad)"/>
            <path d="M24 5L26.3 7.2L29.4 6.7L31.1 9.2L34.2 9.5L35.2 12.4L38 13.7L38.2 16.8L40.5 18.8L40 21.8L41.5 24.5L40 27.2L40.5 30.2L38.2 32.2L38 35.3L35.2 36.6L34.2 39.5L31.1 39.8L29.4 42.3L26.3 41.8L24 44L21.7 41.8L18.6 42.3L16.9 39.8L13.8 39.5L12.8 36.6L10 35.3L9.8 32.2L7.5 30.2L8 27.2L6.5 24.5L8 21.8L7.5 18.8L9.8 16.8L10 13.7L12.8 12.4L13.8 9.5L16.9 9.2L18.6 6.7L21.7 7.2L24 5Z" fill="url(#pciMedalGrad)" fill-opacity="0.2"/>
            <circle cx="24" cy="22" r="13" fill="url(#pciMedalGrad)"/>
            <circle cx="24" cy="22" r="10.5" stroke="#ffffff" stroke-width="1.2" stroke-dasharray="2 2" stroke-opacity="0.6"/>
            <path d="M24 15.5L25.9 19.4L30.2 19.8L27 22.7L27.9 26.9L24 24.7L20.1 26.9L21 22.7L17.8 19.8L22.1 19.4L24 15.5Z" fill="#ffffff"/>
          </svg>
        </div>
        <h3 class="pci-adv-card-title">Süreklilik</h3>
        <p class="pci-adv-card-desc">Standartlara uyulmadığı takdirde oluşabilecek <strong>maddi cezalar veya satışların iptali</strong> gibi durumlar önlenmiş olur.</p>
        <div class="pci-adv-card-footer">
          <span class="pci-adv-tag"><i class="fas fa-check-circle" aria-hidden="true"></i> Sıfır Ceza & Kesintisiz</span>
        </div>
      </div>
    </div>
  </div>
</section>

