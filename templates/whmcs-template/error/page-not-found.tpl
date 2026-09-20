<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/css/page-not-found.css?v={$versionHash}-r5">

<section class="ixir-404" aria-labelledby="ixir-404-title">
 <div class="ixir-404-hero">
  <p class="ixir-404-kicker">HTTP 404</p>
  <div class="ixir-404-code" aria-hidden="true">
   <span>4</span>
   <span class="ixir-404-zero">
    <svg viewBox="0 0 88 88" role="presentation" focusable="false">
     <circle cx="44" cy="44" r="30" fill="none" stroke="currentColor" stroke-width="3.5"></circle>
     <ellipse cx="44" cy="44" rx="12" ry="30" fill="none" stroke="currentColor" stroke-width="3"></ellipse>
     <path d="M14 44h60M18 32h52M18 56h52" fill="none" stroke="currentColor" stroke-width="2.4" stroke-linecap="round">
     </path>
     <circle cx="62" cy="62" r="14" fill="#242935"></circle>
     <circle cx="62" cy="62" r="6.5" fill="none" stroke="#fbd746" stroke-width="3"></circle>
     <path d="M71 71l8 8" fill="none" stroke="#fbd746" stroke-width="3.4" stroke-linecap="round"></path>
    </svg>
   </span>
   <span>4</span>
  </div>
  <h1 id="ixir-404-title">Aradığınız sayfa bulunamadı.</h1>
  <p class="ixir-404-lead">Yazılan adres hatalı olabilir, sayfa taşınmış veya yayından kalkmış olabilir. Ana sayfaya
   dönebilir veya destek ekibimizle iletişime geçebilirsiniz.</p>
  <div class="ixir-404-actions">
   <a class="ixir-404-btn ixir-404-btn--primary" href="{$WEB_ROOT}/">
    <i class="fas fa-home" aria-hidden="true"></i>
    Ana Sayfa
   </a>
   <a class="ixir-404-btn ixir-404-btn--support" href="{$WEB_ROOT}/iletisim">
    <i class="far fa-life-ring" aria-hidden="true"></i>
    Destek Al
   </a>
   <button class="ixir-404-btn ixir-404-btn--back" type="button" data-ixir-404-back data-home="{$WEB_ROOT}/">
    <i class="fas fa-arrow-left" aria-hidden="true"></i>
    Geri Dön
   </button>
  </div>
 </div>
</section>

<script>
 {literal}
  (function() {
   var back = document.querySelector('[data-ixir-404-back]');
   if (back) {
    back.addEventListener('click', function() {
     if (window.history.length > 1) {
      window.history.back();
      return;
     }
     window.location.href = back.getAttribute('data-home') || '/';
    });
   }
  })();
 {/literal}
</script>