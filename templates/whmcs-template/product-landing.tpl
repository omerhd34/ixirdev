<div class="ixir-landing">
 <div class="ixir-landing-hero">
  <span class="ixir-landing-icon" aria-hidden="true"><i class="{$ixirPage.icon}"></i></span>
  <p>{$ixirPage.tagline|escape}</p>
  <div class="ixir-landing-actions">
   <a href="{$WEB_ROOT}/sepet" class="btn btn-primary">Paketleri İncele</a>
   <a href="{$WEB_ROOT}/iletisim" class="btn btn-default">İletişime Geç</a>
  </div>
 </div>
 {if $ixirPage.points}
  <ul class="ixir-landing-points">
   {foreach $ixirPage.points as $point}
    <li><i class="fas fa-check" aria-hidden="true"></i> {$point|escape}</li>
   {/foreach}
  </ul>
 {/if}
 <div class="ixir-landing-note">
  Bu hizmet için paketleri sepetten inceleyebilir veya satış ekibimizden teklif alabilirsiniz.
 </div>
</div>