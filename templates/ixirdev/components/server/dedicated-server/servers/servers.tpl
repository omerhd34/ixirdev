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