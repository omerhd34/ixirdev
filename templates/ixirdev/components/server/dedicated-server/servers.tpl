{assign var="ixirDsServers" value=[
  ["name" => "R210", "brand" => "dell", "brandLabel" => "DELL", "cpuCount" => 1, "cpu" => "Intel Xeon X3440", "cores" => "4 × 2.50 GHz (HT ile 8 Core)", "ram" => 16, "disk" => "1 x 240 GB", "diskType" => "ssd", "diskTip" => "Non-raid Tek Disk", "monthly" => 3458, "annually" => 3340, "badge" => ""],
  ["name" => "R210-II", "brand" => "dell", "brandLabel" => "DELL", "cpuCount" => 1, "cpu" => "Intel Xeon E3-1240 v2", "cores" => "4 × 3.40 GHz (HT ile 8 Core)", "ram" => 16, "disk" => "2 x 250 GB", "diskType" => "ssd", "diskTip" => "2 x 250 GB SSD Raid 1",  "monthly" => 3874, "annually" => 3731, "badge" => ""],
  ["name" => "R330", "brand" => "dell", "brandLabel" => "DELL", "cpuCount" => 1, "cpu" => "Intel Xeon E3-1270 v5", "cores" => "4 × 3.60 GHz (HT ile 8 Core)", "ram" => 16, "disk" => "2 x 250 GB", "diskType" => "ssd", "diskTip" => "2 x 250 GB SSD Raid 1",  "monthly" => 4487, "annually" => 4317, "badge" => ""],
  ["name" => "2670v2", "brand" => "intel", "brandLabel" => "intel", "cpuCount" => 2, "cpu" => "Intel Xeon E5-2670 v2", "cores" => "20 × 2.50 GHz (HT ile 40 Core)", "ram" => 128, "disk" => "2 x 1 TB", "diskType" => "ssd", "diskTip" => "2 x 1 TB SSD Raid 1",  "monthly" => 9912, "annually" => 9314, "badge" => ""],
  ["name" => "2620v2", "brand" => "intel", "brandLabel" => "intel", "cpuCount" => 2, "cpu" => "Intel Xeon E5-2620 v2", "cores" => "12 × 2.10 GHz (HT ile 24 Core)", "ram" => 64, "disk" => "12 x 2 TB", "diskType" => "sas", "diskTip" => "12 x 2 TB SAS Disk Raid 5 20 TB / Raid 10 10.9 TB Kullanılabilir Alan",  "monthly" => 9990, "annually" => 9157, "badge" => ""],
  ["name" => "2670v2-N", "brand" => "intel", "brandLabel" => "intel", "cpuCount" => 2, "cpu" => "Intel Xeon E5-2670 v2", "cores" => "20 × 2.50 GHz (HT ile 40 Core)", "ram" => 128, "disk" => "1 x 2 TB", "diskType" => "nvme", "diskTip" => "1 x 2 TB Nvme SSD'ye göre 6 kat daha hızlı okuma/yazma, daha fazla IOPS",  "monthly" => 10408, "annually" => 9780, "badge" => ""],
  ["name" => "DL360 G9 SSD", "brand" => "hp", "brandLabel" => "HP", "cpuCount" => 2, "cpu" => "Intel Xeon E5-2650 v3", "cores" => "20 × 2.30 GHz (HT ile 40 Core)", "ram" => 128, "disk" => "2 x 1 TB", "diskType" => "ssd", "diskTip" => "2 x 1 TB SSD Raid 1", "monthly" => 10690, "annually" => 9977, "badge" => ""],
  ["name" => "2697-N", "brand" => "intel", "brandLabel" => "intel", "cpuCount" => 2, "cpu" => "Intel Xeon E5-2697 v2", "cores" => "24 × 2.70 GHz (HT ile 48 Core)", "ram" => 256, "disk" => "1 x 1.6 TB", "diskType" => "nvme", "diskTip" => "1 x 1.6 TB Enterprise Nvme SSD'ye göre 6 kat daha hızlı okuma/yazma, daha fazla IOPS",  "monthly" => 11900, "annually" => 11180, "badge" => "popular"],
  ["name" => "6138-N", "brand" => "intel", "brandLabel" => "intel", "cpuCount" => 2, "cpu" => "Intel Xeon Gold 6138", "cores" => "40 × 2.00 GHz (HT ile 80 Core)", "ram" => 256, "disk" => "1 x 3.2 TB", "diskType" => "nvme", "diskTip" => "1 x 3.2 TB Enterprise Nvme ile SSD'ye göre 6 kat daha hızlı okuma/yazma, daha fazla IOPS",  "monthly" => 19204, "annually" => 17931, "badge" => "new"],
  ["name" => "8160-N", "brand" => "intel", "brandLabel" => "intel", "cpuCount" => 2, "cpu" => "Intel Xeon Platinum 8160", "cores" => "48 × 2.10 GHz (HT ile 96 Core)", "ram" => 256, "disk" => "1x 3.2 TB", "diskType" => "nvme", "diskTip" => "1 x 3.2 TB Enterprise Nvme ile SSD'ye göre 6 kat daha hızlı okuma/yazma, daha fazla IOPS",  "monthly" => 22080, "annually" => 20620, "badge" => "new"],
  ["name" => "8160-N2", "brand" => "intel", "brandLabel" => "intel", "cpuCount" => 2, "cpu" => "Intel Xeon Platinum 8160", "cores" => "48 × 2.10 GHz (HT ile 96 Core)", "ram" => 512, "disk" => "1x 3.2 TB", "diskType" => "nvme", "diskTip" => "1x 3.2 TB Enterprise Nvme ile SSD'ye göre 6 kat daha hızlı okuma/yazma, daha fazla IOPS", "monthly" => 26500, "annually" => 24292, "badge" => "new"]
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
.ixir-ds {
  padding: 56px 0 64px;
  background: #f6f8fb;
}

.ixir-ds-head {
  max-width: 840px;
  margin-bottom: 24px;
}
.ixir-ds-head h2 {
  font-family: "Space Grotesk", "Roboto", sans-serif;
  font-size: 32px;
  font-weight: 800;
  color: #0b2545;
  letter-spacing: -0.02em;
  margin-bottom: 10px;
}
.ixir-ds-head p {
  color: #4b5563;
  font-size: 15px;
  line-height: 1.65;
}
.ixir-ds-head p b {
  color: #0b2545;
}

.ixir-ds-stats {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 10px 48px;
  margin: 0 0 28px;
  padding: 14px 24px;
  border-radius: 14px;
  background: radial-gradient(ellipse 70% 150% at 50% 0%, rgba(59, 120, 231, 0.28), transparent 70%), #0b2545;
  color: rgba(255, 255, 255, 0.88);
  font-size: 13.5px;
  list-style: none;
  box-shadow: 0 6px 20px rgba(11, 37, 69, 0.12);
}
.ixir-ds-stats li {
  display: flex;
  align-items: center;
  gap: 8px;
}
.ixir-ds-stats i, .ixir-ds-stats b {
  color: #fbd746;
}
.ixir-ds-stats b {
  font-weight: 700;
}

.ixir-ds-layout {
  display: flex;
  flex-direction: column;
  gap: 18px;
}

.ixir-ds-filters {
  display: flex !important;
  flex-direction: column !important;
  gap: 0 !important;
  padding: 13px 18px !important;
  border: 1px solid #e2e8f0 !important;
  border-radius: 18px !important;
  background: #ffffff !important;
  box-shadow: 0 4px 20px -2px rgba(11, 37, 69, 0.05), 0 1px 3px rgba(11, 37, 69, 0.02) !important;
  box-sizing: border-box !important;
}

.ixir-ds-filter-mobile-bar {
  display: none;
  width: 100%;
  align-items: center;
  justify-content: space-between;
  gap: 10px;
}

.ixir-ds-filters-content {
  display: flex !important;
  align-items: center !important;
  flex-wrap: nowrap !important;
  row-gap: 8px !important;
  column-gap: 14px !important;
  width: 100% !important;
}

@media (min-width: 1026px) {
  .ixir-ds-filters-content {
    flex-wrap: nowrap !important;
  }
}

@media (min-width: 1026px) and (max-width: 1400px) {
  .ixir-ds-filters {
    padding: 8px clamp(8px, 0.9vw, 16px) !important;
  }
  .ixir-ds-filters-content {
    column-gap: clamp(6px, 0.7vw, 12px) !important;
  }
  .ixir-ds-filter-group {
    gap: clamp(3px, 0.4vw, 7px) !important;
  }
  .ixir-ds-filter-label {
    gap: 3px !important;
    font-size: clamp(9.5px, 0.72vw, 11px) !important;
  }
  .ixir-ds-chips {
    gap: clamp(3px, 0.35vw, 6px) !important;
  }
  .ixir-ds-chip span {
    padding: 3px clamp(5px, 0.5vw, 9px) !important;
    min-height: 24px !important;
    font-size: clamp(10px, 0.72vw, 11.5px) !important;
  }
  .ixir-ds-chip--brand span {
    padding: 2px clamp(5px, 0.5vw, 9px) !important;
    min-height: 24px !important;
  }
  .ixir-ds-brand-chip-img {
    height: clamp(14px, 1vw, 17px) !important;
    max-width: 26px !important;
  }
  .ixir-ds-filter-divider {
    margin: 0 !important;
  }
  .ixir-ds-dropdown-trigger {
    height: 25px !important;
    min-height: 25px !important;
    padding: 0 clamp(6px, 0.55vw, 10px) !important;
    font-size: clamp(10px, 0.72vw, 11.5px) !important;
    gap: 4px !important;
  }
  .ixir-ds-filters-reset {
    min-height: 25px !important;
    padding: 3px clamp(6px, 0.55vw, 10px) !important;
    font-size: clamp(10px, 0.72vw, 11.5px) !important;
    gap: 3px !important;
    margin-left: 0 !important;
  }
  .ixir-ds-cycle-group {
    gap: clamp(4px, 0.45vw, 8px) !important;
    margin-left: auto !important;
  }
  .ixir-ds-cycle button {
    height: 24px !important;
    padding: 0 clamp(6px, 0.55vw, 9px) !important;
    font-size: clamp(10px, 0.72vw, 11px) !important;
    gap: 3px !important;
  }
}

@media (min-width: 1026px) and (max-width: 1120px) {
  .ixir-ds-filters {
    padding: 8px 10px !important;
  }
  .ixir-ds-filters-content {
    column-gap: 5px !important;
  }
  .ixir-ds-filter-group {
    gap: 3px !important;
  }
  .ixir-ds-filter-label {
    gap: 3px !important;
    font-size: 10px !important;
    letter-spacing: 0.02em !important;
  }
  .ixir-ds-chips {
    gap: 3px !important;
  }
  .ixir-ds-chip span {
    padding: 3px 5px !important;
    min-height: 24px !important;
    font-size: 10px !important;
  }
  .ixir-ds-chip--brand span {
    padding: 2px 5px !important;
    min-height: 24px !important;
  }
  .ixir-ds-brand-chip-img {
    height: 14px !important;
    max-width: 22px !important;
  }
  .ixir-ds-dropdown-trigger {
    height: 24px !important;
    min-height: 24px !important;
    padding: 0 6px !important;
    font-size: 10px !important;
    gap: 3px !important;
  }
  .ixir-ds-filters-reset {
    min-height: 24px !important;
    padding: 3px 6px !important;
    font-size: 10px !important;
    gap: 3px !important;
  }
  .ixir-ds-cycle-group {
    gap: 4px !important;
  }
  .ixir-ds-cycle button {
    height: 24px !important;
    padding: 0 6px !important;
    font-size: 10px !important;
  }
}

.ixir-ds-filter-group,
.ixir-ds-filters fieldset {
  display: inline-flex !important;
  align-items: center !important;
  gap: 10px !important;
  margin: 0 !important;
  padding: 0 !important;
  border: 0 !important;
  border-bottom: none !important;
  min-width: 0 !important;
  flex-shrink: 0 !important;
}

.ixir-ds-filter-label,
.ixir-ds-filters legend {
  display: inline-flex !important;
  align-items: center !important;
  gap: 6px !important;
  margin: 0 !important;
  padding: 0 !important;
  border: 0 !important;
  border-bottom: none !important;
  width: auto !important;
  float: none !important;
  line-height: 1 !important;
  color: #64748b !important;
  font-size: 11px !important;
  font-weight: 700 !important;
  letter-spacing: 0.04em !important;
  text-transform: uppercase !important;
  white-space: nowrap !important;
}
.ixir-ds-filter-label i {
  color: #3b82f6 !important;
  font-size: 11px !important;
}

.ixir-ds-chips {
  display: inline-flex !important;
  align-items: center !important;
  gap: 8px !important;
  flex-wrap: nowrap !important;
}

.ixir-ds-filter-divider {
  display: block !important;
  width: 1px !important;
  height: 18px !important;
  background: #e2e8f0 !important;
  margin: 0 4px !important;
  flex-shrink: 0 !important;
}

.ixir-ds-chip {
  position: relative !important;
  display: inline-flex !important;
  cursor: pointer !important;
  margin: 0 !important;
}
.ixir-ds-chip input {
  position: absolute !important;
  width: 1px !important;
  height: 1px !important;
  opacity: 0 !important;
  pointer-events: none !important;
}
.ixir-ds-chip span {
  display: inline-flex !important;
  align-items: center !important;
  justify-content: center !important;
  padding: 5px 12px !important;
  min-height: 28px !important;
  border: 1px solid #e2e8f0 !important;
  border-radius: 999px !important;
  background: #ffffff !important;
  color: #334155 !important;
  font-size: 11.5px !important;
  font-weight: 600 !important;
  line-height: 1.2 !important;
  white-space: nowrap !important;
  box-shadow: 0 1px 2px rgba(15, 23, 42, 0.04) !important;
  transition: all 0.18s cubic-bezier(0.16, 1, 0.3, 1) !important;
  user-select: none !important;
}
.ixir-ds-chip:hover span {
  border-color: #94a3b8 !important;
  background: #f8fafc !important;
  color: #0b2545 !important;
  transform: translateY(-1px) !important;
  box-shadow: 0 2px 6px rgba(11, 37, 69, 0.07) !important;
}
.ixir-ds-chip input:checked + span {
  border-color: #0b2545 !important;
  background: #0b2545 !important;
  color: #ffffff !important;
  font-weight: 700 !important;
  box-shadow: 0 2px 8px rgba(11, 37, 69, 0.22) !important;
}

.ixir-ds-chip--brand span {
  padding: 4px 12px !important;
  min-height: 28px !important;
  display: inline-flex !important;
  align-items: center !important;
  justify-content: center !important;
  box-sizing: border-box !important;
}
.ixir-ds-brand-chip-img {
  height: 18px !important;
  width: auto !important;
  max-width: 34px !important;
  object-fit: contain !important;
  display: block !important;
  transition: filter 0.18s ease !important;
}
.ixir-ds-chip--brand input:checked + span .ixir-ds-brand-chip-img {
  filter: brightness(0) invert(1) !important;
}

.ixir-ds-dropdown {
  position: relative !important;
  display: inline-flex !important;
  align-items: center !important;
}

.ixir-ds-dropdown-trigger {
  display: inline-flex !important;
  align-items: center !important;
  justify-content: space-between !important;
  gap: 8px !important;
  height: 28px !important;
  min-height: 28px !important;
  padding: 0 12px !important;
  border: 1px solid #e2e8f0 !important;
  border-radius: 999px !important;
  background: #ffffff !important;
  color: #334155 !important;
  font-size: 11.5px !important;
  font-weight: 600 !important;
  line-height: 1 !important;
  cursor: pointer !important;
  outline: none !important;
  box-shadow: 0 1px 2px rgba(15, 23, 42, 0.04) !important;
  transition: all 0.18s cubic-bezier(0.16, 1, 0.3, 1) !important;
  font-family: inherit !important;
  user-select: none !important;
}

.ixir-ds-dropdown-trigger:hover {
  border-color: #94a3b8 !important;
  background: #f8fafc !important;
  color: #0b2545 !important;
  transform: translateY(-1px) !important;
  box-shadow: 0 2px 6px rgba(11, 37, 69, 0.07) !important;
}

.ixir-ds-dropdown-trigger:focus-visible {
  border-color: #3b82f6 !important;
  box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.15) !important;
}

.ixir-ds-dropdown.is-open .ixir-ds-dropdown-trigger {
  border-color: #0b2545 !important;
  box-shadow: 0 0 0 2px rgba(11, 37, 69, 0.12) !important;
}

.ixir-ds-dropdown-trigger.is-active {
  border-color: #0b2545 !important;
  background: #0b2545 !important;
  color: #ffffff !important;
  font-weight: 700 !important;
  box-shadow: 0 2px 8px rgba(11, 37, 69, 0.22) !important;
}

.ixir-ds-dropdown-arrow {
  font-size: 9.5px !important;
  color: #64748b !important;
  transition: transform 0.22s cubic-bezier(0.16, 1, 0.3, 1), color 0.18s ease !important;
}

.ixir-ds-dropdown.is-open .ixir-ds-dropdown-arrow {
  transform: rotate(180deg) !important;
}

.ixir-ds-dropdown-trigger.is-active .ixir-ds-dropdown-arrow {
  color: #ffffff !important;
}

.ixir-ds-dropdown-menu {
  position: absolute !important;
  top: calc(100% + 6px) !important;
  left: 0 !important;
  min-width: 175px !important;
  z-index: 9999 !important;
  background: #ffffff !important;
  border: 1px solid #e2e8f0 !important;
  border-radius: 14px !important;
  padding: 6px !important;
  box-shadow: 0 12px 32px -4px rgba(11, 37, 69, 0.14), 0 4px 12px rgba(11, 37, 69, 0.06) !important;
  opacity: 0 !important;
  visibility: hidden !important;
  pointer-events: none !important;
  transform: translateY(-4px) scale(0.98) !important;
  transform-origin: top left !important;
  transition: opacity 0.18s ease, transform 0.18s cubic-bezier(0.16, 1, 0.3, 1), visibility 0.18s ease !important;
  display: flex !important;
  flex-direction: column !important;
  gap: 2px !important;
}

.ixir-ds-dropdown.is-open .ixir-ds-dropdown-menu {
  opacity: 1 !important;
  visibility: visible !important;
  pointer-events: auto !important;
  transform: translateY(0) scale(1) !important;
}

@media (min-width: 1026px) {
  #ixir-ds-brand-dropdown .ixir-ds-dropdown-menu {
    min-width: 130px !important;
  }
  #ixir-ds-disk-dropdown .ixir-ds-dropdown-menu {
    min-width: 120px !important;
  }
  #ixir-ds-cpu-dropdown .ixir-ds-dropdown-menu {
    min-width: 110px !important;
  }
}

.ixir-ds-brand-opt {
  display: inline-flex !important;
  align-items: center !important;
  gap: 7px !important;
}
.ixir-ds-brand-drop-img {
  width: 18px !important;
  height: 18px !important;
  max-width: 18px !important;
  object-fit: contain !important;
  display: inline-block !important;
}

.ixir-ds-dropdown-item {
  display: flex !important;
  align-items: center !important;
  justify-content: space-between !important;
  width: 100% !important;
  padding: 7px 11px !important;
  border: none !important;
  border-radius: 9px !important;
  background: transparent !important;
  color: #334155 !important;
  font-size: 12px !important;
  font-weight: 500 !important;
  font-family: inherit !important;
  cursor: pointer !important;
  text-align: left !important;
  transition: all 0.14s ease !important;
  user-select: none !important;
}

.ixir-ds-dropdown-item:hover {
  background: #f1f5f9 !important;
  color: #0b2545 !important;
  font-weight: 600 !important;
}

.ixir-ds-dropdown-item.is-selected {
  background: #eff6ff !important;
  color: #1d4ed8 !important;
  font-weight: 700 !important;
}

.ixir-ds-dropdown-check {
  font-size: 11px !important;
  color: #2563eb !important;
  opacity: 0 !important;
  transition: opacity 0.14s ease !important;
}

.ixir-ds-dropdown-item.is-selected .ixir-ds-dropdown-check {
  opacity: 1 !important;
}

.ixir-ds-filters-reset {
  display: inline-flex !important;
  align-items: center !important;
  gap: 6px !important;
  padding: 5px 13px !important;
  min-height: 28px !important;
  border: 1px solid #e2e8f0 !important;
  border-radius: 999px !important;
  background: #f8fafc !important;
  color: #64748b !important;
  font-size: 11.5px !important;
  font-weight: 700 !important;
  letter-spacing: 0.02em !important;
  cursor: pointer !important;
  white-space: nowrap !important;
  box-shadow: 0 1px 2px rgba(15, 23, 42, 0.04) !important;
  transition: all 0.2s ease !important;
  margin-left: 2px !important;
}
.ixir-ds-filters-reset i {
  color: #94a3b8 !important;
  font-size: 10.5px !important;
  transition: transform 0.28s ease, color 0.2s ease !important;
}
.ixir-ds-filters-reset:hover {
  background: #fff1f2 !important;
  border-color: #fecdd3 !important;
  color: #e11d48 !important;
  box-shadow: 0 2px 6px rgba(225, 29, 72, 0.12) !important;
}
.ixir-ds-filters-reset:hover i {
  color: #e11d48 !important;
  transform: rotate(-180deg) !important;
}

.ixir-ds-cycle-group {
  display: inline-flex !important;
  align-items: center !important;
  gap: 10px !important;
  margin-left: auto !important;
  flex-shrink: 0 !important;
}
.ixir-ds-group-label {
  display: inline-flex !important;
  align-items: center !important;
  gap: 4px !important;
  margin: 0 !important;
  padding: 0 !important;
  color: #64748b !important;
  font-size: 10.5px !important;
  font-weight: 700 !important;
  letter-spacing: 0.04em !important;
  text-transform: uppercase !important;
  white-space: nowrap !important;
}
.ixir-ds-group-label i {
  color: #3b82f6 !important;
  font-size: 11px !important;
}
.ixir-ds-cycle {
  display: inline-flex !important;
  align-items: center !important;
  padding: 2px !important;
  background: #f1f5f9 !important;
  border: 1px solid #e2e8f0 !important;
  border-radius: 999px !important;
  box-shadow: inset 0 1px 2px rgba(15, 23, 42, 0.04) !important;
}
.ixir-ds-cycle button {
  display: inline-flex !important;
  align-items: center !important;
  gap: 5px !important;
  height: 26px !important;
  padding: 0 10px !important;
  font-size: 11px !important;
  font-weight: 700 !important;
  border: none !important;
  border-radius: 999px !important;
  color: #64748b !important;
  background: transparent !important;
  cursor: pointer !important;
  transition: all 0.2s cubic-bezier(0.16, 1, 0.3, 1) !important;
  white-space: nowrap !important;
}
.ixir-ds-cycle button:hover:not([aria-checked="true"]) {
  color: #0b2545 !important;
}
.ixir-ds-cycle button[aria-checked="true"] {
  background: #0b2545 !important;
  color: #ffffff !important;
  box-shadow: 0 2px 7px rgba(11, 37, 69, 0.22) !important;
}
.ixir-ds-cycle button .ixir-ds-discount-badge,
.ixir-ds-cycle button span {
  display: inline-flex !important;
  align-items: center !important;
  padding: 1px 5px !important;
  border-radius: 999px !important;
  background: #dcfce7 !important;
  color: #15803d !important;
  font-size: 9.5px !important;
  font-weight: 800 !important;
  line-height: 1.2 !important;
  letter-spacing: 0.01em !important;
  transition: all 0.2s ease !important;
}
.ixir-ds-cycle button[aria-checked="true"] .ixir-ds-discount-badge,
.ixir-ds-cycle button[aria-checked="true"] span {
  background: rgba(16, 185, 129, 0.25) !important;
  color: #34d399 !important;
}
.ixir-ds-toolbar {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 12px;
  margin-bottom: 12px;
}
.ixir-ds-count {
  margin: 0;
  color: #64748b;
  font-size: 13.5px;
  font-weight: 500;
}
.ixir-ds-count b {
  color: #0b2545;
  font-weight: 700;
}
.ixir-ds-toolbar-right {
  display: flex;
  align-items: center;
  gap: 10px;
}

.ixir-ds-view-toggle {
  display: none;
  align-items: center;
  padding: 3px;
  background: #eef2f6;
  border: 1px solid #e2e8f0;
  border-radius: 999px;
}
.ixir-ds-view-btn {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  height: 30px;
  padding: 0 12px;
  border: 0;
  border-radius: 999px;
  background: transparent;
  color: #64748b;
  font-size: 12px;
  font-weight: 700;
  cursor: pointer;
  transition: all 0.2s ease;
}
.ixir-ds-view-btn.is-active,
.ixir-ds-view-btn[aria-pressed="true"] {
  background: #0b2545;
  color: #ffffff;
  box-shadow: 0 2px 6px rgba(11, 37, 69, 0.18);
}

.ixir-ds-slider-counter {
  display: none;
  align-items: center;
}
.ixir-ds-counter-badge {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  height: 30px;
  padding: 0 12px;
  border-radius: 999px;
  background: #0b2545;
  color: #ffffff;
  font-size: 12.5px;
  font-weight: 700;
  letter-spacing: 0.04em;
  box-shadow: 0 2px 6px rgba(11, 37, 69, 0.15);
}
.ixir-ds-counter-badge b {
  color: #fbd746;
  margin-right: 3px;
}
.ixir-ds-counter-badge span {
  color: rgba(255, 255, 255, 0.75);
  margin-left: 3px;
}

.ixir-ds-thead {
  display: grid !important;
  grid-template-columns: 215px minmax(195px, 1.3fr) minmax(85px, 0.6fr) minmax(165px, 1.1fr) minmax(195px, 1.3fr) 160px !important;
  gap: 16px !important;
  align-items: center !important;
  padding: 10px 24px !important;
  background: #f1f5f9 !important;
  border: 1px solid #e2e8f0 !important;
  border-radius: 12px !important;
  color: #475569 !important;
  font-size: 11.5px !important;
  font-weight: 700 !important;
  letter-spacing: 0.05em !important;
  text-transform: uppercase !important;
  margin-bottom: 12px !important;
  box-sizing: border-box !important;
}

.ixir-ds-th-col {
  display: inline-flex !important;
  align-items: center !important;
  gap: 7px !important;
  width: fit-content !important;
  justify-self: start !important;
  text-align: left !important;
}
.ixir-ds-th-col i {
  color: #3b82f6 !important;
  font-size: 13px !important;
}

.ixir-ds-sort {
  display: inline-flex !important;
  align-items: center !important;
  gap: 6px !important;
  width: fit-content !important;
  justify-self: start !important;
  padding: 5px 10px !important;
  border: 0 !important;
  border-radius: 8px !important;
  background: transparent !important;
  color: #475569 !important;
  font-size: 11.5px !important;
  font-weight: 700 !important;
  letter-spacing: 0.05em !important;
  text-transform: uppercase !important;
  cursor: pointer !important;
  transition: all 0.2s ease !important;
}
.ixir-ds-sort > i:first-child {
  color: #3b82f6 !important;
  font-size: 13px !important;
}
.ixir-ds-sort .ixir-ds-sort-icon {
  color: #94a3b8 !important;
  font-size: 10.5px !important;
  margin-left: 2px !important;
}
.ixir-ds-sort:hover,
.ixir-ds-sort.is-active {
  background: #ffffff !important;
  color: #0b2545 !important;
  box-shadow: 0 2px 8px rgba(11, 37, 69, 0.08) !important;
}
.ixir-ds-sort.is-active .ixir-ds-sort-icon {
  color: #2563eb !important;
}

.ixir-ds-sort--price {
  justify-self: end !important;
  text-align: right !important;
}

.ixir-ds-list {
  display: flex;
  flex-direction: column;
  gap: 12px;
  margin: 0;
  padding: 0;
  list-style: none;
}

.ixir-ds-row {
  position: relative !important;
  display: grid !important;
  grid-template-columns: 215px minmax(195px, 1.3fr) minmax(85px, 0.6fr) minmax(165px, 1.1fr) minmax(195px, 1.3fr) 160px !important;
  gap: 16px !important;
  align-items: center !important;
  padding: 18px 24px !important;
  background: #ffffff !important;
  border: 1px solid #e2e8f0 !important;
  border-radius: 16px !important;
  box-shadow: 0 3px 14px rgba(11, 37, 69, 0.03) !important;
  transition: all 0.25s cubic-bezier(0.16, 1, 0.3, 1) !important;
  box-sizing: border-box !important;
}

.ixir-ds-row:hover {
  border-color: #cbd5e1 !important;
  transform: translateY(-2px) !important;
  box-shadow: 0 12px 28px rgba(11, 37, 69, 0.08) !important;
}

.ixir-ds-row[hidden] {
  display: none !important;
}

.ixir-ds-row--popular {
  border-color: #fbd746 !important;
  background: linear-gradient(180deg, #ffffff 0%, #fffef7 100%) !important;
}
.ixir-ds-row--new {
  border-color: #a7f3d0 !important;
}
.ixir-ds-ribbon {
  position: absolute;
  top: 0;
  left: 50%;
  transform: translateX(-50%);
  display: inline-flex;
  align-items: center;
  gap: 5px;
  padding: 4px 12px;
  border-radius: 0 0 8px 8px;
  background: #fbd746;
  color: #0b2545;
  font-size: 10px;
  font-weight: 800;
  letter-spacing: 0.04em;
  text-transform: uppercase;
  box-shadow: 0 2px 6px rgba(251, 215, 70, 0.3);
  z-index: 2;
  white-space: nowrap;
}
.ixir-ds-ribbon--new {
  background: #10b981;
  color: #ffffff;
  box-shadow: 0 2px 6px rgba(16, 185, 129, 0.3);
}

.ixir-ds-model {
  display: flex !important;
  flex-direction: column !important;
  gap: 4px !important;
  min-width: 0 !important;
  justify-self: start !important;
  text-align: left !important;
}
.ixir-ds-model-header {
  display: flex !important;
  align-items: center !important;
  gap: 8px !important;
}
.ixir-ds-brand {
  display: inline-flex !important;
  align-items: center !important;
  justify-content: center !important;
  padding: 4px 10px !important;
  border-radius: 8px !important;
  background: #f8fafc !important;
  border: 1px solid #e2e8f0 !important;
  height: 32px !important;
  box-sizing: border-box !important;
}
.ixir-ds-brand-row-img {
  height: 24px !important;
  width: auto !important;
  max-width: 48px !important;
  object-fit: contain !important;
  display: block !important;
}

.ixir-ds-stock-dot {
  width: 6px !important;
  height: 6px !important;
  border-radius: 50% !important;
  background: #22c55e !important;
  box-shadow: 0 0 0 2px rgba(34, 197, 94, 0.2) !important;
}
.ixir-ds-model-name {
  margin: 0 !important;
  font-family: "Space Grotesk", "Roboto", sans-serif !important;
  font-size: 16px !important;
  font-weight: 800 !important;
  color: #0b2545 !important;
  letter-spacing: -0.01em !important;
  line-height: 1.2 !important;
}
.ixir-ds-rack-wrap {
  position: relative !important;
  display: inline-block !important;
  margin-top: 3px !important;
}
.ixir-ds-rack {
  display: block !important;
  max-width: 140px !important;
  width: 100% !important;
  height: auto !important;
  cursor: zoom-in !important;
  transition: transform 0.2s ease, filter 0.2s ease !important;
}
.ixir-ds-rack:hover {
  transform: scale(1.06) !important;
  filter: brightness(1.03) !important;
}

.ixir-ds-specs-grid {
  display: contents !important;
}
.ixir-ds-cell {
  display: flex !important;
  align-items: center !important;
  gap: 10px !important;
  min-width: 0 !important;
  justify-self: start !important;
  text-align: left !important;
}

@media (min-width: 1026px) {
  .ixir-ds-cell-icon {
    display: none !important;
  }
}

.ixir-ds-cell-meta {
  display: flex !important;
  flex-direction: column !important;
  min-width: 0 !important;
  text-align: left !important;
}
.ixir-ds-cell-label {
  display: none !important;
}
.ixir-ds-cell b {
  font-size: 13.5px !important;
  font-weight: 700 !important;
  color: #0b2545 !important;
  line-height: 1.25 !important;
  word-break: break-word !important;
}
.ixir-ds-cell-sub {
  font-size: 11.5px !important;
  color: #64748b !important;
  line-height: 1.3 !important;
}
.ixir-ds-disk-title {
  display: flex !important;
  align-items: center !important;
  flex-wrap: wrap !important;
  gap: 5px !important;
}
.ixir-ds-disk-tag {
  display: inline-block !important;
  padding: 1px 6px !important;
  border-radius: 4px !important;
  font-size: 10px !important;
  font-weight: 800 !important;
  text-transform: uppercase !important;
}
.ixir-ds-disk-tag--nvme {
  background: #ede9fe !important;
  color: #6d28d9 !important;
}
.ixir-ds-disk-tag--ssd {
  background: #e0f2fe !important;
  color: #0369a1 !important;
}
.ixir-ds-disk-tag--sas {
  background: #f1f5f9 !important;
  color: #475569 !important;
}

.ixir-ds-traffic-line {
  display: inline-flex !important;
  align-items: center !important;
  gap: 5px !important;
  flex-wrap: nowrap !important;
}
.ixir-ds-traffic-line b {
  white-space: nowrap !important;
}

.ixir-ds-tip {
  position: relative !important;
  display: inline-flex !important;
  align-items: center !important;
  color: #3b82f6 !important;
  cursor: pointer !important;
  outline: none !important;
  white-space: normal !important;
}
.ixir-ds-tip i {
  font-size: 13px !important;
}
.ixir-ds-tip-text {
  position: absolute !important;
  bottom: calc(100% + 8px) !important;
  left: 50% !important;
  transform: translate(-50%, 6px) !important;
  width: 260px !important;
  max-width: 280px !important;
  white-space: normal !important;
  word-break: normal !important;
  overflow-wrap: break-word !important;
  padding: 8px 12px !important;
  border-radius: 8px !important;
  background: #0b2545 !important;
  color: #ffffff !important;
  font-size: 11.5px !important;
  font-weight: 500 !important;
  line-height: 1.4 !important;
  text-align: center !important;
  box-shadow: 0 10px 25px rgba(11, 37, 69, 0.25) !important;
  opacity: 0 !important;
  visibility: hidden !important;
  pointer-events: none !important;
  transition: all 0.2s ease !important;
  z-index: 100 !important;
}
.ixir-ds-tip-text::after {
  content: "" !important;
  position: absolute !important;
  top: 100% !important;
  left: 50% !important;
  border: 5px solid transparent !important;
  border-top-color: #0b2545 !important;
  transform: translateX(-50%) !important;
}
.ixir-ds-tip:hover .ixir-ds-tip-text,
.ixir-ds-tip:focus .ixir-ds-tip-text,
.ixir-ds-tip.is-active .ixir-ds-tip-text {
  opacity: 1 !important;
  visibility: visible !important;
  transform: translate(-50%, 0) !important;
  pointer-events: auto !important;
}

.ixir-ds-buy-col {
  display: flex !important;
  flex-direction: column !important;
  align-items: flex-end !important;
  justify-self: end !important;
  gap: 8px !important;
  min-width: 0 !important;
  text-align: right !important;
  width: 100% !important;
}
.ixir-ds-price-wrapper {
  text-align: right !important;
  width: 100% !important;
}
.ixir-ds-price {
  margin: 0 !important;
  color: #0b2545 !important;
  line-height: 1 !important;
  text-align: right !important;
}
.ixir-ds-price b {
  font-family: "Space Grotesk", "Roboto", sans-serif !important;
  font-size: 21px !important;
  font-weight: 800 !important;
  letter-spacing: -0.02em !important;
}
.ixir-ds-price small {
  font-size: 12px !important;
  font-weight: 600 !important;
  color: #64748b !important;
  margin-left: 2px !important;
}
.ixir-ds-tax-note {
  display: block !important;
  font-size: 10.5px !important;
  color: #94a3b8 !important;
  margin-top: 2px !important;
  text-align: right !important;
}
.ixir-ds-buy {
  display: inline-flex !important;
  align-items: center !important;
  justify-content: center !important;
  gap: 8px !important;
  height: 38px !important;
  padding: 0 18px !important;
  border-radius: 9px !important;
  background: #fbd746 !important;
  color: #0b2545 !important;
  font-size: 13px !important;
  font-weight: 800 !important;
  letter-spacing: 0.02em !important;
  text-decoration: none !important;
  text-transform: uppercase !important;
  transition: all 0.2s ease !important;
}
.ixir-ds-buy:hover {
  background: #0b2545 !important;
  color: #fbd746 !important;
  transform: translateY(-1px) !important;
  box-shadow: 0 4px 12px rgba(11, 37, 69, 0.2) !important;
  text-decoration: none !important;
}
.ixir-ds-buy i {
  transition: transform 0.2s ease !important;
}
.ixir-ds-buy:hover i {
  transform: translateX(3px) !important;
}

.ixir-ds-slider-nav {
  display: none;
  align-items: center;
  justify-content: center;
  gap: 12px;
  margin-top: 14px;
  padding: 4px 0;
}
.ixir-ds-slider-btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 40px;
  height: 40px;
  padding: 0;
  border: 1px solid #e0e4eb;
  border-radius: 50%;
  background: #ffffff;
  color: #0b2545;
  font-size: 14px;
  box-shadow: 0 3px 10px rgba(11, 37, 69, 0.08);
  cursor: pointer;
  transition: all 0.2s ease;
  flex-shrink: 0;
}
.ixir-ds-slider-btn:not(:disabled):hover {
  background: #0b2545;
  color: #fbd746;
  border-color: #0b2545;
  transform: scale(1.06);
}
.ixir-ds-slider-btn:disabled {
  opacity: 0.35;
  cursor: not-allowed;
  box-shadow: none;
  transform: none;
}
.ixir-ds-slider-dots {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 7px;
  flex-wrap: wrap;
  max-width: calc(100% - 110px);
}
.ixir-ds-slider-dot {
  position: relative;
  width: 8px;
  height: 8px;
  padding: 0;
  border: 0;
  border-radius: 999px;
  background: #cfd4dc;
  cursor: pointer;
  transition: width 0.25s cubic-bezier(0.4, 0, 0.2, 1), background 0.25s ease;
}
.ixir-ds-slider-dot.is-active {
  width: 26px;
  background: #0b2545;
}



@media (min-width: 1026px) and (max-width: 1400px) {
  .ixir-ds-thead,
  .ixir-ds-row {
    grid-template-columns: minmax(130px, 1.15fr) minmax(145px, 1.35fr) minmax(60px, 0.55fr) minmax(120px, 1.05fr) minmax(140px, 1.25fr) minmax(130px, 1.15fr) !important;
    gap: clamp(8px, 1vw, 14px) !important;
    padding-left: clamp(12px, 1.2vw, 20px) !important;
    padding-right: clamp(12px, 1.2vw, 20px) !important;
  }
  .ixir-ds-thead {
    padding-top: 10px !important;
    padding-bottom: 10px !important;
    font-size: 11px !important;
  }
  .ixir-ds-row {
    padding-top: 14px !important;
    padding-bottom: 14px !important;
  }
  .ixir-ds-rack {
    max-width: clamp(105px, 9vw, 135px) !important;
  }
  .ixir-ds-model-name {
    font-size: clamp(14px, 1.1vw, 16px) !important;
  }
  .ixir-ds-brand {
    height: 28px !important;
    padding: 3px 8px !important;
  }
  .ixir-ds-brand-row-img {
    height: 20px !important;
    max-width: 40px !important;
  }
  .ixir-ds-cell b {
    font-size: clamp(12px, 0.95vw, 13.5px) !important;
  }
  .ixir-ds-cell-sub {
    font-size: clamp(10px, 0.8vw, 11.5px) !important;
  }
  .ixir-ds-price b {
    font-size: clamp(17px, 1.3vw, 20px) !important;
  }
  .ixir-ds-buy {
    height: 36px !important;
    padding: 0 clamp(10px, 1vw, 16px) !important;
    font-size: clamp(11.5px, 0.8vw, 12.5px) !important;
    gap: 6px !important;
  }
  .ixir-ds-sort {
    padding: 4px clamp(4px, 0.5vw, 8px) !important;
    font-size: 11px !important;
    gap: 4px !important;
    white-space: nowrap !important;
  }
  .ixir-ds-th-col {
    gap: 5px !important;
    font-size: 11px !important;
    white-space: nowrap !important;
  }
}

@media (min-width: 768px) and (max-width: 1025px) {
  .ixir-ds {
    padding: 38px 0 48px !important;
  }
  .ixir-ds-thead {
    display: none !important;
  }
  .ixir-ds-cell-icon {
    display: inline-flex !important;
  }

  .ixir-ds-filters {
    padding: 12px 16px !important;
    border-radius: 14px !important;
  }
  .ixir-ds-filter-mobile-bar {
    display: flex !important;
  }
  .ixir-ds-filter-toggle {
    display: inline-flex !important;
    align-items: center !important;
    gap: 8px !important;
    height: 38px !important;
    padding: 0 16px !important;
    border: 1px solid #e0e4eb !important;
    border-radius: 999px !important;
    background: #ffffff !important;
    color: #0b2545 !important;
    font-size: 13.5px !important;
    font-weight: 700 !important;
    cursor: pointer !important;
  }
  .ixir-ds-filter-toggle[aria-expanded="true"] {
    background: #0b2545 !important;
    color: #ffffff !important;
    border-color: #0b2545 !important;
  }
  .ixir-ds-filter-badge {
    display: inline-flex !important;
    align-items: center !important;
    justify-content: center !important;
    width: 20px !important;
    height: 20px !important;
    border-radius: 50% !important;
    background: #fbd746 !important;
    color: #0b2545 !important;
    font-size: 11px !important;
    font-weight: 800 !important;
  }
  .ixir-ds-cycle-mobile {
    display: inline-flex !important;
  }
  .ixir-ds-cycle-group {
    display: none !important;
  }
  .ixir-ds-filters-content {
    display: none !important;
    width: 100% !important;
    padding-top: 12px !important;
    border-top: 1px solid #eef2f6 !important;
  }
  .ixir-ds-filters.is-open .ixir-ds-filters-content {
    display: flex !important;
  }

  .ixir-ds-toolbar {
    margin-bottom: 16px !important;
  }
  .ixir-ds-view-toggle {
    display: inline-flex !important;
  }
  .ixir-ds-slider-counter {
    display: inline-flex !important;
  }
  .ixir-ds-count {
    display: block !important;
  }

  .ixir-ds:not(.is-grid-view) .ixir-ds-list {
    display: flex !important;
    flex-direction: row !important;
    flex-wrap: nowrap !important;
    align-items: stretch !important;
    overflow-x: auto !important;
    scroll-snap-type: x mandatory !important;
    scroll-behavior: smooth !important;
    -webkit-overflow-scrolling: touch !important;
    gap: 16px !important;
    padding: 8px 4px 12px !important;
    scrollbar-width: none !important;
  }
  .ixir-ds:not(.is-grid-view) .ixir-ds-list::-webkit-scrollbar {
    display: none !important;
  }
  .ixir-ds:not(.is-grid-view) .ixir-ds-row {
    flex: 0 0 calc(50% - 8px) !important;
    width: calc(50% - 8px) !important;
    min-width: calc(50% - 8px) !important;
    max-width: calc(50% - 8px) !important;
    scroll-snap-align: start !important;
  }

  .ixir-ds.is-grid-view .ixir-ds-list {
    display: grid !important;
    grid-template-columns: repeat(2, minmax(0, 1fr)) !important;
    gap: 16px !important;
    overflow-x: visible !important;
  }

  .ixir-ds-row {
    display: flex !important;
    flex-direction: column !important;
    justify-content: space-between !important;
    padding: 24px 20px 20px !important;
    border-radius: 20px !important;
    background: #ffffff !important;
    border: 1px solid #e2e8f0 !important;
    box-shadow: 0 4px 20px -2px rgba(11, 37, 69, 0.05), 0 2px 6px -1px rgba(11, 37, 69, 0.03) !important;
    gap: 14px !important;
    transition: all 0.25s cubic-bezier(0.16, 1, 0.3, 1) !important;
    position: relative !important;
  }
  .ixir-ds-row:hover {
    border-color: #cbd5e1 !important;
    box-shadow: 0 16px 36px -4px rgba(11, 37, 69, 0.1), 0 4px 12px rgba(11, 37, 69, 0.04) !important;
    transform: translateY(-3px) !important;
  }
  .ixir-ds-row--popular {
    border-color: #fbd746 !important;
    background: linear-gradient(180deg, #ffffff 0%, #fffef7 100%) !important;
    padding-top: 28px !important;
  }
  .ixir-ds-row--new {
    border-color: #a7f3d0 !important;
    background: linear-gradient(180deg, #ffffff 0%, #f0fdf4 100%) !important;
    padding-top: 28px !important;
  }

  .ixir-ds-ribbon {
    position: absolute !important;
    top: 0 !important;
    left: 24px !important;
    transform: none !important;
    border-radius: 0 0 10px 10px !important;
    padding: 4px 12px !important;
    font-size: 10px !important;
    font-weight: 800 !important;
    letter-spacing: 0.04em !important;
  }

  .ixir-ds-model {
    display: flex !important;
    flex-direction: column !important;
    align-items: center !important;
    text-align: center !important;
    gap: 4px !important;
    margin-bottom: 2px !important;
  }
  .ixir-ds-model-header {
    display: flex !important;
    align-items: center !important;
    justify-content: center !important;
    margin-bottom: 2px !important;
  }
  .ixir-ds-brand {
    display: inline-flex !important;
    align-items: center !important;
    justify-content: center !important;
    width: 48px !important;
    height: 48px !important;
    padding: 0 !important;
    border-radius: 50% !important;
    background: #ffffff !important;
    border: 1.5px solid #e2e8f0 !important;
    box-shadow: 0 3px 8px rgba(11, 37, 69, 0.08) !important;
  }
  .ixir-ds-brand-row-img {
    height: 28px !important;
    width: auto !important;
    max-width: 36px !important;
    object-fit: contain !important;
    display: block !important;
  }
  .ixir-ds-model-name {
    font-family: "Space Grotesk", "Roboto", sans-serif !important;
    font-size: 22px !important;
    font-weight: 800 !important;
    color: #0b2545 !important;
    letter-spacing: -0.02em !important;
    line-height: 1.2 !important;
    margin: 4px 0 6px !important;
    text-align: center !important;
  }
  .ixir-ds-rack-wrap {
    display: flex !important;
    align-items: center !important;
    justify-content: center !important;
    width: 100% !important;
    background: transparent !important;
    border: none !important;
    box-shadow: none !important;
    padding: 2px 0 6px !important;
    margin: 0 auto !important;
  }
  .ixir-ds-rack {
    max-width: 175px !important;
    width: 100% !important;
    height: auto !important;
    filter: drop-shadow(0 6px 14px rgba(11, 37, 69, 0.16)) !important;
    transition: transform 0.2s ease !important;
  }
  .ixir-ds-rack:hover {
    transform: scale(1.04) !important;
  }

  .ixir-ds-specs-grid {
    display: flex !important;
    flex-direction: column !important;
    gap: 7px !important;
    width: 100% !important;
    margin: 6px 0 !important;
  }
  .ixir-ds-cell {
    display: flex !important;
    align-items: center !important;
    gap: 10px !important;
    padding: 8px 12px !important;
    background: #f8fafc !important;
    border: 1px solid #edf2f7 !important;
    border-radius: 12px !important;
    box-sizing: border-box !important;
    width: 100% !important;
    min-width: 0 !important;
    transition: all 0.18s ease !important;
  }
  .ixir-ds-cell:hover {
    background: #ffffff !important;
    border-color: #cbd5e1 !important;
    box-shadow: 0 3px 10px rgba(11, 37, 69, 0.05) !important;
  }

  .ixir-ds-cpu {
    order: 1 !important;
    min-height: 52px !important;
  }
  .ixir-ds-port {
    order: 2 !important;
    min-height: 48px !important;
  }
  .ixir-ds-port:hover {
    background: #ffffff !important;
  }
  .ixir-ds-disk {
    order: 3 !important;
    min-height: 48px !important;
  }
  .ixir-ds-ram {
    order: 4 !important;
    min-height: 48px !important;
  }

  .ixir-ds-cell-icon {
    width: 32px !important;
    height: 32px !important;
    flex: 0 0 32px !important;
    border-radius: 9px !important;
    display: inline-flex !important;
    align-items: center !important;
    justify-content: center !important;
    font-size: 13px !important;
    box-shadow: 0 1px 3px rgba(11, 37, 69, 0.04) !important;
  }
  .ixir-ds-cpu .ixir-ds-cell-icon {
    background: #eff6ff !important;
    color: #2563eb !important;
    border: 1px solid #dbeafe !important;
  }
  .ixir-ds-ram .ixir-ds-cell-icon {
    background: #f5f3ff !important;
    color: #7c3aed !important;
    border: 1px solid #ede9fe !important;
  }
  .ixir-ds-disk .ixir-ds-cell-icon {
    background: #fefce8 !important;
    color: #ca8a04 !important;
    border: 1px solid #fef08a !important;
  }
  .ixir-ds-port .ixir-ds-cell-icon {
    background: #dcfce7 !important;
    color: #16a34a !important;
    border: 1px solid #bbf7d0 !important;
  }

  .ixir-ds-cell-meta {
    display: flex !important;
    flex-direction: column !important;
    min-width: 0 !important;
    text-align: left !important;
    justify-content: center !important;
  }
  .ixir-ds-cell-label {
    display: block !important;
    font-size: 9.5px !important;
    font-weight: 800 !important;
    letter-spacing: 0.06em !important;
    text-transform: uppercase !important;
    color: #64748b !important;
    margin-bottom: 2px !important;
    line-height: 1 !important;
  }
  .ixir-ds-cell b {
    font-size: 13.5px !important;
    font-weight: 700 !important;
    color: #0b2545 !important;
    line-height: 1.25 !important;
    word-break: break-word !important;
  }

  .ixir-ds-cell-sub {
    font-size: 11px !important;
    color: #64748b !important;
    line-height: 1.3 !important;
    margin-top: 2px !important;
  }
  .ixir-ds-disk-title {
    display: inline-flex !important;
    align-items: center !important;
    gap: 5px !important;
    flex-wrap: wrap !important;
  }
  .ixir-ds-disk-tag {
    display: inline-block !important;
    padding: 1px 6px !important;
    border-radius: 999px !important;
    font-size: 9.5px !important;
    font-weight: 800 !important;
  }
  .ixir-ds-disk-tag--ssd {
    background: #dbeafe !important;
    color: #1d4ed8 !important;
  }
  .ixir-ds-disk-tag--nvme {
    background: #fef3c7 !important;
    color: #b45309 !important;
  }
  .ixir-ds-disk-tag--sas {
    background: #f1f5f9 !important;
    color: #475569 !important;
  }
  .ixir-ds-traffic-line {
    display: inline-flex !important;
    align-items: center !important;
    gap: 6px !important;
    flex-wrap: wrap !important;
  }

  .ixir-ds-tip {
    position: relative !important;
    display: inline-flex !important;
    align-items: center !important;
    cursor: pointer !important;
  }
  .ixir-ds-tip i {
    color: #94a3b8 !important;
    font-size: 11.5px !important;
    transition: color 0.15s ease !important;
  }
  .ixir-ds-tip:hover i,
  .ixir-ds-tip.is-active i {
    color: #2563eb !important;
  }
  .ixir-ds-tip-text {
    position: absolute !important;
    bottom: calc(100% + 8px) !important;
    left: 50% !important;
    transform: translateX(-50%) !important;
    width: 220px !important;
    padding: 8px 11px !important;
    background: #0b2545 !important;
    color: #ffffff !important;
    font-size: 11px !important;
    font-weight: 500 !important;
    line-height: 1.35 !important;
    border-radius: 8px !important;
    box-shadow: 0 8px 20px rgba(11, 37, 69, 0.25) !important;
    z-index: 100 !important;
    pointer-events: none !important;
    opacity: 0 !important;
    visibility: hidden !important;
    transition: opacity 0.18s ease, transform 0.18s ease !important;
  }
  .ixir-ds-tip-text::after {
    content: "" !important;
    position: absolute !important;
    top: 100% !important;
    left: 50% !important;
    transform: translateX(-50%) !important;
    border: 5px solid transparent !important;
    border-top-color: #0b2545 !important;
  }
  .ixir-ds-tip:hover .ixir-ds-tip-text,
  .ixir-ds-tip.is-active .ixir-ds-tip-text {
    opacity: 1 !important;
    visibility: visible !important;
  }

  .ixir-ds-buy-col {
    display: flex !important;
    flex-direction: row !important;
    align-items: center !important;
    justify-content: space-between !important;
    padding-top: 16px !important;
    border-top: 1px solid #f1f5f9 !important;
    margin-top: 6px !important;
    gap: 12px !important;
  }
  .ixir-ds-price-wrapper {
    text-align: left !important;
    width: auto !important;
  }
  .ixir-ds-price {
    margin: 0 !important;
    color: #0b2545 !important;
    line-height: 1 !important;
    text-align: left !important;
  }
  .ixir-ds-price b {
    font-family: "Space Grotesk", "Roboto", sans-serif !important;
    font-size: 24px !important;
    font-weight: 800 !important;
    letter-spacing: -0.02em !important;
    color: #0b2545 !important;
  }
  .ixir-ds-price small {
    font-size: 12.5px !important;
    font-weight: 600 !important;
    color: #64748b !important;
    margin-left: 2px !important;
  }
  .ixir-ds-tax-note {
    font-size: 10px !important;
    color: #94a3b8 !important;
    font-weight: 500 !important;
    margin-top: 2px !important;
    text-align: left !important;
  }
  .ixir-ds-buy {
    display: inline-flex !important;
    align-items: center !important;
    justify-content: center !important;
    gap: 8px !important;
    height: 42px !important;
    padding: 0 20px !important;
    border-radius: 11px !important;
    background: linear-gradient(135deg, #fbd746 0%, #facc15 100%) !important;
    color: #0b2545 !important;
    font-size: 13px !important;
    font-weight: 800 !important;
    letter-spacing: 0.03em !important;
    text-transform: uppercase !important;
    text-decoration: none !important;
    box-shadow: 0 4px 14px rgba(251, 215, 70, 0.4) !important;
    transition: all 0.2s cubic-bezier(0.16, 1, 0.3, 1) !important;
    flex-shrink: 0 !important;
  }
  .ixir-ds-buy:hover {
    background: #0b2545 !important;
    color: #fbd746 !important;
    box-shadow: 0 6px 18px rgba(11, 37, 69, 0.25) !important;
    transform: translateY(-2px) !important;
  }
  .ixir-ds-buy:hover i {
    transform: translateX(3px) !important;
  }

  .ixir-ds-slider-nav {
    display: flex !important;
    margin-top: 18px !important;
    gap: 14px !important;
  }
  .ixir-ds-slider-btn {
    width: 38px !important;
    height: 38px !important;
    border-radius: 50% !important;
    background: #ffffff !important;
    border: 1px solid #e2e8f0 !important;
    color: #0b2545 !important;
    box-shadow: 0 2px 8px rgba(11, 37, 69, 0.06) !important;
    transition: all 0.2s ease !important;
  }
  .ixir-ds-slider-btn:not(:disabled):hover {
    background: #0b2545 !important;
    color: #fbd746 !important;
    border-color: #0b2545 !important;
    transform: scale(1.08) !important;
  }
  .ixir-ds-slider-dot {
    width: 8px !important;
    height: 8px !important;
    border-radius: 999px !important;
    background: #cbd5e1 !important;
    transition: all 0.25s cubic-bezier(0.4, 0, 0.2, 1) !important;
  }
  .ixir-ds-slider-dot.is-active {
    width: 26px !important;
    background: #0b2545 !important;
  }
}

@media (max-width: 767.98px) {
  .ixir-ds {
    padding: 36px 0 44px;
  }
  .ixir-ds-head h2 {
    font-size: 24px;
  }
  .ixir-ds-head p {
    font-size: 13.5px;
  }

  .ixir-ds-thead {
    display: none !important;
  }
  .ixir-ds-cell-icon {
    display: inline-flex !important;
  }
  .ixir-ds-cell-label {
    display: block !important;
    font-size: 9.5px !important;
    font-weight: 700 !important;
    letter-spacing: 0.04em !important;
    text-transform: uppercase !important;
    color: #64748b !important;
    margin-bottom: 1px !important;
  }

  .ixir-ds-filters {
    padding: 10px 12px !important;
    border-radius: 14px !important;
    gap: 8px !important;
  }
  .ixir-ds-filter-mobile-bar {
    display: flex !important;
    justify-content: space-between !important;
    gap: 8px !important;
  }
  .ixir-ds-filter-toggle {
    display: inline-flex !important;
    align-items: center !important;
    gap: 7px !important;
    height: 36px !important;
    padding: 0 14px !important;
    border: 1px solid #e0e4eb !important;
    border-radius: 999px !important;
    background: #ffffff !important;
    color: #0b2545 !important;
    font-size: 13px !important;
    font-weight: 700 !important;
    cursor: pointer !important;
  }
  .ixir-ds-filter-toggle[aria-expanded="true"] {
    background: #0b2545 !important;
    color: #ffffff !important;
    border-color: #0b2545 !important;
  }
  .ixir-ds-filter-badge {
    display: inline-flex !important;
    align-items: center !important;
    justify-content: center !important;
    width: 18px !important;
    height: 18px !important;
    border-radius: 50% !important;
    background: #fbd746 !important;
    color: #0b2545 !important;
    font-size: 10.5px !important;
    font-weight: 800 !important;
  }
  .ixir-ds-cycle-mobile {
    display: inline-flex !important;
  }
  .ixir-ds-cycle-mobile .ixir-ds-cycle button {
    height: 30px !important;
    padding: 0 11px !important;
    font-size: 12px !important;
  }
  .ixir-ds-cycle-group {
    display: none !important;
  }
  .ixir-ds-filters-content {
    display: none !important;
    width: 100% !important;
    padding-top: 10px !important;
    border-top: 1px solid #eef2f6 !important;
    flex-direction: column !important;
    align-items: stretch !important;
    gap: 10px !important;
  }
  .ixir-ds-filters.is-open .ixir-ds-filters-content {
    display: flex !important;
  }
  .ixir-ds-filters fieldset {
    display: flex !important;
    flex-wrap: wrap !important;
    gap: 6px !important;
    width: 100% !important;
  }
  .ixir-ds-filters legend {
    width: 100% !important;
    margin-bottom: 4px !important;
  }
  .ixir-ds-chip span {
    padding: 6px 11px !important;
    font-size: 11.5px !important;
  }
  .ixir-ds-filters-reset {
    align-self: flex-start !important;
    margin-top: 4px !important;
  }
  .ixir-ds-dropdown {
    width: 100% !important;
  }
  .ixir-ds-dropdown-trigger {
    width: 100% !important;
    height: 34px !important;
    min-height: 34px !important;
    font-size: 12.5px !important;
    padding: 0 14px !important;
  }
  .ixir-ds-dropdown-menu {
    width: 100% !important;
    min-width: 100% !important;
  }
  .ixir-ds-dropdown-item {
    padding: 9px 12px !important;
    font-size: 13px !important;
  }

  .ixir-ds-toolbar {
    margin-bottom: 12px !important;
  }
  .ixir-ds-count {
    display: none !important;
  }
  .ixir-ds-view-toggle {
    display: inline-flex !important;
  }
  .ixir-ds-slider-counter {
    display: inline-flex !important;
  }

  .ixir-ds:not(.is-grid-view) .ixir-ds-list {
    display: flex !important;
    flex-direction: row !important;
    flex-wrap: nowrap !important;
    align-items: stretch !important;
    overflow-x: auto !important;
    scroll-snap-type: x mandatory !important;
    scroll-behavior: smooth !important;
    -webkit-overflow-scrolling: touch !important;
    gap: 12px !important;
    padding: 4px 2px 8px !important;
    scrollbar-width: none !important;
  }
  .ixir-ds:not(.is-grid-view) .ixir-ds-list::-webkit-scrollbar {
    display: none !important;
  }
  .ixir-ds:not(.is-grid-view) .ixir-ds-row {
    flex: 0 0 100% !important;
    width: 100% !important;
    min-width: 100% !important;
    max-width: 100% !important;
    scroll-snap-align: start !important;
  }

  .ixir-ds.is-grid-view .ixir-ds-list {
    display: flex !important;
    flex-direction: column !important;
    gap: 14px !important;
    overflow-x: visible !important;
  }

  .ixir-ds-row {
    display: flex !important;
    flex-direction: column !important;
    justify-content: space-between !important;
    padding: 24px 20px 20px !important;
    border-radius: 20px !important;
    background: #ffffff !important;
    border: 1px solid #e2e8f0 !important;
    box-shadow: 0 4px 20px -2px rgba(11, 37, 69, 0.05), 0 2px 6px -1px rgba(11, 37, 69, 0.03) !important;
    gap: 14px !important;
    transition: all 0.25s cubic-bezier(0.16, 1, 0.3, 1) !important;
    position: relative !important;
  }
  .ixir-ds.is-grid-view .ixir-ds-row {
    width: 100% !important;
    max-width: 100% !important;
  }
  .ixir-ds-row:hover {
    border-color: #cbd5e1 !important;
    box-shadow: 0 16px 36px -4px rgba(11, 37, 69, 0.1), 0 4px 12px rgba(11, 37, 69, 0.04) !important;
    transform: translateY(-3px) !important;
  }
  .ixir-ds-row--popular {
    border-color: #fbd746 !important;
    background: linear-gradient(180deg, #ffffff 0%, #fffef7 100%) !important;
    padding-top: 28px !important;
  }
  .ixir-ds-row--new {
    border-color: #a7f3d0 !important;
    background: linear-gradient(180deg, #ffffff 0%, #f0fdf4 100%) !important;
    padding-top: 28px !important;
  }

  .ixir-ds-ribbon {
    position: absolute !important;
    top: 0 !important;
    left: 20px !important;
    transform: none !important;
    border-radius: 0 0 10px 10px !important;
    padding: 4px 12px !important;
    font-size: 10px !important;
    font-weight: 800 !important;
    letter-spacing: 0.04em !important;
  }

  .ixir-ds-model {
    display: flex !important;
    flex-direction: column !important;
    align-items: center !important;
    text-align: center !important;
    gap: 4px !important;
    margin-bottom: 2px !important;
  }
  .ixir-ds-model-header {
    display: flex !important;
    align-items: center !important;
    justify-content: center !important;
    margin-bottom: 2px !important;
  }
  .ixir-ds-brand {
    display: inline-flex !important;
    align-items: center !important;
    justify-content: center !important;
    width: 48px !important;
    height: 48px !important;
    padding: 0 !important;
    border-radius: 50% !important;
    background: #ffffff !important;
    border: 1.5px solid #e2e8f0 !important;
    box-shadow: 0 3px 8px rgba(11, 37, 69, 0.08) !important;
  }
  .ixir-ds-brand-row-img {
    height: 28px !important;
    width: auto !important;
    max-width: 36px !important;
    object-fit: contain !important;
    display: block !important;
  }
  .ixir-ds-model-name {
    font-family: "Space Grotesk", "Roboto", sans-serif !important;
    font-size: 22px !important;
    font-weight: 800 !important;
    color: #0b2545 !important;
    letter-spacing: -0.02em !important;
    line-height: 1.2 !important;
    margin: 4px 0 6px !important;
  }
  .ixir-ds-rack-wrap {
    display: flex !important;
    align-items: center !important;
    justify-content: center !important;
    width: 100% !important;
    max-width: 170px !important;
    margin: 0 auto 6px !important;
  }
  .ixir-ds-rack {
    width: 100% !important;
    height: auto !important;
    max-height: 38px !important;
    object-fit: contain !important;
    display: block !important;
    filter: drop-shadow(0 4px 8px rgba(11, 37, 69, 0.12)) !important;
  }

  .ixir-ds-specs-grid {
    display: flex !important;
    flex-direction: column !important;
    gap: 7px !important;
    width: 100% !important;
    margin: 6px 0 !important;
  }
  .ixir-ds-cell {
    display: flex !important;
    align-items: center !important;
    gap: 10px !important;
    padding: 8px 12px !important;
    background: #f8fafc !important;
    border: 1px solid #edf2f7 !important;
    border-radius: 12px !important;
    box-sizing: border-box !important;
    width: 100% !important;
    min-width: 0 !important;
    transition: all 0.18s ease !important;
  }
  .ixir-ds-cell:hover {
    background: #ffffff !important;
    border-color: #cbd5e1 !important;
    box-shadow: 0 3px 10px rgba(11, 37, 69, 0.05) !important;
  }

  .ixir-ds-cpu {
    order: 1 !important;
    min-height: 52px !important;
  }
  .ixir-ds-port {
    order: 2 !important;
    min-height: 48px !important;
  }
  .ixir-ds-port:hover {
    background: #ffffff !important;
  }
  .ixir-ds-disk {
    order: 3 !important;
    min-height: 48px !important;
  }
  .ixir-ds-ram {
    order: 4 !important;
    min-height: 48px !important;
  }

  .ixir-ds-cell-icon {
    width: 32px !important;
    height: 32px !important;
    flex: 0 0 32px !important;
    border-radius: 9px !important;
    display: inline-flex !important;
    align-items: center !important;
    justify-content: center !important;
    font-size: 13px !important;
    box-shadow: 0 1px 3px rgba(11, 37, 69, 0.04) !important;
  }
  .ixir-ds-cpu .ixir-ds-cell-icon {
    background: #eff6ff !important;
    color: #2563eb !important;
    border: 1px solid #dbeafe !important;
  }
  .ixir-ds-ram .ixir-ds-cell-icon {
    background: #f5f3ff !important;
    color: #7c3aed !important;
    border: 1px solid #ede9fe !important;
  }
  .ixir-ds-disk .ixir-ds-cell-icon {
    background: #fefce8 !important;
    color: #ca8a04 !important;
    border: 1px solid #fef08a !important;
  }
  .ixir-ds-port .ixir-ds-cell-icon {
    background: #dcfce7 !important;
    color: #16a34a !important;
    border: 1px solid #bbf7d0 !important;
  }

  .ixir-ds-cell-meta {
    display: flex !important;
    flex-direction: column !important;
    min-width: 0 !important;
    text-align: left !important;
    justify-content: center !important;
  }
  .ixir-ds-cell-label {
    display: block !important;
    font-size: 9.5px !important;
    font-weight: 800 !important;
    letter-spacing: 0.06em !important;
    text-transform: uppercase !important;
    color: #64748b !important;
    margin-bottom: 2px !important;
    line-height: 1 !important;
  }
  .ixir-ds-cell b {
    font-size: 13.5px !important;
    font-weight: 700 !important;
    color: #0b2545 !important;
    line-height: 1.25 !important;
    word-break: break-word !important;
  }

  .ixir-ds-cell-sub {
    font-size: 11px !important;
    color: #64748b !important;
    line-height: 1.3 !important;
    margin-top: 2px !important;
  }
  .ixir-ds-disk-title {
    display: inline-flex !important;
    align-items: center !important;
    gap: 5px !important;
    flex-wrap: wrap !important;
  }
  .ixir-ds-disk-tag {
    display: inline-block !important;
    padding: 1px 6px !important;
    border-radius: 999px !important;
    font-size: 9.5px !important;
    font-weight: 800 !important;
  }
  .ixir-ds-disk-tag--ssd {
    background: #dbeafe !important;
    color: #1d4ed8 !important;
  }
  .ixir-ds-disk-tag--nvme {
    background: #fef3c7 !important;
    color: #b45309 !important;
  }
  .ixir-ds-disk-tag--sas {
    background: #f1f5f9 !important;
    color: #475569 !important;
  }
  .ixir-ds-traffic-line {
    display: inline-flex !important;
    align-items: center !important;
    gap: 6px !important;
    flex-wrap: wrap !important;
  }

  .ixir-ds-tip {
    position: relative !important;
    display: inline-flex !important;
    align-items: center !important;
    cursor: pointer !important;
  }
  .ixir-ds-tip i {
    color: #94a3b8 !important;
    font-size: 11.5px !important;
    transition: color 0.15s ease !important;
  }
  .ixir-ds-tip:hover i,
  .ixir-ds-tip.is-active i {
    color: #2563eb !important;
  }

  .ixir-ds-buy-col {
    display: flex !important;
    flex-direction: row !important;
    align-items: center !important;
    justify-content: space-between !important;
    gap: 12px !important;
    padding-top: 14px !important;
    border-top: 1px solid #f1f5f9 !important;
    margin-top: 6px !important;
  }
  .ixir-ds-price-wrapper {
    display: flex !important;
    flex-direction: column !important;
    align-items: flex-start !important;
    gap: 2px !important;
  }
  .ixir-ds-price {
    display: flex !important;
    align-items: baseline !important;
    gap: 4px !important;
    line-height: 1 !important;
  }
  .ixir-ds-price b {
    font-family: "Space Grotesk", "Roboto", sans-serif !important;
    font-size: 24px !important;
    font-weight: 800 !important;
    color: #0b2545 !important;
  }
  .ixir-ds-tax-note {
    font-size: 11px !important;
    color: #94a3b8 !important;
  }
  .ixir-ds-buy {
    display: inline-flex !important;
    align-items: center !important;
    justify-content: center !important;
    gap: 8px !important;
    height: 42px !important;
    padding: 0 22px !important;
    border-radius: 12px !important;
    background: #fbd746 !important;
    color: #0b2545 !important;
    font-size: 13px !important;
    font-weight: 800 !important;
    letter-spacing: 0.04em !important;
    text-transform: uppercase !important;
    text-decoration: none !important;
    box-shadow: 0 4px 14px rgba(251, 215, 70, 0.35) !important;
  }
  .ixir-ds-buy:hover {
    background: #0b2545 !important;
    color: #ffffff !important;
    box-shadow: 0 8px 24px rgba(11, 37, 69, 0.22) !important;
  }
  .ixir-ds-buy:hover i {
    transform: translateX(4px) !important;
  }

  .ixir-ds-tip-text {
    width: 200px !important;
    left: auto !important;
    right: -10px !important;
    transform: translateY(4px) !important;
  }
  .ixir-ds-tip-text::after {
    left: auto !important;
    right: 14px !important;
    transform: none !important;
  }
  .ixir-ds-tip:hover .ixir-ds-tip-text,
  .ixir-ds-tip:focus .ixir-ds-tip-text,
  .ixir-ds-tip.is-active .ixir-ds-tip-text {
    transform: translateY(0) !important;
  }
}
.ixir-ds-lightbox {
  position: fixed !important;
  top: 0 !important;
  left: 0 !important;
  right: 0 !important;
  bottom: 0 !important;
  width: 100vw !important;
  height: 100vh !important;
  z-index: 99999999 !important;
  display: flex !important;
  align-items: center !important;
  justify-content: center !important;
  padding: 24px !important;
  box-sizing: border-box !important;
  opacity: 0 !important;
  visibility: hidden !important;
  pointer-events: none !important;
  margin: 0 !important;
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
  top: 0 !important;
  left: 0 !important;
  width: 100% !important;
  height: 100% !important;
  background: rgba(11, 37, 69, 0.78) !important;
  backdrop-filter: blur(8px) !important;
  -webkit-backdrop-filter: blur(8px) !important;
}
.ixir-ds-lightbox-dialog {
  position: relative !important;
  z-index: 2 !important;
  margin: auto !important;
  background: #ffffff !important;
  border-radius: 20px !important;
  padding: 28px 24px 22px !important;
  max-width: 580px !important;
  width: 100% !important;
  max-height: 88vh !important;
  box-sizing: border-box !important;
  box-shadow: 0 25px 60px -10px rgba(0, 0, 0, 0.45) !important;
  transform: scale(0.92) !important;
  transition: transform 0.25s cubic-bezier(0.16, 1, 0.3, 1) !important;
  display: flex !important;
  flex-direction: column !important;
  align-items: center !important;
  text-align: center !important;
  overflow-y: auto !important;
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
  padding: 32px 20px !important;
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
  max-height: 42vh !important;
  object-fit: contain !important;
  transform: scale(1.2) !important;
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
    <div class="ixir-ds-filter-mobile-bar">
     <button type="button" class="ixir-ds-filter-toggle" aria-expanded="false" aria-controls="ixir-ds-filter-content">
      <i class="far fa-sliders-h" aria-hidden="true"></i>
      <span>Filtrele</span>
      <span class="ixir-ds-filter-badge" data-ds-active-filter style="display:none;">0</span>
     </button>
     <div class="ixir-ds-cycle-mobile">
      <div class="ixir-ds-cycle" role="radiogroup" aria-label="Ödeme Dönemi Mobil">
       <button type="button" role="radio" aria-checked="true" data-ds-cycle="monthly">Aylık</button>
       <button type="button" role="radio" aria-checked="false" data-ds-cycle="annually">Yıllık</button>
      </div>
     </div>
    </div>

    <div class="ixir-ds-filters-content" id="ixir-ds-filter-content">
      <div class="ixir-ds-filter-group ixir-ds-filter-group--brand">
       <span class="ixir-ds-filter-label"><i class="fas fa-tags" aria-hidden="true"></i> Marka</span>
       <div class="ixir-ds-dropdown" id="ixir-ds-brand-dropdown">
        <button type="button" class="ixir-ds-dropdown-trigger" aria-haspopup="listbox" aria-expanded="false" id="ixir-ds-brand-trigger">
         <span class="ixir-ds-dropdown-value" data-ds-brand-label>Tümü</span>
         <i class="fas fa-chevron-down ixir-ds-dropdown-arrow" aria-hidden="true"></i>
        </button>
        <div class="ixir-ds-dropdown-menu" role="listbox" aria-labelledby="ixir-ds-brand-trigger">
         <button type="button" role="option" class="ixir-ds-dropdown-item is-selected" data-val="" aria-selected="true">
          <span>Tümü</span>
          <i class="fas fa-check ixir-ds-dropdown-check" aria-hidden="true"></i>
         </button>
         <button type="button" role="option" class="ixir-ds-dropdown-item" data-val="dell" aria-selected="false">
          <span class="ixir-ds-brand-opt"><img class="ixir-ds-brand-drop-img" src="{$WEB_ROOT}/templates/{$template}/img/server/dell.webp" alt="Dell" width="18" height="18" loading="lazy"> Dell</span>
          <i class="fas fa-check ixir-ds-dropdown-check" aria-hidden="true"></i>
         </button>
         <button type="button" role="option" class="ixir-ds-dropdown-item" data-val="intel" aria-selected="false">
          <span class="ixir-ds-brand-opt"><img class="ixir-ds-brand-drop-img" src="{$WEB_ROOT}/templates/{$template}/img/server/intel.webp" alt="Intel" width="18" height="18" loading="lazy"> Intel</span>
          <i class="fas fa-check ixir-ds-dropdown-check" aria-hidden="true"></i>
         </button>
         <button type="button" role="option" class="ixir-ds-dropdown-item" data-val="hp" aria-selected="false">
          <span class="ixir-ds-brand-opt"><img class="ixir-ds-brand-drop-img" src="{$WEB_ROOT}/templates/{$template}/img/server/hp.webp" alt="HP" width="18" height="18" loading="lazy"> HP</span>
          <i class="fas fa-check ixir-ds-dropdown-check" aria-hidden="true"></i>
         </button>
        </div>
        <input type="hidden" name="brand" value="" id="ixir-ds-brand-input">
       </div>
      </div>

      <div class="ixir-ds-filter-divider" aria-hidden="true"></div>

      <div class="ixir-ds-filter-group ixir-ds-filter-group--disk">
       <span class="ixir-ds-filter-label"><i class="fas fa-hdd" aria-hidden="true"></i> Disk</span>
       <div class="ixir-ds-dropdown" id="ixir-ds-disk-dropdown">
        <button type="button" class="ixir-ds-dropdown-trigger" aria-haspopup="listbox" aria-expanded="false" id="ixir-ds-disk-trigger">
         <span class="ixir-ds-dropdown-value" data-ds-disk-label>Tümü</span>
         <i class="fas fa-chevron-down ixir-ds-dropdown-arrow" aria-hidden="true"></i>
        </button>
        <div class="ixir-ds-dropdown-menu" role="listbox" aria-labelledby="ixir-ds-disk-trigger">
         <button type="button" role="option" class="ixir-ds-dropdown-item is-selected" data-val="" aria-selected="true">
          <span>Tümü</span>
          <i class="fas fa-check ixir-ds-dropdown-check" aria-hidden="true"></i>
         </button>
         <button type="button" role="option" class="ixir-ds-dropdown-item" data-val="ssd" aria-selected="false">
          <span>SSD</span>
          <i class="fas fa-check ixir-ds-dropdown-check" aria-hidden="true"></i>
         </button>
         <button type="button" role="option" class="ixir-ds-dropdown-item" data-val="nvme" aria-selected="false">
          <span>NVMe</span>
          <i class="fas fa-check ixir-ds-dropdown-check" aria-hidden="true"></i>
         </button>
         <button type="button" role="option" class="ixir-ds-dropdown-item" data-val="sas" aria-selected="false">
          <span>SAS</span>
          <i class="fas fa-check ixir-ds-dropdown-check" aria-hidden="true"></i>
         </button>
        </div>
        <input type="hidden" name="disk" value="" id="ixir-ds-disk-input">
       </div>
      </div>

      <div class="ixir-ds-filter-divider" aria-hidden="true"></div>

      <div class="ixir-ds-filter-group ixir-ds-filter-group--cpu">
       <span class="ixir-ds-filter-label"><i class="fas fa-microchip" aria-hidden="true"></i> CPU</span>
       <div class="ixir-ds-dropdown" id="ixir-ds-cpu-dropdown">
        <button type="button" class="ixir-ds-dropdown-trigger" aria-haspopup="listbox" aria-expanded="false" id="ixir-ds-cpu-trigger">
         <span class="ixir-ds-dropdown-value" data-ds-cpu-label>Tümü</span>
         <i class="fas fa-chevron-down ixir-ds-dropdown-arrow" aria-hidden="true"></i>
        </button>
        <div class="ixir-ds-dropdown-menu" role="listbox" aria-labelledby="ixir-ds-cpu-trigger">
         <button type="button" role="option" class="ixir-ds-dropdown-item is-selected" data-val="0" aria-selected="true">
          <span>Tümü</span>
          <i class="fas fa-check ixir-ds-dropdown-check" aria-hidden="true"></i>
         </button>
         <button type="button" role="option" class="ixir-ds-dropdown-item" data-val="1" aria-selected="false">
          <span>1</span>
          <i class="fas fa-check ixir-ds-dropdown-check" aria-hidden="true"></i>
         </button>
         <button type="button" role="option" class="ixir-ds-dropdown-item" data-val="2" aria-selected="false">
          <span>2</span>
          <i class="fas fa-check ixir-ds-dropdown-check" aria-hidden="true"></i>
         </button>
        </div>
        <input type="hidden" name="cpu" value="0" id="ixir-ds-cpu-input">
       </div>
      </div>

      <div class="ixir-ds-filter-divider" aria-hidden="true"></div>

      <div class="ixir-ds-filter-group ixir-ds-filter-group--ram">
       <span class="ixir-ds-filter-label"><i class="fas fa-memory" aria-hidden="true"></i> RAM</span>
       <div class="ixir-ds-dropdown" id="ixir-ds-ram-dropdown">
        <button type="button" class="ixir-ds-dropdown-trigger" aria-haspopup="listbox" aria-expanded="false" id="ixir-ds-ram-trigger">
         <span class="ixir-ds-dropdown-value" data-ds-ram-label>Tümü</span>
         <i class="fas fa-chevron-down ixir-ds-dropdown-arrow" aria-hidden="true"></i>
        </button>
        <div class="ixir-ds-dropdown-menu" role="listbox" aria-labelledby="ixir-ds-ram-trigger">
         <button type="button" role="option" class="ixir-ds-dropdown-item is-selected" data-val="0" aria-selected="true">
          <span>Tümü</span>
          <i class="fas fa-check ixir-ds-dropdown-check" aria-hidden="true"></i>
         </button>
         <button type="button" role="option" class="ixir-ds-dropdown-item" data-val="64" aria-selected="false">
          <span>64 GB ve üzeri</span>
          <i class="fas fa-check ixir-ds-dropdown-check" aria-hidden="true"></i>
         </button>
         <button type="button" role="option" class="ixir-ds-dropdown-item" data-val="128" aria-selected="false">
          <span>128 GB ve üzeri</span>
          <i class="fas fa-check ixir-ds-dropdown-check" aria-hidden="true"></i>
         </button>
         <button type="button" role="option" class="ixir-ds-dropdown-item" data-val="256" aria-selected="false">
          <span>256 GB ve üzeri</span>
          <i class="fas fa-check ixir-ds-dropdown-check" aria-hidden="true"></i>
         </button>
         <button type="button" role="option" class="ixir-ds-dropdown-item" data-val="512" aria-selected="false">
          <span>512 GB ve üzeri</span>
          <i class="fas fa-check ixir-ds-dropdown-check" aria-hidden="true"></i>
         </button>
        </div>
        <input type="hidden" name="ram" value="0" id="ixir-ds-ram-input">
       </div>
      </div>

      <div class="ixir-ds-filter-divider" aria-hidden="true"></div>

      <button type="button" class="ixir-ds-filters-reset" data-ds-reset title="Filtreleri Temizle">
        <i class="far fa-undo" aria-hidden="true"></i><span>Temizle</span>
      </button>

      <div class="ixir-ds-cycle-group">
       <div class="ixir-ds-cycle" role="radiogroup" aria-label="Ödeme Dönemi">
        <button type="button" role="radio" aria-checked="true" data-ds-cycle="monthly">Aylık</button>
        <button type="button" role="radio" aria-checked="false" data-ds-cycle="annually">Yıllık</button>
       </div>
      </div>
    </div>
   </div>

   <div class="ixir-ds-main">
    <div class="ixir-ds-toolbar">
     <div class="ixir-ds-toolbar-left">
      <p class="ixir-ds-count" aria-live="polite"><b data-ds-count>{$ixirDsServers|count}</b> sunucu listeleniyor.</p>
     </div>
     <div class="ixir-ds-toolbar-right">
      <div class="ixir-ds-view-toggle" role="group" aria-label="Görünüm modu">
       <button type="button" class="ixir-ds-view-btn is-active" data-ds-view="slider" aria-pressed="true" title="Slayt ile kaydır">
        <i class="fas fa-sliders-h" aria-hidden="true"></i><span>Slayt</span>
       </button>
       <button type="button" class="ixir-ds-view-btn" data-ds-view="grid" aria-pressed="false" title="Tümünü tek ekranda listele">
        <i class="fas fa-th-large" aria-hidden="true"></i><span>Liste</span>
       </button>
      </div>
      <div class="ixir-ds-slider-counter" aria-live="polite">
       <span class="ixir-ds-counter-badge"><b data-ds-curr-slide>1</b> / <span data-ds-total-slides>{$ixirDsServers|count}</span></span>
      </div>
     </div>
    </div>

    <div class="ixir-ds-thead">
     <span class="ixir-ds-th-col"><i class="fas fa-server" aria-hidden="true"></i> Model</span>
     <span class="ixir-ds-th-col"><i class="fas fa-microchip" aria-hidden="true"></i> CPU (İşlemci)</span>
     <button type="button" class="ixir-ds-sort" data-ds-sort="ram" aria-label="RAM'e göre sırala">
      <i class="fas fa-memory" aria-hidden="true"></i> RAM <i class="fas fa-sort ixir-ds-sort-icon" aria-hidden="true"></i>
     </button>
     <button type="button" class="ixir-ds-sort" data-ds-sort="disk" aria-label="Disk boyutuna göre sırala">
      <i class="fas fa-hdd" aria-hidden="true"></i> Disk <i class="fas fa-sort ixir-ds-sort-icon" aria-hidden="true"></i>
     </button>
     <span class="ixir-ds-th-col"><i class="fas fa-network-wired" aria-hidden="true"></i> Port & Trafik</span>
     <button type="button" class="ixir-ds-sort ixir-ds-sort--price" data-ds-sort="price" aria-label="Fiyata göre sırala">
      <i class="fas fa-lira-sign" aria-hidden="true"></i> Fiyat <i class="fas fa-sort ixir-ds-sort-icon" aria-hidden="true"></i>
     </button>
    </div>

    <ul class="ixir-ds-list">
     {foreach $ixirDsServers as $server}
     <li class="ixir-ds-row{if $server.badge} ixir-ds-row--{$server.badge}{/if}"
      data-brand="{$server.brand}" data-disk="{$server.diskType}" data-cpu="{$server.cpuCount}"
      data-ram="{$server.ram}">
      {if $server.badge == 'popular'}
      <span class="ixir-ds-ribbon"><i class="fas fa-fire-alt" aria-hidden="true"></i> En Popüler</span>
      {elseif $server.badge == 'new'}
      <span class="ixir-ds-ribbon ixir-ds-ribbon--new"><i class="fas fa-sparkles" aria-hidden="true"></i> Yeni</span>
      {/if}

      <div class="ixir-ds-model">
       <div class="ixir-ds-model-header">
        <span class="ixir-ds-brand ixir-ds-brand--{$server.brand}" title="{$server.brandLabel}">
         <img class="ixir-ds-brand-row-img" src="{$WEB_ROOT}/templates/{$template}/img/server/{$server.brand}.webp" alt="{$server.brandLabel}" width="24" height="24" loading="lazy">
        </span>
       </div>
       <h3 class="ixir-ds-model-name">{$server.name}</h3>
       <div class="ixir-ds-rack-wrap">
        <img class="ixir-ds-rack" src="{$WEB_ROOT}/templates/{$template}/img/server/1u-server.webp" width="162"
         height="34" alt="{$server.name} 1U Donanım Görünümü" loading="lazy" decoding="async">
       </div>
      </div>

      <div class="ixir-ds-specs-grid">
       <div class="ixir-ds-cell ixir-ds-cpu" data-label="CPU">
        <div class="ixir-ds-cell-icon"><i class="fas fa-microchip" aria-hidden="true"></i></div>
        <div class="ixir-ds-cell-meta">
         <span class="ixir-ds-cell-label">CPU</span>
         <b>{$server.cpuCount}x {$server.cpu}</b>
         <span class="ixir-ds-cell-sub">{$server.cores}</span>
        </div>
       </div>

       <div class="ixir-ds-cell ixir-ds-ram" data-label="RAM">
        <div class="ixir-ds-cell-icon"><i class="fas fa-memory" aria-hidden="true"></i></div>
        <div class="ixir-ds-cell-meta">
         <span class="ixir-ds-cell-label">RAM</span>
         <b>{$server.ram} GB</b>
        </div>
       </div>

       <div class="ixir-ds-cell ixir-ds-disk" data-label="Disk">
        <div class="ixir-ds-cell-icon"><i class="fas fa-hdd" aria-hidden="true"></i></div>
        <div class="ixir-ds-cell-meta">
         <span class="ixir-ds-cell-label">Disk</span>
         <div class="ixir-ds-disk-title">
          <b>{$server.disk}</b>
          <span class="ixir-ds-disk-tag ixir-ds-disk-tag--{$server.diskType}">{$server.diskType|upper}</span>
          <span class="ixir-ds-tip" tabindex="0">
           <i class="far fa-info-circle" aria-hidden="true"></i>
           <span class="ixir-ds-tip-text" role="tooltip">{$server.diskTip}</span>
          </span>
         </div>
        </div>
       </div>

       <div class="ixir-ds-cell ixir-ds-port" data-label="Port & Trafik">
        <div class="ixir-ds-cell-icon"><i class="fas fa-network-wired" aria-hidden="true"></i></div>
        <div class="ixir-ds-cell-meta">
         <span class="ixir-ds-cell-label">Port & Trafik</span>
         <div class="ixir-ds-traffic-line">
          <b>1 Gbit Port | Limitsiz Trafik</b>
          <span class="ixir-ds-tip" tabindex="0">
           <i class="far fa-info-circle" aria-hidden="true"></i>
           <span class="ixir-ds-tip-text" role="tooltip">1 Gbit Port üzerinden Limitledirilmemiş Trafik (Sürekli ve yoğun kullanımlarda port veya trafik limiti uygulanabilir.)</span>
          </span>
         </div>
        </div>
       </div>
      </div>

      <div class="ixir-ds-buy-col">
       <div class="ixir-ds-price-wrapper">
        <p class="ixir-ds-price">
         <b data-ds-price data-monthly="{$server.monthly}"
          data-annually="{$server.annually}">{$server.monthly|number_format:0:",":"."} ₺</b><small>/ay</small>
        </p>
       </div>
       <a class="ixir-ds-buy" href="{$WEB_ROOT}/store">
        <span>Yapılandır</span>
        <i class="far fa-arrow-right" aria-hidden="true"></i>
       </a>
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

 <div id="ixir-ds-lightbox" class="ixir-ds-lightbox" aria-hidden="true" role="dialog" aria-modal="true" aria-label="Sunucu Görseli">
  <div class="ixir-ds-lightbox-backdrop"></div>
  <div class="ixir-ds-lightbox-dialog">
   <button type="button" class="ixir-ds-lightbox-close" aria-label="Kapat">&times;</button>
   <div class="ixir-ds-lightbox-header">
    <span id="ixir-ds-lightbox-brand" class="ixir-ds-brand">
     <img id="ixir-ds-lightbox-brand-img" class="ixir-ds-brand-row-img" src="{$WEB_ROOT}/templates/{$template}/img/server/dell.webp" alt="DELL" width="24" height="24">
    </span>
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
  var activeFilterBadge = root.querySelector('[data-ds-active-filter]');

  var list = root.querySelector('.ixir-ds-list');
  var sliderNav = root.querySelector('#ixir-ds-slider-nav');
  var prevBtn = root.querySelector('[data-ds-slider-prev]');
  var nextBtn = root.querySelector('[data-ds-slider-next]');
  var dotsWrap = root.querySelector('[data-ds-slider-dots]');
  var currSlideEl = root.querySelector('[data-ds-curr-slide]');
  var totalSlidesEl = root.querySelector('[data-ds-total-slides]');
  var viewButtons = root.querySelectorAll('[data-ds-view]');

  var currentSlideIndex = 0;
  var currentViewMode = 'slider';

  var lightbox = document.getElementById('ixir-ds-lightbox');
  var lightboxImg = document.getElementById('ixir-ds-lightbox-img');
  var lightboxTitle = document.getElementById('ixir-ds-lightbox-title');
  var lightboxBrand = document.getElementById('ixir-ds-lightbox-brand');
  var lightboxClose = lightbox ? lightbox.querySelector('.ixir-ds-lightbox-close') : null;
  var lightboxBackdrop = lightbox ? lightbox.querySelector('.ixir-ds-lightbox-backdrop') : null;

  if (lightbox && lightbox.parentElement !== document.body) {
    document.body.appendChild(lightbox);
  }

  function isSliderActive() {
    return window.innerWidth <= 1025 && currentViewMode === 'slider';
  }

  function getPerView() {
    if (window.innerWidth >= 768 && window.innerWidth <= 1025) return 2;
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

    sliderNav.style.display = 'flex';

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

  function setViewMode(mode) {
    currentViewMode = mode;
    for (var v = 0; v < viewButtons.length; v++) {
      var active = viewButtons[v].getAttribute('data-ds-view') === mode;
      viewButtons[v].classList.toggle('is-active', active);
      viewButtons[v].setAttribute('aria-pressed', active ? 'true' : 'false');
    }

    if (mode === 'grid') {
      root.classList.add('is-grid-view');
      if (sliderNav) sliderNav.style.display = 'none';
    } else {
      root.classList.remove('is-grid-view');
      currentSlideIndex = 0;
      list.scrollLeft = 0;
      rebuildSlider();
    }
  }

  for (var v = 0; v < viewButtons.length; v++) {
    viewButtons[v].addEventListener('click', function() {
      setViewMode(this.getAttribute('data-ds-view'));
    });
  }

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

  var isPointerDown = false;
  var startX = 0;
  var startScrollLeft = 0;
  var hasMoved = false;

  list.addEventListener('pointerdown', function(e) {
    if (!isSliderActive()) return;
    if (e.target.closest('button, a, input, label, select, .ixir-ds-rack, .ixir-ds-tip')) return;
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

  var brandDropdown = document.getElementById('ixir-ds-brand-dropdown');
  var brandTrigger = document.getElementById('ixir-ds-brand-trigger');
  var brandInput = document.getElementById('ixir-ds-brand-input');
  var brandLabel = root.querySelector('[data-ds-brand-label]');
  var brandItems = brandDropdown ? brandDropdown.querySelectorAll('.ixir-ds-dropdown-item') : [];

  var diskDropdown = document.getElementById('ixir-ds-disk-dropdown');
  var diskTrigger = document.getElementById('ixir-ds-disk-trigger');
  var diskInput = document.getElementById('ixir-ds-disk-input');
  var diskLabel = root.querySelector('[data-ds-disk-label]');
  var diskItems = diskDropdown ? diskDropdown.querySelectorAll('.ixir-ds-dropdown-item') : [];

  var cpuDropdown = document.getElementById('ixir-ds-cpu-dropdown');
  var cpuTrigger = document.getElementById('ixir-ds-cpu-trigger');
  var cpuInput = document.getElementById('ixir-ds-cpu-input');
  var cpuLabel = root.querySelector('[data-ds-cpu-label]');
  var cpuItems = cpuDropdown ? cpuDropdown.querySelectorAll('.ixir-ds-dropdown-item') : [];

  var ramDropdown = document.getElementById('ixir-ds-ram-dropdown');
  var ramTrigger = document.getElementById('ixir-ds-ram-trigger');
  var ramInput = document.getElementById('ixir-ds-ram-input');
  var ramLabel = root.querySelector('[data-ds-ram-label]');
  var ramItems = ramDropdown ? ramDropdown.querySelectorAll('.ixir-ds-dropdown-item') : [];

  function setBrandValue(val, text) {
    if (!brandInput) return;
    brandInput.value = val;
    if (brandLabel) brandLabel.textContent = text || 'Tümü';

    if (brandTrigger) {
      if (val) {
        brandTrigger.classList.add('is-active');
      } else {
        brandTrigger.classList.remove('is-active');
      }
    }

    for (var i = 0; i < brandItems.length; i++) {
      var isSel = brandItems[i].getAttribute('data-val') === String(val);
      brandItems[i].classList.toggle('is-selected', isSel);
      brandItems[i].setAttribute('aria-selected', isSel ? 'true' : 'false');
    }

    applyFilters();
  }

  function setDiskValue(val, text) {
    if (!diskInput) return;
    diskInput.value = val;
    if (diskLabel) diskLabel.textContent = text || 'Tümü';

    if (diskTrigger) {
      if (val) {
        diskTrigger.classList.add('is-active');
      } else {
        diskTrigger.classList.remove('is-active');
      }
    }

    for (var i = 0; i < diskItems.length; i++) {
      var isSel = diskItems[i].getAttribute('data-val') === String(val);
      diskItems[i].classList.toggle('is-selected', isSel);
      diskItems[i].setAttribute('aria-selected', isSel ? 'true' : 'false');
    }

    applyFilters();
  }

  function setCpuValue(val, text) {
    if (!cpuInput) return;
    cpuInput.value = val;
    if (cpuLabel) cpuLabel.textContent = text || 'Tümü';

    var cVal = parseInt(val, 10) || 0;
    if (cpuTrigger) {
      if (cVal > 0) {
        cpuTrigger.classList.add('is-active');
      } else {
        cpuTrigger.classList.remove('is-active');
      }
    }

    for (var i = 0; i < cpuItems.length; i++) {
      var isSel = cpuItems[i].getAttribute('data-val') === String(val);
      cpuItems[i].classList.toggle('is-selected', isSel);
      cpuItems[i].setAttribute('aria-selected', isSel ? 'true' : 'false');
    }

    applyFilters();
  }

  function setRamValue(val, text) {
    if (!ramInput) return;
    ramInput.value = val;
    if (ramLabel) ramLabel.textContent = text || 'Tümü';

    var minRam = parseInt(val, 10) || 0;
    if (ramTrigger) {
      if (minRam > 0) {
        ramTrigger.classList.add('is-active');
      } else {
        ramTrigger.classList.remove('is-active');
      }
    }

    for (var i = 0; i < ramItems.length; i++) {
      var isSel = ramItems[i].getAttribute('data-val') === String(val);
      ramItems[i].classList.toggle('is-selected', isSel);
      ramItems[i].setAttribute('aria-selected', isSel ? 'true' : 'false');
    }

    applyFilters();
  }

  var dropdownList = [
    { dd: brandDropdown, trg: brandTrigger },
    { dd: diskDropdown, trg: diskTrigger },
    { dd: cpuDropdown, trg: cpuTrigger },
    { dd: ramDropdown, trg: ramTrigger }
  ];

  function closeAllDropdowns(exceptDd) {
    for (var d = 0; d < dropdownList.length; d++) {
      if (dropdownList[d].dd && dropdownList[d].dd !== exceptDd) {
        dropdownList[d].dd.classList.remove('is-open');
        if (dropdownList[d].trg) dropdownList[d].trg.setAttribute('aria-expanded', 'false');
      }
    }
  }

  function bindDropdown(dd, trg, items, onSelect) {
    if (!dd || !trg) return;
    trg.addEventListener('click', function(e) {
      e.stopPropagation();
      var isOpen = dd.classList.contains('is-open');
      closeAllDropdowns(isOpen ? null : dd);
      dd.classList.toggle('is-open', !isOpen);
      trg.setAttribute('aria-expanded', !isOpen ? 'true' : 'false');
    });

    for (var i = 0; i < items.length; i++) {
      items[i].addEventListener('click', function(e) {
        e.stopPropagation();
        var val = this.getAttribute('data-val');
        var text = this.textContent.trim();
        onSelect(val, text);
        dd.classList.remove('is-open');
        trg.setAttribute('aria-expanded', 'false');
      });
    }
  }

  bindDropdown(brandDropdown, brandTrigger, brandItems, setBrandValue);
  bindDropdown(diskDropdown, diskTrigger, diskItems, setDiskValue);
  bindDropdown(cpuDropdown, cpuTrigger, cpuItems, setCpuValue);
  bindDropdown(ramDropdown, ramTrigger, ramItems, setRamValue);

  document.addEventListener('click', function(e) {
    if (!e.target.closest('.ixir-ds-dropdown')) {
      closeAllDropdowns(null);
    }
  });

  document.addEventListener('keydown', function(e) {
    if (e.key === 'Escape') {
      closeAllDropdowns(null);
    }
  });

  function applyFilters() {
    var brandVal = brandInput ? brandInput.value : '';
    var diskVal = diskInput ? diskInput.value : '';
    var cpuVal = cpuInput ? cpuInput.value : '0';
    var cpuCount = parseInt(cpuVal, 10) || 0;
    var ramVal = ramInput ? ramInput.value : '0';
    var minRam = parseInt(ramVal, 10) || 0;

    var activeCount = (brandVal ? 1 : 0) + (diskVal ? 1 : 0) + (cpuCount > 0 ? 1 : 0) + (minRam > 0 ? 1 : 0);
    if (activeFilterBadge) {
      if (activeCount > 0) {
        activeFilterBadge.textContent = activeCount;
        activeFilterBadge.style.display = 'inline-flex';
      } else {
        activeFilterBadge.style.display = 'none';
      }
    }

    var visible = 0;
    for (var i = 0; i < rows.length; i++) {
      var row = rows[i];
      var rowCpu = parseInt(row.getAttribute('data-cpu'), 10) || 0;
      var show = (!diskVal || row.getAttribute('data-disk') === diskVal) &&
        (!brandVal || row.getAttribute('data-brand') === brandVal) &&
        (!cpuCount || rowCpu === cpuCount) &&
        parseInt(row.getAttribute('data-ram'), 10) >= minRam;
      row.hidden = !show;
      if (show) visible++;
    }

    if (countEl) countEl.textContent = visible;
    if (emptyEl) emptyEl.hidden = visible !== 0;

    currentSlideIndex = 0;
    list.scrollLeft = 0;
    rebuildSlider();
  }

  function setCycle(cycle) {
    for (var i = 0; i < cycleButtons.length; i++) {
      cycleButtons[i].setAttribute('aria-checked', cycleButtons[i].getAttribute('data-ds-cycle') === cycle ? 'true' : 'false');
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
      setBrandValue('', 'Tümü');
      setDiskValue('', 'Tümü');
      setCpuValue('0', 'Tümü');
      setRamValue('0', 'Tümü');
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
      var icon = btn.querySelector('.ixir-ds-sort-icon');
      btn.classList.toggle('is-active', active);
      btn.setAttribute('data-dir', active ? (dir > 0 ? 'asc' : 'desc') : '');
      if (icon) icon.className = 'fas ' + (active ? (dir > 0 ? 'fa-sort-up' : 'fa-sort-down') : 'fa-sort') + ' ixir-ds-sort-icon';
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
      var icon = btn.querySelector('.ixir-ds-sort-icon');
      btn.classList.remove('is-active');
      btn.setAttribute('data-dir', '');
      if (icon) icon.className = 'fas fa-sort ixir-ds-sort-icon';
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
    if (panel) panel.hidden = !open;
  });

  if (filterToggle) {
    filterToggle.addEventListener('click', function() {
      var open = filterToggle.getAttribute('aria-expanded') !== 'true';
      filterToggle.setAttribute('aria-expanded', open ? 'true' : 'false');
      filters.classList.toggle('is-open', open);
    });
  }

  root.addEventListener('click', function(e) {
    var tip = e.target.closest('.ixir-ds-tip');
    if (!tip) {
      var activeTips = root.querySelectorAll('.ixir-ds-tip.is-active');
      for (var t = 0; t < activeTips.length; t++) activeTips[t].classList.remove('is-active');
      return;
    }
    if (window.innerWidth <= 1025) {
      var wasActive = tip.classList.contains('is-active');
      var allTips = root.querySelectorAll('.ixir-ds-tip.is-active');
      for (var at = 0; at < allTips.length; at++) allTips[at].classList.remove('is-active');
      if (!wasActive) tip.classList.add('is-active');
    }
  });

  var lightboxBrandImg = document.getElementById('ixir-ds-lightbox-brand-img');

  function openLightbox(src, title, brand, brandLabel) {
    if (!lightbox || !lightboxImg) return;
    lightboxImg.src = src;
    lightboxImg.alt = title || 'Sunucu Görseli';
    if (lightboxTitle) lightboxTitle.textContent = title || '';
    if (lightboxBrandImg && brand && src) {
      lightboxBrandImg.src = src.replace(/1u-server\.webp.*/, brand.toLowerCase() + '.webp');
      lightboxBrandImg.alt = brandLabel || brand;
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
    var title = row ? (row.querySelector('.ixir-ds-model-name') ? row.querySelector('.ixir-ds-model-name').textContent.trim() : '') : '';
    var brand = row ? (row.getAttribute('data-brand') || '') : '';
    var brandBadge = row ? row.querySelector('.ixir-ds-brand') : null;
    var brandLabel = brandBadge ? brandBadge.textContent.trim() : brand;
    openLightbox(rackImg.src, title, brand, brandLabel);
  });

  var resizeTimer = null;
  window.addEventListener('resize', function() {
    window.clearTimeout(resizeTimer);
    resizeTimer = window.setTimeout(function() {
      rebuildSlider();
    }, 120);
  });

  rebuildSlider();
})();
</script>
{/literal}