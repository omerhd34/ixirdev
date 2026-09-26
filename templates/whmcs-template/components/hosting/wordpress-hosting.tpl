<div class="ixir-wh-page--wp">
 <section id="home-banner" class="ixir-hero ixir-hero--wordpress" aria-label="WordPress Hosting">
  <style>
   @media (min-width: 993px) {
    section#home-banner.ixir-hero--wordpress .ixir-hero-photo img {
     object-position: 50% center !important;
    }
   }
  </style>
  <picture class="ixir-hero-photo">
   <source srcset="{$WEB_ROOT}/templates/{$template}/img/wordpress-hero.webp?v=r2" type="image/webp">
   <img src="{$WEB_ROOT}/templates/{$template}/img/wordpress-hero.jpg?v=r2" alt="" width="1920" height="1080">
  </picture>
  <div class="container">
   <div class="ixir-hero-main">
    <div class="ixir-hero-copy">
     <h1>WordPress Hosting</h1>
     <p>NVME, Litespeed Cache, AccelerateWP ile Wordpress Sitenizi Hızlandırın!</p>
    </div>
    <div class="ixir-hero-actions">
     <a href="#ixir-wh-plans" class="ixir-hero-btn ixir-hero-btn--primary ixir-wh-plans-btn">
      WordPress Hosting Paketleri <i class="fas fa-arrow-down" aria-hidden="true"></i>
     </a>
    </div>
    <p class="ixir-hero-label" aria-hidden="true">Özellikler</p>
    <ul class="ixir-hero-points" aria-label="Özellikler">
     <li>
      <i class="fas fa-hdd" aria-hidden="true"></i>
      <span>%100 NVMe SSD Disk</span>
     </li>
     <li>
      <i class="fas fa-desktop" aria-hidden="true"></i>
      <span>LiteSpeed & LSCache</span>
     </li>
     <li>
      <i class="fas fa-lock" aria-hidden="true"></i>
      <span>AccelerateWP</span>
     </li>
    </ul>
    <div class="ixir-domain-links-wrap" role="region" aria-label="Bazı hizmetler">
     <p class="ixir-hero-label">Bazı Hizmetler</p>
     <ul class="ixir-domain-links">
      <li>
       <a href="{$WEB_ROOT}/domain-sorgu" title="Domain Sorgula">
        <i class="fas fa-globe fa-fw" aria-hidden="true"></i><span>Domain Sorgulama</span>
       </a>
      </li>
      <li>
       <a href="{$WEB_ROOT}/domain-transfer" title="Domain Transfer">
        <i class="fas fa-retweet fa-fw" aria-hidden="true"></i><span>Domain Transfer</span>
       </a>
      </li>
      <li>
       <a href="{$WEB_ROOT}/whois-sorgulama" title="Whois Sorgulama">
        <i class="far fa-eye fa-fw" aria-hidden="true"></i><span>Whois Sorgulama</span>
       </a>
      </li>
      <li>
       <a href="{$WEB_ROOT}/ssl-sertifikalari" title="SSL Sertifikaları">
        <i class="far fa-lock fa-fw" aria-hidden="true"></i><span>SSL Sertifikaları</span>
       </a>
      </li>
     </ul>
     <ul class="ixir-domain-links">
      <li>
       <a href="{$WEB_ROOT}/linux-hosting" title="Linux Hosting">
        <i class="fas fa-hdd fa-fw" aria-hidden="true"></i><span>Linux Hosting</span>
       </a>
      </li>
      <li>
       <a href="{$WEB_ROOT}/windows-hosting" title="Windows Hosting">
        <i class="fab fa-windows fa-fw" aria-hidden="true"></i><span>Windows Hosting</span>
       </a>
      </li>
      <li>
       <a href="{$WEB_ROOT}/wordpress-hosting" title="WordPress Hosting">
        <i class="fab fa-wordpress-simple fa-fw" aria-hidden="true"></i><span>WordPress Hosting</span>
       </a>
      </li>
      <li>
       <a href="{$WEB_ROOT}/reseller-hosting" title="Linux Bayi Hosting">
        <i class="fab fa-linux fa-fw" aria-hidden="true"></i><span>Linux Bayi Hosting</span>
       </a>
      </li>
     </ul>
     <ul class="ixir-domain-links">
      <li>
       <a href="{$WEB_ROOT}/kurumsal-mail-hosting" title="Kurumsal Mail Hosting">
        <i class="far fa-envelope fa-fw" aria-hidden="true"></i><span>Kurumsal Mail Hosting</span>
       </a>
      </li>
      <li>
       <a href="{$WEB_ROOT}/kurumsal-mail-server" title="Kurumsal Mail Server">
        <i class="fas fa-mail-bulk fa-fw" aria-hidden="true"></i><span>Kurumsal Mail Server</span>
       </a>
      </li>
      <li>
       <a href="{$WEB_ROOT}/cloud" title="Bulut Sunucu">
        <i class="fas fa-cloud fa-fw" aria-hidden="true"></i><span>Bulut Sunucu</span>
       </a>
      </li>
      <li>
       <a href="{$WEB_ROOT}/dedicated-server" title="Dedicated Server">
        <i class="fas fa-server fa-fw" aria-hidden="true"></i><span>Dedicated Server</span>
       </a>
      </li>
     </ul>
    </div>
   </div>
  </div>
  <div class="ixir-hero-strip" aria-hidden="true">
   <div class="ixir-hero-strip-track" id="ixirHeroStripTrack">
    <span>NVMe SSD</span>
    <span>WordPress</span>
    <span>LiteSpeed</span>
    <span>AccelerateWP</span>
    <span>cPanel</span>
    <span>7/24 Destek</span>
    <span>Ücretsiz SSL</span>
    <span>15 Gün İade</span>
    <span>LiteSpeed Cache</span>
    <span>DDoS Koruması</span>
    <span>%99.9 Uptime</span>
    <span>Ücretsiz Yedekleme</span>
    <span>Türkiye Datacenter</span>
    <span>Anında Aktivasyon</span>
   </div>
  </div>
 </section>
 <script>
  {literal}
   (function() {
    var hero = document.getElementById('home-banner');
    if (!hero) return;

    function apply() {
     var offsetY = Math.max(0, Math.round(hero.getBoundingClientRect().top + (window.pageYOffset || window.scrollY ||
      0)));
     hero.style.setProperty('--ixir-hero-offset', offsetY + 'px');
    }
    apply();
    window.addEventListener('resize', apply);
    window.addEventListener('load', apply);

    var plansLink = document.querySelector('a.ixir-wh-plans-btn');
    if (plansLink) {
     var frame = 0;

     function stickyBottom() {
      var bottom = 0;
      var selectors = ['.ixir-header', '.mobile-header', '.news-bar'];
      var i;
      for (i = 0; i < selectors.length; i++) {
       var el = document.querySelector(selectors[i]);
       if (!el || el.classList.contains('is-hidden')) continue;
       var style = window.getComputedStyle(el);
       if (style.display === 'none' || style.visibility === 'hidden' || style.position !== 'fixed') continue;
       var rect = el.getBoundingClientRect();
       if (rect.height > 0 && rect.bottom > bottom) bottom = rect.bottom;
      }
      return Math.ceil(bottom);
     }

     function destination(plans) {
      var y = window.pageYOffset || document.documentElement.scrollTop || 0;
      return Math.max(0, Math.round(plans.getBoundingClientRect().top + y - stickyBottom()));
     }

     function easeOutCubic(t) {
      return 1 - Math.pow(1 - t, 3);
     }

     plansLink.addEventListener('click', function(e) {
      var plans = document.getElementById('ixir-wh-plans');
      if (!plans) return;
      if (e.metaKey || e.ctrlKey || e.shiftKey || e.altKey || e.button !== 0) return;
      e.preventDefault();
      if (frame) {
       window.cancelAnimationFrame(frame);
       frame = 0;
      }
      var reduce = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
      var start = window.pageYOffset || document.documentElement.scrollTop || 0;
      var dest = destination(plans);
      if (window.history && window.history.pushState) {
       window.history.pushState(null, '', '#ixir-wh-plans');
      }
      if (reduce || Math.abs(dest - start) < 2) {
       window.scrollTo(0, dest);
       return;
      }
      var distance = dest - start;
      var duration = Math.min(900, Math.max(420, Math.abs(distance) * 0.55));
      var t0 = null;

      function step(now) {
       if (t0 === null) t0 = now;
       var progress = Math.min(1, (now - t0) / duration);
       window.scrollTo(0, start + distance * easeOutCubic(progress));
       if (progress < 1) {
        frame = window.requestAnimationFrame(step);
       } else {
        frame = 0;
        window.scrollTo(0, destination(plans));
       }
      }

      frame = window.requestAnimationFrame(step);
     });
    }

    var strip = document.querySelector('.ixir-hero-strip');
    var track = document.getElementById('ixirHeroStripTrack');
    if (strip && track && track.children.length) {
     var originalHTML = track.innerHTML;
     var x = 0;
     var setWidth = 0;
     var dragging = false;
     var paused = false;
     var startX = 0;
     var startOffset = 0;
     var lastX = 0;
     var velocity = 0;
     var resumeTimer = null;
     var reduceMotion = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
     var speed = reduceMotion ? 0 : 0.45;

     function buildStrip() {
      var keep = x;
      track.innerHTML = originalHTML;
      var baseWidth = track.scrollWidth;
      var need = Math.max(2, Math.ceil((strip.clientWidth * 2) / Math.max(baseWidth, 1)) + 1);
      var html = originalHTML;
      var i;
      for (i = 1; i < need; i++) {
       html += originalHTML;
      }
      track.innerHTML = html + html;
      setWidth = track.scrollWidth / 2;
      x = keep;
      applyStrip();
     }

     function wrapStrip() {
      if (!setWidth) return;
      while (x <= -setWidth) x += setWidth;
      while (x > 0) x -= setWidth;
     }

     function applyStrip() {
      wrapStrip();
      track.style.transform = 'translate3d(' + x + 'px,0,0)';
     }

     function tickStrip() {
      if (!dragging && !paused && speed) {
       x -= speed;
       applyStrip();
      }
      window.requestAnimationFrame(tickStrip);
     }

     function endDrag(e) {
      if (!dragging) return;
      dragging = false;
      strip.classList.remove('is-dragging');
      x += velocity * 10;
      applyStrip();
      window.clearTimeout(resumeTimer);
      resumeTimer = window.setTimeout(function() {
       if (!dragging) paused = false;
      }, 350);
     }

     strip.addEventListener('pointerdown', function(e) {
      if (e.pointerType === 'mouse' && e.button !== 0) return;
      dragging = true;
      paused = true;
      startX = e.clientX;
      startOffset = x;
      lastX = e.clientX;
      velocity = 0;
      strip.classList.add('is-dragging');
      if (strip.setPointerCapture) strip.setPointerCapture(e.pointerId);
      e.preventDefault();
     });
     strip.addEventListener('pointermove', function(e) {
      if (!dragging) return;
      velocity = e.clientX - lastX;
      lastX = e.clientX;
      x = startOffset + (e.clientX - startX);
      applyStrip();
     });
     strip.addEventListener('pointerup', endDrag);
     strip.addEventListener('pointercancel', endDrag);
     strip.addEventListener('pointerenter', function(e) {
      if (e.pointerType === 'mouse' && !dragging) paused = true;
     });
     strip.addEventListener('pointerleave', function(e) {
      if (e.pointerType === 'mouse' && !dragging) paused = false;
     });

     buildStrip();
     window.addEventListener('resize', buildStrip);
     window.addEventListener('load', buildStrip);
     window.requestAnimationFrame(tickStrip);
    }
   })();
  {/literal}
 </script>
 <section class="ixir-wh-plans" id="ixir-wh-plans" aria-labelledby="ixir-wh-plans-title">
  <script>
   {literal}
    (function() {
     var root = document.getElementById('ixir-wh-plans');
     if (!root || !window.IntersectionObserver) return;
     if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
     if (window.matchMedia && window.matchMedia('(max-width: 1023px)').matches) return;
     root.classList.add('is-armed');
    })();
   {/literal}
  </script>
  <div class="container">
   <header class="ixir-wh-plans-head">
    <h2 id="ixir-wh-plans-title">WordPress Hosting Paketleri</h2>
    <p>İhtiyacınıza uygun paketi seçin, sitenizi hemen yayına alın.</p>
   </header>
   <div class="ixir-wh-grid ixir-wh-grid--3">
    <article class="ixir-wh-plan">
     <header class="ixir-wh-plan-head">
      <h3>Başlangıç</h3>
      <p>WordPress dünyasına yeni adım atanlar için ideal seçim</p>
     </header>
     <div class="ixir-wh-price">
      <s>120,77 TL</s>
      <div class="ixir-wh-amount"><b>76</b><span>,83</span><small>TL<small>/ay</small></small></div>
      <span class="ixir-wh-save">%50 tasarruf</span>
     </div>
     <div class="ixir-wh-billing">
      <button type="button" class="ixir-wh-billing-btn" aria-expanded="false" aria-controls="ixir-wh-bill-budget">Ödeme
       Planları</button>
      <div class="ixir-wh-billing-pop" id="ixir-wh-bill-budget" role="dialog" aria-label="Başlangıç ödeme planı">
       <div class="ixir-wh-billing-top">
        <strong>Başlangıç</strong>
        <button type="button" class="ixir-wh-billing-close" aria-label="Kapat">&times;</button>
       </div>
       <table>
        <thead>
         <tr>
          <th>Periyot</th>
          <th>Aylık</th>
          <th>Toplam</th>
         </tr>
        </thead>
        <tbody>
         <tr>
          <td>1 Yıllık</td>
          <td>92,90 TL</td>
          <td>1114,80 TL</td>
         </tr>
         <tr>
          <td>2 Yıllık</td>
          <td>84,34 TL</td>
          <td>2024,16 TL</td>
         </tr>
         <tr class="is-best">
          <td>3 Yıllık</td>
          <td>76,83 TL</td>
          <td>2766,06 TL</td>
         </tr>
        </tbody>
       </table>
       <p>* En avantajlı fiyat</p>
      </div>
     </div>
     <a class="ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
     <ul class="ixir-wh-specs">
      <li><span>Web sitesi adeti</span><b>1<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="Web sitesi açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Başlangıç planında yalnızca 1 alan adı
          barındırabilirsiniz.</span></span></b></li>
      <li><span>NVMe disk boyutu</span><b>1 GB<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="NVMe açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Enterprise NVMe ile geleneksel depolama birimlerine göre 40 kat daha
          fazla hız, daha fazla I/O sağlıyoruz.</span></span></b></li>
      <li><span>Trafik boyutu(GB)</span><b>10</b></li>
      <li><span>E-posta adeti</span><b>10</b></li>
      <li><span>İşlemci</span><b>1 Core Intel Gold CPU<span class="ixir-wh-tip"><button type="button"
          class="ixir-wh-tip-btn" aria-label="İşlemci açıklaması"><i class="fas fa-info-circle"
           aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">En yeni nesil Intel Xeon Gold
          işlemcilerle 5 kata kadar daha fazla
          performans.</span></span></b></li>
      <li><span>RAM boyutu(MB)</span><b>1024</b></li>
     </ul>
     <a class="ixir-wh-more" href="#ixir-wh-compare">Diğer Özellikleri Gör <i class="fas fa-chevron-down"
       aria-hidden="true"></i></a>
    </article>

    <article class="ixir-wh-plan ixir-wh-plan--best">
     <header class="ixir-wh-plan-head ">
      <span class="ixir-wh-badge">En İyi Tercih</span>
      <h3>Ekonomik</h3>
      <p>Çoklu WordPress web sitesi barındırmak isteyenler için</p>
     </header>
     <div class="ixir-wh-price">
      <s>209,75 TL</s>
      <div class="ixir-wh-amount"><b>134</b><span>,44</span><small>TL<small>/ay</small></small></div>
      <span class="ixir-wh-save">%50 tasarruf</span>
     </div>
     <div class="ixir-wh-billing">
      <button type="button" class="ixir-wh-billing-btn" aria-expanded="false" aria-controls="ixir-wh-bill-economy">Ödeme
       Planları</button>
      <div class="ixir-wh-billing-pop" id="ixir-wh-bill-economy" role="dialog" aria-label="Ekonomik ödeme planı">
       <div class="ixir-wh-billing-top">
        <strong>Ekonomik</strong>
        <button type="button" class="ixir-wh-billing-close" aria-label="Kapat">&times;</button>
       </div>
       <table>
        <thead>
         <tr>
          <th>Periyot</th>
          <th>Aylık</th>
          <th>Toplam</th>
         </tr>
        </thead>
        <tbody>
         <tr>
          <td>1 Yıllık</td>
          <td>161,35 TL</td>
          <td>1936,20 TL</td>
         </tr>
         <tr>
          <td>2 Yıllık</td>
          <td>147,05 TL</td>
          <td>3529,20 TL</td>
         </tr>
         <tr class="is-best">
          <td>3 Yıllık</td>
          <td>134,44 TL</td>
          <td>4839,97 TL</td>
         </tr>
        </tbody>
       </table>
       <p>* En avantajlı fiyat</p>
      </div>
     </div>
     <a class="ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
     <ul class="ixir-wh-specs">
      <li><span>Web sitesi adeti</span><b>3<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="Web sitesi açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">3 adet WordPress web sitesi, hosting planınızda ana domain ile birlikte
          toplamda
          3
          adet domain barındırabilmenizi sağlar.</span></span></b></li>

      <li><span>NVMe disk boyutu</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button"
          class="ixir-wh-tip-btn" aria-label="NVMe açıklaması"><i class="fas fa-info-circle"
           aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Enterprise NVME ile geleneksel
          depolama birimlerine göre 40 kat daha fazla hız, daha fazla I/O sağlıyoruz, hosting planınızda
          limitlendirilmemiş depolama alanı sunuyoruz. Ancak adil kullanım politikaları geçerlidir.</span></span></b>
      </li>
      <li><span>Trafik boyutu</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="Trafik açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Limitsiz trafik, hosting planınızda limitlendirilmemiş trafik sağlar.
          Ancak adil kullanım politikaları geçerlidir.</span></span></b></li>
      <li><span>E-posta adeti</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="E-posta açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Limitsiz e-posta, hosting planınızda limitlendirilmemiş posta kutusu
          sayısını ifade eder. Ancak adil kullanım politikaları geçerlidir.</span></span></b></li>
      <li><span>İşlemci</span><b>2 Core Intel Gold CPU<span class="ixir-wh-tip"><button type="button"
          class="ixir-wh-tip-btn" aria-label="İşlemci açıklaması"><i class="fas fa-info-circle"
           aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">En yeni nesil Intel Xeon Gold
          işlemcilerle 5 kata kadar daha fazla
          performans.</span></span></b></li>
      <li><span>RAM boyutu(MB)</span><b>2048</b></li>
     </ul>
     <a class="ixir-wh-more" href="#ixir-wh-compare">Diğer Özellikleri Gör <i class="fas fa-chevron-down"
       aria-hidden="true"></i></a>
    </article>
    <article class="ixir-wh-plan">
     <header class="ixir-wh-plan-head">
      <h3>Profesyonel</h3>
      <p>WordPress web sitesini yüksek performansla barındırmak isteyenler için</p>
     </header>
     <div class="ixir-wh-price">
      <s>299,70 TL</s>
      <div class="ixir-wh-amount"><b>192</b><span>,48</span><small>TL<small>/ay</small></small></div>
      <span class="ixir-wh-save">%50 tasarruf</span>
     </div>
     <div class="ixir-wh-billing">
      <button type="button" class="ixir-wh-billing-btn" aria-expanded="false"
       aria-controls="ixir-wh-bill-professional">Ödeme Planları</button>
      <div class="ixir-wh-billing-pop" id="ixir-wh-bill-professional" role="dialog"
       aria-label="Profesyonel ödeme planı">
       <div class="ixir-wh-billing-top">
        <strong>Profesyonel</strong>
        <button type="button" class="ixir-wh-billing-close" aria-label="Kapat">&times;</button>
       </div>
       <table>
        <thead>
         <tr>
          <th>Periyot</th>
          <th>Aylık</th>
          <th>Toplam</th>
         </tr>
        </thead>
        <tbody>
         <tr>
          <td>1 Yıllık</td>
          <td>230,54 TL</td>
          <td>2766,48 TL</td>
         </tr>
         <tr>
          <td>2 Yıllık</td>
          <td>210,25 TL</td>
          <td>5045,71 TL</td>
         </tr>
         <tr class="is-best">
          <td>3 Yıllık</td>
          <td>192,48 TL</td>
          <td>6929,12 TL</td>
         </tr>
        </tbody>
       </table>
       <p>* En avantajlı fiyat</p>
      </div>
     </div>
     <a class="ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
     <ul class="ixir-wh-specs">
      <li><span>Web sitesi adeti</span><b>5<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="Web sitesi açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">5 adet web sitesi, hosting planınızda ana domain ile birlikte toplamda
          5 adet alt alan adı barındırabilmenizi sağlar.</span></span></b></li>
      <li><span>NVMe disk boyutu</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button"
          class="ixir-wh-tip-btn" aria-label="NVMe açıklaması"><i class="fas fa-info-circle"
           aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Enterprise NVMe ile geleneksel
          depolama birimlerine göre 40 kat daha
          fazla hız, daha fazla I/O sağlıyoruz. Hosting planınızda limitlendirilmemiş depolama alanı sunuyoruz. Ancak
          adil kullanım politikaları geçerlidir.</span></span></b></li>
      <li><span>Trafik boyutu</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="Trafik açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Limitsiz trafik, hosting planınızda limitlendirilmemiş trafik sağlar.
          Ancak adil kullanım politikaları geçerlidir.</span></span></b></li>
      <li><span>E-posta adeti</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="E-posta açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Limitsiz e-posta, hosting planınızda limitlendirilmemiş posta kutusu
          sayısını ifade eder. Ancak adil kullanım politikaları geçerlidir.</span></span></b></li>
      <li><span>İşlemci</span><b>2 Core Intel Gold CPU<span class="ixir-wh-tip"><button type="button"
          class="ixir-wh-tip-btn" aria-label="İşlemci açıklaması"><i class="fas fa-info-circle"
           aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">En yeni nesil Intel Xeon Gold
          işlemcilerle 5 kata kadar daha fazla
          performans.</span></span></b></li>
      <li><span>RAM boyutu(MB)</span><b>4096</b></li>
     </ul>
     <a class="ixir-wh-more" href="#ixir-wh-compare">Diğer Özellikleri Gör <i class="fas fa-chevron-down"
       aria-hidden="true"></i></a>
    </article>

   </div>
   <div class="ixir-wh-shared-box">
    <p class="ixir-wh-shared-label">Tüm paketlerde ortak bulunan özellikler</p>
    <ul class="ixir-wh-shared">
     <li><i class="fas fa-check" aria-hidden="true"></i>Litespeed Web Server<span class="ixir-wh-tip"><button
        type="button" class="ixir-wh-tip-btn" aria-label="Litespeed Web Server açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Geleneksel Apache web sunucusuna
        göre 10 kat daha fazla performans sağlar.</span></span></li>

     <li><i class="fas fa-check" aria-hidden="true"></i>Litespeed Cache
      <span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn" aria-label="Litespeed Cache açıklaması"><i
         class="fas fa-info-circle" aria-hidden="true"></i></button><span class="ixir-wh-tip-box"
        role="tooltip">Geleneksel Apache web sunucusuna
        göre 10 kat daha fazla performans sağlar.</span></span>
     </li>

     <li><i class="fas fa-check" aria-hidden="true"></i>PHP X-RAY
      <span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn" aria-label="PHP X-RAY açıklaması"><i
         class="fas fa-info-circle" aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">PHP
        X-Ray ile web sitenizin hız ve performansını analiz edebilir ve iyileştirmeler yapabilirsiniz.
       </span></span>
     </li>
     <li><i class="fas fa-check" aria-hidden="true"></i>Accelerate WP
      <span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn" aria-label="Accelerate WP açıklaması"><i
         class="fas fa-info-circle" aria-hidden="true"></i></button><span class="ixir-wh-tip-box"
        role="tooltip">AccelerateWP LitespeedCache yerine kullanabileceğiniz wordpress hızlandırma platformudur, sayfa
        yükleme sürelerini optimize eder.</span></span>
     </li>
     <li><i class="fas fa-check" aria-hidden="true"></i>Imunify360 WAF
      <span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn" aria-label="Imunify360 WAF açıklaması"><i
         class="fas fa-info-circle" aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Web
        sitelerinizi malware, virüs, dos saldırılarından koruyan gelişmiş bir çözümdür.
       </span></span>
     </li>
     <li><i class="fas fa-check" aria-hidden="true"></i>JetBackup Yedekleme
      <span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
        aria-label="JetBackup Yedekleme açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
        class="ixir-wh-tip-box" role="tooltip">Adil kullanım politikasına uygun hesabınız haftalık olarak ücretsiz
        yedeklenir ve ücretsiz olarak panelinizden isterseniz tüm yedek, isterseniz dosya, mail, veritabanı bazlı
        yedeklerden geri dönebilirsiniz.</span></span>
     </li>
     <li><i class="fas fa-check" aria-hidden="true"></i>Ücretsiz SSL
      <span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn" aria-label="Ücretsiz SSL açıklaması"><i
         class="fas fa-info-circle" aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Let's
        Encrypt SSL sertifikanız otomatik kurulur ve ömür boyu ücretsizdir.
       </span></span>
     </li>
     <li><i class="fas fa-check" aria-hidden="true"></i>Cloud Linux OS</li>
     <li><i class="fas fa-check" aria-hidden="true"></i>cPanel Kontrol Paneli</li>
    </ul>
   </div>
  </div>
 </section>
 <section class="ixir-wh-story ixir-wh-story--intro" aria-label="WordPress Hosting nedir">
  <script>
   {literal}
   (function() {
    var root = document.querySelector('.ixir-wh-story--intro');
    if (!root || !window.IntersectionObserver) return;
    if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    if (window.matchMedia && window.matchMedia('(max-width: 1023px)').matches) return;
    root.classList.add('is-armed');
   })();
   {/literal}
  </script>
  <div class="container">
   <div class="ixir-wh-story-intro">
    <span class="ixir-wh-story-icon" aria-hidden="true"><i class="fas fa-info"></i></span>
    <h2>WordPress Hosting Nedir?</h2>
    <p>WordPress Hosting, WordPress web siteleri için özel olarak tasarlanmış sunucu ve ağ altyapısında sunulan; tek
     tıkla kurulum, yüksek CPU ve RAM kaynakları ile WordPress’e özel optimizasyonlar içeren bir hosting çözümüdür.
     LiteSpeed web sunucusu, AccelerateWP ve PHP X-RAY gibi araçlarla desteklenen bu hizmette disk, bant genişliği,
     veritabanı, CPU, RAM ve sunucu önbelleği gibi tüm kaynaklar WordPress sitelerinin en verimli şekilde çalışacağı
     seviyede yapılandırılmıştır. Imunify360 WAF ile güvenlik, JetBackup ile haftalık yedekleme ve ücretsiz SSL tüm
     paketlerde standarttır.</p>
    <a class="ixir-wh-story-cta" href="#ixir-wh-plans">Hemen Satın Al</a>
   </div>
  </div>
 </section>

 <section class="ixir-wh-story ixir-wh-story--features" aria-label="WordPress Hosting özellikleri">
  <script>
   {literal}
   (function() {
    var root = document.querySelector('.ixir-wh-story--features');
    if (!root || !window.IntersectionObserver) return;
    if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    if (window.matchMedia && window.matchMedia('(max-width: 1023px)').matches) return;
    root.classList.add('is-armed');
   })();
   {/literal}
  </script>
  <div class="container">
   <article class="ixir-wh-story-row ixir-wh-story-row--cpanel">
    <div class="ixir-wh-story-visual" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/hosting/wordpress-macbook.webp?v=3" alt="">
    </div>
    <div class="ixir-wh-story-copy">
     <div class="ixir-wh-story-heading">
      <span class="ixir-wh-story-badge" aria-hidden="true"><i class="fab fa-wordpress-simple"></i></span>
      <h3 class="ixir-wh-story-title">Yüksek CPU & RAM Kaynağı</h3>
     </div>
     <p>Wordpress web siteleri klasik web sitelerine göre çok daha yüksek RAM ve CPU kaynağı tüketir ve bu sebeple
      yüksek kaynak sunan sunucu ,donanım ve yazılım altyapısında çalıştırılmalıdır. İxir Hosting tarafından sunulan
      gelişmiş WordPress Hosting hizmetinde web sitelerinizin ihtiyaç duyduğu yüksek RAM ve CPU kaynağı bulunmaktadır ve
      dilediğiniz zaman bulunduğunuz paketten daha yüksek CPU & RAM kaynağı olan pakete geçiş yapabilirsiniz.</p>
    </div>
   </article>

   <article class="ixir-wh-story-row ixir-wh-story-row--flip ixir-wh-story-row--speed">
    <div class="ixir-wh-story-visual" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/hosting/cpanel.webp?v=2" alt="">
    </div>
    <div class="ixir-wh-story-copy">
     <div class="ixir-wh-story-heading">
      <span class="ixir-wh-story-badge" aria-hidden="true"><i class="fas fa-th-large"></i></span>
      <h3 class="ixir-wh-story-title">cPanel’in Gücü</h3>
     </div>
     <p>Wordpress Hosting’leriniz için en gelişmiş hosting yönetim paneli şüphesiz cPanel’dir. Dünyanın en popüler web
      hosting kontrol paneli olan cPanel ile Wordpress Hosting hizmetinizi kolay ve zahmetsizce yönetebilirsiniz. Disk
      alanı yönetimi, e-mail hesap oluşturma, kota belirleme , web sitesi ve e-posta yedekleme , güvenlik gibi temel ve
      ileri seviye ayar ve yapılandırmalarınızı kolayca yapabilirsiniz.</p>
    </div>
   </article>
   <article class="ixir-wh-story-row">
    <div class="ixir-wh-story-visual" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/hosting/litespeed.webp?v=2" alt="">
    </div>
    <div class="ixir-wh-story-copy">
     <div class="ixir-wh-story-heading">
      <span class="ixir-wh-story-badge" aria-hidden="true"><i class="fas fa-hdd"></i></span>
      <h3 class="ixir-wh-story-title">LiteSpeed ve LsCache Desteği</h3>
     </div>
     <p>WordPress web sitenizin yavaş açılma problemi mi var ? Sorun değil. LiteSpeed gelişmiş önbellekleme teknolojisi
      web sitelerinin% 6,4'ü tarafından kullanıldığı tahmin edilen en popüler 5. web sunucusudur ve tüm WordPress
      hosting paketlerinde sunulan LiteSpeed Cache desteği sayesinde web siteleriniz Apache veya Mod_LSAPI ile çalışan
      klasik hosting hizmetlerine nazaran 10 kata kadar daha yüksek hız performansı gösterir.</p>
    </div>
   </article>
   <article class="ixir-wh-story-row ixir-wh-story-row--flip ixir-wh-story-row--mail">
    <div class="ixir-wh-story-visual" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/hosting/wp-macbook.webp?v=3" alt="">
    </div>
    <div class="ixir-wh-story-copy">
     <div class="ixir-wh-story-heading">
      <span class="ixir-wh-story-badge" aria-hidden="true"><i class="fas fa-shield-alt"></i></span>
      <h3 class="ixir-wh-story-title">Teknik Bilgi Gerektirmez!</h3>
     </div>
     <p>Wordpress’i kurmak için yeterli teknik bilgiye sahip değil misiniz ? Dert etmeyin! Wordpress Hosting hizmetinizi
      satın alın, tek tıkla kurun ve hemen web sitenizi düzenlemeye başlayın. Üstelik tek tıkla kurulum sonrası yazılım
      ve tasarım detaylarıyla uğraşmadan Wordpress Web sitenizi hemen kolayca yönetebilirsiniz!</p>
    </div>
   </article>
  </div>
 </section>

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
 <section class="ixir-wh-why" aria-label="WordPress Hosting avantajları">
  <script>
   {literal}
    (function() {
     var root = document.querySelector('.ixir-wh-why');
     if (!root || !window.IntersectionObserver) return;
     if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
     if (window.matchMedia && window.matchMedia('(max-width: 1023px)').matches) return;
     root.classList.add('is-armed');
    })();
   {/literal}
  </script>
  <div class="container">
   <div class="ixir-wh-why-grid">
    <article class="ixir-wh-why-card ixir-wh-why-card--fast">
     <header class="ixir-wh-why-head">
      <span class="ixir-wh-why-icon" aria-hidden="true"><i class="fas fa-bolt"></i></span>
      <div>
       <h2>Neden Çok Hızlı?</h2>
       <p>Hızlı WordPress sitelerinin mimarı</p>
      </div>
     </header>
     <ul>
      <li><span class="ixir-wh-why-check" aria-hidden="true"><i class="fas fa-check"></i></span>Intel Gold
       İşlemciler<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
         aria-label="Intel Gold açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
         class="ixir-wh-tip-box" role="tooltip">En yeni
         nesil Intel Xeon Gold işlemcilerle 5 katına kadar daha fazla performans.</span></span></li>
      <li><span class="ixir-wh-why-check" aria-hidden="true"><i class="fas fa-check"></i></span>Enterprise NVME
       Storage<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
         aria-label="NVME Storage açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
         class="ixir-wh-tip-box" role="tooltip">Geleneksel depolama birimlerine göre 40 kat daha fazla hız ve daha
         yüksek
         I/O kapasitesi.</span></span></li>
      <li><span class="ixir-wh-why-check" aria-hidden="true"><i class="fas fa-check"></i></span>Litespeed + LSCache<span
        class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn" aria-label="Litespeed açıklaması"><i
          class="fas fa-info-circle" aria-hidden="true"></i></button><span class="ixir-wh-tip-box"
         role="tooltip">Geleneksel Apache web sunucusuna göre 10 kat daha fazla performans ve önbellekleme
         desteği.</span></span></li>
      <li><span class="ixir-wh-why-check" aria-hidden="true"><i class="fas fa-check"></i></span>Accelerate WP<span
        class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn" aria-label="Accelerate WP açıklaması"><i
          class="fas fa-info-circle" aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Sayfa
         yükleme sürelerini optimize eden WordPress'e özel hızlandırma platformu.</span></span></li>
     </ul>
    </article>
    <article class="ixir-wh-why-card ixir-wh-why-card--easy">
     <header class="ixir-wh-why-head">
      <span class="ixir-wh-why-icon" aria-hidden="true"><i class="fas fa-mouse-pointer"></i></span>
      <div>
       <h2>Neden Çok Kolay?</h2>
       <p>Webmaster ve yazılımcı desteği olmadan WordPress yönetimi</p>
      </div>
     </header>
     <ul>
      <li><span class="ixir-wh-why-check" aria-hidden="true"><i class="fas fa-check"></i></span>Teknik Bilgi Gerektirmez
      </li>
      <li><span class="ixir-wh-why-check" aria-hidden="true"><i class="fas fa-check"></i></span>Tek Tıkla Otomatik
       Kurulum
      </li>
      <li><span class="ixir-wh-why-check" aria-hidden="true"><i class="fas fa-check"></i></span>Türkçe Kontrol Paneli
      </li>
      <li><span class="ixir-wh-why-check" aria-hidden="true"><i class="fas fa-check"></i></span>Ücretsiz 15 Gün Deneme
      </li>
     </ul>
    </article>
   </div>
  </div>
 </section>

 <section class="ixir-wh-diff ixir-wh-diff--wp" aria-labelledby="ixir-wh-diff-title">
  <script>
   {literal}
   (function() {
    var root = document.querySelector('.ixir-wh-diff');
    if (!root || !window.IntersectionObserver) return;
    if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    if (window.matchMedia && window.matchMedia('(max-width: 1023px)').matches) return;
    root.classList.add('is-armed');
   })();
   {/literal}
  </script>
  <div class="container">
   <header class="ixir-wh-diff-head">
    <h2 id="ixir-wh-diff-title">WordPress Hosting'den Çok Daha Fazlası</h2>
    <p>Türkiye'nin en gelişmiş WP Hosting hizmeti ile farkı görün</p>
   </header>
   <ul class="ixir-wh-diff-grid">
    <li>
     <span class="ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-infinity"></i></span>
     <div>
      <h3>Sınırsız Kaynaklar</h3>
      <p>Sınırsız NVME disk alanı, sınırsız trafik sunan WordPress hosting paketlerinde kaynak problemi yaşamadan web
       sitenizi yayında tutun.</p>
     </div>
    </li>
    <li>
     <span class="ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-hdd"></i></span>
     <div>
      <h3>%100 NVME Disk</h3>
      <p>%100 NVME disk üzerinde çalışan WordPress siteleri sayesinde çok daha hızlı ve yüksek performanslı web
       sitelerine sahip olun.</p>
     </div>
    </li>
    <li>
     <span class="ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-mouse-pointer"></i></span>
     <div>
      <h3>Anında Kurulum</h3>
      <p>Kurulum dert etmeyin. WordPress Hosting hizmetinizi satın aldıktan sonra tek tıkla kurulumun keyfini çıkarın.
      </p>
     </div>
    </li>
    <li>
     <span class="ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-layer-group"></i></span>
     <div>
      <h3>Ücretsiz Onlarca Hazır Tema</h3>
      <p>WordPress tarafından ücretsiz sunulan onlarca temadan birini seçin ve tıpkı bir Word dosyası düzenler gibi web
       sitenizi düzenlemeye başlayın.</p>
     </div>
    </li>
   </ul>
  </div>
 </section>
 <section class="ixir-wh-compare" id="ixir-wh-compare" aria-labelledby="ixir-wh-compare-title">
  <script>
   {literal}
   (function() {
    var root = document.getElementById('ixir-wh-compare');
    if (!root || !window.IntersectionObserver) return;
    if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    if (window.matchMedia && window.matchMedia('(max-width: 1023px)').matches) return;
    root.classList.add('is-armed');
   })();
   {/literal}
  </script>
  <div class="container">
   <header class="ixir-wh-plans-head">
    <h2 id="ixir-wh-compare-title">Özellik Karşılaştırma Tablosu</h2>
    <p>WordPress Hosting Paketlerimiz arasından size en uygun olan seçimi yapın</p>
   </header>
   <div class="ixir-wh-table-scroll">
    <div class="ixir-wh-table ixir-wh-table--3">
     <div class="ixir-wh-table-plans">
      <div></div>
      <div>Başlangıç</div>
      <div class="is-best"><span class="ixir-wh-table-ribbon"><span>En İyi Tercih</span></span>Ekonomik</div>
      <div>Profesyonel</div>
     </div>
     <div class="ixir-wh-table-prices">
      <div></div>
      <div><s>120,77 TL</s><b>76,83 TL</b><small>/ay</small></div>
      <div class="is-best"><s>209,75 TL</s><b>134,44 TL</b><small>/ay</small></div>
      <div><s>299,70 TL</s><b>192,48 TL</b><small>/ay</small></div>
     </div>
     <div class="ixir-wh-table-group is-open">
      <button type="button" class="ixir-wh-table-toggle" aria-expanded="true" aria-controls="ixir-cmp-genel">
       <span>Genel Özellikler</span><i class="fas fa-chevron-up" aria-hidden="true"></i>
      </button>
      <div class="ixir-wh-table-rows" id="ixir-cmp-genel">
       <div class="ixir-wh-table-row">
        <div>Web sitesi adeti</div>
        <div>1</div>
        <div class="is-best">3</div>
        <div>5</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Subdomain adeti</div>
        <div>3</div>
        <div class="is-best">5</div>
        <div>Limitsiz</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>İşlemci</div>
        <div>1 Core Intel Gold CPU</div>
        <div class="is-best">2 Core Intel Gold CPU</div>
        <div>3 Core Intel Gold CPU</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>RAM(MB)</div>
        <div>1024</div>
        <div class="is-best">2048</div>
        <div>4096</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Disk Alanı</div>
        <div>1 GB NVMe SSD</div>
        <div class="is-best">Limitsiz NVMe SSD</div>
        <div>Limitsiz NVMe SSD</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>IO Limiti (MB/Sn)</div>
        <div>30</div>
        <div class="is-best">40</div>
        <div>50</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Aylık Trafik</div>
        <div>Limitsiz Trafik</div>
        <div class="is-best">Limitsiz Trafik</div>
        <div>Limitsiz Trafik</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Ücretsiz SSL</div>
        <div>Let's Encrypt</div>
        <div class="is-best">Let's Encrypt</div>
        <div>Let's Encrypt</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>JetBackup Yedekleme</div>
        <div>Haftalık</div>
        <div class="is-best">Haftalık</div>
        <div>Haftalık</div>
       </div>
      </div>
     </div>
     <div class="ixir-wh-table-group">
      <button type="button" class="ixir-wh-table-toggle" aria-expanded="false" aria-controls="ixir-cmp-web">
       <span>Web Hosting Özellikleri</span><i class="fas fa-chevron-down" aria-hidden="true"></i>
      </button>
      <div class="ixir-wh-table-rows" id="ixir-cmp-web" hidden>
       <div class="ixir-wh-table-row">
        <div>CageFS</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>LiteSpeed Web Sunucusu</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>LiteSpeed LSCache</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>PHP X-RAY</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>.net v4.8</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Accelerate WP</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Gzip / Brotli İçerik Sıkıştırma</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Imunify360 WAF</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>PHP Sürümleri</div>
        <div>5.x - 8.x</div>
        <div class="is-best">5.x - 8.x</div>
        <div>5.x - 8.x</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>PHP Sürüm Değiştirme</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>MultiPHP INI Düzenleyicisi</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Cron Jobs</div>
        <div>10 Dakikada 1</div>
        <div class="is-best">10 Dakikada 1</div>
        <div>10 Dakikada 1</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>URL Re-write ve .htaccess Desteği</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Şifre Korumalı Klasörler</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>PHP Ioncube Loader (v10)</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
      </div>
     </div>
     <div class="ixir-wh-table-group">
      <button type="button" class="ixir-wh-table-toggle" aria-expanded="false" aria-controls="ixir-cmp-sql">
       <span>Veritabanı Özellikleri(SQL)</span><i class="fas fa-chevron-down" aria-hidden="true"></i>
      </button>
      <div class="ixir-wh-table-rows" id="ixir-cmp-sql" hidden>
       <div class="ixir-wh-table-row">
        <div>MySQL Sayısı</div>
        <div>Limitsiz</div>
        <div class="is-best">Limitsiz</div>
        <div>Limitsiz</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>MySQL Başına Boyut</div>
        <div>Limitsiz</div>
        <div class="is-best">Limitsiz</div>
        <div>Limitsiz</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>MySQL Uzak Erişim</div>
        <div><i class="fas fa-times" aria-label="Yok"></i></div>
        <div class="is-best"><i class="fas fa-times" aria-label="Yok"></i></div>
        <div><i class="fas fa-times" aria-label="Yok"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>MySQL Sürümü</div>
        <div>MariaDB 10</div>
        <div class="is-best">MariaDB 10</div>
        <div>MariaDB 10</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>PHPMyAdmin</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
      </div>
     </div>
     <div class="ixir-wh-table-group">
      <button type="button" class="ixir-wh-table-toggle" aria-expanded="false" aria-controls="ixir-cmp-mail">
       <span>E-posta Özellikleri</span><i class="fas fa-chevron-down" aria-hidden="true"></i>
      </button>
      <div class="ixir-wh-table-rows" id="ixir-cmp-mail" hidden>
       <div class="ixir-wh-table-row">
        <div>Mail Kutusu Sayısı</div>
        <div>10 Adet</div>
        <div class="is-best">Limitsiz</div>
        <div>Limitsiz</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Mail Kutusu Başına Kota(MB)</div>
        <div>512</div>
        <div class="is-best">1024</div>
        <div>2048</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Hesap Başına Saatlik Gönderim Sayısı</div>
        <div>100</div>
        <div class="is-best">200</div>
        <div>400</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>SMTP Desteği</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>POP3 Desteği</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>IMAP Desteği</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Webmail Desteği</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Temel Antispam Filtresi</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Giden Mail Saygınlığı</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Yüksek Senderscore &amp; IP Reputation</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
      </div>
     </div>
     <div class="ixir-wh-table-group">
      <button type="button" class="ixir-wh-table-toggle" aria-expanded="false" aria-controls="ixir-cmp-panel">
       <span>Yönetim Paneli Özellikleri</span><i class="fas fa-chevron-down" aria-hidden="true"></i>
      </button>
      <div class="ixir-wh-table-rows" id="ixir-cmp-panel" hidden>
       <div class="ixir-wh-table-row">
        <div>FTP Erişimi</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Dosya Yöneticisi</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>DNS Zone Yönetimi</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>E-posta Yönetimi</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Domain Değiştirme</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Hosting Sıfırlama</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Webalizer İstatistik</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Özel Hata Sayfaları</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Haftalık Yedekleme</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Tek Tıkla Uygulama Kurulumu</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Otomatik 300+ Özel Uygulama Kurulumu</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
      </div>
     </div>
     <div class="ixir-wh-table-group">
      <button type="button" class="ixir-wh-table-toggle" aria-expanded="false" aria-controls="ixir-cmp-platform">
       <span>Platform &amp; Yönetim Özellikleri</span><i class="fas fa-chevron-down" aria-hidden="true"></i>
      </button>
      <div class="ixir-wh-table-rows" id="ixir-cmp-platform" hidden>
       <div class="ixir-wh-table-row">
        <div>İstanbul Lokasyon Tier III+ Veri Merkezi</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Cluster Yedekli Mimari</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Depolama Birimi</div>
        <div>Enterprise NVMe Storage</div>
        <div class="is-best">Enterprise NVMe Storage</div>
        <div>Enterprise NVMe Storage</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>INODES</div>
        <div>150.000</div>
        <div class="is-best">200.000</div>
        <div>250.000</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>I/O Limitleri(MB/Sn)</div>
        <div>30</div>
        <div class="is-best">40</div>
        <div>50</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>ISO 9001 Kalite Yönetim Sertifikası</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>ISO 27001 Bilgi Güvenliği Sertifikası</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>ISO 10002 Müşteri Memnuniyet Sertifikası</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
      </div>
     </div>
     <div class="ixir-wh-table-group">
      <button type="button" class="ixir-wh-table-toggle" aria-expanded="false" aria-controls="ixir-cmp-support">
       <span>Destek</span><i class="fas fa-chevron-down" aria-hidden="true"></i>
      </button>
      <div class="ixir-wh-table-rows" id="ixir-cmp-support" hidden>
       <div class="ixir-wh-table-row">
        <div>Ticket ile 7/24/365</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Canlı Satış Desteği</div>
        <div>08.30 - 03.00</div>
        <div class="is-best">08.30 - 03.00</div>
        <div>08.30 - 03.00</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Telefon Desteği</div>
        <div>08.30 - 18.00</div>
        <div class="is-best">08.30 - 18.00</div>
        <div>08.30 - 18.00</div>
       </div>
      </div>
     </div>
     <div class="ixir-wh-table-foot">
      <div></div>
      <div>
       <s>111,24 TL</s><b>70,47 TL</b><small>/ay</small>
       <a class="ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
      </div>
      <div class="is-best">
       <s>191,21 TL</s><b>122,00 TL</b><small>/ay</small>
       <a class="ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
      </div>
      <div>
       <s>268,45 TL</s><b>173,42 TL</b><small>/ay</small>
       <a class="ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
      </div>
     </div>
    </div>
   </div>
  </div>
 </section>
 <section class="ixir-wh-faq" aria-labelledby="ixir-wh-faq-title">
  <script>
   {literal}
    (function() {
     var root = document.querySelector('.ixir-wh-faq');
     if (!root || !window.IntersectionObserver) return;
     if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
     if (window.matchMedia && window.matchMedia('(max-width: 1023px)').matches) return;
     root.classList.add('is-armed');
    })();
   {/literal}
  </script>
  <div class="container">
   <header class="ixir-wh-plans-head">
    <h2 id="ixir-wh-faq-title">Sıkça Sorulan Sorular</h2>
    <p>WordPress Hosting Paketlerimiz ile ilgili detaylı bilgiye mi ihtiyacınız var?</p>
   </header>
   <div class="ixir-wh-faq-list">
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>WordPress Hosting'in hiğer hosting paketlerinden farkı nedir?</button>
     <div class="ixir-wh-faq-a">
      <p>WordPress Hosting; LiteSpeed web sunucusu, AccelerateWP, PHP X-RAY ve Imunify360 WAF gibi WordPress'e özel
       araçlarla donatılmış, yüksek CPU ve RAM kaynaklarına sahip özelleştirilmiş bir hosting çözümüdür. Klasik web
       hostingden farklı olarak disk, bant genişliği, veritabanı, CPU ve RAM kaynakları WordPress sitelerinin en iyi
       performansı göstereceği seviyede optimize edilmiştir. Bunun yanı sıra tek tıkla WordPress kurulumu ve ücretsiz
       site taşıma hizmeti de sunulmaktadır.
      </p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>WordPress Hosting hizmetimde ne kadar CPU kullanabilirim?</button>
     <div class="ixir-wh-faq-a">
      <p>Paket detaylarında belirtilen core sayısı kadar CPU kullanım hakkınız vardır. Budget WordPress planında 1 Core,
       Economy planında 2 Core, Professional planında ise 3 Core Intel Xeon Gold işlemci kaynağı tahsis edilmektedir.
       Daha fazla kaynağa ihtiyaç duymanız halinde üst pakete geçiş yapabilirsiniz.</p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>E-mail gönderiminde limit varmı? Varsa ne kadar var?</button>
     <div class="ixir-wh-faq-a">
      <p>Limit saatlik 100 adettir. Biliyoruzki E-posta alışverişi günümüzde çok önemlidir bu yüzden bir kişinin
       gönderebileceği maksimum e-mail sayısını hesaplayıp limitlendirdik buda saatte 100 adettir. İnternet üzerindeki
       Spam yani istenmeyen e-mail kuralları çok sıkıdır bizde, toplu veya reklam e-mailinin engellemesi amacı ile
       saatlik e-mail gönderimi limiti gibi kurallar uygulamaktayız. Eğer daha fazla gönderime ihtiyacınız var ise bizim
       ile iletişime geçiniz size yardımcı olacağız.</p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>Para iade garantisi sunuyor musunuz?</button>
     <div class="ixir-wh-faq-a">
      <p>Evet, tüm hosting hizmetlerimizde olduğu gibi 15 gün boyunca koşulsuz para iade garantisi sunuyoruz. Muhasebe
       servisimize bunu iletmeniz yeterlidir.
      </p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>Yeni bir kullanıcıyım, ücretsiz deneme yapabilir miyim?</button>
     <div class="ixir-wh-faq-a">
      <p>Elbette. Web sitemize üye olup denemek istediğiniz WordPress Hosting paketinin siparişini verin ve ödeme
       kısmında banka havalesi seçiniz. Sonrasında destek talebi ileterek ya da telefon ile arayarak seçtiğiniz paketi 2
       günlük süre içinde deneyebilirsiniz. Satın aldıktan sonra da 15 gün boyunca koşulsuz para iade garantimiz
       geçerlidir.</strong>.
      </p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>Sipariş verdiğim ürün hemen aktif olacak mı?</button>
     <div class="ixir-wh-faq-a">
      <p>Evet, siparişinizi verdiğiniz hizmetin ödemesini gerçekleştirdiğiniz anda otomatik aktif olacaktır.</p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>Hosting hizmetini yanlış satın aldım, değiştirebilir miyim?</button>
     <div class="ixir-wh-faq-a">
      <p>Evet, yanlış hosting paketi aldıysanız ya da farklı bir WordPress Hosting paketine geçmek istiyorsanız bu
       değişikliği istediğiniz zaman yaptırabilirsiniz. Budget'tan Economy'ye, Economy'den Professional'a geçiş de dahil
       olmak üzere tüm paket değişikliklerinde destek talebi iletmeniz yeterlidir.</p>
     </div>
    </div>
   </div>
  </div>
 </section>
 <section class="ixir-wh-guide" aria-label="Web hosting rehberi">
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
     <span class="ixir-wh-guide-icon" aria-hidden="true"><i class="fab fa-wordpress"></i></span>
     <h2>WordPress Hosting Hakkında</h2>
     <p>
      WordPress, dünya genelinde web sitelerinin %40'ından fazlasında kullanılan en popüler içerik yönetim sistemidir.
      WordPress sitenizin güvenli, hızlı ve kesintisiz çalışması için doğru hosting altyapısı belirleyici bir faktördür.
      İxir Hosting bünyesindeki WordPress Hosting hizmetleri, Türkiye'de İstanbul merkezli Tier III+ veri merkezinden
      sunulmakta ve LiteSpeed web sunucusu, AccelerateWP ile PHP X-RAY gibi WordPress'e özel optimize teknolojilerle
      desteklenmektedir. </p>
     <p>%100 Enterprise NVME disk altyapımız sayesinde WordPress siteniz çok daha hızlı yüklenirken Imunify360 WAF
      güvenlik duvarı kötü amaçlı yazılım, virüs ve bot saldırılarına karşı sitenizi 7/24 korur. Haftalık JetBackup
      yedekleme ile verileriniz güvende kalır; cPanel kontrol paneli aracılığıyla tek tıklamayla WordPress kurulumu
      yapabilir, PHP sürümünüzü dilediğiniz zaman değiştirebilirsiniz.
     </p>
     <p>Farklı bir hosting sağlayıcısında WordPress siteniz varsa ücretsiz taşıma hizmetimizle hiçbir veri kaybı
      yaşamadan İxir Hosting'e geçebilirsiniz. Tüm WordPress Hosting paketlerimizde %99,9 uptime garantisi, ücretsiz
      Let's Encrypt SSL ve 15 gün koşulsuz para iade garantisi standart olarak sunulmaktadır.
     </p>
    </article>
   </div>
  </div>
 </section>
 <script>
  {literal}
  (function() {
   var list = document.querySelector('.ixir-wh-faq-list');
   if (!list) return;
   Array.prototype.forEach.call(list.querySelectorAll('.ixir-wh-faq-q'), function(btn) {
    btn.addEventListener('click', function() {
     var item = btn.parentNode;
     var open = item.classList.toggle('is-open');
     btn.setAttribute('aria-expanded', open ? 'true' : 'false');
    });
   });
  })();
  (function() {
   var table = document.querySelector('.ixir-wh-table');
   if (!table) return;
   var buttons = table.querySelectorAll('.ixir-wh-table-toggle');

   function setOpen(btn, open) {
    var group = btn.parentNode;
    var rows = document.getElementById(btn.getAttribute('aria-controls'));
    var icon = btn.querySelector('i');
    group.classList.toggle('is-open', open);
    btn.setAttribute('aria-expanded', open ? 'true' : 'false');
    if (rows) rows.hidden = !open;
    if (icon) icon.className = open ? 'fas fa-chevron-up' : 'fas fa-chevron-down';
   }

   Array.prototype.forEach.call(buttons, function(btn) {
    btn.addEventListener('click', function() {
     var open = !btn.parentNode.classList.contains('is-open');
     Array.prototype.forEach.call(buttons, function(other) {
      if (other !== btn) setOpen(other, false);
     });
     setOpen(btn, open);
    });
   });
  })();
  (function() {
   var root = document.querySelector('.ixir-wh-plans');
   if (!root) return;
   var items = root.querySelectorAll('.ixir-wh-billing');

   function closeAll(except) {
    Array.prototype.forEach.call(items, function(item) {
     if (item === except) return;
     item.classList.remove('is-open');
     var btn = item.querySelector('.ixir-wh-billing-btn');
     if (btn) btn.setAttribute('aria-expanded', 'false');
    });
   }

   Array.prototype.forEach.call(items, function(item) {
    var btn = item.querySelector('.ixir-wh-billing-btn');
    var closeBtn = item.querySelector('.ixir-wh-billing-close');
    var pop = item.querySelector('.ixir-wh-billing-pop');
    if (!btn) return;
    btn.addEventListener('click', function(event) {
     event.stopPropagation();
     var open = item.classList.contains('is-open');
     closeAll(open ? null : item);
     item.classList.toggle('is-open', !open);
     btn.setAttribute('aria-expanded', open ? 'false' : 'true');
    });
    if (closeBtn) {
     closeBtn.addEventListener('click', function(event) {
      event.stopPropagation();
      item.classList.remove('is-open');
      btn.setAttribute('aria-expanded', 'false');
      btn.focus();
     });
    }
    if (pop) {
     pop.addEventListener('click', function(event) {
      event.stopPropagation();
     });
    }
   });

   document.addEventListener('click', function() {
    closeAll(null);
   });
   document.addEventListener('keydown', function(event) {
    if (event.key === 'Escape') closeAll(null);
   });
  })();
  (function() {
   var links = document.querySelectorAll('a.ixir-wh-more');
   if (!links.length) return;
   var frame = 0;

   function stickyBottom() {
    var bottom = 0;
    var selectors = ['.ixir-header', '.mobile-header', '.news-bar'];
    var i;
    for (i = 0; i < selectors.length; i++) {
     var el = document.querySelector(selectors[i]);
     if (!el || el.classList.contains('is-hidden')) continue;
     var style = window.getComputedStyle(el);
     if (style.display === 'none' || style.visibility === 'hidden' || style.position !== 'fixed') continue;
     var rect = el.getBoundingClientRect();
     if (rect.height > 0 && rect.bottom > bottom) bottom = rect.bottom;
    }
    return Math.ceil(bottom);
   }

   function destination(target) {
    var y = window.pageYOffset || document.documentElement.scrollTop || 0;
    return Math.max(0, Math.round(target.getBoundingClientRect().top + y - stickyBottom()));
   }

   function easeOutCubic(t) {
    return 1 - Math.pow(1 - t, 3);
   }

   Array.prototype.forEach.call(links, function(link) {
    link.addEventListener('click', function(e) {
     var target = document.getElementById('ixir-wh-compare');
     if (!target) return;
     if (e.metaKey || e.ctrlKey || e.shiftKey || e.altKey || e.button !== 0) return;
     e.preventDefault();
     if (frame) {
      window.cancelAnimationFrame(frame);
      frame = 0;
     }
     var reduce = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
     var start = window.pageYOffset || document.documentElement.scrollTop || 0;
     var dest = destination(target);
     if (window.history && window.history.pushState) {
      window.history.pushState(null, '', '#ixir-wh-compare');
     }
     if (reduce || Math.abs(dest - start) < 2) {
      window.scrollTo(0, dest);
      return;
     }
     var distance = dest - start;
     var duration = Math.min(900, Math.max(420, Math.abs(distance) * 0.55));
     var t0 = null;

     function step(now) {
      if (t0 === null) t0 = now;
      var progress = Math.min(1, (now - t0) / duration);
      window.scrollTo(0, start + distance * easeOutCubic(progress));
      if (progress < 1) {
       frame = window.requestAnimationFrame(step);
      } else {
       frame = 0;
       window.scrollTo(0, destination(target));
      }
     }

     frame = window.requestAnimationFrame(step);
    });
   });
  })();
  (function() {
   var root = document.getElementById('ixir-wh-plans');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll('.ixir-wh-plans-head, .ixir-wh-plan, .ixir-wh-shared-box');
   if (!nodes.length) {
    root.classList.remove('is-armed');
    return;
   }
   var pending = nodes.length;
   var observer = new IntersectionObserver(function(entries) {
    entries.forEach(function(entry) {
     if (!entry.isIntersecting) return;
     observer.unobserve(entry.target);
     window.requestAnimationFrame(function() {
      entry.target.classList.add('is-in');
     });
     pending -= 1;
     if (pending > 0) return;
     window.setTimeout(function() {
      root.classList.remove('is-armed');
      root.classList.add('is-settled');
     }, 1300);
    });
   }, {
    threshold: 0.15
   });
   Array.prototype.forEach.call(nodes, function(node) {
    observer.observe(node);
   });
  })();
  (function() {
   var root = document.querySelector('.ixir-wh-migrate');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll('.ixir-wh-migrate-visual, .ixir-wh-migrate-copy');
   if (!nodes.length) {
    root.classList.remove('is-armed');
    return;
   }
   var pending = nodes.length;
   var observer = new IntersectionObserver(function(entries) {
    entries.forEach(function(entry) {
     if (!entry.isIntersecting) return;
     observer.unobserve(entry.target);
     window.requestAnimationFrame(function() {
      entry.target.classList.add('is-in');
     });
     pending -= 1;
     if (pending > 0) return;
     window.setTimeout(function() {
      root.classList.remove('is-armed');
      root.classList.add('is-settled');
     }, 1100);
    });
   }, {
    threshold: 0.15
   });
   Array.prototype.forEach.call(nodes, function(node) {
    observer.observe(node);
   });
  })();
  (function() {
   var root = document.querySelector('.ixir-wh-why');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll('.ixir-wh-why-card');
   if (!nodes.length) {
    root.classList.remove('is-armed');
    return;
   }
   var pending = nodes.length;
   var observer = new IntersectionObserver(function(entries) {
    entries.forEach(function(entry) {
     if (!entry.isIntersecting) return;
     observer.unobserve(entry.target);
     window.requestAnimationFrame(function() {
      entry.target.classList.add('is-in');
     });
     pending -= 1;
     if (pending > 0) return;
     window.setTimeout(function() {
      root.classList.remove('is-armed');
      root.classList.add('is-settled');
     }, 1100);
    });
   }, {
    threshold: 0.15
   });
   Array.prototype.forEach.call(nodes, function(node) {
    observer.observe(node);
   });
  })();
  (function() {
   var root = document.querySelector('.ixir-wh-diff');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll('.ixir-wh-diff-head, .ixir-wh-diff-grid li');
   if (!nodes.length) {
    root.classList.remove('is-armed');
    return;
   }
   var pending = nodes.length;
   var observer = new IntersectionObserver(function(entries) {
    entries.forEach(function(entry) {
     if (!entry.isIntersecting) return;
     observer.unobserve(entry.target);
     window.requestAnimationFrame(function() {
      entry.target.classList.add('is-in');
     });
     pending -= 1;
     if (pending > 0) return;
     window.setTimeout(function() {
      root.classList.remove('is-armed');
      root.classList.add('is-settled');
     }, 1100);
    });
   }, {
    threshold: 0.15
   });
   Array.prototype.forEach.call(nodes, function(node) {
    observer.observe(node);
   });
  })();
  (function() {
   var root = document.getElementById('ixir-wh-compare');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll('.ixir-wh-plans-head, .ixir-wh-table-scroll');
   if (!nodes.length) {
    root.classList.remove('is-armed');
    return;
   }
   var pending = nodes.length;
   var observer = new IntersectionObserver(function(entries) {
    entries.forEach(function(entry) {
     if (!entry.isIntersecting) return;
     observer.unobserve(entry.target);
     window.requestAnimationFrame(function() {
      entry.target.classList.add('is-in');
     });
     pending -= 1;
     if (pending > 0) return;
     window.setTimeout(function() {
      root.classList.remove('is-armed');
      root.classList.add('is-settled');
     }, 1100);
    });
   }, {
    threshold: 0.15
   });
   Array.prototype.forEach.call(nodes, function(node) {
    observer.observe(node);
   });
  })();
  (function() {
   var root = document.querySelector('.ixir-wh-faq');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll('.ixir-wh-plans-head, .ixir-wh-faq-item');
   if (!nodes.length) {
    root.classList.remove('is-armed');
    return;
   }
   var pending = nodes.length;
   var observer = new IntersectionObserver(function(entries) {
    entries.forEach(function(entry) {
     if (!entry.isIntersecting) return;
     observer.unobserve(entry.target);
     window.requestAnimationFrame(function() {
      entry.target.classList.add('is-in');
     });
     pending -= 1;
     if (pending > 0) return;
     window.setTimeout(function() {
      root.classList.remove('is-armed');
      root.classList.add('is-settled');
     }, 1300);
    });
   }, {
    threshold: 0.15
   });
   Array.prototype.forEach.call(nodes, function(node) {
    observer.observe(node);
   });
  })();
  (function() {
   function armStory(root, selector) {
    if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
    var nodes = root.querySelectorAll(selector);
    if (!nodes.length) {
     root.classList.remove('is-armed');
     return;
    }
    var pending = nodes.length;
    var observer = new IntersectionObserver(function(entries) {
     entries.forEach(function(entry) {
      if (!entry.isIntersecting) return;
      observer.unobserve(entry.target);
      window.requestAnimationFrame(function() {
       entry.target.classList.add('is-in');
      });
      pending -= 1;
      if (pending > 0) return;
      window.setTimeout(function() {
       root.classList.remove('is-armed');
       root.classList.add('is-settled');
      }, 900);
     });
    }, {
     threshold: 0.2,
     rootMargin: '0px'
    });
    Array.prototype.forEach.call(nodes, function(node) {
     observer.observe(node);
    });
   }
   armStory(document.querySelector('.ixir-wh-story--intro'), '.ixir-wh-story-intro');
   armStory(document.querySelector('.ixir-wh-story--features'), '.ixir-wh-story-row');
  })();
  (function() {
   var root = document.querySelector('.ixir-wh-guide');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll('.ixir-wh-guide-item');
   if (!nodes.length) {
    root.classList.remove('is-armed');
    return;
   }
   var pending = nodes.length;
   var observer = new IntersectionObserver(function(entries) {
    entries.forEach(function(entry) {
     if (!entry.isIntersecting) return;
     observer.unobserve(entry.target);
     window.requestAnimationFrame(function() {
      entry.target.classList.add('is-in');
     });
     pending -= 1;
     if (pending > 0) return;
     window.setTimeout(function() {
      root.classList.remove('is-armed');
      root.classList.add('is-settled');
      }, 900);
     });
    }, {
     threshold: 0.15
    });
    Array.prototype.forEach.call(nodes, function(node) {
     observer.observe(node);
    });
   })();
  {/literal}
 </script>
</div>