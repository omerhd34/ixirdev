<section class="ixir-trust ixir-slide ixir-slide--right is-slide-on" id="ixir-trust">
 <div class="container">
  <header class="ixir-trust-head">
   <h2>Yalnızca Hizmet Değil, 20 Yıldır Güven Barındırıyoruz!</h2>
   <p>Sektörün en tecrübeli ve yetkin hosting servis sağlayıcısına bugün geçiş yapın.</p>
  </header>
  <div class="ixir-trust-grid">
   <article class="ixir-trust-item">
    <div class="ixir-trust-icon" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/trust/customer.svg" alt="">
    </div>
    <h3>Müşteri Odaklı</h3>
    <p>Müşteri odaklı ürün ve iletişim stratejimiz sayesinde en iyi hizmeti alın.</p>
   </article>
   <article class="ixir-trust-item">
    <div class="ixir-trust-icon" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/trust/sale.svg" alt="">
    </div>
    <h3>Yıl Boyu Ekonomik</h3>
    <p>Yıl boyu en ekonomik hosting fiyatları ile maliyetlerinizi düşürün.</p>
   </article>
   <article class="ixir-trust-item">
    <div class="ixir-trust-icon" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/trust/api.svg" alt="">
    </div>
    <h3>Gelişmiş AR-GE</h3>
    <p>Yıl boyu süren ürün AR-GE çalışmalarımız sayesinde her zaman en güncel ve farklı servisleri alın.</p>
   </article>
   <article class="ixir-trust-item">
    <div class="ixir-trust-icon" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/trust/money.svg" alt="">
    </div>
    <h3>Ücret iadesi</h3>
    <p>Linux Hosting paketlerimizde 15 gün koşulsuz iade sayesinde çekinmeden deneyin.</p>
   </article>
   <article class="ixir-trust-item">
    <div class="ixir-trust-icon" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/trust/cog.svg" alt="">
    </div>
    <h3>Ücretsiz Servisler</h3>
    <p>Hosting, domain ve server hizmetlerindeki ücretsiz servisler sayesinde ek maliyetlerden kurtulun.</p>
   </article>
   <article class="ixir-trust-item">
    <div class="ixir-trust-icon" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/trust/telephone.svg" alt="">
    </div>
    <h3>7/24/365 Destek</h3>
    <p>Çok kanallı 7/24/365 destek sayesinde dilediğiniz an destek hizmetinin keyfini çıkarın.</p>
   </article>
  </div>
 </div>
</section>
<script>
 {literal}
  (function() {
   var root = document.getElementById('ixir-trust');
   if (!root || !window.IntersectionObserver) {
    return;
   }
   if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) {
    return;
   }
   root.classList.add('is-armed');
   var observer = new IntersectionObserver(function(entries) {
    entries.forEach(function(entry) {
     if (!entry.isIntersecting) {
      return;
     }
     observer.disconnect();
     window.requestAnimationFrame(function() {
      window.requestAnimationFrame(function() {
       root.classList.add('is-in');
       window.setTimeout(function() {
        root.classList.remove('is-armed');
       }, 1400);
      });
     });
    });
   }, {
    threshold: 0
   });
   observer.observe(root);
  })();
 {/literal}
</script>