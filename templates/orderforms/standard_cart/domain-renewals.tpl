{include file="orderforms/standard_cart/common.tpl"}

{assign var="ixirMonths" value=["1"=>"Oca","2"=>"Şub","3"=>"Mar","4"=>"Nis","5"=>"May","6"=>"Haz","7"=>"Tem","8"=>"Ağu","9"=>"Eyl","10"=>"Eki","11"=>"Kas","12"=>"Ara"]}

<div id="order-standard_cart" class="ixir-renew">
 <header class="ixir-renew-head">
  <div>
   <p class="ixir-renew-kicker"><i class="fas fa-globe" aria-hidden="true"></i> Alan Adları</p>
   <h1>Alan Adı Yenileme</h1>
   <p>Süresi yaklaşan alan adlarını seçin, yenileme yılını belirleyin ve sepete ekleyin.</p>
  </div>
  {if $totalResults > 5}
   <label class="ixir-renew-search">
    <i class="fas fa-search" aria-hidden="true"></i>
    <input id="domainRenewalFilter" type="search" placeholder="Alan adı ara" aria-label="Alan adı ara">
   </label>
  {/if}
 </header>

 {if $totalDomainCount == 0}
  <div id="no-domains" class="ixir-renew-empty">
   <span class="ixir-renew-empty-icon" aria-hidden="true"><i class="fas fa-globe"></i></span>
   <h2>Yenilenecek alan adı yok</h2>
   <p>Hesabınızda yenilemeye açık bir alan adı bulunmuyor.</p>
   <a href="{$WEB_ROOT}/musteri-paneli/alan-adlari">Alan Adlarıma Dön</a>
  </div>
 {else}
  {if $totalResults < $totalDomainCount}
   <p class="ixir-renew-showing">
    {$totalResults} / {$totalDomainCount} alan adı gösteriliyor.
    <a id="linkShowAll" href="{routePath('cart-domain-renewals')}">Tümünü göster</a>
   </p>
  {/if}

  <div class="ixir-renew-layout">
   <div id="domainRenewals" class="domain-renewals ixir-renew-list">
    {foreach $renewalsData as $renewalData}
     {assign var="ixirRenewDays" value=$renewalData.daysUntilExpiry}
     {if $ixirRenewDays < 0}
      {math equation="x * -1" x=$ixirRenewDays assign="ixirRenewAbs"}
     {else}
      {assign var="ixirRenewAbs" value=$ixirRenewDays}
     {/if}
     {assign var="ixirRenewMonth" value=$renewalData.expiryDate->format('n')}
     {if !$renewalData.eligibleForRenewal || ($renewalData.pastGracePeriod && $renewalData.pastRedemptionGracePeriod)}
      {assign var="ixirRenewTone" value="gone"}
     {elseif $renewalData.beforeRenewLimit || $ixirRenewDays == 0 || ($ixirRenewDays > 0 && $ixirRenewDays <= 30)}
      {assign var="ixirRenewTone" value="soon"}
     {elseif $ixirRenewDays < 0}
      {assign var="ixirRenewTone" value="late"}
     {else}
      {assign var="ixirRenewTone" value="ok"}
     {/if}
     <div class="domain-renewal ixir-renew-card is-{$ixirRenewTone}" data-domain="{$renewalData.domain|escape}">
      <div class="ixir-renew-identity">
       <h3>{$renewalData.domain|escape}</h3>
       <p>
        Alan adı süresi bitiş tarihi:
        <strong>{$renewalData.expiryDate->format('j')} {$ixirMonths.$ixirRenewMonth}
         {$renewalData.expiryDate->format('Y')}</strong>
        <span>
         {if $ixirRenewDays > 0}
          {if $ixirRenewAbs >= 365}
           ({math equation="floor(x/365)" x=$ixirRenewAbs} yıl sonra)
          {elseif $ixirRenewAbs >= 60}
           ({math equation="floor(x/30)" x=$ixirRenewAbs} ay sonra)
          {else}
           ({$ixirRenewAbs} gün sonra)
          {/if}
         {elseif $ixirRenewDays == 0}
          (bugün)
         {else}
          {if $ixirRenewAbs >= 365}
           ({math equation="floor(x/365)" x=$ixirRenewAbs} yıl önce)
          {elseif $ixirRenewAbs >= 60}
           ({math equation="floor(x/30)" x=$ixirRenewAbs} ay önce)
          {else}
           ({$ixirRenewAbs} gün önce)
          {/if}
         {/if}
        </span>
       </p>
       {if $renewalData.freeDomainRenewal}
        <p class="domain-renewal-desc">Bu alan adı bağlı hizmetle birlikte ücretsiz yenilenir.</p>
       {/if}
      </div>

      <div class="ixir-renew-badge is-{$ixirRenewTone}">
       {if !$renewalData.eligibleForRenewal}
        {if $renewalData.freeDomainRenewal}Hizmetle ücretsiz{else}Yenileme süresi geçmiş{/if}
       {elseif $renewalData.pastGracePeriod && $renewalData.pastRedemptionGracePeriod}
        Yenileme süresi geçmiş
       {elseif $renewalData.beforeRenewLimit}
        En erken {$renewalData.beforeRenewLimitDays} gün kala
       {elseif $ixirRenewDays > 0}
        Süresi {$ixirRenewDays} gün sonra dolacak
       {elseif $ixirRenewDays == 0}
        Bugün sona eriyor
       {else}
        Süresi {$ixirRenewAbs} gün önce doldu
       {/if}
      </div>

      {if ($renewalData.pastGracePeriod && $renewalData.pastRedemptionGracePeriod) || !count($renewalData.renewalOptions)}
      {else}
       <div class="ixir-renew-actions">
        <label class="ixir-renew-period" for="renewalPricing{$renewalData.id}">
         <span>Yenileme Süresi{if $renewalData.inGracePeriod || $renewalData.inRedemptionGracePeriod} *{/if}</span>
         <select class="select-renewal-pricing" id="renewalPricing{$renewalData.id}" data-domain-id="{$renewalData.id}">
          {foreach $renewalData.renewalOptions as $renewalOption}
           <option value="{$renewalOption.period}">
            {$renewalOption.period} Yıl / {$renewalOption.rawRenewalPrice}
            {if $renewalOption.gracePeriodFee && $renewalOption.gracePeriodFee->toNumeric() != 0.00}
             + {$renewalOption.gracePeriodFee} ek süre
            {/if}
            {if $renewalOption.redemptionGracePeriodFee && $renewalOption.redemptionGracePeriodFee->toNumeric() != 0.00}
             + {$renewalOption.redemptionGracePeriodFee} kurtarma
            {/if}
           </option>
          {/foreach}
         </select>
        </label>
        {if !$renewalData.eligibleForRenewal || $renewalData.beforeRenewLimit}
        {else}
         <button type="button" id="renewDomain{$renewalData.id}" class="ixir-renew-add btn-add-renewal-to-cart"
          data-domain-id="{$renewalData.id}">
          <span class="to-add"><i class="fas fa-fw fa-spinner fa-spin"></i> Sepete Ekle</span>
          <span class="added">Sepete Eklendi</span>
         </button>
        {/if}
       </div>
      {/if}
     </div>
    {/foreach}
   </div>

   <aside id="orderSummary" class="ixir-renew-summary">
    <div class="order-summary ixir-renew-summary-card">
     <h2><i class="fas fa-shopping-basket" aria-hidden="true"></i> Sipariş Özeti</h2>
     <div class="loader" id="orderSummaryLoader" aria-hidden="true">
      <i class="fas fa-fw fa-sync fa-spin"></i>
     </div>
     <div class="summary-container" id="producttotal"></div>
     <p class="ixir-renew-summary-empty" id="ixirRenewEmpty">Henüz yenileme eklenmedi.</p>
     <a id="btnGoToCart" class="ixir-renew-checkout" href="{$WEB_ROOT}/sepet">
      Sepeti Görüntüle
      <i class="fas fa-shopping-cart" aria-hidden="true"></i>
     </a>
    </div>
   </aside>
  </div>

  {if $hasDomainsInGracePeriod}
   <p class="ixir-renew-note">* Ek süreye girmiş alan adlarında yenileme bedeline gecikme ücreti eklenebilir.</p>
  {/if}
 {/if}

 <form id="removeRenewalForm" method="post" action="{$WEB_ROOT}/cart.php">
  <input type="hidden" name="a" value="remove" />
  <input type="hidden" name="r" value="" id="inputRemoveItemType" />
  <input type="hidden" name="i" value="" id="inputRemoveItemRef" />
  <input type="hidden" name="rt" value="" id="inputRemoveItemRenewalType" />
  <div class="modal fade modal-remove-item" id="modalRemoveItem" tabindex="-1" role="dialog">
   <div class="modal-dialog" role="document">
    <div class="modal-content">
     <div class="modal-header">
      <h4 class="modal-title">Sepetten kaldırılsın mı?</h4>
      <button type="button" class="close" data-dismiss="modal" aria-label="Kapat">
       <span aria-hidden="true">&times;</span>
      </button>
     </div>
     <div class="modal-body">Bu yenileme sepetten çıkarılsın mı?</div>
     <div class="modal-footer">
      <button type="button" class="btn btn-default" data-dismiss="modal">Vazgeç</button>
      <button type="submit" class="btn btn-primary">Kaldır</button>
     </div>
    </div>
   </div>
  </div>
 </form>
</div>

<script>
 recalculateRenewalTotals();
 {literal}
  (function() {
   var box = document.getElementById('producttotal');
   var empty = document.getElementById('ixirRenewEmpty');
   if (!box || !empty) return;

   function sync() {
    empty.hidden = box.textContent.replace(/\s+/g, '') !== '';
   }
   if (window.MutationObserver) {
    new MutationObserver(sync).observe(box, { childList: true, subtree: true, characterData: true });
   }
   sync();
  })();
 {/literal}
</script>