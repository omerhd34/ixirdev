  <section class="ixir-domain-prices ixir-slide ixir-slide--left is-slide-on" id="ixirDomainPrices">
   <div class="container">
    <h2>Domain Fiyatları</h2>
    <p class="ixir-domain-prices-lead">Yıl boyu ekonomik domain fiyatlaması ile yatırım ve yenileme maliyetlerinizi
     düşürün.</p>
    <div class="ixir-domain-prices-search">
     <label for="ixirDomainPriceSearch">Domain Uzantı Ara:</label>
     <input type="search" id="ixirDomainPriceSearch" placeholder="">
    </div>
    <div class="ixir-domain-prices-table-wrap">
     <table class="ixir-domain-prices-table">
      <thead>
       <tr>
        <th data-sort="tld">Domain Uzantı Adı <span class="ixir-dp-sort" aria-hidden="true"></span></th>
        <th data-sort="period">Süre <span class="ixir-dp-sort" aria-hidden="true"></span></th>
        <th data-sort="register">Domain Tescil <span class="ixir-dp-sort" aria-hidden="true"></span></th>
        <th data-sort="transfer">Domain Transfer <span class="ixir-dp-sort" aria-hidden="true"></span></th>
        <th data-sort="renew">Domain Yenileme <span class="ixir-dp-sort" aria-hidden="true"></span></th>
       </tr>
      </thead>
      <tbody id="ixirDomainPriceBody">
       {if $ixirDomainPrices}
        {foreach $ixirDomainPrices as $price}
         <tr data-tld="{$price.tld|escape:'html'}" data-period="{$price.period|escape:'html'}"
          data-register="{$price.registerNum}" data-transfer="{$price.transferNum}" data-renew="{$price.renewNum}">
          <td><span class="ixir-dp-tld">{$price.tld}</span></td>
          <td>{$price.period}</td>
          <td>{$price.register}</td>
          <td>{$price.transfer}</td>
          <td>{$price.renew}</td>
         </tr>
        {/foreach}
       {/if}
      </tbody>
     </table>
    </div>
    <div class="ixir-domain-prices-pager" id="ixirDomainPricePager"></div>
   </div>
</section>