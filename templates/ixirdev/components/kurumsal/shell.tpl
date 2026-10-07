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
   {assign var="ixirNavIcons" value=[
    'kurumsal' => 'fa-building',
    'altyapi' => 'fa-server',
    'kayitkurulusu' => 'fa-globe',
    'bankahesaplari' => 'fa-university',
    'gizlilikpolitikasi' => 'fa-user-shield',
    'hizmetsozlesmesi' => 'fa-file-contract',
    'kvkkaydinlatmametni' => 'fa-shield-alt',
    'iletisim' => 'fa-envelope'
   ]}
   {assign var="ixirNavGroups" value=[
    'kurumsal' => 'Şirket',
    'altyapi' => 'Şirket',
    'kayitkurulusu' => 'Şirket',
    'bankahesaplari' => 'Şirket',
    'gizlilikpolitikasi' => 'Yasal',
    'hizmetsozlesmesi' => 'Yasal',
    'kvkkaydinlatmametni' => 'Yasal',
    'iletisim' => 'İletişim'
   ]}
   <aside class="ixir-corp-nav" aria-label="Kurumsal menü">
    <div class="ixir-corp-nav-head">
     <span class="ixir-corp-nav-head-icon" aria-hidden="true"><i class="fas fa-building"></i></span>
     <div class="ixir-corp-nav-head-text">
      <h2 class="ixir-corp-nav-title">Kurumsal</h2>
      <span class="ixir-corp-nav-sub">Şirket bilgileri ve politikalar</span>
     </div>
    </div>
    <div class="ixir-corp-nav-track">
     <div class="ixir-corp-nav-scroller">
      <ul>
       {assign var="lastGroup" value=""}
       {foreach $ixirCorpNav as $item}
        {assign var="grp" value=$ixirNavGroups[$item.slug]|default:""}
        {if $grp != $lastGroup}
         <li class="ixir-corp-nav-group" role="presentation">{$grp}</li>
         {assign var="lastGroup" value=$grp}
        {/if}
        <li class="ixir-corp-nav-item{if $ixirCorpSlug == $item.slug} is-active{/if}">
         <a href="{$item.href}" {if $ixirCorpSlug == $item.slug} aria-current="page" {/if}>
          <span class="ixir-corp-nav-icon" aria-hidden="true"><i
            class="fas {$ixirNavIcons[$item.slug]|default:'fa-circle'}"></i></span>
          <span class="ixir-corp-nav-label">{$item.label}</span>
          <i class="fas fa-chevron-right ixir-corp-nav-arrow" aria-hidden="true"></i>
         </a>
        </li>
       {/foreach}
      </ul>
     </div>
    </div>

   </aside>
   <div class="ixir-corp-content">
    {include file="$template/components/kurumsal/`$ixirCorpPage.content`.tpl"}
   </div>
  </div>
 </div>
</section>
<script>
 (function() {
  function initCorpNav() {
   var track = document.querySelector(".ixir-corp-nav-track");
   var scroller = document.querySelector(".ixir-corp-nav-scroller");
   var active = document.querySelector(".ixir-corp-nav-item.is-active");
   if (!track || !scroller) return;

   function isSlider() {
    return window.matchMedia("(max-width: 1023px)").matches;
   }

   function updateFades() {
    if (!isSlider()) {
     track.classList.remove("has-start", "has-end");
     return;
    }
    var max = scroller.scrollWidth - scroller.clientWidth;
    track.classList.toggle("has-start", scroller.scrollLeft > 6);
    track.classList.toggle("has-end", max > 6 && scroller.scrollLeft < max - 6);
   }

   function centerActive() {
    if (!active || !isSlider()) return;
    var itemRect = active.getBoundingClientRect();
    var scrollerRect = scroller.getBoundingClientRect();
    scroller.scrollLeft += (itemRect.left + itemRect.width / 2) - (scrollerRect.left + scrollerRect.width / 2);
   }

   scroller.addEventListener("scroll", updateFades, { passive: true });
   window.addEventListener("resize", function() {
    updateFades();
   });
   centerActive();
   updateFades();
  }

  if (document.readyState === "loading") {
   document.addEventListener("DOMContentLoaded", initCorpNav);
  } else {
   initCorpNav();
  }
 })();
</script>