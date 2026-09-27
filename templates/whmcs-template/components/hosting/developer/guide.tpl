<section class="ixir-wh-guide ixir-wh-guide--dark ixir-slide ixir-slide--left is-slide-on"
 aria-label="Developer Hosting rehberi">
 <script>
  {literal}
   (function() {
    var root = document.querySelector('.ixir-wh-guide');
    if (!root || !window.IntersectionObserver) return;
    if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    if (window.matchMedia && window.matchMedia('(max-width: 1023px)').matches) return;
    root.classList.add('is-armed');
   })();
  {/literal}
 </script>
 <div class="container">
  <div class="ixir-wh-guide-list">
   <article class="ixir-wh-guide-item">
    <span class="ixir-wh-guide-icon" aria-hidden="true"><i class="fas fa-terminal"></i></span>
    <h2>Developer Hosting Neden Gereklidir?</h2>
    <p>Standart paylaşımlı hosting paketleri çoğu zaman SSH, Git, Composer ve Node.js gibi geliştirici araçlarına izin
     vermez. Developer Hosting ise Laravel, Node.js, Python ve Ruby projelerinizi tek bir cPanel hesabında geliştirip
     yayınlamanız için bu araçları bir arada sunar. Terminal erişimi sayesinde <strong>php artisan</strong>,
     <strong>npm install</strong>, <strong>pip</strong> ve <strong>git clone</strong> gibi komutları doğrudan sunucuda
     çalıştırabilir; hem staging hem canlı ortamı aynı altyapıda yönetebilirsiniz.
    </p>
   </article>
   <article class="ixir-wh-guide-item">
    <span class="ixir-wh-guide-icon" aria-hidden="true"><i class="fas fa-layer-group"></i></span>
    <h2>Hangi Developer Hosting Paketi Size Uygun?</h2>
    <p>Tek bir uygulama veya deneme projesi için <strong>Başlangıç</strong> planı yeterlidir. Birden fazla proje,
     daha yüksek process limiti ve RAM ihtiyacı olan ekipler <strong>Profesyonel</strong> veya üst paketleri tercih
     edebilir. Hangi paketi seçerseniz seçin; Node.js / Python seçicileri, Git, SSH, LiteSpeed, ücretsiz SSL ve
     JetBackup yedekleme tüm planlarda standart olarak yer alır.</p>
   </article>
   <article class="ixir-wh-guide-item">
    <span class="ixir-wh-guide-icon" aria-hidden="true"><i class="fas fa-code"></i></span>
    <h2>İXİRHOST ile Geliştirici Dostu Hosting</h2>
    <p>ixirhost Developer Hosting, İstanbul TIER III+ veri merkezinde CloudLinux ve cPanel ile sunulur. Klasik web
     siteleri için <a href="{$WEB_ROOT}/linux-hosting">Linux Hosting</a>, WordPress odaklı ihtiyaçlar için
     <a href="{$WEB_ROOT}/wordpress-hosting">WordPress Hosting</a> paketlerimizi de inceleyebilirsiniz. 15 gün
     koşulsuz iade garantisiyle hizmeti risksiz deneyimleyebilirsiniz.
    </p>
   </article>
  </div>
 </div>
</section>