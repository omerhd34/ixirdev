<section class="ixir-solutions ixir-slide ixir-slide--left is-slide-on" id="ixir-solutions"
 aria-label="Web hosting ve altyapı çözümleri">
 <div class="container">
  <header class="ixir-solutions-head">
   <h2>Türkiye'nin Güvenilir Web Hosting ve Altyapı Çözümleri</h2>
   <p>2005'ten bu yana 22.000'den fazla müşteriye kesintisiz hizmet sunuyoruz.</p>
  </header>
  <div class="ixir-solutions-grid">
   <article class="ixir-solutions-card">
    <div class="ixir-solutions-top">
     <span class="ixir-solutions-icon" aria-hidden="true"><i class="fas fa-server"></i></span>
     <h3>Linux Hosting &amp; WordPress Hosting</h3>
    </div>
    <p>Litespeed Web Server, NVMe SSD diskler ve Imunify360 WAF güvenliğiyle donatılmış hosting altyapımız; kişisel
     bloglardan kurumsal sitelere kadar her ölçekte hız ve güvenlik sunar. AccelerateWP ve Litespeed Cache desteğiyle
     WordPress siteniz 10 kata kadar daha hızlı çalışır.</p>
    <div class="ixir-solutions-links">
     <a href="{$WEB_ROOT}/linux-hosting">Linux Hosting <i class="fas fa-arrow-right" aria-hidden="true"></i></a>
     <a href="{$WEB_ROOT}/wordpress-hosting">WordPress Hosting <i class="fas fa-arrow-right" aria-hidden="true"></i></a>
    </div>
   </article>
   <article class="ixir-solutions-card">
    <div class="ixir-solutions-top">
     <span class="ixir-solutions-icon" aria-hidden="true"><i class="fas fa-cloud"></i></span>
     <h3>Cloud Server &amp; Dedicated Server</h3>
    </div>
    <p>İstanbul merkezli Tier III+ veri merkezimizde Intel Xeon işlemciler ve SSD depolama ile tam kontrol sizde. 60
     saniyede kurulan Cloud Server'larımız; Windows &amp; Linux desteği, 3 operatör yedekli bağlantı ve otomatik
     yedekleme seçenekleriyle kurumsal altyapınızın güvencesidir.</p>
    <div class="ixir-solutions-links">
     <a href="{$WEB_ROOT}/cloud-server">Cloud Server <i class="fas fa-arrow-right" aria-hidden="true"></i></a>
     <a href="{$WEB_ROOT}/dedicated-server">Dedicated Server <i class="fas fa-arrow-right" aria-hidden="true"></i></a>
    </div>
   </article>
   <article class="ixir-solutions-card">
    <div class="ixir-solutions-top">
     <span class="ixir-solutions-icon" aria-hidden="true"><i class="fas fa-envelope"></i></span>
     <h3>Kurumsal E-posta &amp; AntiSpam</h3>
    </div>
    <p>KVKK uyumlu server'larda barındırılan kurumsal e-posta çözümlerimiz; makine öğrenimi destekli %99.8 spam
     engelleme ve antivirüs koruması sunar. Tüm cihazlardan erişim, güvenli e-posta yönetimi ve giden mail saygınlığı
     hizmetleriyle iş iletişiminizi kesintisiz sürdürün.</p>
    <div class="ixir-solutions-links">
     <a href="{$WEB_ROOT}/kurumsal-mail-hosting">Kurumsal E-posta <i class="fas fa-arrow-right"
       aria-hidden="true"></i></a>
     <a href="{$WEB_ROOT}/antispam">AntiSpam <i class="fas fa-arrow-right" aria-hidden="true"></i></a>
    </div>
   </article>
   <article class="ixir-solutions-card">
    <div class="ixir-solutions-top">
     <span class="ixir-solutions-icon" aria-hidden="true"><i class="fas fa-globe"></i></span>
     <h3>Domain Tescili &amp; Yönetimi</h3>
    </div>
    <p>125 TL'den başlayan fiyatlarla .com, .net, .org ve 500'den fazla uzantıda domain tescili yapın. Belgesiz
     .com.tr ve .net.tr anında tescil, ücretsiz Whois gizleme, DNS yönetimi ve URL yönlendirme hizmetleriyle domain
     süreçlerinizi kolayca yönetin.</p>
    <div class="ixir-solutions-links">
     <a href="{$WEB_ROOT}/domain-sorgu">Domain Tescil <i class="fas fa-arrow-right" aria-hidden="true"></i></a>
    </div>
   </article>
   <article class="ixir-solutions-card">
    <div class="ixir-solutions-top">
     <span class="ixir-solutions-icon" aria-hidden="true"><i class="fas fa-lock"></i></span>
     <h3>SSL Sertifikası &amp; Web Güvenliği</h3>
    </div>
    <p>Standart, Wildcard ve EV SSL sertifika seçenekleriyle web sitenizi ve ziyaretçilerinizi koruyun. Tarayıcı adres
     çubuğundaki yeşil kilit güvencesiyle ziyaretçi güvenini artırın; PCI DSS tarama hizmetiyle e-ticaret altyapınızı
     uyumlu ve güvende tutun.</p>
    <div class="ixir-solutions-links">
     <a href="{$WEB_ROOT}/ssl-sertifikalari">SSL Sertifikaları <i class="fas fa-arrow-right" aria-hidden="true"></i></a>
    </div>
   </article>
   <article class="ixir-solutions-card">
    <div class="ixir-solutions-top">
     <span class="ixir-solutions-icon" aria-hidden="true"><i class="fas fa-code"></i></span>
     <h3>Developer Hosting</h3>
    </div>
    <p>Laravel, Node.js, Python, Ruby ve Git desteğiyle geliştiricilere özel hosting altyapısı. SSH terminal erişimi,
     çoklu PHP sürümü ve cPanel kontrol paneli ile hem geliştirme hem de yönetim süreçlerinizi tek platformda
     birleştirin; üretkenliğinizi en üst düzeye taşıyın.</p>
    <div class="ixir-solutions-links">
     <a href="{$WEB_ROOT}/developer-hosting">Developer Hosting <i class="fas fa-arrow-right" aria-hidden="true"></i></a>
    </div>
   </article>
  </div>
 </div>
</section>
<script>
 {literal}
 (function() {
  var root = document.getElementById('ixir-solutions');
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