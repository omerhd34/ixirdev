 <section id="home-banner" class="ixir-hero ixir-hero--windows" aria-label="Windows Hosting">
  <style>
   @media (min-width: 993px) {
    section#home-banner.ixir-hero--windows .ixir-hero-photo img {
     object-position: 50% center !important;
    }
   }
  </style>
  <picture class="ixir-hero-photo">
   <img src="{$WEB_ROOT}/templates/{$template}/img/bg37.webp?v=r2" alt="">
  </picture>
  <div class="container">
   <div class="ixir-hero-main">
    <div class="ixir-hero-copy">
     <h1>Windows Hosting</h1>
     <p>ASP.NET, .NET Core ve MSSQL ile oluşturulmuş projeleriniz için Windows Hosting hizmeti. Windows yerine Linux
      tercih ediyorsanız planlarımıza göz atabilirsiniz.</p>
    </div>
    <div class="ixir-hero-actions">
     <a href="#ixir-wh-plans" class="ixir-hero-btn ixir-hero-btn--primary ixir-wh-plans-btn">
      Windows Hosting Paketleri <i class="fas fa-arrow-down" aria-hidden="true"></i>
     </a>
     <a href="{$WEB_ROOT}/webhosting" class="ixir-hero-btn ixir-hero-btn--secondary">
      Web Hosting <i class="fas fa-arrow-right" aria-hidden="true"></i>
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
      <span>Plesk Kontrol Paneli</span>
     </li>
     <li>
      <i class="fas fa-lock" aria-hidden="true"></i>
      <span>Ücretsiz SSL Sertifikası</span>
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
       <a href="{$WEB_ROOT}/webhosting" title="Web Hosting">
        <i class="fas fa-hdd fa-fw" aria-hidden="true"></i><span>Web Hosting</span>
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
    <span>ASP.NET</span>
    <span>Plesk</span>
    <span>MSSQL</span>
    <span>Windows Server</span>
    <span>7/24 Destek</span>
    <span>Ücretsiz SSL</span>
    <span>15 Gün İade</span>
    <span>.NET Core</span>
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
    <h2 id="ixir-wh-plans-title">Windows Hosting Paketleri</h2>
    <p>İhtiyacınıza uygun paketi seçin, sitenizi hemen yayına alın.</p>
   </header>
   <div class="ixir-wh-grid">
    <article class="ixir-wh-plan">
     <header class="ixir-wh-plan-head">
      <h3>Başlangıç</h3>
      <p>Web dünyasında yeni olan ve yeni başlayanlar için</p>
     </header>
     <div class="ixir-wh-price">
      <s>111,24 TL</s>
      <div class="ixir-wh-amount"><b>70</b><span>,47</span><small>TL<small>/ay</small></small></div>
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
          <td>85,57 TL</td>
          <td>1.026,80 TL</td>
         </tr>
         <tr>
          <td>2 Yıllık</td>
          <td>77,25 TL</td>
          <td>1.853 TL</td>
         </tr>
         <tr class="is-best">
          <td>3 Yıllık</td>
          <td>70,47 TL</td>
          <td>2.537 TL</td>
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
      <li><span>RAM boyutu(MB)</span><b>512</b></li>
     </ul>
     <a class="ixir-wh-more" href="#ixir-wh-compare">Diğer Özellikleri Gör <i class="fas fa-chevron-down"
       aria-hidden="true"></i></a>
    </article>
    <article class="ixir-wh-plan">
     <header class="ixir-wh-plan-head">
      <h3>Ekonomik</h3>
      <p>Çoklu web sitesi barındırmak isteyenler için</p>
     </header>
     <div class="ixir-wh-price">
      <s>191,21 TL</s>
      <div class="ixir-wh-amount"><b>122</b><span>,00</span><small>TL<small>/ay</small></small></div>
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
          <td>147,17 TL</td>
          <td>1.765 TL</td>
         </tr>
         <tr>
          <td>2 Yıllık</td>
          <td>132,99 TL</td>
          <td>3.192 TL</td>
         </tr>
         <tr class="is-best">
          <td>3 Yıllık</td>
          <td>122,00 TL</td>
          <td>4.392 TL</td>
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
          class="ixir-wh-tip-box" role="tooltip">3 adet web sitesi, hosting planınızda ana domain ile birlikte toplamda
          3
          adet domain barındırabilmenizi sağlar.</span></span></b></li>
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
     <span class="ixir-wh-badge">En İyi Tercih</span>
     <header class="ixir-wh-plan-head">
      <h3>Profesyonel</h3>
      <p>Çoklu web sitesi ve yüksek performans isteyenler için</p>
     </header>
     <div class="ixir-wh-price">
      <s>268,45 TL</s>
      <div class="ixir-wh-amount"><b>173</b><span>,42</span><small>TL<small>/ay</small></small></div>
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
          <td>206,58 TL</td>
          <td>2.478 TL</td>
         </tr>
         <tr>
          <td>2 Yıllık</td>
          <td>188,86 TL</td>
          <td>4.531 TL</td>
         </tr>
         <tr class="is-best">
          <td>3 Yıllık</td>
          <td>173,42 TL</td>
          <td>6.244 TL</td>
         </tr>
        </tbody>
       </table>
       <p>* En avantajlı fiyat</p>
      </div>
     </div>
     <a class="ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
     <ul class="ixir-wh-specs">
      <li><span>Web sitesi adeti</span><b>10<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="Web sitesi açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">10 adet web sitesi, hosting planınızda ana domain ile birlikte toplamda
          10 adet alt alan adı barındırabilmenizi sağlar.</span></span></b></li>
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
      <li><span>RAM boyutu(MB)</span><b>2048</b></li>
     </ul>
     <a class="ixir-wh-more" href="#ixir-wh-compare">Diğer Özellikleri Gör <i class="fas fa-chevron-down"
       aria-hidden="true"></i></a>
    </article>
    <article class="ixir-wh-plan">
     <header class="ixir-wh-plan-head">
      <h3>Ekstrem</h3>
      <p>Sınırsız web sitesi ve yüksek performans isteyenler için</p>
     </header>
     <div class="ixir-wh-price">
      <s>389,24 TL</s>
      <div class="ixir-wh-amount"><b>250</b><span>,33</span><small>TL<small>/ay</small></small></div>
      <span class="ixir-wh-save">%50 tasarruf</span>
     </div>
     <div class="ixir-wh-billing">
      <button type="button" class="ixir-wh-billing-btn" aria-expanded="false" aria-controls="ixir-wh-bill-extreme">Ödeme
       Planları</button>
      <div class="ixir-wh-billing-pop" id="ixir-wh-bill-extreme" role="dialog" aria-label="Ekstrem ödeme planı">
       <div class="ixir-wh-billing-top">
        <strong>Ekstrem</strong>
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
          <td>299,40 TL</td>
          <td>3.593 TL</td>
         </tr>
         <tr>
          <td>2 Yıllık</td>
          <td>273,33 TL</td>
          <td>6.560 TL</td>
         </tr>
         <tr class="is-best">
          <td>3 Yıllık</td>
          <td>250,33 TL</td>
          <td>9.012 TL</td>
         </tr>
        </tbody>
       </table>
       <p>* En avantajlı fiyat</p>
      </div>
     </div>
     <a class="ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
     <ul class="ixir-wh-specs">
      <li><span>Web sitesi adeti</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button"
          class="ixir-wh-tip-btn" aria-label="Web sitesi açıklaması"><i class="fas fa-info-circle"
           aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Limitsiz web sitesi, hosting
          planınızda limitlendirilmemiş
          barındırabileceğiniz alt alan adı sayısını ifade eder. Ancak adil kullanım politikaları
          geçerlidir.</span></span></b></li>
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
     <li><i class="fas fa-check" aria-hidden="true"></i>Ücretsiz COM.TR domain<span class="ixir-wh-tip"><button
        type="button" class="ixir-wh-tip-btn" aria-label="COM.TR domain açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Yalnızca yeni siparişte ve 1 yıl
        geçerlidir, yeni sipariş verirken sepete ekleyebilirsiniz, sonradan bu hak kullanılamaz.</span></span></li>
     <li><i class="fas fa-check" aria-hidden="true"></i>Ücretsiz SSL<span class="ixir-wh-tip"><button type="button"
        class="ixir-wh-tip-btn" aria-label="SSL açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Let's Encrypt SSL sertifikanız
        otomatik kurulur ve ömür boyu ücretsizdir.
       </span></span></li>

     <li><i class="fas fa-check" aria-hidden="true"></i>Windows Server 2022</li>
     <li><i class="fas fa-check" aria-hidden="true"></i>MSSQL Server 2022</li>
     <li><i class="fas fa-check" aria-hidden="true"></i>ASP.Net Core 10</li>
     <li><i class="fas fa-check" aria-hidden="true"></i>ASP.Net 4.8</li>
     <li><i class="fas fa-check" aria-hidden="true"></i>IIS 10</li>
    </ul>
   </div>
  </div>
 </section>
 <section class="ixir-wh-story" aria-label="Web hosting özellikleri">
  <script>
   {literal}
   (function() {
    var root = document.querySelector('.ixir-wh-story');
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
    <h2>Windows Hosting Nedir?</h2>
    <p>Web hosting hizmetinin bir kolu olan <strong>Windows Hosting</strong>, <strong>ASP.NET</strong>, <strong>.NET
      Core</strong>, <strong>MVC</strong> gibi yazılım dilleri ve
     frameworkleri ile yaratılmış yazılımlar için ideal bir barındırma çözümüdür. İşletim sistemi olarak <strong>Windows
      Server</strong>
     kullanılmakta ve veritabanı işlemleri için de <strong>MSSQL</strong> ve <strong>MySQL</strong> aynı anda
     çalıştırılabilmektedir. Windows Hosting
     hizmetiniz <strong>internet sitesi yayınlamak</strong> ve <strong>e-posta</strong> kullanımına imkan sağlayan bir
     hizmettir.</p>
    <a class="ixir-wh-story-cta" href="#ixir-wh-plans">Hemen Satın Al</a>
   </div>
   <article class="ixir-wh-story-row ixir-wh-story-row--cpanel">
    <div class="ixir-wh-story-visual" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/hosting/windows-server.webp?v=3" alt="">
    </div>
    <div class="ixir-wh-story-copy">
     <div class="ixir-wh-story-heading">
      <span class="ixir-wh-story-badge" aria-hidden="true"><i class="fab fa-windows"></i></span>
      <h3 class="ixir-wh-story-title">Windows Hosting</h3>
     </div>
     <p><strong>ASP.NET</strong>, <strong>.NET Core</strong>, <strong>MVC</strong> frameworkler ile oluşturulmuş
      internet
      siteleri ve web tabanlı projelerinizi güvenle
      barındırabileceğiniz özel oluşturulmuş <strong>Windows Hosting</strong> paketlerinde tercihinize göre
      <strong>MySQL</strong> ve <strong>MSSQL</strong> veritabanları
      kullanabilirsiniz. <strong>Özel sunucu konfigürasyonu</strong>, <strong>sürekli güncelleme</strong> ve
      <strong>7/24
       teknik destek</strong> ile projelerinizi yüksek
      performanslı ve sorunsuz olarak gönül rahatlığıyla yayınlayabilirsiniz.
     </p>
    </div>
   </article>
   <article class="ixir-wh-story-row ixir-wh-story-row--flip ixir-wh-story-row--speed">
    <div class="ixir-wh-story-visual" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/hosting/plesk-panel.webp?v=3" alt="">
    </div>
    <div class="ixir-wh-story-copy">
     <div class="ixir-wh-story-heading">
      <span class="ixir-wh-story-badge" aria-hidden="true"><i class="fas fa-th-large"></i></span>
      <h3 class="ixir-wh-story-title">Plesk Kontrol Paneli</h3>
     </div>
     <p><strong>İXİRHOST</strong> Windows Hosting hizmeti, dünyanın en popüler Windows Hosting kontrol paneli olan
      <strong>Plesk</strong> kontrol paneline
      sahiptir. <strong>Kolay kullanım</strong>, <strong>hızlı menü geçişleri</strong>, sürekli güncellenen yapısı ve
      sağladığı <strong>yüksek güvenlik</strong> ile
      Windows Hosting hizmetinizdeki en çok tercih edilen kontrol panelidir. Plesk kontrol paneli arayüzünden
      <strong>e-posta</strong>,
      <strong>veritabanı</strong> oluşturabilir, <strong>SSL sertifikası</strong> kurabilir, <strong>dosya
       düzenlemesi</strong> yapabilirsiniz.
     </p>
    </div>
   </article>
   <article class="ixir-wh-story-row">
    <div class="ixir-wh-story-visual" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/hosting/ssd-macbook.webp?v=3" alt="">
    </div>
    <div class="ixir-wh-story-copy">
     <div class="ixir-wh-story-heading">
      <span class="ixir-wh-story-badge" aria-hidden="true"><i class="fas fa-hdd"></i></span>
      <h3 class="ixir-wh-story-title">%100 NVME SSD</h3>
     </div>
     <p><strong>Nvme diskler</strong>, normal hard disklere (HDD) göre <strong>40 kata kadar daha hızlı</strong> okuma &
      yazma ve IOPS değerine sahiptir.
      IxirHost Windows Hosting paketlerinin tamamında <strong>NVME SSD</strong> disk <strong>standart özellik</strong>
      olarak yer almaktadır. NVME SSD
      disklerin sahip olduğu <strong>yüksek okuma, yazma ve IOPS</strong> değerleri ile Windows Hosting sunucusunda
      çalışan internet
      siteleriniz yüksek performansla çalışır. Siz de sitenizin ziyaretçilerine hızlı ve unutulmaz bir deneyim
      yaşatabilirsiniz.</p>
    </div>
   </article>
   <article class="ixir-wh-story-row ixir-wh-story-row--flip ixir-wh-story-row--mail">
    <div class="ixir-wh-story-visual" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/hosting/reputation-macbook.webp?v=2" alt="">
    </div>
    <div class="ixir-wh-story-copy">
     <div class="ixir-wh-story-heading">
      <span class="ixir-wh-story-badge" aria-hidden="true"><i class="fas fa-shield-alt"></i></span>
      <h3 class="ixir-wh-story-title">Giden Mail Saygınlığı</h3>
     </div>
     <p>Günümüzde e-mail kullanıcılarının gönderdiği e-postaların <strong>%16'sı</strong> sahiplerine hiç
      ulaşmamaktadır.
      E-Postaların
      ulaşmamasının en önemli sebebi ise <strong>düşük gönderici puanı</strong> ve <strong>düşük IP
       popülerliği</strong>dir. Tüm hosting paketlerinde
      <strong>ücretsiz</strong> olarak sunulan <strong>e-mail saygınlığı</strong> özelliği ile <strong>yüksek
       senderscore</strong> ve <strong>yüksek IP reputation</strong> kazanan e-posta
      alıcılarının <strong>gelen kutusuna</strong> ulaşır ve işletmenizin saygınlığı ve itibarı asla zarar görmeden
      gönderim
      yapabilirsiniz.
     </p>
    </div>
   </article>
  </div>
 </section>
 <section class="ixir-wh-diff" aria-labelledby="ixir-wh-diff-title">
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
    <h2 id="ixir-wh-diff-title">İXİRHOST ile Farkı Hissedin!</h2>
    <p>Aradığınız üstün performanslı web hosting hizmeti ile bugün tanışın.</p>
   </header>
   <ul class="ixir-wh-diff-grid">
    <li>
     <span class="ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-layer-group"></i></span>
     <div>
      <h3>Sınırsız Web Sitesi</h3>
      <p>Extreme pakette yer alan sınırsız web sitesi hosting ile domain sınırı olmadan hosting yönetimi gerçekleştirin.
      </p>
     </div>
    </li>
    <li>
     <span class="ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-infinity"></i></span>
     <div>
      <h3>Sınırsız Kaynaklar</h3>
      <p>Sınırsız NVMe disk alanı ve sınırsız trafik sunan paketlerde kaynak problemi yaşamadan sitenizi yayında tutun.
      </p>
     </div>
    </li>
    <li>
     <span class="ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-lock"></i></span>
     <div>
      <h3>Ücretsiz SSL Sertifikası</h3>
      <p>Tüm windows hosting paketlerinde bulunan ücretsiz SSL ile internet sitelerinizin ziyaretçilerine güven verin.
      </p>
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
    <p>Windows Hosting paketlerimiz arasından size en uygun olan seçimi yapın</p>
   </header>
   <div class="ixir-wh-table-scroll">
    <div class="ixir-wh-table">
     <div class="ixir-wh-table-plans">
      <div></div>
      <div>Başlangıç</div>
      <div>Ekonomik</div>
      <div class="is-best"><span class="ixir-wh-table-ribbon"><span>En İyi Tercih</span></span>Profesyonel</div>
      <div>Ekstrem</div>
     </div>
     <div class="ixir-wh-table-prices">
      <div></div>
      <div><s>111,24 TL</s><b>70,47 TL</b><small>/ay</small></div>
      <div><s>191,21 TL</s><b>122,00 TL</b><small>/ay</small></div>
      <div class="is-best"><s>268,45 TL</s><b>173,42 TL</b><small>/ay</small></div>
      <div><s>389,24 TL</s><b>250,33 TL</b><small>/ay</small></div>
     </div>
     <div class="ixir-wh-table-group is-open">
      <button type="button" class="ixir-wh-table-toggle" aria-expanded="true" aria-controls="ixir-cmp-genel">
       <span>Genel Özellikler</span><i class="fas fa-chevron-up" aria-hidden="true"></i>
      </button>
      <div class="ixir-wh-table-rows" id="ixir-cmp-genel">
       <div class="ixir-wh-table-row">
        <div>Web sitesi adeti</div>
        <div>1</div>
        <div>3</div>
        <div class="is-best">10</div>
        <div>Limitsiz</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Subdomain adeti</div>
        <div>1</div>
        <div>3</div>
        <div class="is-best">5</div>
        <div>Limitsiz</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>İşlemci</div>
        <div>1 Core Intel Gold CPU</div>
        <div>1 Core Intel Gold CPU</div>
        <div class="is-best">2 Core Intel Gold CPU</div>
        <div>2 Core Intel Gold CPU</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>RAM(MB)</div>
        <div>512</div>
        <div>1024</div>
        <div class="is-best">2048</div>
        <div>4096</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Disk Alanı</div>
        <div>1 GB NVMe SSD</div>
        <div>Limitsiz NVMe SSD</div>
        <div class="is-best">Limitsiz NVMe SSD</div>
        <div>Limitsiz NVMe SSD</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>IO Limiti (MB/Sn)</div>
        <div>20</div>
        <div>30</div>
        <div class="is-best">40</div>
        <div>50</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Aylık Trafik</div>
        <div>10 GB Trafik</div>
        <div>Limitsiz Trafik</div>
        <div class="is-best">Limitsiz Trafik</div>
        <div>Limitsiz Trafik</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Ücretsiz SSL</div>
        <div>Let's Encrypt</div>
        <div>Let's Encrypt</div>
        <div class="is-best">Let's Encrypt</div>
        <div>Let's Encrypt</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>JetBackup Yedekleme</div>
        <div>Yok</div>
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
        <div>IIS 10</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Klasik ASP</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Persits Bileşenleri</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>.net Core 10</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>.net v4.8</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>PHP Sürümleri</div>
        <div>5.x - 8.x</div>
        <div>5.x - 8.x</div>
        <div class="is-best">5.x - 8.x</div>
        <div>5.x - 8.x</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>PHP Sürüm Değiştirme</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>MultiPHP INI Düzenleyicisi</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Cron Jobs</div>
        <div>10 Dakikada 1</div>
        <div>10 Dakikada 1</div>
        <div class="is-best">10 Dakikada 1</div>
        <div>10 Dakikada 1</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Şifre Korumalı Klasörler</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>PHP Ioncube Loader (v10)</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
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
        <div>MySQL / MsSQL Sayısı</div>
        <div>1</div>
        <div>3</div>
        <div class="is-best">10</div>
        <div>20</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>MySQL / MsSQL Başına Boyut</div>
        <div>1G</div>
        <div>1G</div>
        <div class="is-best">1G</div>
        <div>1G</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>MySQL Uzak Erişim</div>
        <div><i class="fas fa-check" aria-label="Yok"></i></div>
        <div><i class="fas fa-check" aria-label="Yok"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Yok"></i></div>
        <div><i class="fas fa-check" aria-label="Yok"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>MsSQL Uzak Erişim</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>MySQL Sürümü</div>
        <div>MariaDB 10</div>
        <div>MariaDB 10</div>
        <div class="is-best">MariaDB 10</div>
        <div>MariaDB 10</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>MsSQL Sürümü</div>
        <div>MsSQL 2022</div>
        <div>MsSQL 2022</div>
        <div class="is-best">MsSQL 2022</div>
        <div>MsSQL 2022</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>PHPMyAdmin</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
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
        <div>Limitsiz</div>
        <div class="is-best">Limitsiz</div>
        <div>Limitsiz</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Mail Kutusu Başına Kota(MB)</div>
        <div>256</div>
        <div>512</div>
        <div class="is-best">1024</div>
        <div>2048</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Hesap Başına Saatlik Gönderim Sayısı</div>
        <div>50</div>
        <div>100</div>
        <div class="is-best">200</div>
        <div>400</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>SMTP Desteği</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>POP3 Desteği</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>IMAP Desteği</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Webmail Desteği</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Temel Antispam Filtresi</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Giden Mail Saygınlığı</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Yüksek Senderscore &amp; IP Reputation</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Catch-All</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
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
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Dosya Yöneticisi</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>DNS Zone Yönetimi</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>E-posta Yönetimi</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Domain Değiştirme</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Hosting Sıfırlama</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Webalizer İstatistik</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Özel Hata Sayfaları</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Haftalık Yedekleme</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
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
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Cluster Yedekli Mimari</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Depolama Birimi</div>
        <div>Enterprise NVMe Storage</div>
        <div>Enterprise NVMe Storage</div>
        <div class="is-best">Enterprise NVMe Storage</div>
        <div>Enterprise NVMe Storage</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>INODES</div>
        <div>100.000</div>
        <div>150.000</div>
        <div class="is-best">200.000</div>
        <div>250.000</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>I/O Limitleri(MB/Sn)</div>
        <div>20</div>
        <div>30</div>
        <div class="is-best">40</div>
        <div>50</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>ISO 9001 Kalite Yönetim Sertifikası</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>ISO 27001 Bilgi Güvenliği Sertifikası</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>ISO 10002 Müşteri Memnuniyet Sertifikası</div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
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
        <div><i class="fas fa-check" aria-label="Var"></i></div>
        <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
        <div><i class="fas fa-check" aria-label="Var"></i></div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Canlı Satış Desteği</div>
        <div>08.30 - 03.00</div>
        <div>08.30 - 03.00</div>
        <div class="is-best">08.30 - 03.00</div>
        <div>08.30 - 03.00</div>
       </div>
       <div class="ixir-wh-table-row">
        <div>Telefon Desteği</div>
        <div>08.30 - 18.00</div>
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
      <div>
       <s>191,21 TL</s><b>122,00 TL</b><small>/ay</small>
       <a class="ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
      </div>
      <div class="is-best">
       <s>268,45 TL</s><b>173,42 TL</b><small>/ay</small>
       <a class="ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
      </div>
      <div>
       <s>389,24 TL</s><b>250,33 TL</b><small>/ay</small>
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
    <p>Windows Hosting paketlerimiz ile ilgili detaylı bilgiye mi ihtiyacınız var?</p>
   </header>
   <div class="ixir-wh-faq-list">
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>Windows Hosting ile Linux Hosting arasındaki temel fark nedir?</button>
     <div class="ixir-wh-faq-a">
      <p><strong>Windows Hosting</strong>, Microsoft teknolojileriyle geliştirilmiş projeleri barındırmak için
       tasarlanmış bir hosting
       türüdür. <strong>ASP</strong>, <strong>ASP.NET</strong>, <strong>.NET Core</strong>, <strong>.NET
        Framework</strong> gibi framework'ler ve <strong>MSSQL</strong> veritabanı yalnızca <strong>Windows
        Hosting</strong>
       üzerinde çalışır. <strong>Linux Hosting</strong> ise <strong>PHP</strong>, <strong>MySQL</strong> ve
       <strong>Python</strong> gibi açık kaynak teknolojiler için optimize edilmiştir.
       Projeniz <strong>ASP.NET</strong> veya <strong>.NET Core</strong> ile yazılmışsa <strong>Windows
        Hosting</strong>; <strong>WordPress</strong>, <strong>Joomla</strong> veya <strong>PHP</strong> tabanlı bir
       yapıya
       sahipse <strong>Linux Hosting</strong> tercih etmenizi öneririz.
      </p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>.NET Core ve ASP.NET'in hangi sürümlerini kullanabilirim?</button>
     <div class="ixir-wh-faq-a">
      <p>Tüm Windows Hosting paketlerimizde <strong>.NET Core 3.1, 5, 6, 7, 8, 9 ve 10</strong> sürümlerini
       kullanabilirsiniz. <strong>ASP.NET Framework</strong> için ise <strong>4.8</strong> ve <strong>3.5</strong>
       sürümleri desteklenmektedir. <strong>Klasik ASP (VBScript/JScript)</strong> da tüm paketlerde aktif
       olarak çalışmaktadır. Kullanmak istediğiniz sürüm listede yoksa destek ekibimizle iletişime geçebilirsiniz.</p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>MSSQL veritabanına uzak bağlantı yapabilir miyim?</button>
     <div class="ixir-wh-faq-a">
      <p>Evet, <strong>MSSQL</strong> veritabanınıza <strong>SQL Server Management Studio (SSMS)</strong> ile uzak
       bağlantı izni verebiliyoruz.
       Veritabanınızı ayrıca <strong>Plesk</strong> panel üzerinden <strong>SQL script</strong> veya <strong>MDF
        dosyası</strong> olarak "dökümü içeri aktar" seçeneğiyle
       de yükleyebilirsiniz. <strong>Önemli not:</strong> Windows Hosting hizmetimiz yalnızca <strong>web
        uygulamaları</strong> için tasarlanmıştır;
       masaüstü uygulamalar, saha yazılımları veya <strong>ERP/CRM</strong> sistemleri gibi uygulamaların MSSQL'i
       doğrudan veritabanı
       sunucusu olarak kullanması politikamıza aykırıdır ve bu tür kullanımlarda <strong>hizmet
        sonlandırılmaktadır</strong>.</p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>E-posta gönderiminde limit var mı?</button>
     <div class="ixir-wh-faq-a">
      <p>Evet, istenmeyen e-posta (spam) gönderiminin önüne geçmek amacıyla her paket için <strong>saatlik e-posta
        gönderim
        limiti</strong> uygulanmaktadır. <strong>Budget</strong> pakette saatte <strong>50 adet</strong>,
       <strong>Economy</strong> pakette <strong>100 adet</strong>, <strong>Professional</strong> pakette <strong>200
        adet</strong>,
       <strong>Extreme</strong> pakette ise <strong>400 adet</strong> e-posta gönderilebilmektedir. Toplu kampanya veya
       bildirim e-postası ihtiyacınız
       varsa destek ekibimizle görüşerek çözüm üretebiliriz.
      </p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>Para iade garantisi sunuyor musunuz?</button>
     <div class="ixir-wh-faq-a">
      <p>
       Evet, tüm <strong>Windows Hosting</strong> paketlerimizde satın alma tarihinden itibaren <strong>15 gün</strong>
       boyunca <strong>koşulsuz para iade
        garantisi</strong> sunuyoruz. İade talebinizi muhasebe servisimize destek talebi açarak iletmeniz yeterlidir; en
       kısa
       sürede işleme alınacaktır.
      </p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>Satın almadan önce ücretsiz deneme yapabilir miyim?</button>
     <div class="ixir-wh-faq-a">
      <p>Evet, üyelik oluşturduktan sonra denemek istediğiniz paketi sipariş verin ve ödeme adımında <strong>banka
        havalesi</strong>
       seçeneğini seçin. Ardından destek talebi açarak ya da telefon ile bizi arayarak seçtiğiniz paketi <strong>2 iş
        günü</strong>
       boyunca <strong>ücretsiz</strong> deneyebilirsiniz. Deneme süresinde hizmetten memnun kalmazsanız
       <strong>herhangi
        bir ücret ödemek
        zorunda değilsiniz</strong>.
      </p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>Sipariş verdiğimde hizmet ne zaman aktif olur?</button>
     <div class="ixir-wh-faq-a">
      <p>Ödemenizin onaylanmasının ardından <strong>Windows Hosting</strong> hesabınız <strong>anında ve
        otomatik</strong>
       olarak aktif hale gelir. <strong>Plesk</strong>
       kontrol paneli giriş bilgileriniz kayıtlı e-posta adresinize gönderilir; birkaç dakika içinde sitenizi
       yayınlamaya başlayabilirsiniz.</p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>Yanlış paket satın aldım, değiştirebilir miyim?</button>
     <div class="ixir-wh-faq-a">
      <p>Evet, yanlış paketi sipariş verdiğinizi fark ederseniz ya da farklı bir plana geçmek isterseniz istediğiniz
       zaman <strong>paket değişikliği</strong> yaptırabilirsiniz. Bunun için destek talebi açmanız yeterlidir; ekibimiz
       geçişi en kısa
       sürede gerçekleştirecektir. <strong>Üst plana geçişlerde ücret farkı alınır</strong>; <strong>alt plana
        geçişlerde ise kalan süre için
        fark iade edilir</strong>.</p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>Ücretsiz .COM.TR alan adı hediyesi nasıl kullanılır?</button>
     <div class="ixir-wh-faq-a">
      <p>Sipariş esnasında sepete yeni bir <strong>.com.tr</strong> veya <strong>.net.tr</strong> alan adı
       eklediğinizde,
       alan adının <strong>ilk yıllık ücreti</strong>
       otomatik olarak sepetinizden düşülür. Bu hak <strong>yalnızca yeni sipariş sırasında</strong> ve <strong>yeni
        alan
        adı kaydı</strong> için
       geçerlidir; mevcut alan adlarında veya sonradan kullanılamaz.</p>
     </div>
    </div>

    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>Windows Hosting'de hangi kontrol paneli kullanılıyor?</button>
     <div class="ixir-wh-faq-a">
      <p>
       Tüm <strong>Windows Hosting</strong> paketlerimizde dünyanın en yaygın kullanılan Windows hosting kontrol paneli
       olan
       <strong>Plesk</strong> kullanılmaktadır. Plesk üzerinden <strong>alan adı yönetimi</strong>, <strong>e-posta
        hesabı oluşturma</strong>, <strong>MSSQL</strong> ve
       <strong>MySQL</strong> veritabanı
       yönetimi, <strong>SSL sertifikası</strong> kurulumu, <strong>FTP hesapları</strong>, <strong>zamanlanmış görevler
        (Cron Jobs)</strong> ve <strong>dosya yöneticisi</strong> gibi tüm
       işlemlerinizi kolaylıkla gerçekleştirebilirsiniz.
      </p>
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
     <span class="ixir-wh-guide-icon" aria-hidden="true"><i class="fas fa-server"></i></span>
     <h2>ASP.NET ve .NET Core Projeleri İçin En Uygun Barındırma Ortamı</h2>
     <p><strong>ASP.NET</strong>, <strong>.NET Core</strong> ve <strong>MVC</strong> gibi Microsoft teknolojileriyle
      geliştirilmiş web uygulamaları için en doğal
      barındırma ortamı <strong>Windows Hosting</strong>'dir. <strong>IIS (Internet Information Services)</strong> web
      sunucusu, <strong>MSSQL Server 2022</strong>
      veritabanı ve <strong>Plesk</strong> kontrol panelinin bir arada çalıştığı bu platform; kişisel projelerden
      kurumsal
      e-ticaret
      sistemlerine kadar her ölçekte güvenilir ve yüksek performanslı bir altyapı sunar. <strong>IxirHost Windows
       Hosting</strong>
      sunucuları, İstanbul'daki <strong>Tier III+</strong> veri merkezinde <strong>Enterprise NVMe SSD</strong> depolama
      ve cluster yedekli mimariyle
      çalışmakta; <strong>%99.9 uptime</strong> garantisi kapsamında sitenizin her zaman hızlı ve erişilebilir kalması
      sağlanmaktadır.
      <strong>Klasik ASP</strong>'den modern <strong>.NET Core 10</strong>'a, <strong>MSSQL</strong>'den
      <strong>PHP</strong> destekli yapılandırmalara kadar geniş teknoloji uyumluluğu ile
      mevcut projenizi kolayca taşıyabilir ya da yeni geliştirmenizi hızla canlıya alabilirsiniz.
     </p>
    </article>
    <article class="ixir-wh-guide-item">
     <span class="ixir-wh-guide-icon" aria-hidden="true"><i class="fas fa-layer-group"></i></span>
     <h2>Plesk ile Kolay Yönetim, NVMe ile Yüksek Performans</h2>
     <p><strong>IxirHost Windows Hosting</strong> paketlerinin tamamında standart olarak sunulan <strong>Plesk</strong>
      kontrol paneli, teknik bilgiden
      bağımsız olarak hosting hesabınızı kolaylıkla yönetmenizi sağlar. E-posta hesabı açma,
      <strong>MSSQL/MySQL</strong>
      veritabanı
      oluşturma, <strong>SSL sertifikası</strong> kurulumu, <strong>DNS yönetimi</strong> ve dosya düzenleme gibi tüm
      işlemler tek ekrandan, birkaç
      tıklamayla gerçekleştirilebilir. Sunuculardaki <strong>%100 NVMe SSD</strong> altyapısı, geleneksel disklere
      kıyasla
      <strong>40 kata kadar</strong>
      daha yüksek okuma-yazma hızı sağlayarak web sitenizin hem kullanıcılar hem de arama motorları tarafından daha
      hızlı erişilmesine katkıda bulunur. <strong>Ücretsiz Let's Encrypt SSL</strong>, <strong>haftalık otomatik
       yedekleme</strong>, yüksek IP reputation
      güvencesiyle gelen <strong>mail saygınlığı</strong> özelliği, <strong>7/24 teknik destek</strong> ve <strong>15
       gün
       koşulsuz para iade garantisi</strong> bir arada
      değerlendirildiğinde <strong>IxirHost Windows Hosting</strong>; güvenilir, ölçeklenebilir ve ekonomik bir
      barındırma
      deneyimi
      sunmaktadır.
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
   var root = document.querySelector('.ixir-wh-story');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll('.ixir-wh-story-intro, .ixir-wh-story-row');
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