{assign var="ixirDsServers" value=[
  ["name" => "R210", "brand" => "dell", "brandLabel" => "DELL", "cpuCount" => 1, "cpu" => "Intel Xeon X3440", "cores" => "4 × 2.50 GHz (HT ile 8 Core)", "ram" => 16, "disk" => "1 x 240 GB SSD", "diskType" => "ssd", "diskTip" => "Non-raid Tek Disk", "monthly" => 3458, "annually" => 3340, "badge" => ""],
  ["name" => "R210-II", "brand" => "dell", "brandLabel" => "DELL", "cpuCount" => 1, "cpu" => "Intel Xeon E3-1240 v2", "cores" => "4 × 3.40 GHz (HT ile 8 Core)", "ram" => 16, "disk" => "2 x 250 GB SSD", "diskType" => "ssd", "diskTip" => "2 x 250 GB SSD Raid 1",  "monthly" => 3874, "annually" => 3731, "badge" => ""],
  ["name" => "R330", "brand" => "dell", "brandLabel" => "DELL", "cpuCount" => 1, "cpu" => "Intel Xeon E3-1270 v5", "cores" => "4 × 3.60 GHz (HT ile 8 Core)", "ram" => 16, "disk" => "2 x 250 GB SSD", "diskType" => "ssd", "diskTip" => "2 x 250 GB SSD Raid 1",  "monthly" => 4487, "annually" => 4317, "badge" => ""],
  ["name" => "2670v2", "brand" => "intel", "brandLabel" => "intel", "cpuCount" => 2, "cpu" => "Intel Xeon E5-2670 v2", "cores" => "20 × 2.50 GHz (HT ile 40 Core)", "ram" => 128, "disk" => "2 x 1 TB SSD", "diskType" => "ssd", "diskTip" => "2 x 1 TB SSD Raid 1",  "monthly" => 9912, "annually" => 9314, "badge" => ""],
  ["name" => "2620v2", "brand" => "intel", "brandLabel" => "intel", "cpuCount" => 2, "cpu" => "Intel Xeon E5-2620 v2", "cores" => "12 × 2.10 GHz (HT ile 24 Core)", "ram" => 64, "disk" => "12 x 2 TB SAS", "diskType" => "sas", "diskTip" => "12 x 2 TB SAS Disk Raid 5 20 TB / Raid 10 10.9 TB Kullanılabilir Alan",  "monthly" => 9990, "annually" => 9157, "badge" => ""],
  ["name" => "2670v2-N", "brand" => "intel", "brandLabel" => "intel", "cpuCount" => 2, "cpu" => "Intel Xeon E5-2670 v2", "cores" => "20 × 2.50 GHz (HT ile 40 Core)", "ram" => 128, "disk" => "1 x 2 TB NVMe", "diskType" => "nvme", "diskTip" => "1 x 2 TB Nvme SSD'ye göre 6 kat daha hızlı okuma/yazma, daha fazla IOPS",  "monthly" => 10408, "annually" => 9780, "badge" => ""],
  ["name" => "DL360 G9 SSD", "brand" => "hp", "brandLabel" => "HP", "cpuCount" => 2, "cpu" => "Intel Xeon E5-2650 v3", "cores" => "20 × 2.30 GHz (HT ile 40 Core)", "ram" => 128, "disk" => "2 x 1 TB SSD", "diskType" => "ssd", "diskTip" => "2 x 1 TB SSD Raid 1", "monthly" => 10690, "annually" => 9977, "badge" => ""],
  ["name" => "2697-N", "brand" => "intel", "brandLabel" => "intel", "cpuCount" => 2, "cpu" => "Intel Xeon E5-2697 v2", "cores" => "24 × 2.70 GHz (HT ile 48 Core)", "ram" => 256, "disk" => "1 x 1.6 TB NVMe", "diskType" => "nvme", "diskTip" => "1 x 1.6 TB Enterprise Nvme SSD'ye göre 6 kat daha hızlı okuma/yazma, daha fazla IOPS",  "monthly" => 11900, "annually" => 11180, "badge" => "popular"],
  ["name" => "6138-N", "brand" => "intel", "brandLabel" => "intel", "cpuCount" => 2, "cpu" => "Intel Xeon Gold 6138", "cores" => "40 × 2.00 GHz (HT ile 80 Core)", "ram" => 256, "disk" => "1 x 3.2 TB NVMe", "diskType" => "nvme", "diskTip" => "1 x 3.2 TB Enterprise Nvme ile SSD'ye göre 6 kat daha hızlı okuma/yazma, daha fazla IOPS",  "monthly" => 19204, "annually" => 17931, "badge" => "new"],
  ["name" => "8160-N", "brand" => "intel", "brandLabel" => "intel", "cpuCount" => 2, "cpu" => "Intel Xeon Platinum 8160", "cores" => "48 × 2.10 GHz (HT ile 96 Core)", "ram" => 256, "disk" => "1x 3.2 TB NVMe", "diskType" => "nvme", "diskTip" => "1 x 3.2 TB Enterprise Nvme ile SSD'ye göre 6 kat daha hızlı okuma/yazma, daha fazla IOPS",  "monthly" => 22080, "annually" => 20620, "badge" => "new"],
  ["name" => "8160-N2", "brand" => "intel", "brandLabel" => "intel", "cpuCount" => 2, "cpu" => "Intel Xeon Platinum 8160", "cores" => "48 × 2.10 GHz (HT ile 96 Core)", "ram" => 512, "disk" => "1x 3.2 TB NVMe", "diskType" => "nvme", "diskTip" => "1x 3.2 TB Enterprise Nvme ile SSD'ye göre 6 kat daha hızlı okuma/yazma, daha fazla IOPS", "monthly" => 26500, "annually" => 24292, "badge" => "new"]
]}
{assign var="ixirDsFeatures" value=[
  "3 Operatör Yedekli İnternet Erişimi",
  "Best Path ile En Hızlı Rotadan Ulaşım",
  "Tier III+ Veri Merkezi",
  "İstanbul Lokasyon",
  "%99.9 Uptime",
  "Bios Seviyesine Kadar Uzaktan Yönetim",
  "ISO 27001 Bilgi Güvenliği",
  "ISO 9001 Kalite Yönetim",
  "ISO 10002 Müşteri Memnuniyet",
  "PCI DSS v3.2.1",
  "Garantili Donanım",
  "Uzaktan Erişim & Kontrol",
  "Opsiyonel Sanallaştırma Desteği",
  "Ücretsiz Kontrol Paneli",
  "Opsiyonel DDOS Koruma",
  "1 Gbit Port Limitsiz Trafik",
  "150+ Peering (Ara bağlantı)",
  "7/24/365 Yardım Masası",
  "Opsiyonel Siteden Siteye IPSec VPN"
]}

<style>
{literal}
.ixir-ds-slider-counter {
  display: none !important;
}

.ixir-ds-tip-text,
.ixir-ds-tip-text *,
.ixir-ds-cell span.ixir-ds-tip-text,
.ixir-ds-cell .ixir-ds-tip-text,
.ixir-ds-tip:hover .ixir-ds-tip-text,
.ixir-ds-tip:focus .ixir-ds-tip-text {
  color: rgb(255, 255, 255) !important;
}

/* Masaüstü (> 992px): Filtre barı tek satırda, Ödeme Dönemi sağa hizalı, 1536px altında alta kayma engelli */
@media (min-width: 993px) {
  .ixir-ds-filters {
    display: flex !important;
    flex-wrap: nowrap !important;
    align-items: flex-end !important;
    gap: 0 !important;
    padding: 14px 20px 10px !important;
    border: 1px solid #e6e8ee !important;
    border-radius: 16px !important;
    background: #ffffff !important;
    box-shadow: 0 4px 20px rgba(11, 37, 69, 0.04) !important;
    overflow-x: auto !important;
    scrollbar-width: none !important;
  }
  .ixir-ds-filters::-webkit-scrollbar {
    display: none !important;
  }

  .ixir-ds-filters fieldset {
    flex: 0 0 auto !important;
    margin: 0 !important;
    padding: 0 !important;
    border: 0 !important;
  }

  .ixir-ds-filters fieldset + fieldset {
    margin-left: 12px !important;
    padding-left: 14px !important;
    border-left: 1px solid #eef1f6 !important;
  }

  .ixir-ds-filters legend,
  .ixir-ds-group-label {
    display: block !important;
    margin: 0 0 6px !important;
    padding: 0 !important;
    color: #475569 !important;
    font-size: 11px !important;
    font-weight: 700 !important;
    letter-spacing: 0.05em !important;
    text-transform: uppercase !important;
    white-space: nowrap !important;
  }

  .ixir-ds-chip {
    margin: 0 3px 6px 0 !important;
  }

  .ixir-ds-chip span {
    padding: 6px 11px !important;
    font-size: 12.5px !important;
    font-weight: 600 !important;
    line-height: 1 !important;
    border: 1px solid #e2e8f0 !important;
    border-radius: 999px !important;
    background: #f8fafc !important;
    color: #334155 !important;
    white-space: nowrap !important;
    transition: all 0.15s ease !important;
  }

  .ixir-ds-chip:hover span {
    border-color: #cbd5e1 !important;
    background: #f1f5f9 !important;
    color: #0b2545 !important;
    transform: translateY(-1px) !important;
  }

  .ixir-ds-chip input:checked + span {
    border-color: #0b2545 !important;
    background: #0b2545 !important;
    color: #ffffff !important;
    box-shadow: 0 2px 6px rgba(11, 37, 69, 0.22) !important;
  }

  .ixir-ds-chip input[name="cpu"] + span {
    min-width: 28px !important;
    justify-content: center !important;
    padding: 6px 9px !important;
  }

  .ixir-ds-filters-reset {
    display: inline-flex !important;
    align-items: center !important;
    gap: 5px !important;
    margin: 0 0 6px 6px !important;
    padding: 5px 8px !important;
    border: 0 !important;
    border-radius: 6px !important;
    background: none !important;
    color: #3b82f6 !important;
    font-size: 12.5px !important;
    font-weight: 600 !important;
    line-height: 1 !important;
    cursor: pointer !important;
    white-space: nowrap !important;
    flex-shrink: 0 !important;
    transition: all 0.15s ease !important;
  }

  .ixir-ds-filters-reset:hover {
    color: #ef4444 !important;
    background: #fef2f2 !important;
  }

  .ixir-ds-cycle-group {
    margin: 0 0 6px auto !important;
    padding-left: 14px !important;
    display: flex !important;
    flex-direction: column !important;
    align-items: flex-end !important;
    flex-shrink: 0 !important;
  }

  .ixir-ds-cycle-group .ixir-ds-group-label {
    text-align: right !important;
  }

  .ixir-ds-cycle-group .ixir-ds-cycle {
    display: inline-flex !important;
    align-items: center !important;
    padding: 3px !important;
    background: #f1f5f9 !important;
    border: 1px solid #e2e8f0 !important;
    border-radius: 999px !important;
  }

  .ixir-ds-cycle-group .ixir-ds-cycle button {
    height: 28px !important;
    padding: 0 14px !important;
    font-size: 12.5px !important;
    font-weight: 700 !important;
    border: none !important;
    border-radius: 999px !important;
    color: #64748b !important;
    background: transparent !important;
    cursor: pointer !important;
    transition: all 0.2s ease !important;
  }

  .ixir-ds-cycle-group .ixir-ds-cycle button[aria-checked="true"] {
    background: #0b2545 !important;
    color: #ffffff !important;
    box-shadow: 0 2px 8px rgba(11, 37, 69, 0.2) !important;
  }

  .ixir-ds-cycle-group .ixir-ds-cycle button:not([aria-checked="true"]):hover {
    color: #0b2545 !important;
  }
}

@media (max-width: 992px) {
  .ixir-ds-thead {
    display: none !important;
  }
  .ixir-ds-toolbar {
    display: flex !important;
    align-items: center !important;
    justify-content: flex-end !important;
    gap: 12px !important;
    margin-bottom: 14px !important;
  }
  /* 992px altında '11 sunucu listeleniyor' yazısı gizli */
  .ixir-ds-count {
    display: none !important;
  }
  /* 992px altında '1/11' slider sayacı görünür */
  .ixir-ds-slider-counter {
    display: inline-flex !important;
    align-items: center !important;
    margin-left: auto !important;
  }
  .ixir-ds-counter-badge {
    display: inline-flex !important;
    align-items: center !important;
    justify-content: center !important;
    height: 32px !important;
    padding: 0 14px !important;
    border-radius: 999px !important;
    background: #0b2545 !important;
    color: #ffffff !important;
    font-size: 13px !important;
    font-weight: 700 !important;
    letter-spacing: 0.04em !important;
    box-shadow: 0 2px 8px rgba(11, 37, 69, 0.15) !important;
  }
  .ixir-ds-counter-badge b {
    color: #fbd746 !important;
    margin-right: 3px !important;
    font-size: 14px !important;
  }
  .ixir-ds-counter-badge span {
    color: rgba(255, 255, 255, 0.75) !important;
    margin-left: 3px !important;
  }

  /* SLIDER TRACK */
  .ixir-ds-list {
    display: flex !important;
    flex-direction: row !important;
    flex-wrap: nowrap !important;
    align-items: stretch !important;
    overflow-x: auto !important;
    overflow-y: hidden !important;
    scroll-snap-type: x mandatory !important;
    scroll-behavior: smooth !important;
    -webkit-overflow-scrolling: touch !important;
    gap: 16px !important;
    padding: 6px 4px 6px !important;
    margin: 0 !important;
    list-style: none !important;
    scrollbar-width: none !important;
    touch-action: pan-y pinch-zoom !important;
    width: 100% !important;
    box-sizing: border-box !important;
  }
  .ixir-ds-list::-webkit-scrollbar {
    display: none !important;
    width: 0 !important;
    height: 0 !important;
  }
  .ixir-ds-list.is-dragging {
    scroll-behavior: auto !important;
    scroll-snap-type: none !important;
    cursor: grabbing !important;
    user-select: none !important;
  }

  /* EACH CARD */
  .ixir-ds-row {
    flex: 0 0 100% !important;
    width: 100% !important;
    min-width: 100% !important;
    max-width: 100% !important;
    scroll-snap-align: start !important;
    scroll-snap-stop: always !important;
    box-sizing: border-box !important;
    margin: 0 !important;
    display: grid !important;
    grid-template-columns: repeat(2, minmax(0, 1fr)) !important;
    grid-template-rows: auto minmax(92px, 1fr) minmax(92px, 1fr) auto !important;
    align-items: stretch !important;
    align-self: stretch !important;
    gap: 10px !important;
    padding: 16px !important;
    border: 1px solid #e6e8ee !important;
    border-radius: 16px !important;
    background: #fff !important;
    box-shadow: 0 8px 24px rgba(36, 41, 53, 0.05) !important;
  }
  .ixir-ds-row--popular,
  .ixir-ds-row--new {
    padding-top: 30px !important;
  }
  .ixir-ds-model {
    display: flex !important;
    grid-column: 1 / -1 !important;
    grid-row: 1 !important;
    align-items: center !important;
    gap: 10px !important;
    text-align: left !important;
  }
  .ixir-ds-model h3 {
    margin: 0 !important;
    font-size: 17px !important;
  }
  .ixir-ds-rack {
    flex: 0 0 110px !important;
    width: 110px !important;
    margin: 0 0 0 auto !important;
  }
  .ixir-ds-cell {
    display: flex !important;
    flex-direction: column !important;
    justify-content: flex-start !important;
    padding: 10px 12px !important;
    border-radius: 10px !important;
    background: #f8fafd !important;
    text-align: left !important;
    min-width: 0 !important;
    width: 100% !important;
    height: 100% !important;
    min-height: 92px !important;
    box-sizing: border-box !important;
  }
  .ixir-ds-cell::before {
    content: attr(data-label) !important;
    display: block !important;
    margin-bottom: 3px !important;
    color: #8a909c !important;
    font-size: 11px !important;
    font-weight: 600 !important;
    letter-spacing: 0.04em !important;
    text-transform: uppercase !important;
  }
  .ixir-ds-cell b {
    font-size: 13.5px !important;
    line-height: 1.25 !important;
    color: #0b2545 !important;
    word-break: break-word !important;
  }
  .ixir-ds-cell span {
    font-size: 11.5px !important;
    line-height: 1.3 !important;
    color: #6b7280 !important;
  }
  /* Satır 2: İşlemci ve Port & Trafik yan yana */
  .ixir-ds-cpu {
    grid-column: 1 / 2 !important;
    grid-row: 2 !important;
  }
  .ixir-ds-cell.ixir-ds-port,
  .ixir-ds-cell[data-label="Port & Trafik"] {
    grid-column: 2 / 3 !important;
    grid-row: 2 !important;
  }
  /* Satır 3: RAM ve Disk yan yana */
  .ixir-ds-cell.ixir-ds-ram,
  .ixir-ds-cell[data-label="RAM"] {
    grid-column: 1 / 2 !important;
    grid-row: 3 !important;
  }
  .ixir-ds-cell.ixir-ds-disk,
  .ixir-ds-cell[data-label="Disk"] {
    grid-column: 2 / 3 !important;
    grid-row: 3 !important;
  }
  /* 992px altında i ikonları başlıkların (data-label) sağında */
  .ixir-ds-cell {
    position: relative !important;
  }
  .ixir-ds-cell .ixir-ds-tip {
    position: absolute !important;
    top: 10px !important;
    right: 12px !important;
    margin: 0 !important;
    font-size: 13px !important;
    color: #8a909c !important;
    z-index: 2 !important;
    line-height: 1 !important;
    cursor: pointer !important;
  }
  .ixir-ds-cell .ixir-ds-tip:hover,
  .ixir-ds-cell .ixir-ds-tip:focus {
    color: #0b2545 !important;
  }
  .ixir-ds-cell .ixir-ds-tip-text {
    right: -4px !important;
    left: auto !important;
    transform: translateY(4px) !important;
    max-width: 230px !important;
    width: 220px !important;
  }
  .ixir-ds-cell .ixir-ds-tip:hover .ixir-ds-tip-text,
  .ixir-ds-cell .ixir-ds-tip:focus .ixir-ds-tip-text {
    transform: translateY(0) !important;
  }
  .ixir-ds-cell .ixir-ds-tip-text::after {
    right: 8px !important;
    left: auto !important;
    transform: none !important;
  }
  /* Satır 4: Fiyat ve Yapılandır butonu */
  .ixir-ds-buy-col {
    display: flex !important;
    flex-wrap: wrap !important;
    grid-column: 1 / -1 !important;
    grid-row: 4 !important;
    align-items: center !important;
    justify-content: space-between !important;
    gap: 4px 12px !important;
    text-align: left !important;
    align-self: end !important;
    margin-top: 4px !important;
  }
  .ixir-ds-billed {
    order: 3 !important;
    width: 100% !important;
    margin: 0 !important;
  }
  .ixir-ds-buy {
    margin-top: 0 !important;
    padding: 0 20px !important;
  }

  /* SLIDER NAV BUTTONS & DOTS (Oklar biraz yukarıda) */
  .ixir-ds-slider-nav {
    display: flex !important;
    align-items: center !important;
    justify-content: center !important;
    gap: 12px !important;
    margin-top: 8px !important;
    padding: 2px 0 6px !important;
  }
  .ixir-ds-slider-btn {
    display: inline-flex !important;
    align-items: center !important;
    justify-content: center !important;
    width: 40px !important;
    height: 40px !important;
    padding: 0 !important;
    border: 1px solid #e0e4eb !important;
    border-radius: 50% !important;
    background: #ffffff !important;
    color: #0b2545 !important;
    font-size: 15px !important;
    box-shadow: 0 3px 10px rgba(11, 37, 69, 0.08) !important;
    cursor: pointer !important;
    transition: all 0.2s ease !important;
    flex-shrink: 0 !important;
  }
  .ixir-ds-slider-btn:not(:disabled):hover,
  .ixir-ds-slider-btn:not(:disabled):active {
    background: #0b2545 !important;
    color: #fbd746 !important;
    border-color: #0b2545 !important;
    transform: scale(1.08) !important;
    box-shadow: 0 6px 16px rgba(11, 37, 69, 0.16) !important;
  }
  .ixir-ds-slider-btn:disabled {
    opacity: 0.3 !important;
    cursor: not-allowed !important;
    box-shadow: none !important;
    transform: none !important;
  }
  .ixir-ds-slider-dots {
    display: flex !important;
    align-items: center !important;
    justify-content: center !important;
    gap: 7px !important;
    flex-wrap: wrap !important;
    max-width: calc(100% - 110px) !important;
  }
  .ixir-ds-slider-dot {
    position: relative !important;
    width: 8px !important;
    height: 8px !important;
    padding: 0 !important;
    border: 0 !important;
    border-radius: 999px !important;
    background: #cfd4dc !important;
    cursor: pointer !important;
    transition: width 0.25s cubic-bezier(0.4, 0, 0.2, 1), background 0.25s ease !important;
  }
  .ixir-ds-slider-dot::before {
    content: "" !important;
    position: absolute !important;
    inset: -10px -5px !important;
  }
  .ixir-ds-slider-dot:hover {
    background: #9ca3af !important;
  }
  .ixir-ds-slider-dot.is-active {
    width: 26px !important;
    background: #0b2545 !important;
  }
}

@media (min-width: 680px) and (max-width: 992px) {
  .ixir-ds-row {
    flex: 0 0 calc(50% - 8px) !important;
    width: calc(50% - 8px) !important;
    min-width: calc(50% - 8px) !important;
    max-width: calc(50% - 8px) !important;
  }
}

/* Sunucu Görseli Lightbox (Görsele tıklayınca ekranda büyütme) */
.ixir-ds-rack {
  cursor: zoom-in !important;
  transition: transform 0.2s ease, filter 0.2s ease !important;
}
.ixir-ds-rack:hover {
  transform: scale(1.08) !important;
  filter: brightness(1.05) !important;
}

.ixir-ds-lightbox {
  position: fixed !important;
  inset: 0 !important;
  z-index: 999999 !important;
  display: flex !important;
  align-items: center !important;
  justify-content: center !important;
  padding: 16px !important;
  box-sizing: border-box !important;
  opacity: 0 !important;
  visibility: hidden !important;
  pointer-events: none !important;
  transition: opacity 0.25s ease, visibility 0.25s ease !important;
}
.ixir-ds-lightbox.is-open {
  opacity: 1 !important;
  visibility: visible !important;
  pointer-events: auto !important;
}
.ixir-ds-lightbox-backdrop {
  position: absolute !important;
  inset: 0 !important;
  background: rgba(11, 37, 69, 0.72) !important;
  backdrop-filter: blur(8px) !important;
  -webkit-backdrop-filter: blur(8px) !important;
}
.ixir-ds-lightbox-dialog {
  position: relative !important;
  z-index: 2 !important;
  background: #ffffff !important;
  border-radius: 20px !important;
  padding: 24px 24px 20px !important;
  max-width: 580px !important;
  width: 100% !important;
  box-sizing: border-box !important;
  box-shadow: 0 25px 60px -10px rgba(0, 0, 0, 0.35) !important;
  transform: scale(0.9) !important;
  transition: transform 0.25s cubic-bezier(0.16, 1, 0.3, 1) !important;
  display: flex !important;
  flex-direction: column !important;
  align-items: center !important;
  text-align: center !important;
}
.ixir-ds-lightbox.is-open .ixir-ds-lightbox-dialog {
  transform: scale(1) !important;
}
.ixir-ds-lightbox-close {
  position: absolute !important;
  top: 14px !important;
  right: 14px !important;
  width: 36px !important;
  height: 36px !important;
  border-radius: 50% !important;
  border: none !important;
  background: #f1f4f9 !important;
  color: #4b5563 !important;
  font-size: 24px !important;
  line-height: 1 !important;
  cursor: pointer !important;
  display: inline-flex !important;
  align-items: center !important;
  justify-content: center !important;
  transition: all 0.2s ease !important;
}
.ixir-ds-lightbox-close:hover {
  background: #0b2545 !important;
  color: #ffffff !important;
  transform: rotate(90deg) !important;
}
.ixir-ds-lightbox-header {
  margin-bottom: 16px !important;
  display: flex !important;
  flex-direction: column !important;
  align-items: center !important;
  gap: 6px !important;
}
.ixir-ds-lightbox-header h3 {
  margin: 0 !important;
  font-size: 22px !important;
  font-weight: 800 !important;
  color: #0b2545 !important;
}
.ixir-ds-lightbox-subtitle {
  font-size: 13px !important;
  color: #6b7280 !important;
}
.ixir-ds-lightbox-body {
  width: 100% !important;
  background: linear-gradient(135deg, #f8fafd 0%, #edf2f9 100%) !important;
  border: 1px solid #e2e8f0 !important;
  border-radius: 14px !important;
  padding: 36px 20px !important;
  box-sizing: border-box !important;
  display: flex !important;
  align-items: center !important;
  justify-content: center !important;
  margin-bottom: 14px !important;
}
.ixir-ds-lightbox-img {
  max-width: 100% !important;
  width: auto !important;
  height: auto !important;
  max-height: 45vh !important;
  object-fit: contain !important;
  transform: scale(1.35) !important;
  filter: drop-shadow(0 14px 25px rgba(11, 37, 69, 0.2)) !important;
  transition: transform 0.2s ease !important;
}
.ixir-ds-lightbox-footer {
  font-size: 11.5px !important;
  color: #94a3b8 !important;
}
.ixir-ds-lightbox-footer kbd {
  display: inline-block !important;
  padding: 2px 6px !important;
  font-size: 10px !important;
  background: #f1f5f9 !important;
  border: 1px solid #cbd5e1 !important;
  border-radius: 4px !important;
  color: #475569 !important;
}
{/literal}
</style>

<section class="ixir-ds ixir-slide ixir-slide--right is-slide-on" id="ixir-wh-plans" aria-labelledby="ixir-ds-title">
 <div class="container">
  <header class="ixir-wh-plans-head ixir-ds-head">
   <h2 id="ixir-ds-title">Dedicated Server Kiralama</h2>
   <p>Türkiye'nin en geniş dedicated server seçenekleri, güvenilir, <b>yedekli ve çeşitli operatör bağlantıları</b> ile
    birlikte, 150'den fazla peering bağlantısıyla, <b>İstanbul</b>'un merkezinden 20 yıllık deneyimle kiralık sunucu
    ihtiyaçlarınıza en uygun çözümleri sunuyoruz.</p>
  </header>

  <ul class="ixir-ds-stats">
   <li><i class="fas fa-server" aria-hidden="true"></i><span><b>40+ Model</b> Stokta</span></li>
   <li><i class="far fa-history" aria-hidden="true"></i><span><b>20 Yıllık</b> Deneyim</span></li>
   <li><i class="fas fa-bolt" aria-hidden="true"></i><span><b>Hızlı</b> Kurulum</span></li>
   <li><i class="fas fa-shield-check" aria-hidden="true"></i><span><b>TIER III+</b> Veri Merkezi</span></li>
   <li><i class="fab fa-google" aria-hidden="true"></i><span>Google <b>4.9/5</b> Puan</span></li>
  </ul>

  <div class="ixir-ds-layout">
   <div class="ixir-ds-filters" id="ixir-ds-filters" role="group" aria-label="Filtreler">
    <button type="button" class="ixir-ds-filter-toggle" aria-expanded="false" aria-controls="ixir-ds-filters">
     <i class="far fa-sliders-h" aria-hidden="true"></i>Filtrele
    </button>
    <fieldset>
     <legend>Disk Türü</legend>
     <label class="ixir-ds-chip"><input type="checkbox" name="disk" value="ssd"><span>SSD</span></label>
     <label class="ixir-ds-chip"><input type="checkbox" name="disk" value="nvme"><span>NVMe</span></label>
     <label class="ixir-ds-chip"><input type="checkbox" name="disk" value="sas"><span>SAS</span></label>
    </fieldset>
    <fieldset>
     <legend>Marka</legend>
     <label class="ixir-ds-chip"><input type="checkbox" name="brand" value="dell"><span>Dell</span></label>
     <label class="ixir-ds-chip"><input type="checkbox" name="brand" value="intel"><span>Intel</span></label>
     <label class="ixir-ds-chip"><input type="checkbox" name="brand" value="hp"><span>HP</span></label>
    </fieldset>
    <fieldset>
     <legend>İşlemci Sayısı</legend>
     <label class="ixir-ds-chip"><input type="checkbox" name="cpu" value="1"><span>1</span></label>
     <label class="ixir-ds-chip"><input type="checkbox" name="cpu" value="2"><span>2</span></label>
    </fieldset>
    <fieldset>
     <legend>Minimum RAM</legend>
     <label class="ixir-ds-chip"><input type="radio" name="ram" value="0" checked><span>Tümü</span></label>
     <label class="ixir-ds-chip"><input type="radio" name="ram" value="64"><span>64 GB</span></label>
     <label class="ixir-ds-chip"><input type="radio" name="ram" value="128"><span>128 GB</span></label>
     <label class="ixir-ds-chip"><input type="radio" name="ram" value="256"><span>256 GB</span></label>
     <label class="ixir-ds-chip"><input type="radio" name="ram" value="512"><span>512 GB</span></label>
    </fieldset>
    <button type="button" class="ixir-ds-filters-reset" data-ds-reset>
     <i class="far fa-undo" aria-hidden="true"></i>Temizle
    </button>
    <div class="ixir-ds-cycle-group">
     <span class="ixir-ds-group-label" id="ixir-ds-cycle-label">Ödeme Dönemi</span>
     <div class="ixir-ds-cycle" role="radiogroup" aria-labelledby="ixir-ds-cycle-label">
      <button type="button" role="radio" aria-checked="true" data-ds-cycle="monthly">Aylık</button>
      <button type="button" role="radio" aria-checked="false" data-ds-cycle="annually">Yıllık</button>
     </div>
    </div>
   </div>
   <div class="ixir-ds-main">
    <div class="ixir-ds-toolbar">
     <p class="ixir-ds-count" aria-live="polite"><b data-ds-count>{$ixirDsServers|count}</b> sunucu listeleniyor</p>
     <div class="ixir-ds-slider-counter" aria-live="polite">
      <span class="ixir-ds-counter-badge"><b data-ds-curr-slide>1</b> / <span data-ds-total-slides>{$ixirDsServers|count}</span></span>
     </div>
    </div>

    <div class="ixir-ds-thead">
     <span>Model</span>
     <span>İşlemci</span>
     <button type="button" class="ixir-ds-sort" data-ds-sort="ram" aria-label="RAM'e göre sırala">
      RAM<i class="fas fa-sort" aria-hidden="true"></i>
     </button>
     <button type="button" class="ixir-ds-sort" data-ds-sort="disk" aria-label="Disk boyutuna göre sırala">
      Disk<i class="fas fa-sort" aria-hidden="true"></i>
     </button>
     <span>Port & Trafik</span>
     <button type="button" class="ixir-ds-sort" data-ds-sort="price" aria-label="Fiyata göre sırala">
      Fiyat<i class="fas fa-sort" aria-hidden="true"></i>
     </button>
    </div>

    <ul class="ixir-ds-list">
     {foreach $ixirDsServers as $server}
     <li class="ixir-ds-row
      {if $server.badge} ixir-ds-row--{$server.badge}{/if}"
      data-brand="{$server.brand}" data-disk="{$server.diskType}" data-cpu="{$server.cpuCount}"
      data-ram="{$server.ram}">
      {if $server.badge == 'popular'}
      <span class="ixir-ds-ribbon">En Popüler</span>
      {elseif $server.badge == 'new'}
      <span class="ixir-ds-ribbon">Yeni</span>
      {/if}
      <div class="ixir-ds-model">
       <span class="ixir-ds-brand ixir-ds-brand--{$server.brand}">{$server.brandLabel}</span>
       <h3>{$server.name}</h3>
       <img class="ixir-ds-rack" src="{$WEB_ROOT}/templates/{$template}/img/server/1u-server.webp" width="162"
        height="34" alt="" loading="lazy" decoding="async">
      </div>
      <div class="ixir-ds-cell ixir-ds-cpu" data-label="İşlemci">
       <b>{$server.cpuCount}x {$server.cpu}</b>
       <span>{$server.cores}</span>
      </div>
      <div class="ixir-ds-cell ixir-ds-ram" data-label="RAM">
       <b>{$server.ram} GB</b>
      </div>
      <div class="ixir-ds-cell ixir-ds-disk" data-label="Disk">
       <b>{$server.disk}</b>
       <span class="ixir-ds-tip" tabindex="0">
        <i class="far fa-info-circle" aria-hidden="true"></i>
        <span class="ixir-ds-tip-text" role="tooltip">{$server.diskTip}</span>
       </span>
      </div>
      <div class="ixir-ds-cell ixir-ds-port" data-label="Port & Trafik">
       <b>1 Gbit Port</b>
       <span>Limitsiz Trafik
        <span class="ixir-ds-tip" tabindex="0">
         <i class="far fa-info-circle" aria-hidden="true"></i>
         <span class="ixir-ds-tip-text" role="tooltip">1 Gbit Port üzerinden Limitledirilmemiş Trafik (Sürekli ve yoğun
          kullanımlarda port veya trafik limiti uygulanabilir.)</span>
        </span>
       </span>
      </div>
      <div class="ixir-ds-buy-col">
       <p class="ixir-ds-price">
        <b data-ds-price data-monthly="{$server.monthly}"
         data-annually="{$server.annually}">{$server.monthly|number_format:0:",":"."} ₺</b><small>/ay</small>
       </p>
       <a class="ixir-ds-buy" href="{$WEB_ROOT}/store">Yapılandır<i class="far fa-arrow-right"
         aria-hidden="true"></i></a>
      </div>
      {if isset($ixirDsFeatures[$server.name])}
      {assign var="serverFeatures" value=$ixirDsFeatures[$server.name]}
      {else}
      {assign var="serverFeatures" value=$ixirDsFeatures.default}
      {/if}
      <ul class="ixir-ds-details" id="ixir-ds-details-{$server@index}" hidden>
       {foreach $serverFeatures as $feature}
       <li><i class="far fa-check-circle" aria-hidden="true"></i>{$feature}</li>
       {/foreach}
      </ul>
     </li>
     {/foreach}
    </ul>
    <div class="ixir-ds-slider-nav" id="ixir-ds-slider-nav" aria-label="Sunucu slayt gezintisi">
     <button type="button" class="ixir-ds-slider-btn ixir-ds-slider-prev" data-ds-slider-prev aria-label="Önceki sunucu">
      <i class="fas fa-chevron-left" aria-hidden="true"></i>
     </button>
     <div class="ixir-ds-slider-dots" role="tablist" aria-label="Sunucu sayfaları" data-ds-slider-dots></div>
     <button type="button" class="ixir-ds-slider-btn ixir-ds-slider-next" data-ds-slider-next aria-label="Sonraki sunucu">
      <i class="fas fa-chevron-right" aria-hidden="true"></i>
     </button>
    </div>
    <div class="ixir-ds-all">
     <button type="button" class="ixir-ds-more" aria-expanded="false" aria-controls="ixir-ds-details">
      <span>Tüm Sunucularda Ortak Özellikler</span>
      <i class="far fa-chevron-down" aria-hidden="true"></i>
     </button>
     <div class="ixir-ds-details-wrap" id="ixir-ds-details" hidden>
      <p class="ixir-ds-details-title">
       <i class="fas fa-shield-check" aria-hidden="true"></i>
       Her sunucuda standart olarak dahildir.
      </p>
      <ul class="ixir-ds-details">
       {foreach $ixirDsFeatures as $feature}
       <li><i class="fas fa-check" aria-hidden="true"></i><span>{$feature}</span></li>
       {/foreach}
      </ul>
     </div>
    </div>
    <div class="ixir-ds-empty" data-ds-empty hidden>
     <i class="far fa-search" aria-hidden="true"></i>
     <p>Seçtiğiniz kriterlere uygun sunucu bulunamadı.</p>
     <button type="button" data-ds-reset>Filtreleri Temizle</button>
    </div>
   </div>
  </div>
 </div>

 <!-- Sunucu Görseli Büyütme Modalı (Lightbox) -->
 <div id="ixir-ds-lightbox" class="ixir-ds-lightbox" aria-hidden="true" role="dialog" aria-modal="true" aria-label="Sunucu Görseli">
  <div class="ixir-ds-lightbox-backdrop"></div>
  <div class="ixir-ds-lightbox-dialog">
   <button type="button" class="ixir-ds-lightbox-close" aria-label="Kapat">&times;</button>
   <div class="ixir-ds-lightbox-header">
    <span id="ixir-ds-lightbox-brand" class="ixir-ds-brand">DELL</span>
    <h3 id="ixir-ds-lightbox-title">R210</h3>
    <span class="ixir-ds-lightbox-subtitle">Dedicated Server Donanım Görünümü</span>
   </div>
   <div class="ixir-ds-lightbox-body">
    <img id="ixir-ds-lightbox-img" class="ixir-ds-lightbox-img" src="" alt="Sunucu Donanımı">
   </div>
   <div class="ixir-ds-lightbox-footer">
    <span>Kapatmak için dışarıya tıklayabilir veya <kbd>ESC</kbd> tuşuna basabilirsiniz.</span>
   </div>
  </div>
 </div>
</section>
{literal}
<script>
 (function() {
  var root = document.getElementById('ixir-wh-plans');
  if (!root || !root.classList.contains('ixir-ds')) return;

  var rows = root.querySelectorAll('.ixir-ds-row');
  var filters = root.querySelector('.ixir-ds-filters');
  var countEl = root.querySelector('[data-ds-count]');
  var emptyEl = root.querySelector('[data-ds-empty]');
  var cycleButtons = root.querySelectorAll('[data-ds-cycle]');
  var filterToggle = root.querySelector('.ixir-ds-filter-toggle');

  var list = root.querySelector('.ixir-ds-list');
  var sliderNav = root.querySelector('#ixir-ds-slider-nav');
  var prevBtn = root.querySelector('[data-ds-slider-prev]');
  var nextBtn = root.querySelector('[data-ds-slider-next]');
  var dotsWrap = root.querySelector('[data-ds-slider-dots]');
  var currSlideEl = root.querySelector('[data-ds-curr-slide]');
  var totalSlidesEl = root.querySelector('[data-ds-total-slides]');

  var currentSlideIndex = 0;

  function isSliderActive() {
   return window.innerWidth < 992;
  }

  function getPerView() {
   if (window.innerWidth >= 680) return 2;
   return 1;
  }

  function getVisibleRows() {
   var visible = [];
   for (var i = 0; i < rows.length; i++) {
    if (!rows[i].hidden && rows[i].style.display !== 'none') {
     visible.push(rows[i]);
    }
   }
   return visible;
  }

  function getMaxIndex(visibleCount, perView) {
   if (visibleCount <= 0) return 0;
   return Math.max(0, visibleCount - perView);
  }

  function updateSliderUI(visible, maxIndex) {
   if (!visible) visible = getVisibleRows();
   if (typeof maxIndex === 'undefined') {
    maxIndex = getMaxIndex(visible.length, getPerView());
   }

   if (currentSlideIndex > maxIndex) currentSlideIndex = maxIndex;
   if (currentSlideIndex < 0) currentSlideIndex = 0;

   if (currSlideEl) {
    currSlideEl.textContent = visible.length > 0 ? (currentSlideIndex + 1) : 0;
   }
   if (totalSlidesEl) {
    totalSlidesEl.textContent = visible.length;
   }

   if (dotsWrap) {
    var dots = dotsWrap.querySelectorAll('.ixir-ds-slider-dot');
    for (var d = 0; d < dots.length; d++) {
     var active = d === currentSlideIndex;
     dots[d].classList.toggle('is-active', active);
     dots[d].setAttribute('aria-selected', active ? 'true' : 'false');
    }
   }

   if (prevBtn) prevBtn.disabled = currentSlideIndex <= 0;
   if (nextBtn) nextBtn.disabled = currentSlideIndex >= maxIndex;
  }

  function rebuildSlider() {
   if (!sliderNav || !dotsWrap) return;
   var visible = getVisibleRows();
   var perView = getPerView();
   var maxIndex = getMaxIndex(visible.length, perView);
   var pageCount = maxIndex + 1;

   dotsWrap.innerHTML = '';

   if (totalSlidesEl) {
    totalSlidesEl.textContent = visible.length;
   }

   if (!isSliderActive() || visible.length <= perView) {
    sliderNav.style.display = 'none';
    if (currSlideEl) currSlideEl.textContent = visible.length > 0 ? '1' : '0';
    return;
   }

   sliderNav.style.display = '';

   for (var i = 0; i < pageCount; i++) {
    (function(idx) {
     var dot = document.createElement('button');
     dot.type = 'button';
     dot.className = 'ixir-ds-slider-dot' + (idx === currentSlideIndex ? ' is-active' : '');
     dot.setAttribute('role', 'tab');
     dot.setAttribute('aria-label', (idx + 1) + '. sunucu');
     dot.addEventListener('click', function() {
      goToSlide(idx);
     });
     dotsWrap.appendChild(dot);
    })(i);
   }

   updateSliderUI(visible, maxIndex);
  }

  function goToSlide(targetIdx) {
   var visible = getVisibleRows();
   var perView = getPerView();
   var maxIndex = getMaxIndex(visible.length, perView);

   targetIdx = Math.max(0, Math.min(maxIndex, targetIdx));
   currentSlideIndex = targetIdx;

   if (visible[targetIdx]) {
    var targetEl = visible[targetIdx];
    var leftOffset = targetEl.offsetLeft - list.offsetLeft;
    list.scrollTo({ left: leftOffset, behavior: 'smooth' });
   }

   updateSliderUI(visible, maxIndex);
  }

  if (prevBtn) {
   prevBtn.addEventListener('click', function() {
    goToSlide(currentSlideIndex - 1);
   });
  }

  if (nextBtn) {
   nextBtn.addEventListener('click', function() {
    goToSlide(currentSlideIndex + 1);
   });
  }

  // Scroll detection to synchronize active dot & counter
  var scrollDebounce = null;
  list.addEventListener('scroll', function() {
   if (!isSliderActive()) return;
   if (scrollDebounce) return;
   scrollDebounce = window.requestAnimationFrame(function() {
    scrollDebounce = null;
    var visible = getVisibleRows();
    if (!visible.length) return;
    var perView = getPerView();
    var maxIndex = getMaxIndex(visible.length, perView);

    var currentLeft = list.scrollLeft;
    var closestIdx = 0;
    var minDiff = Infinity;

    for (var i = 0; i <= maxIndex; i++) {
     var diff = Math.abs((visible[i].offsetLeft - list.offsetLeft) - currentLeft);
     if (diff < minDiff) {
      minDiff = diff;
      closestIdx = i;
     }
    }

    if (closestIdx !== currentSlideIndex) {
     currentSlideIndex = closestIdx;
     updateSliderUI(visible, maxIndex);
    }
   });
  }, { passive: true });

  // Touch and pointer swipe support
  var isPointerDown = false;
  var startX = 0;
  var startScrollLeft = 0;
  var hasMoved = false;

  list.addEventListener('pointerdown', function(e) {
   if (!isSliderActive()) return;
   if (e.target.closest('button, a, input, label, select, .ixir-ds-rack')) return;
   isPointerDown = true;
   hasMoved = false;
   startX = e.clientX;
   startScrollLeft = list.scrollLeft;
   list.classList.add('is-dragging');
  });

  window.addEventListener('pointermove', function(e) {
   if (!isPointerDown) return;
   var deltaX = e.clientX - startX;
   if (Math.abs(deltaX) > 5) {
    hasMoved = true;
   }
   list.scrollLeft = startScrollLeft - deltaX;
  });

  function endPointerDrag(e) {
   if (!isPointerDown) return;
   isPointerDown = false;
   list.classList.remove('is-dragging');
   if (hasMoved) {
    var deltaX = e.clientX - startX;
    if (deltaX < -40) {
     goToSlide(currentSlideIndex + 1);
    } else if (deltaX > 40) {
     goToSlide(currentSlideIndex - 1);
    } else {
     goToSlide(currentSlideIndex);
    }
   }
  }

  window.addEventListener('pointerup', endPointerDrag);
  window.addEventListener('pointercancel', endPointerDrag);

  function money(n) {
   return Number(n).toLocaleString('tr-TR') + ' ₺';
  }

  function checked(name) {
   var out = [];
   var inputs = filters.querySelectorAll('input[name="' + name + '"]:checked');
   for (var i = 0; i < inputs.length; i++) out.push(inputs[i].value);
   return out;
  }

  function applyFilters() {
   var disks = checked('disk');
   var brands = checked('brand');
   var cpus = checked('cpu');
   var minRam = parseInt(checked('ram')[0] || '0', 10);
   var visible = 0;
   for (var i = 0; i < rows.length; i++) {
    var row = rows[i];
    var show = (!disks.length || disks.indexOf(row.getAttribute('data-disk')) !== -1) &&
     (!brands.length || brands.indexOf(row.getAttribute('data-brand')) !== -1) &&
     (!cpus.length || cpus.indexOf(row.getAttribute('data-cpu')) !== -1) &&
     parseInt(row.getAttribute('data-ram'), 10) >= minRam;
    row.hidden = !show;
    if (show) visible++;
   }
   countEl.textContent = visible;
   emptyEl.hidden = visible !== 0;

   currentSlideIndex = 0;
   list.scrollLeft = 0;
   rebuildSlider();
  }

  function setCycle(cycle) {
   for (var i = 0; i < cycleButtons.length; i++) {
    cycleButtons[i].setAttribute('aria-checked', cycleButtons[i].getAttribute('data-ds-cycle') === cycle ? 'true' :
     'false');
   }
   var prices = root.querySelectorAll('[data-ds-price]');
   for (var j = 0; j < prices.length; j++) {
    prices[j].textContent = money(prices[j].getAttribute('data-' + cycle));
   }
  }

  filters.addEventListener('change', applyFilters);

  var resets = root.querySelectorAll('[data-ds-reset]');
  for (var r = 0; r < resets.length; r++) {
   resets[r].addEventListener('click', function() {
    var inputs = filters.querySelectorAll('input');
    for (var i = 0; i < inputs.length; i++) inputs[i].checked = inputs[i].type === 'radio' && inputs[i].value ===
     '0';
    applyFilters();
    resetSort();
   });
  }

  for (var c = 0; c < cycleButtons.length; c++) {
   cycleButtons[c].addEventListener('click', function() {
    setCycle(this.getAttribute('data-ds-cycle'));
   });
  }

  var sortButtons = root.querySelectorAll('[data-ds-sort]');
  var sortLabels = {
   ram: ["RAM'e göre sırala", 'RAM: küçükten büyüğe sıralı', 'RAM: büyükten küçüğe sıralı'],
   disk: ['Disk boyutuna göre sırala', 'Disk: küçükten büyüğe sıralı', 'Disk: büyükten küçüğe sıralı'],
   price: ['Fiyata göre sırala', 'Fiyat: ucuzdan pahalıya sıralı', 'Fiyat: pahalıdan ucuza sıralı']
  };
  var rowData = [];

  function diskGb(text) {
   var m = /(\d+)\s*x\s*([\d.,]+)\s*(TB|GB)/i.exec(text);
   if (!m) return 0;
   var size = parseFloat(m[2].replace(',', '.'));
   return parseInt(m[1], 10) * size * (m[3].toUpperCase() === 'TB' ? 1000 : 1);
  }

  for (var d = 0; d < rows.length; d++) {
   var diskEl = rows[d].querySelector('.ixir-ds-disk b');
   var priceEl = rows[d].querySelector('[data-ds-price]');
   rowData.push({
    el: rows[d],
    index: d,
    ram: parseInt(rows[d].getAttribute('data-ram'), 10),
    disk: diskGb(diskEl ? diskEl.textContent : ''),
    price: priceEl ? parseFloat(priceEl.getAttribute('data-monthly')) : 0
   });
  }

  function sortBy(key, dir) {
   rowData.slice().sort(function(a, b) {
    return (a[key] - b[key]) * dir || a.index - b.index;
   }).forEach(function(item) {
    list.appendChild(item.el);
   });
   for (var i = 0; i < sortButtons.length; i++) {
    var btn = sortButtons[i];
    var k = btn.getAttribute('data-ds-sort');
    var active = k === key;
    var icon = btn.querySelector('i');
    btn.classList.toggle('is-active', active);
    btn.setAttribute('data-dir', active ? (dir > 0 ? 'asc' : 'desc') : '');
    icon.className = 'fas ' + (active ? (dir > 0 ? 'fa-sort-up' : 'fa-sort-down') : 'fa-sort');
    btn.setAttribute('aria-label', sortLabels[k][active ? (dir > 0 ? 1 : 2) : 0]);
   }
   currentSlideIndex = 0;
   list.scrollLeft = 0;
   rebuildSlider();
  }

  function resetSort() {
   rowData.slice().sort(function(a, b) {
    return a.index - b.index;
   }).forEach(function(item) {
    list.appendChild(item.el);
   });
   for (var i = 0; i < sortButtons.length; i++) {
    var btn = sortButtons[i];
    var k = btn.getAttribute('data-ds-sort');
    var icon = btn.querySelector('i');
    btn.classList.remove('is-active');
    btn.setAttribute('data-dir', '');
    icon.className = 'fas fa-sort';
    btn.setAttribute('aria-label', sortLabels[k][0]);
   }
   currentSlideIndex = 0;
   list.scrollLeft = 0;
   rebuildSlider();
  }

  for (var s = 0; s < sortButtons.length; s++) {
   sortButtons[s].addEventListener('click', function() {
    sortBy(this.getAttribute('data-ds-sort'), this.getAttribute('data-dir') === 'asc' ? -1 : 1);
   });
  }

  root.addEventListener('click', function(e) {
   var btn = e.target.closest('.ixir-ds-more');
   if (!btn) return;
   var panel = document.getElementById(btn.getAttribute('aria-controls'));
   var open = btn.getAttribute('aria-expanded') !== 'true';
   btn.setAttribute('aria-expanded', open ? 'true' : 'false');
   panel.hidden = !open;
  });

  filterToggle.addEventListener('click', function() {
   var open = filterToggle.getAttribute('aria-expanded') !== 'true';
   filterToggle.setAttribute('aria-expanded', open ? 'true' : 'false');
   filters.classList.toggle('is-open', open);
  });
  // Sunucu Görseli Büyütme (Lightbox)
  var lightbox = document.getElementById('ixir-ds-lightbox');
  var lightboxImg = document.getElementById('ixir-ds-lightbox-img');
  var lightboxTitle = document.getElementById('ixir-ds-lightbox-title');
  var lightboxBrand = document.getElementById('ixir-ds-lightbox-brand');
  var lightboxClose = lightbox ? lightbox.querySelector('.ixir-ds-lightbox-close') : null;
  var lightboxBackdrop = lightbox ? lightbox.querySelector('.ixir-ds-lightbox-backdrop') : null;

  function openLightbox(src, title, brand, brandLabel) {
   if (!lightbox || !lightboxImg) return;
   lightboxImg.src = src;
   lightboxImg.alt = title || 'Sunucu Görseli';
   if (lightboxTitle) lightboxTitle.textContent = title || '';
   if (lightboxBrand) {
    lightboxBrand.textContent = brandLabel || brand || '';
    lightboxBrand.className = 'ixir-ds-brand' + (brand ? ' ixir-ds-brand--' + brand.toLowerCase() : '');
   }
   lightbox.classList.add('is-open');
   lightbox.setAttribute('aria-hidden', 'false');
   document.body.style.overflow = 'hidden';
  }

  function closeLightbox() {
   if (!lightbox) return;
   lightbox.classList.remove('is-open');
   lightbox.setAttribute('aria-hidden', 'true');
   document.body.style.overflow = '';
  }

  if (lightboxClose) lightboxClose.addEventListener('click', closeLightbox);
  if (lightboxBackdrop) lightboxBackdrop.addEventListener('click', closeLightbox);

  window.addEventListener('keydown', function(e) {
   if (e.key === 'Escape' && lightbox && lightbox.classList.contains('is-open')) {
    closeLightbox();
   }
  });

  root.addEventListener('click', function(e) {
   var rackImg = e.target.closest('.ixir-ds-rack');
   if (!rackImg) return;
   e.preventDefault();
   e.stopPropagation();
   var row = rackImg.closest('.ixir-ds-row');
   var title = row ? (row.querySelector('h3') ? row.querySelector('h3').textContent.trim() : '') : '';
   var brand = row ? (row.getAttribute('data-brand') || '') : '';
   var brandBadge = row ? row.querySelector('.ixir-ds-brand') : null;
   var brandLabel = brandBadge ? brandBadge.textContent.trim() : brand;
   openLightbox(rackImg.src, title, brand, brandLabel);
  });

  // Handle window resize
  var resizeTimer = null;
  window.addEventListener('resize', function() {
   window.clearTimeout(resizeTimer);
   resizeTimer = window.setTimeout(function() {
    rebuildSlider();
   }, 100);
  });

  // Initial slider build
  rebuildSlider();
  })();
</script>
{/literal}