{math equation="x + 2592000" x=$smarty.now assign="ixirSoonTs"}
{assign var="ixirTodayKey" value=$smarty.now|date_format:"%Y%m%d"}
{assign var="ixirSoonKey" value=$ixirSoonTs|date_format:"%Y%m%d"}
{assign var="ixirDomTotal" value=0}
{assign var="ixirDomSoon" value=0}
{assign var="ixirDomRenew" value=0}
{if $domains}
 {foreach $domains as $domain}
  {math equation="x + 1" x=$ixirDomTotal assign="ixirDomTotal"}
  {if $domain.autorenew}{math equation="x + 1" x=$ixirDomRenew assign="ixirDomRenew"}{/if}
  {assign var="ixirDueKey" value=""}
  {if $domain.normalisedNextDueDate}
   {if $domain.normalisedNextDueDate|regex_replace:'#^[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]$':'YMD' == 'YMD'}
    {assign var="ixirDueKey" value=$domain.normalisedNextDueDate}
   {else}
    {assign var="ixirDueKey" value=$domain.normalisedNextDueDate|date_format:"%Y%m%d"}
   {/if}
  {/if}
  {assign var="ixirRowSoon" value=0}
  {if $ixirDueKey >= 19700101 && $ixirDueKey >= $ixirTodayKey && $ixirDueKey <= $ixirSoonKey}{assign var="ixirRowSoon" value=1}{/if}
  {if !$ixirRowSoon && $domain.expiringSoon}{assign var="ixirRowSoon" value=1}{/if}
  {if $ixirRowSoon}{math equation="x + 1" x=$ixirDomSoon assign="ixirDomSoon"}{/if}
 {/foreach}
{/if}

<div class="ixp" id="alan-adlarim">
 {include file="$template/components/clientarea/shell.tpl" ixirPanelTab="domains"}

 <div class="ixp-main ixp-domains">
  {if $warnings}
   {include file="$template/includes/alert.tpl" type="warning" msg=$warnings textcenter=true}
  {/if}

  <section class="ixp-dom-promo">
   <div>
    <h2><i class="fas fa-pencil-alt" aria-hidden="true"></i> Projeleriniz İçin Yeni Alan Adları Kaydedin!</h2>
    <p>Özel fiyatlarla projeleriniz için alan adları tescil edin. İlk yıl için %20'ye varan indirimler sizleri bekliyor.
    </p>
   </div>
   <a href="{$WEB_ROOT}/domain-sorgu">Hemen Alan Adı Sorgula</a>
  </section>

  <section class="ixp-card" aria-label="Alan adları">
   <div class="ixp-card-head">
    <h2><i class="fas fa-user-circle" aria-hidden="true"></i> Alan Adlarım</h2>
   </div>

   <div class="ixp-dom-stats">
    <article class="ixp-dom-stat">
     <span class="ixp-dom-stat-icon"><i class="fas fa-globe" aria-hidden="true"></i></span>
     <span>
      <strong>{$ixirDomTotal}</strong>
      <small>Toplam Alan Adı</small>
     </span>
    </article>
    <article class="ixp-dom-stat">
     <span class="ixp-dom-stat-icon"><i class="far fa-clock" aria-hidden="true"></i></span>
     <span>
      <strong>{$ixirDomSoon}</strong>
      <small>30 Gün İçinde Sona Erecek</small>
     </span>
    </article>
    <article class="ixp-dom-stat">
     <span class="ixp-dom-stat-icon"><i class="fas fa-sync-alt" aria-hidden="true"></i></span>
     <span>
      <strong>{$ixirDomRenew}</strong>
      <small>Otomatik Yenilenen</small>
     </span>
    </article>
    <a class="ixp-dom-register" href="{$WEB_ROOT}/domain-sorgu">
     <span class="ixp-dom-register-icon"><i class="fas fa-plus" aria-hidden="true"></i></span>
     <span>
      <strong>Yeni</strong>
      <small>Alan Adı Tescil Et</small>
     </span>
    </a>
   </div>

   <aside class="ixp-dom-tip" id="ixpDomTip">
    <span class="ixp-dom-tip-icon" aria-hidden="true"><i class="fas fa-lightbulb"></i></span>
    <span>
     <strong>Alan Adı İpucu</strong>
     <p>Hesabınıza bakiye ekleyip otomatik yenilemeyi aktif ederseniz süresi geldiğinde alan adınız otomatik yenilenir.
     </p>
    </span>
    <button type="button" class="ixp-dom-tip-close" id="ixpDomTipClose" aria-label="İpucunu kapat">
     <i class="fas fa-sync-alt" aria-hidden="true"></i>
    </button>
   </aside>

   <div class="ixp-dom-filters">
    <div>
     <label class="ixp-dom-check">
      <input type="checkbox" id="ixpDomActive" checked>
      <span>Sadece Aktif Alan Adları Gösterilsin</span>
     </label>
     <div class="ixp-dom-chips" role="toolbar" aria-label="Alan adı filtreleri">
      <button type="button" class="ixp-dom-chip" data-filter="active">Aktif</button>
      <button type="button" class="ixp-dom-chip" data-filter="expired">Süresi Dolmuş</button>
      <button type="button" class="ixp-dom-chip" data-filter="renew">Oto-Yenileme Açık</button>
      <button type="button" class="ixp-dom-chip" data-filter="soon">30 Gün İçinde Bitecek</button>
      <button type="button" class="ixp-dom-chip" data-filter="clear">Temizle</button>
     </div>
    </div>
    <label class="ixp-dom-search">
     <i class="fas fa-search" aria-hidden="true"></i>
     <input type="search" id="ixpDomSearch" placeholder="Alan adı, durum veya tarih ara" aria-label="Alan adı ara">
    </label>
   </div>

   <form id="domainForm" method="post" action="{$WEB_ROOT}/clientarea.php?action=bulkdomain">
    <input id="bulkaction" name="update" type="hidden" />
    <div class="ixp-dom-bulk" id="ixpDomBulk" hidden>
     <span id="ixpDomBulkCount">0 alan adı seçildi</span>
     <a href="#" id="nameservers" class="setBulkAction">Nameserver</a>
     <a href="#" id="autorenew" class="setBulkAction">Otomatik Yenileme</a>
     <a href="#" id="reglock" class="setBulkAction">Transfer Kilidi</a>
     <a href="#" id="contactinfo" class="setBulkAction">İletişim</a>
     {if $allowrenew}<a href="#" id="renewDomains" class="setBulkAction">Yenile</a>{/if}
    </div>
    <div class="ixp-dom-table-wrap">
     <table class="ixp-dom-table is-active-only" id="tableDomainsList">
      <thead>
       <tr>
        <th class="ixp-dom-checkcol"><input type="checkbox" id="ixpDomAll" aria-label="Görünen alan adlarını seç"></th>
        <th>Alan Adı</th>
        <th>Kayıt Tarihi</th>
        <th>Sonraki Ödeme Tarihi</th>
        <th>Otomatik Yenileme</th>
        <th>Durum</th>
        <th>İşlemler</th>
       </tr>
      </thead>
      <tbody>
       {if $domains}{foreach $domains as $domain}
       {assign var="ixirDueKey" value=""}
       {if $domain.normalisedNextDueDate}
       {if $domain.normalisedNextDueDate|regex_replace:'#^[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]$':'YMD' == 'YMD'}
       {assign var="ixirDueKey" value=$domain.normalisedNextDueDate}
       {else}
       {assign var="ixirDueKey" value=$domain.normalisedNextDueDate|date_format:"%Y%m%d"}
       {/if}
       {/if}
       {assign var="ixirRowSoon" value=0}
       {if $ixirDueKey >= 19700101 && $ixirDueKey >= $ixirTodayKey && $ixirDueKey <= $ixirSoonKey}{assign var="ixirRowSoon" value=1}{/if}
       {if !$ixirRowSoon && $domain.expiringSoon}{assign var="ixirRowSoon" value=1}{/if}
       {assign var="ixirStatusKey" value=$domain.statusClass|lower}
       {if !$ixirStatusKey && $domain.status == 'Active'}{assign var="ixirStatusKey" value="active"}{/if}
       <tr data-active="{if $ixirStatusKey == 'active'}1{else}0{/if}"
        data-expired="{if $ixirStatusKey == 'expired' || $ixirStatusKey == 'grace' || $ixirStatusKey == 'redemption' || $ixirStatusKey == 'cancelled'}1{else}0{/if}"
        data-renew="{if $domain.autorenew}1{else}0{/if}" data-soon="{if $ixirRowSoon}1{else}0{/if}"
        data-search="{$domain.domain|escape} {$domain.statustext|escape} {$domain.registrationdate|escape} {$domain.nextduedate|escape} {if $domain.autorenew}etkin{else}kapalı{/if}">
        <td class="ixp-dom-checkcol">
         <input type="checkbox" name="domids[]" class="domids stopEventBubble" value="{$domain.id}" />
        </td>
        <td>
         <a class="ixp-dom-name" href="http://{$domain.domain|escape:'url'}" target="_blank" rel="noopener">
          <i class="fas fa-globe" aria-hidden="true"></i>
          {$domain.domain|escape}
         </a>
        </td>
        <td>{$domain.registrationdate|escape}</td>
        <td>{$domain.nextduedate|escape}</td>
        <td>
         {if $domain.autorenew}
         <span class="ixp-dom-renew is-on"><i class="far fa-check-circle" aria-hidden="true"></i> Etkin</span>
         {else}
         <span class="ixp-dom-renew is-off"><i class="far fa-times-circle" aria-hidden="true"></i> Kapalı</span>
         {/if}
        </td>
        <td><span class="ixp-dom-status is-{$ixirStatusKey|escape}">{$domain.statustext|escape}</span></td>
        <td>
         <a class="ixp-dom-manage" href="{$WEB_ROOT}/clientarea.php?action=domaindetails&amp;id={$domain.id}">
          <i class="fas fa-cog" aria-hidden="true"></i> Yönet
         </a>
        </td>
       </tr>
       {/foreach}{/if}
      </tbody>
     </table>
     <p class="ixp-dom-empty" id="ixpDomEmpty" hidden>Gösterilecek alan adı bulunmuyor.</p>
    </div>
   </form>
  </section>

  <section class="ixp-boost-wrap" aria-label="Alan adınızı güçlendirin">
   <h2><span>Alan Adınızı Güçlendirin</span></h2>
   <div class="ixp-boost-grid">
    <article class="ixp-boost">
     <div class="ixp-boost-top">
      <span class="ixp-boost-badge">En Popüler</span>
      <span class="ixp-boost-icon"><i class="fas fa-shield-alt" aria-hidden="true"></i></span>
      <h3>SSL Sertifikası</h3>
     </div>
     <div class="ixp-boost-body">
      <p>Alan adınızı SSL sertifikası ile güvenli hale getirin, ziyaretçilerinizin güvenini kazanın.</p>
      <ul>
       <li><i class="fas fa-check" aria-hidden="true"></i> Google sıralamasında avantaj</li>
       <li><i class="fas fa-check" aria-hidden="true"></i> Veri güvenliği ve şifreleme</li>
       <li><i class="fas fa-check" aria-hidden="true"></i> Güvenli ödeme imkanı</li>
      </ul>
      <div class="ixp-boost-buy">
       <strong><small>TL</small> 199 <span>/ yıl</span></strong>
       <a class="ixp-btn ixp-btn--blue" href="{$WEB_ROOT}/ssl-sertifikalari">Satın Al <i class="fas fa-chevron-right"
         aria-hidden="true"></i></a>
      </div>
     </div>
    </article>
    <article class="ixp-boost">
     <div class="ixp-boost-top">
      <span class="ixp-boost-icon"><i class="fas fa-server" aria-hidden="true"></i></span>
      <h3>Web Hosting</h3>
     </div>
     <div class="ixp-boost-body">
      <p>Alan adınız için hızlı ve güvenilir hosting çözümleri ile sitenizi hemen yayına alın.</p>
      <ul>
       <li><i class="fas fa-check" aria-hidden="true"></i> NVME Disk Altyapısı</li>
       <li><i class="fas fa-check" aria-hidden="true"></i> Benzersiz özellikler</li>
       <li><i class="fas fa-check" aria-hidden="true"></i> %99.9 Uptime Garantisi</li>
      </ul>
      <div class="ixp-boost-buy">
       <strong><small>TL</small> 55.50 <span>/ ay</span></strong>
       <a class="ixp-btn ixp-btn--blue" href="{$WEB_ROOT}/linux-hosting">Satın Al <i class="fas fa-chevron-right"
         aria-hidden="true"></i></a>
      </div>
     </div>
    </article>
    <article class="ixp-boost">
     <div class="ixp-boost-top">
      <span class="ixp-boost-badge is-sale">İndirimli</span>
      <span class="ixp-boost-icon"><i class="fas fa-envelope" aria-hidden="true"></i></span>
      <h3>Kurumsal E-posta</h3>
     </div>
     <div class="ixp-boost-body">
      <p>Alan adınızla profesyonel e-posta hesapları oluşturun ve kurumsal kimliğinizi güçlendirin.</p>
      <ul>
       <li><i class="fas fa-check" aria-hidden="true"></i> KVKK Uyumlu Bulut E-Posta</li>
       <li><i class="fas fa-check" aria-hidden="true"></i> Kişiler, Takvimler, Dosyalar</li>
       <li><i class="fas fa-check" aria-hidden="true"></i> Mobil uyumlu arayüz</li>
      </ul>
      <div class="ixp-boost-buy">
       <strong><small>TL</small> 577.15 <span>/ ay</span></strong>
       <a class="ixp-btn ixp-btn--blue" href="{$WEB_ROOT}/kurumsal-mail-hosting">Satın Al <i
         class="fas fa-chevron-right" aria-hidden="true"></i></a>
      </div>
     </div>
    </article>
   </div>
  </section>
 </div>
</div>
</div>
</div>

<script>
 {literal}
 (function() {
  var tip = document.getElementById('ixpDomTip');
  var tipClose = document.getElementById('ixpDomTipClose');
  try {
   if (tip && localStorage.getItem('ixpDomTip') === '0') tip.hidden = true;
  } catch (e) {}
  if (tipClose && tip) {
   tipClose.addEventListener('click', function() {
    tip.hidden = true;
    try { localStorage.setItem('ixpDomTip', '0'); } catch (e) {}
   });
  }

  var table = document.getElementById('tableDomainsList');
  if (!table) return;
  var rows = Array.prototype.slice.call(table.querySelectorAll('tbody tr'));
  var onlyActive = document.getElementById('ixpDomActive');
  var search = document.getElementById('ixpDomSearch');
  var empty = document.getElementById('ixpDomEmpty');
  var selectAll = document.getElementById('ixpDomAll');
  var bulk = document.getElementById('ixpDomBulk');
  var bulkCount = document.getElementById('ixpDomBulkCount');
  var mode = '';

  function visibleRows() {
   return rows.filter(function(row) { return row.style.display !== 'none'; });
  }

  function apply() {
   var query = search ? search.value.trim().toLocaleLowerCase('tr') : '';
   var shown = 0;
   rows.forEach(function(row) {
    var ok = true;
    if (mode === 'active') ok = row.getAttribute('data-active') === '1';
    else if (mode === 'expired') ok = row.getAttribute('data-expired') === '1';
    else if (mode === 'renew') ok = row.getAttribute('data-renew') === '1';
    else if (mode === 'soon') ok = row.getAttribute('data-soon') === '1';
    else if (onlyActive && onlyActive.checked) ok = row.getAttribute('data-active') === '1';
    if (ok && query) {
     ok = (row.getAttribute('data-search') || '').toLocaleLowerCase('tr').indexOf(query) !== -1;
    }
    row.style.display = ok ? '' : 'none';
    if (ok) shown += 1;
    if (!ok) {
     var box = row.querySelector('.domids');
     if (box) box.checked = false;
    }
   });
   table.classList.toggle('is-active-only', !mode && onlyActive && onlyActive.checked);
   if (empty) empty.hidden = shown !== 0;
   updateBulk();
  }

  function updateBulk() {
   var count = table.querySelectorAll('.domids:checked').length;
   if (bulk) bulk.hidden = count === 0;
   if (bulkCount) bulkCount.textContent = count + ' alan adı seçildi';
   if (selectAll) {
    var visible = visibleRows();
    var checked = visible.filter(function(row) {
     var box = row.querySelector('.domids');
     return box && box.checked;
    }).length;
    selectAll.checked = visible.length > 0 && checked === visible.length;
    selectAll.indeterminate = checked > 0 && checked < visible.length;
   }
  }

  document.querySelectorAll('.ixp-dom-chip').forEach(function(chip) {
   chip.addEventListener('click', function() {
    var filter = chip.getAttribute('data-filter');
    document.querySelectorAll('.ixp-dom-chip').forEach(function(item) { item.classList.remove('is-on'); });
    if (filter === 'clear') {
     mode = '';
    } else {
     mode = filter;
     chip.classList.add('is-on');
    }
    apply();
   });
  });

  if (onlyActive) onlyActive.addEventListener('change', function() {
   if (onlyActive.checked) {
    mode = '';
    document.querySelectorAll('.ixp-dom-chip').forEach(function(item) { item.classList.remove('is-on'); });
   }
   apply();
  });
  if (search) search.addEventListener('input', apply);
  if (selectAll) selectAll.addEventListener('change', function() {
   visibleRows().forEach(function(row) {
    var box = row.querySelector('.domids');
    if (box) box.checked = selectAll.checked;
   });
   updateBulk();
  });
  table.addEventListener('change', function(e) {
   if (e.target && e.target.classList.contains('domids')) updateBulk();
  });
  apply();
 })();
 {/literal}
</script>