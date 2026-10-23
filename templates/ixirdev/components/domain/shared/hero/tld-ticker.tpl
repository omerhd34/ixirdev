<div class="ixir-domain-tlds" id="ixirDomainTlds" aria-label="Alan adı fiyatları">
 <div class="ixir-tld-track">
  {foreach $ixirDomainTicker|default:[] as $tld}
   <div class="ixir-tld" aria-label="{$tld.tld|escape:'html'}{if $tld.compare}, {$tld.compare|escape:'html'} yerine {/if} {$tld.register|escape:'html'}">
    <span class="ixir-tld-name">{$tld.tld|escape:'html'}</span>
    <span class="ixir-tld-prices{if $tld.compare} has-compare{/if}">
     {if $tld.compare}
      <del class="ixir-tld-old">{$tld.compare|escape:'html'}</del>
     {/if}
     <span class="ixir-tld-new">{$tld.register|escape:'html'}</span>
    </span>
   </div>
  {/foreach}
 </div>
</div>
