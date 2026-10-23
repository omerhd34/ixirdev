{assign var="ixirMonths" value=0}
{assign var="ixirYears" value=0}
{assign var="ixirLevel" value="Bronze"}
{assign var="ixirNext" value="Silver"}
{assign var="ixirRemainYears" value=1}
{assign var="ixirProgress" value=4}
{assign var="ixirTenure" value="Birlikte çalışmaya yeni başladık."}
{if $clientsdetails.datecreated}
 {assign var="ixirIso" value=$clientsdetails.datecreated}
 {if $ixirIso|regex_replace:'#^[0-9][0-9][0-9][0-9].*#':'Y' == 'Y'}
  {assign var="ixirIso" value=$ixirIso|regex_replace:'# .*#':''}
 {else}
  {assign var="ixirIso" value=$ixirIso|regex_replace:'#^([0-9]+)[./]([0-9]+)[./]([0-9]+).*#':'$3-$2-$1'}
 {/if}
 {assign var="jY" value=$ixirIso|date_format:"%Y"}
 {assign var="jM" value=$ixirIso|date_format:"%m"}
 {assign var="jD" value=$ixirIso|date_format:"%d"}
 {assign var="nY" value=$smarty.now|date_format:"%Y"}
 {assign var="nM" value=$smarty.now|date_format:"%m"}
 {assign var="nD" value=$smarty.now|date_format:"%d"}
 {if $jY >= 1990 && $jY <= 2100 && $nY >= 1990}
  {math equation="(ny - jy) * 12 + (nm - jm)" ny=$nY jy=$jY nm=$nM jm=$jM assign="ixirMonths"}
  {if $nD < $jD}
   {math equation="m - 1" m=$ixirMonths assign="ixirMonths"}
  {/if}
  {if $ixirMonths < 0}{assign var="ixirMonths" value=0}{/if}
  {math equation="floor(m / 12)" m=$ixirMonths assign="ixirYears"}
  {if $ixirYears >= 1}
   {assign var="ixirTenure" value="`$ixirYears` yıldır birlikte çalışıyoruz."}
  {elseif $ixirMonths >= 1}
   {assign var="ixirTenure" value="`$ixirMonths` aydır birlikte çalışıyoruz."}
  {/if}
  {if $ixirMonths >= 36}
   {assign var="ixirLevel" value="Gold"}
   {assign var="ixirNext" value=""}
   {assign var="ixirProgress" value=100}
  {elseif $ixirMonths >= 12}
   {assign var="ixirLevel" value="Silver"}
   {assign var="ixirNext" value="Gold"}
   {math equation="ceil((36 - m) / 12)" m=$ixirMonths assign="ixirRemainYears"}
   {math equation="round((m / 36) * 100)" m=$ixirMonths assign="ixirProgress"}
  {else}
   {math equation="ceil((12 - m) / 12)" m=$ixirMonths assign="ixirRemainYears"}
   {if $ixirRemainYears < 1}{assign var="ixirRemainYears" value=1}{/if}
   {math equation="round((m / 36) * 100)" m=$ixirMonths assign="ixirProgress"}
   {if $ixirProgress < 4}{assign var="ixirProgress" value=4}{/if}
  {/if}
 {/if}
{/if}
{if $ixirProgress > 100}{assign var="ixirProgress" value=100}{/if}
{if $ixirProgress < 0}{assign var="ixirProgress" value=0}{/if}

{assign var="ixirOpenTickets" value=0}
{if $clientsstats.numactivetickets != ""}{assign var="ixirOpenTickets" value=$clientsstats.numactivetickets}{/if}
{assign var="ixirUnpaidInvoices" value=0}
{if $clientsstats.numdueinvoices != ""}
 {assign var="ixirUnpaidInvoices" value=$clientsstats.numdueinvoices}
{elseif $clientsstats.numunpaidinvoices != ""}
 {assign var="ixirUnpaidInvoices" value=$clientsstats.numunpaidinvoices}
{/if}
{assign var="ixirOverdueCount" value=0}
{if $clientsstats.numoverdueinvoices != ""}{assign var="ixirOverdueCount" value=$clientsstats.numoverdueinvoices}{/if}
{assign var="ixirActiveServices" value=0}
{if $clientsstats.productsnumactive != ""}{assign var="ixirActiveServices" value=$clientsstats.productsnumactive}{/if}

{assign var="ixirNewsItems" value=false}
{assign var="ixirTicketItems" value=false}
{if $panels}
 {foreach $panels as $ixirPanel}
  {if $ixirPanel->getName() == "Recent News" && $ixirPanel->hasChildren()}
   {assign var="ixirNewsItems" value=$ixirPanel->getChildren()}
  {elseif $ixirPanel->getName() == "Recent Support Tickets" && $ixirPanel->hasChildren()}
   {assign var="ixirTicketItems" value=$ixirPanel->getChildren()}
  {/if}
 {/foreach}
{/if}

<div class="ixp" id="genel-bakis">
 {include file="$template/components/clientarea/shell.tpl" ixirPanelTab="overview"}

 <div class="ixp-main">
  <div class="ixp-flash">
   {include file="$template/includes/flashmessage.tpl"}
  </div>

  <section class="ixp-card ixp-level" aria-label="Üyelik seviyesi">
   <div class="ixp-level-top">
    <h2><i class="fas fa-user" aria-hidden="true"></i> Üyelik Seviyeniz</h2>
    <span class="ixp-badge is-{$ixirLevel|lower}">{$ixirLevel}</span>
   </div>
   <div class="ixp-level-meta">
    <p>{$ixirTenure|escape}</p>
    {if $ixirNext}
     <p>Bir sonraki seviye: {$ixirNext} ({$ixirRemainYears} yıl kaldı)</p>
    {else}
     <p>En üst üyelik seviyesindesiniz</p>
    {/if}
   </div>
   <div class="ixp-level-track" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="{$ixirProgress}"
    aria-label="Gold seviyesine ilerleme">
    <span style="width: {$ixirProgress}%;"></span>
   </div>
  </section>

  <div class="ixp-split">
   {if $twoFactorAuthEnabled}
    <a class="ixp-callout is-safe" href="{$WEB_ROOT}/hesap/guvenlik">
     <span class="ixp-callout-icon"><i class="fas fa-shield-alt" aria-hidden="true"></i></span>
     <span class="ixp-callout-copy">
      <strong>Çift faktörlü doğrulama açık. Hesabınız korunuyor.</strong>
      <span class="ixp-btn ixp-btn--soft-green">Güvenlik Ayarları</span>
     </span>
    </a>
   {else}
    <a class="ixp-callout is-alert" href="{$WEB_ROOT}/hesap/guvenlik">
     <span class="ixp-callout-icon"><i class="fas fa-shield-alt" aria-hidden="true"></i></span>
     <span class="ixp-callout-copy">
      <strong>2FA / Çift Faktörlü Doğrulama ile hesabınızı güvende tutun.</strong>
      <span class="ixp-btn ixp-btn--pink">Güvenlik Ayarları</span>
     </span>
    </a>
   {/if}
   <a class="ixp-callout is-partner" href="{$WEB_ROOT}/affiliates.php">
    <span class="ixp-callout-icon"><i class="fas fa-bullhorn" aria-hidden="true"></i></span>
    <span class="ixp-callout-copy">
     <strong>Satış Ortaklığı ile size kazandıralım!</strong>
     <span class="ixp-btn ixp-btn--light">{if $clientsstats.isAffiliate}Panele Git{else}Katıl{/if}</span>
    </span>
   </a>
  </div>

  <section class="ixp-card ixp-news" aria-label="Önemli duyurular">
   <div class="ixp-news-head">
    <h2><i class="fas fa-bullhorn" aria-hidden="true"></i> Önemli Duyurular</h2>
   </div>
   <div class="ixp-news-body">
    {if $ixirNewsItems}
     {foreach $ixirNewsItems as $ixirNews}
      {if $ixirNews@index < 5}
       <a class="ixp-news-item" href="{$ixirNews->getUri()}">
        <i class="fas fa-chevron-right" aria-hidden="true"></i>
        <span>{$ixirNews->getLabel()|strip_tags}</span>
       </a>
      {/if}
     {/foreach}
    {else}
     <p class="ixp-empty">Şu anda yayında duyuru bulunmuyor.</p>
    {/if}
   </div>
  </section>

  <div class="ixp-metrics">
   <article class="ixp-metric is-balance">
    <span class="ixp-metric-icon"><i class="fas fa-wallet" aria-hidden="true"></i></span>
    <h2>Hesap Bakiyesi</h2>
    <strong>{if $clientsstats.creditbalance}{$clientsstats.creditbalance}{else}0,00 TL{/if}</strong>
    <p>Kullanılabilir Bakiye</p>
    <a class="ixp-btn ixp-btn--balance" href="{$WEB_ROOT}/clientarea.php?action=addfunds">
     <i class="fas fa-plus" aria-hidden="true"></i> Kredi Ekle
    </a>
   </article>
   <article class="ixp-metric">
    <span class="ixp-metric-icon is-blue"><i class="fas fa-desktop" aria-hidden="true"></i></span>
    <h2>Destek Talepleri</h2>
    <strong>{$ixirOpenTickets}</strong>
    <p>Aktif Destek Talebi</p>
    <a class="ixp-btn ixp-btn--soft-blue" href="{$WEB_ROOT}/supporttickets.php">
     <i class="fas fa-eye" aria-hidden="true"></i> Talepleri Görüntüle
    </a>
   </article>
   <article class="ixp-metric">
    <span class="ixp-metric-icon is-amber"><i class="fas fa-file-invoice" aria-hidden="true"></i></span>
    <h2>Faturalar</h2>
    <strong>{$ixirUnpaidInvoices}</strong>
    <p>Ödenmemiş Fatura</p>
    <a class="ixp-btn ixp-btn--soft-amber" href="{$WEB_ROOT}/clientarea.php?action=invoices">
     <i class="fas fa-eye" aria-hidden="true"></i> Faturaları Görüntüle
    </a>
   </article>
   <article class="ixp-metric">
    <span class="ixp-metric-icon is-green"><i class="fas fa-server" aria-hidden="true"></i></span>
    <h2>Hizmetler</h2>
    <strong>{$ixirActiveServices}</strong>
    <p>Aktif Hizmet</p>
    <a class="ixp-btn ixp-btn--soft-green" href="{$WEB_ROOT}/clientarea.php?action=services">
     <i class="fas fa-cog" aria-hidden="true"></i> Hizmetleri Yönet
    </a>
   </article>
  </div>

  <section class="ixp-card" aria-label="Destek talepleri">
   <div class="ixp-card-head">
    <h2><i class="fas fa-headset" aria-hidden="true"></i> Destek Talepleriniz ({$ixirOpenTickets})</h2>
    <div class="ixp-card-actions">
     <a class="ixp-btn ixp-btn--blue" href="{$WEB_ROOT}/destek/yeni"><i class="fas fa-plus" aria-hidden="true"></i> Yeni
      Talep</a>
     <a class="ixp-btn ixp-btn--ghost" href="{$WEB_ROOT}/supporttickets.php"><i class="fas fa-list"
       aria-hidden="true"></i> Tüm Talepler</a>
    </div>
   </div>
   <div class="ixp-table-wrap">
    <table class="ixp-table">
     <thead>
      <tr>
       <th scope="col">Başlık</th>
       <th scope="col">Tarih</th>
       <th scope="col">Departman</th>
       <th scope="col">Durum</th>
       <th scope="col">Son Güncelleme</th>
       <th scope="col">İşlem</th>
      </tr>
     </thead>
     <tbody>
      {assign var="ixirTicketShown" value=0}
      {if $ixirTicketItems}
       {foreach $ixirTicketItems as $ixirTicket}
        {if $ixirTicket@index < 5}
         {math equation="x + 1" x=$ixirTicketShown assign="ixirTicketShown"}
         <tr>
          <td class="ixp-cell-title">
           <a href="{$ixirTicket->getUri()}">{$ixirTicket->getLabel()|strip_tags}</a>
          </td>
          <td>—</td>
          <td>—</td>
          <td>
           {if $ixirTicket->hasBadge()}
            <span class="ixp-status">{$ixirTicket->getBadge()|strip_tags}</span>
           {else}
            —
           {/if}
          </td>
          <td>—</td>
          <td><a class="ixp-btn ixp-btn--tiny" href="{$ixirTicket->getUri()}">Görüntüle</a></td>
         </tr>
        {/if}
       {/foreach}
      {/if}
      {if !$ixirTicketShown}
       <tr>
        <td class="ixp-empty" colspan="6">Açık destek bildiriminiz bulunmamaktadır</td>
       </tr>
      {/if}
     </tbody>
    </table>
   </div>
  </section>

  <section class="ixp-card" aria-label="Süresi geçmiş faturalar">
   <div class="ixp-card-head">
    <h2><i class="fas fa-file-invoice" aria-hidden="true"></i> Son Ödeme Tarihi Geçmiş Faturalar ({$ixirOverdueCount})
    </h2>
    <div class="ixp-card-actions">
     <a class="ixp-btn ixp-btn--ghost" href="{$WEB_ROOT}/clientarea.php?action=invoices"><i class="fas fa-list"
       aria-hidden="true"></i> Tüm Faturalar</a>
    </div>
   </div>
   <div class="ixp-table-wrap">
    <table class="ixp-table">
     <thead>
      <tr>
       <th scope="col">Fatura No</th>
       <th scope="col">Fatura Tarihi</th>
       <th scope="col">Son Ödeme</th>
       <th scope="col">Toplam</th>
       <th scope="col">Bakiye</th>
       <th scope="col">Durum</th>
       <th scope="col">İşlem</th>
      </tr>
     </thead>
     <tbody>
      {assign var="ixirInvoiceShown" value=0}
      {if $invoices}
       {foreach $invoices as $invoice}
        {assign var="ixirKeepInvoice" value=true}
        {if $invoice.statusClass == "paid" || $invoice.statusClass == "cancelled" || $invoice.statusClass == "refunded"}
         {assign var="ixirKeepInvoice" value=false}
        {/if}
        {if $ixirKeepInvoice && $invoice.normalisedDateDue}
         {assign var="ixirDueKey" value=$invoice.normalisedDateDue|date_format:"%Y%m%d"}
         {assign var="ixirTodayKey" value=$smarty.now|date_format:"%Y%m%d"}
         {if $ixirDueKey >= 19700101 && $ixirDueKey > $ixirTodayKey}
          {assign var="ixirKeepInvoice" value=false}
         {/if}
        {/if}
        {if $ixirKeepInvoice}
         {math equation="x + 1" x=$ixirInvoiceShown assign="ixirInvoiceShown"}
         <tr>
          <td class="ixp-cell-title">
           <a
            href="{$WEB_ROOT}/viewinvoice.php?id={$invoice.id}">{if $invoice.invoicenum}{$invoice.invoicenum|escape}{else}#{$invoice.id}{/if}</a>
          </td>
          <td>{$invoice.datecreated|escape}</td>
          <td>{$invoice.datedue|escape}</td>
          <td>{$invoice.total}</td>
          <td>{if $invoice.balance}{$invoice.balance}{else}{$invoice.total}{/if}</td>
          <td><span class="ixp-status is-{$invoice.statusClass|escape}">{$invoice.status|strip_tags}</span></td>
          <td><a class="ixp-btn ixp-btn--tiny" href="{$WEB_ROOT}/viewinvoice.php?id={$invoice.id}">Öde</a></td>
         </tr>
        {/if}
       {/foreach}
      {/if}
      {if !$ixirInvoiceShown && $panels}
       {foreach $panels as $ixirPanel}
        {if $ixirPanel->getName() == "Overdue Invoices" && $ixirPanel->hasChildren()}
         {foreach $ixirPanel->getChildren() as $ixirInvoiceItem}
          {if $ixirInvoiceItem@index < 5}
           {math equation="x + 1" x=$ixirInvoiceShown assign="ixirInvoiceShown"}
           <tr>
            <td class="ixp-cell-title"><a href="{$ixirInvoiceItem->getUri()}">{$ixirInvoiceItem->getLabel()|strip_tags}</a>
            </td>
            <td>—</td>
            <td>—</td>
            <td>{if $ixirInvoiceItem->hasBadge()}{$ixirInvoiceItem->getBadge()|strip_tags}{else}—{/if}</td>
            <td>{if $ixirInvoiceItem->hasBadge()}{$ixirInvoiceItem->getBadge()|strip_tags}{else}—{/if}</td>
            <td><span class="ixp-status is-unpaid">Ödenmedi</span></td>
            <td><a class="ixp-btn ixp-btn--tiny" href="{$ixirInvoiceItem->getUri()}">Öde</a></td>
           </tr>
          {/if}
         {/foreach}
        {/if}
       {/foreach}
      {/if}
      {if !$ixirInvoiceShown}
       <tr>
        <td class="ixp-empty" colspan="7">Ödenmemiş faturanız bulunmamaktadır</td>
       </tr>
      {/if}
     </tbody>
    </table>
   </div>
  </section>

  <div class="ixp-shortcuts">
   <article class="ixp-shortcut">
    <span class="ixp-shortcut-icon is-blue"><i class="fas fa-server" aria-hidden="true"></i></span>
    <h2>Servisleriniz</h2>
    <p>Aktif ve beklemedeki tüm servislerinizi yönetin.</p>
    <a class="ixp-btn ixp-btn--blue" href="{$WEB_ROOT}/clientarea.php?action=services"><i class="fas fa-cog"
      aria-hidden="true"></i> Servisleri Yönet</a>
   </article>
   <article class="ixp-shortcut">
    <span class="ixp-shortcut-icon is-green"><i class="fas fa-shopping-cart" aria-hidden="true"></i></span>
    <h2>Sipariş Verin</h2>
    <p>Yeni servis, alan adı veya ürün siparişi verin.</p>
    <a class="ixp-btn ixp-btn--green" href="{$WEB_ROOT}/sepet"><i class="fas fa-plus" aria-hidden="true"></i> Sipariş
     Ver</a>
   </article>
   <article class="ixp-shortcut">
    <span class="ixp-shortcut-icon is-teal"><i class="fas fa-question-circle" aria-hidden="true"></i></span>
    <h2>Bilgi Bankası</h2>
    <p>Sık sorulan sorular ve yardım makalelerine göz atın.</p>
    <a class="ixp-btn ixp-btn--teal" href="{$WEB_ROOT}/knowledgebase.php"><i class="fas fa-book-open"
      aria-hidden="true"></i> Bilgi Bankası</a>
   </article>
  </div>

  {foreach from=$addons_html item=addon_html}
   <div class="ixp-card ixp-addon">{$addon_html}</div>
  {/foreach}
 </div>
</div>
</div>
</div>

<script>
 (function() {
  var tab = document.querySelector(".ixp-tab.is-active");
  var nav = tab && tab.closest(".ixp-tabs");
  if (!tab || !nav || nav.scrollWidth <= nav.clientWidth) return;
  nav.scrollLeft = tab.offsetLeft - (nav.clientWidth - tab.offsetWidth) / 2;
 })();
</script>