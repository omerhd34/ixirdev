<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/css/page-not-found.css?v={$versionHash}-r7">

<section class="ixir-404" aria-labelledby="ixir-404-title">
 <div class="ixir-404-hero">
  <p class="ixir-404-kicker">HTTP 404</p>
  <div class="ixir-404-code" aria-hidden="true">
   <span>4</span>
   <span class="ixir-404-zero">
    <i class="fas fa-search" aria-hidden="true"></i>
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