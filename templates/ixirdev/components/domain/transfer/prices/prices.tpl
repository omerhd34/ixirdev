   <section class="ixir-domain-prices ixir-slide ixir-slide--right is-slide-on" id="ixirDomainPrices">
    <div class="container">
     <header class="ixir-domain-prices-head ixir-domain-plans-head ixir-wh-plans-head text-center" style="max-width: 860px; margin: 0 auto 32px; text-align: center;">
      <div class="ixir-badge-pill ixir-ssl-badge-pill">
       <i class="fas fa-exchange-alt" aria-hidden="true"></i> DOMAIN FİYAT LİSTESİ</div>
      {include file="$template/components/Heading.tpl" title="Domain Fiyatları" align="center"}
      <p class="ixir-domain-prices-lead" style="margin: 0 auto 0;">Yıl boyu ekonomik domain fiyatlaması ile yatırım ve yenileme maliyetlerinizi düşürün.</p>
     </header>
     <div class="ixir-domain-prices-search">
      <label for="ixirDomainPriceSearch">Domain Uzantı Ara:</label>
      <input type="search" id="ixirDomainPriceSearch" placeholder="">
     </div>
     <div class="ixir-domain-prices-table-wrap">
      <table class="ixir-domain-prices-table">
       <thead>
        <tr>
         <th data-sort="tld"><i class="fas fa-globe" aria-hidden="true"></i> Domain Uzantı Adı <span class="ixir-dp-sort" aria-hidden="true"></span></th>
         <th><i class="far fa-clock" aria-hidden="true"></i> Süre(Yıl)</th>
         <th data-sort="register"><i class="fas fa-file-signature" aria-hidden="true"></i> Domain Tescil(TL) <span class="ixir-dp-sort" aria-hidden="true"></span></th>
         <th data-sort="transfer"><i class="fas fa-exchange-alt" aria-hidden="true"></i> Domain Transfer(TL) <span class="ixir-dp-sort" aria-hidden="true"></span></th>
         <th data-sort="renew"><i class="fas fa-sync-alt" aria-hidden="true"></i> Domain Yenileme(TL) <span class="ixir-dp-sort" aria-hidden="true"></span></th>
        </tr>
       </thead>
       <tbody id="ixirDomainPriceBody">
        {if $ixirDomainPrices}
         {foreach $ixirDomainPrices as $price}
          <tr data-tld="{$price.tld|escape:'html'}" data-period="{$price.period|escape:'html'}"
           data-register="{$price.registerNum}" data-transfer="{$price.transferNum}" data-renew="{$price.renewNum}"{if $price@iteration > 5} style="display: none;"{/if}>
           <td><span class="ixir-dp-tld">{$price.tld}</span></td>
           <td>{$price.period|replace:' Yıl':''}</td>
           <td>{$price.registerNum}</td>
           <td>{$price.transferNum}</td>
           <td>{$price.renewNum}</td>
          </tr>
         {/foreach}
        {/if}
       </tbody>
      </table>
     </div>
     <div class="ixir-domain-prices-pager" id="ixirDomainPricePager"></div>
    </div>
</section>