<section class="ixir-wh-about ixir-slide ixir-slide--right is-slide-on" aria-labelledby="ixir-wh-about-title">
 <script>
  {literal}
   (function() {
    var root = document.querySelector('.ixir-wh-about');
    if (!root || !window.IntersectionObserver) return;
    if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    if (window.matchMedia && window.matchMedia('(max-width: 1023px)').matches) return;
    root.classList.add('is-armed');
   })();
  {/literal}
 </script>
 <div class="container">
  <div class="ixir-wh-about-body">
   <header class="ixir-wh-about-head ixir-wh-about-anim">
    <span class="ixir-wh-about-eyebrow"><i class="fas fa-code" aria-hidden="true"></i> Geliştirici Ortamı</span>
    <h2 id="ixir-wh-about-title">ixirhost Developer Hosting: Yazılımcıya Özel, Gerçek Bir Geliştirici Ortamı</h2>
    <p class="ixir-wh-about-lead">IxirHost Developer Hosting, yazılım geliştiricilerin modern uygulama geliştirme ve
     yayınlama süreçleri için ihtiyaç duydukları tüm araçları tek bir paylaşımlı hosting ortamında sunan, Türkiye'nin
     bu alanda öncü hizmetidir. <strong>SSH/terminal erişimi</strong>, <strong>Git</strong> entegrasyonu,
     <strong>Composer</strong>, <strong>npm</strong> ve <strong>pip</strong> gibi paket yöneticisi desteğiyle; Laravel,
     Symfony gibi PHP framework projelerinizi, Node.js ve Nest.js uygulamalarınızı, Python/Django/Flask projelerinizi
     ve Ruby on Rails uygulamalarınızı aynı cPanel hesabında barındırabilirsiniz.
    </p>
   </header>
   <div class="ixir-wh-about-split">
    <div class="ixir-wh-about-copy ixir-wh-about-anim">
     <h3><span aria-hidden="true"><i class="fas fa-terminal"></i></span>Maliyet avantajı, geliştirici özgürlüğü</h3>
     <p>Geleneksel paylaşımlı hosting ile sunucu arasında kalan developer hosting, hem
      <strong>maliyet avantajı</strong> hem de <strong>geliştirici özgürlüğü</strong> sunar.
      <code>php artisan migrate</code>, <code>npm run build</code> veya <code>python manage.py collectstatic</code>
      gibi CLI komutlarını doğrudan terminal üzerinden çalıştırabilir; cPanel'de Node.js Selector ile versiyon
      yönetimi yapabilir, Git Version Control aracıyla repolarınızı görsel olarak yönetebilirsiniz. MySQL 8
      veritabanınıza TablePlus veya DBeaver gibi araçlarla uzaktan bağlanarak geliştirme sürecinizi kesintisiz
      yürütebilirsiniz.
     </p>
    </div>
    <div class="ixir-wh-about-term ixir-wh-about-anim" aria-hidden="true">
     <div class="ixir-wh-about-term-bar">
      <i></i><i></i><i></i>
      <span>ssh ixir@developer ~/app</span>
     </div>
     <pre><span class="is-user">ixir@developer</span>:<span class="is-path">~/app</span>$ git pull origin main
     <span class="is-dim">Already up to date.</span>
     <span class="is-user">ixir@developer</span>:<span class="is-path">~/app</span>$ composer install --no-dev
     <span class="is-dim">Generating optimized autoload files</span>
     <span class="is-user">ixir@developer</span>:<span class="is-path">~/app</span>$ php artisan migrate
     <span class="is-ok">INFO</span> Running migrations.
     <span class="is-user">ixir@developer</span>:<span class="is-path">~/app</span>$ npm run build
     <span class="is-ok">✓</span> built in 2.41s
     <span class="is-user">ixir@developer</span>:<span class="is-path">~/app</span>$ <span class="is-caret"></span></pre>
    </div>
   </div>
   <div class="ixir-wh-about-card ixir-wh-about-anim">
    <p>Tüm developer hosting planları <strong>Enterprise NVMe depolama</strong>, <strong>LiteSpeed Web
      Server</strong>, <strong>Intel Xeon Gold işlemciler</strong>, <strong>JetBackup haftalık yedekleme</strong> ve
     <strong>ücretsiz Let's Encrypt SSL</strong> ile donatılmıştır. İstanbul TIER III+ veri merkezimizden %99.9
     uptime garantisiyle sunulan hizmetimiz; ISO 27001 Bilgi Güvenliği, ISO 9001 Kalite Yönetim ve ISO 10002 Müşteri
     Memnuniyet sertifikaları kapsamında işletilmektedir. 15 gün koşulsuz para iade garantisi ve 7/24 teknik destek
     güvencesiyle developer hosting deneyiminizi tam anlamıyla güvence altına alıyoruz.
    </p>
    <ul class="ixir-wh-about-stats">
     <li><b>%99.9</b><span>Uptime garantisi</span></li>
     <li><b>TIER III+</b><span>İstanbul veri merkezi</span></li>
     <li><b>ISO</b><span>27001 - 9001 - 10002</span></li>
     <li><b>15 Gün</b><span>Koşulsuz iade</span></li>
     <li><b>7/24</b><span>Teknik destek</span></li>
    </ul>
   </div>
  </div>
 </div>
</section>