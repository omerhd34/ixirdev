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
   <li><i class="fas fa-star" aria-hidden="true"></i><span>Google <b>4.9/5</b> Puan</span></li>
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
     <label class="ixir-ds-chip"><input type="radio" name="ram" value="64"><span>64 GB+</span></label>
     <label class="ixir-ds-chip"><input type="radio" name="ram" value="128"><span>128 GB+</span></label>
     <label class="ixir-ds-chip"><input type="radio" name="ram" value="256"><span>256 GB+</span></label>
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
     <span>Fiyat</span>
    </div>

    <ul class="ixir-ds-list">
     {foreach $ixirDsServers as $server}
     <li class="ixir-ds-row
                                   {if $server.badge} ixir-ds-row--{$server.badge}{/if}" data-brand="{$server.brand}"
      data-disk="{$server.diskType}" data-cpu="{$server.cpuCount}" data-ram="{$server.ram}">
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
      <div class="ixir-ds-cell" data-label="RAM">
       <b>{$server.ram} GB</b>
      </div>
      <div class="ixir-ds-cell ixir-ds-disk" data-label="Disk">
       <b>{$server.disk}</b>
       <span class="ixir-ds-tip" tabindex="0">
        <i class="far fa-info-circle" aria-hidden="true"></i>
        <span class="ixir-ds-tip-text" role="tooltip">{$server.diskTip}</span>
       </span>
      </div>
      <div class="ixir-ds-cell" data-label="Port & Trafik">
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
       <p class="ixir-ds-billed" data-ds-billed data-annually-total="{$server.annually * 12}" hidden></p>
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
</section>
<script>
 {literal}
 (function() {
  var root = document.getElementById('ixir-wh-plans');
  if (!root || !root.classList.contains('ixir-ds')) return;

  var rows = root.querySelectorAll('.ixir-ds-row');
  var filters = root.querySelector('.ixir-ds-filters');
  var countEl = root.querySelector('[data-ds-count]');
  var emptyEl = root.querySelector('[data-ds-empty]');
  var cycleButtons = root.querySelectorAll('[data-ds-cycle]');
  var filterToggle = root.querySelector('.ixir-ds-filter-toggle');

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
  }

  function setCycle(cycle) {
   for (var i = 0; i < cycleButtons.length; i++) {
    cycleButtons[i].setAttribute('aria-checked', cycleButtons[i].getAttribute('data-ds-cycle') === cycle ? 'true' :
     'false');
   }
   var prices = root.querySelectorAll('[data-ds-price]');
   var billed = root.querySelectorAll('[data-ds-billed]');
   for (var j = 0; j < prices.length; j++) {
    prices[j].textContent = money(prices[j].getAttribute('data-' + cycle));
    billed[j].hidden = cycle !== 'annually';
    billed[j].textContent = 'Yıllık ' + money(billed[j].getAttribute('data-annually-total')) + ' faturalandırılır';
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
   });
  }

  for (var c = 0; c < cycleButtons.length; c++) {
   cycleButtons[c].addEventListener('click', function() {
    setCycle(this.getAttribute('data-ds-cycle'));
   });
  }

  var list = root.querySelector('.ixir-ds-list');
  var sortButtons = root.querySelectorAll('[data-ds-sort]');
  var sortLabels = {
   ram: ["RAM'e göre sırala", 'RAM: küçükten büyüğe sıralı', 'RAM: büyükten küçüğe sıralı'],
   disk: ['Disk boyutuna göre sırala', 'Disk: küçükten büyüğe sıralı', 'Disk: büyükten küçüğe sıralı']
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
   rowData.push({
    el: rows[d],
    index: d,
    ram: parseInt(rows[d].getAttribute('data-ram'), 10),
    disk: diskGb(diskEl ? diskEl.textContent : '')
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
  })();
 {/literal}
</script>