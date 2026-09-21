<section class="ixir-corp-hero" aria-label="{$ixirCorpPage.hero|escape}">
 <div class="ixir-corp-hero-photo" aria-hidden="true">
  <img src="{$WEB_ROOT}/templates/{$template}/img/kurumsal/hero.jpg" alt="">
 </div>
 <div class="container">
  <div class="ixir-corp-hero-copy">
   <h1>{$ixirCorpPage.hero|escape}</h1>
   <nav aria-label="breadcrumb">
    <ol class="ixir-corp-crumb">
     <li><a href="{$WEB_ROOT}/">Anasayfa</a></li>
     <li><a href="{$WEB_ROOT}/kurumsal">Kurumsal</a></li>
     <li aria-current="page">{$ixirCorpPage.title|escape}</li>
    </ol>
   </nav>
  </div>
 </div>
</section>

<section class="ixir-corp-shell">
 <div class="container">
  <div class="ixir-corp-grid">
   <aside class="ixir-corp-nav" aria-label="Kurumsal menü">
    <h2 class="ixir-corp-nav-title">Kurumsal</h2>
    <ul>
     {foreach $ixirCorpNav as $item}
      <li class="ixir-corp-nav-item{if $ixirCorpSlug == $item.slug} is-active{/if}">
       <a href="{$item.href}" {if $ixirCorpSlug == $item.slug} aria-current="page" {/if}>
        <span class="ixir-corp-nav-radio" aria-hidden="true"></span>
        <span class="ixir-corp-nav-label">{$item.label}</span>
       </a>
      </li>
     {/foreach}
    </ul>
   </aside>
   <div class="ixir-corp-content">
    {include file="$template/components/kurumsal/`$ixirCorpPage.content`.tpl"}
   </div>
  </div>
 </div>
</section>