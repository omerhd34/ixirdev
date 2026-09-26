 <section class="ixir-wh-migrate" aria-labelledby="ixir-wh-migrate-title">
  <script>
   {literal}
    (function() {
     var root = document.querySelector('.ixir-wh-migrate');
     if (!root || !window.IntersectionObserver) return;
     if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
     if (window.matchMedia && window.matchMedia('(max-width: 1023px)').matches) return;
     root.classList.add('is-armed');
    })();
   {/literal}
  </script>
  <div class="container">
   <div class="ixir-wh-migrate-grid">
    <div class="ixir-wh-migrate-visual">
     <img src="{$WEB_ROOT}/templates/{$template}/img/wordpress-transfer.webp" alt="WordPress ücretsiz site taşıma"
      width="420" height="320" loading="lazy" decoding="async">
    </div>
    <div class="ixir-wh-migrate-copy">
     <span class="ixir-wh-migrate-eyebrow"><i class="fas fa-exchange-alt" aria-hidden="true"></i> Ücretsiz Taşıma</span>
     <h2 id="ixir-wh-migrate-title">WordPress Sitelerinizi Ücretsiz Taşıyoruz!</h2>
     <p class="ixir-wh-migrate-lead">Taşınmak gözünüzü mü korkutuyor? Korkutmasın!</p>
     <p>Farklı firmada yer alan WordPress web sitelerinizi uzman WordPress ekibimiz ücretsiz olarak, sorunsuz bir
      şekilde
      taşımaktadır. Hiçbir veri kaybı yaşamadan İxir Hosting’e geçiş yapmak için bizimle iletişime geçebilirsiniz.</p>
     <a class="ixir-wh-migrate-cta" href="{$WEB_ROOT}/iletisim">Ücretsiz Taşıma Talep Et</a>
    </div>
   </div>
  </div>
</section>