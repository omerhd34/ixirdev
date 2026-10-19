 <section class="ixir-wh-migrate ixir-slide ixir-slide--right is-slide-on" aria-labelledby="ixir-wh-migrate-title">
  <script>
   {literal}
    (function() {
     var root = document.querySelector('.ixir-wh-migrate');
     if (!root || !window.IntersectionObserver) return;
     if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
     if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
     root.classList.add('is-armed');
    })();
   {/literal}
  </script>
  <div class="container">
   <div class="ixir-wh-migrate-grid">
    <div class="ixir-wh-migrate-visual">
     <span class="ixir-wh-migrate-art">
      <img src="{$WEB_ROOT}/templates/{$template}/img/wordpress-transfer.webp" alt="WordPress ücretsiz site taşıma"
       width="439" height="415" loading="lazy" decoding="async">
     </span>
    </div>
    <div class="ixir-wh-migrate-copy">
     <div class="ixir-badge-pill ixir-badge-pill--left ixir-ssl-badge-pill ixir-ssl-badge-pill--left"><i class="fas fa-exchange-alt" aria-hidden="true"></i> ÜCRETSİZ TAŞIMA</div>
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