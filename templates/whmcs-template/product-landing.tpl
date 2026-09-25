{if $ixirPageSlug == 'webhosting'}
 <section id="home-banner" class="ixir-hero ixir-hero--webhosting" aria-label="Web Hosting">
  <picture class="ixir-hero-photo">
   <img src="{$WEB_ROOT}/templates/{$template}/img/bg6.webp?v=r1" alt="">
  </picture>
  <div class="container">
   <div class="ixir-hero-main">
    <div class="ixir-hero-copy">
     <h1>Web Hosting</h1>
     <p>NVMe SSD, LiteSpeed ve cPanel ile güçlü, hızlı ve kesintisiz bir web hosting deneyimi yaşayın. Linux yerine
      Windows tercih ediyorsanız planlarımıza göz atabilirsiniz.</p>
    </div>
    <div class="ixir-hero-actions">
     <a href="#ixir-wh-plans" class="ixir-hero-btn ixir-hero-btn--primary ixir-wh-plans-btn">
      Web Hosting Paketleri <i class="fas fa-arrow-down" aria-hidden="true"></i>
     </a>
     <a href="{$WEB_ROOT}/windows-hosting" class="ixir-hero-btn ixir-hero-btn--secondary">
      Windows Hosting <i class="fas fa-arrow-right" aria-hidden="true"></i>
     </a>
    </div>
    <p class="ixir-hero-label" aria-hidden="true">Özellikler</p>
    <ul class="ixir-hero-points" aria-label="Özellikler">
     <li>
      <i class="fas fa-hdd" aria-hidden="true"></i>
      <span>%100 NVMe SSD Disk</span>
     </li>
     <li>
      <i class="fas fa-bolt" aria-hidden="true"></i>
      <span>LiteSpeed Web Sunucusu</span>
     </li>
     <li>
      <i class="fab fa-cpanel" aria-hidden="true"></i>
      <span>cPanel Kontrol Paneli</span>
     </li>
     <li>
      <i class="fas fa-lock" aria-hidden="true"></i>
      <span>Ücretsiz SSL Sertifikası</span>
     </li>
     <li>
      <i class="fas fa-clock" aria-hidden="true"></i>
      <span>%99.9 Uptime Garantisi</span>
     </li>
     <li>
      <i class="fas fa-undo" aria-hidden="true"></i>
      <span>15 Gün Para İade Garantisi</span>
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
    <span>LiteSpeed Cache</span>
    <span>cPanel</span>
    <span>Imunify360</span>
    <span>CloudLinux</span>
    <span>7/24 Destek</span>
    <span>Ücretsiz SSL</span>
    <span>15 Gün İade</span>
    <span>LiteSpeed Web Server</span>
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
    <h2 id="ixir-wh-plans-title">Web Hosting Paketleri</h2>
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
          class="ixir-wh-tip-box" role="tooltip">3 adet web sitesi, hosting planınızda ana domain ile birlikte toplamda 3
          adet domain barındırabilmenizi sağlar.</span></span></b></li>
      <li><span>NVMe disk boyutu</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="NVMe açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Enterprise NVMe ile geleneksel depolama birimlerine göre 40 kat daha
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
      <div class="ixir-wh-billing-pop" id="ixir-wh-bill-professional" role="dialog" aria-label="Profesyonel ödeme planı">
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
      <li><span>NVMe disk boyutu</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="NVMe açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Enterprise NVMe ile geleneksel depolama birimlerine göre 40 kat daha
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
      <li><span>Web sitesi adeti</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="Web sitesi açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Limitsiz web sitesi, hosting planınızda limitlendirilmemiş
          barındırabileceğiniz alt alan adı sayısını ifade eder. Ancak adil kullanım politikaları
          geçerlidir.</span></span></b></li>
      <li><span>NVMe disk boyutu</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="NVMe açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Enterprise NVMe ile geleneksel depolama birimlerine göre 40 kat daha
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
     <li><i class="fas fa-check" aria-hidden="true"></i>LiteSpeed Web Server<span class="ixir-wh-tip"><button
        type="button" class="ixir-wh-tip-btn" aria-label="LiteSpeed açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Geleneksel Apache web sunucusuna
        göre 10 kat daha fazla performans sağlar.</span></span></li>
     <li><i class="fas fa-check" aria-hidden="true"></i>LiteSpeed Cache<span class="ixir-wh-tip"><button type="button"
        class="ixir-wh-tip-btn" aria-label="LiteSpeed Cache açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">LiteSpeed Cache önbellekleme ile
        web
        sitenizin performansını artırabilirsiniz, özellikle WordPress siteler ile uyumludur.</span></span></li>
     <li><i class="fas fa-check" aria-hidden="true"></i>PHP X-RAY<span class="ixir-wh-tip"><button type="button"
        class="ixir-wh-tip-btn" aria-label="PHP X-RAY açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">PHP X-Ray ile web sitenizin hız ve
        performansını analiz edebilir ve iyileştirmeler yapabilirsiniz.</span></span></li>
     <li><i class="fas fa-check" aria-hidden="true"></i>Accelerate WP<span class="ixir-wh-tip"><button type="button"
        class="ixir-wh-tip-btn" aria-label="Accelerate WP açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">AccelerateWP, LiteSpeed Cache
        yerine
        kullanabileceğiniz WordPress hızlandırma platformudur, sayfa yükleme sürelerini optimize eder.</span></span></li>
     <li><i class="fas fa-check" aria-hidden="true"></i>Imunify360 WAF<span class="ixir-wh-tip"><button type="button"
        class="ixir-wh-tip-btn" aria-label="Imunify360 açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Web sitelerinizi malware, virüs ve
        DDoS saldırılarından koruyan gelişmiş bir çözümdür.</span></span></li>
     <li><i class="fas fa-check" aria-hidden="true"></i>JetBackup yedekleme<span class="ixir-wh-tip"><button
        type="button" class="ixir-wh-tip-btn" aria-label="JetBackup açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Adil kullanım politikasına uygun
        hesabınız haftalık olarak ücretsiz yedeklenir. Panelinizden isterseniz tüm yedeği, isterseniz dosya, mail veya
        veritabanı bazlı yedeklerden geri dönebilirsiniz.</span></span></li>
     <li><i class="fas fa-check" aria-hidden="true"></i>Ücretsiz SSL<span class="ixir-wh-tip"><button type="button"
        class="ixir-wh-tip-btn" aria-label="SSL açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">SSL sertifikanız otomatik kurulur
        ve
        ömür boyu ücretsizdir.</span></span></li>
     <li><i class="fas fa-check" aria-hidden="true"></i>Cloud Linux OS</li>
     <li><i class="fas fa-check" aria-hidden="true"></i>cPanel kontrol paneli</li>
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
    <h2>Web Hosting Nedir?</h2>
    <p><strong>Web hosting hizmeti</strong>, web sitenizi veya uygulamalarınızı web üzerine yayınlayabilmenizi sağlayan
     bir hizmettir.
     Hosting hizmetini üzerine bina inşa edeceğiniz <strong>arsa</strong> gibi düşünebilirsiniz. Dijital bu arsayı web
     sitenizin
     <strong>barınacağı alan</strong> olarak düşünmelisiniz ve üzerine inşa edeceğiniz <strong>ev</strong> ise
     <strong>web sitenizin kendisi</strong> olacaktır. Web
     sitemize yüklenilen <strong>içerikler, görseller, dosyalar</strong> bu arsa üzerinde barınmaktadır.
    </p>
    <a class="ixir-wh-story-cta" href="#ixir-wh-plans">Hemen Satın Al</a>
   </div>
   <article class="ixir-wh-story-row ixir-wh-story-row--cpanel">
    <div class="ixir-wh-story-visual" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/hosting/cpanel.webp?v=2" alt="">
    </div>
    <div class="ixir-wh-story-copy">
     <div class="ixir-wh-story-heading">
      <span class="ixir-wh-story-badge" aria-hidden="true"><i class="fas fa-th-large"></i></span>
      <h3 class="ixir-wh-story-title">cPanel Kontrol Paneli</h3>
     </div>
     <p>Aşina olduğunuz dünyanın en popüler web hosting kontrol panellleri olan <strong>cPanel</strong> ve
      <strong>Plesk</strong> ile web hosting
      hizmetinizi kolay ve zahmetsizce yönetebilirsiniz. <strong>Disk alanı yönetimi</strong>, <strong>e-mail hesap
       oluşturma</strong>, <strong>kota belirleme</strong>, <strong>web
       sitesi ve e-posta yedekleme</strong>, <strong>güvenlik</strong> gibi temel ve ileri seviye ayar ve
      yapılandırmalarınızı kolayca yapın.
      Windows tabanlı web siteleri için <strong>Plesk</strong>, Linux tabanlı web siteleriniz için
      <strong>cPanel</strong>’i tercih edebilirsiniz.
     </p>
    </div>
   </article>
   <article class="ixir-wh-story-row ixir-wh-story-row--flip ixir-wh-story-row--speed">
    <div class="ixir-wh-story-visual" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/hosting/litespeed.webp?v=2" alt="">
    </div>
    <div class="ixir-wh-story-copy">
     <div class="ixir-wh-story-heading">
      <span class="ixir-wh-story-badge" aria-hidden="true"><i class="fas fa-bolt"></i></span>
      <h3 class="ixir-wh-story-title">LiteSpeed ve LsCache Desteği</h3>
     </div>
     <p>Web sitenizin hız ve yavaş açılma problemi mi var? Sorun değil. <strong>Litespeed</strong> ile apache'den
     <strong>kat ve kat daha hızlı</strong> ve
     <strong>stabil</strong> fiyat/performans dengesinde bir hosting deneyimi yaşatmak üzere tasarlandı.
    </p>
   </div>
  </article>
  <article class="ixir-wh-story-row ixir-wh-story-row--mail">
   <div class="ixir-wh-story-visual" aria-hidden="true">
    <img src="{$WEB_ROOT}/templates/{$template}/img/hosting/reputation-macbook.webp?v=2" alt="">
   </div>
   <div class="ixir-wh-story-copy">
    <div class="ixir-wh-story-heading">
     <span class="ixir-wh-story-badge" aria-hidden="true"><i class="fas fa-shield-alt"></i></span>
     <h3 class="ixir-wh-story-title">Giden Mail Saygınlığı</h3>
    </div>
    <p>Günümüzde e-mail kullanıcılarının gönderdiği e-postaların <strong>%16’sı</strong> sahiplerine hiç ulaşmamaktadır.
     E-Postaların
     ulaşmamasının en önemli sebebi ise <strong>düşük gönderici puanı</strong> ve <strong>düşün IP
      popülerliği</strong>dir. Tüm Hosting paketlerinde
     <strong>ücretsiz</strong> olarak sunulan <strong>e-mail saygınlığı</strong> özelliği ile <strong>yüksek
      senderscore</strong> ve <strong>yüksek IP reputation</strong> kazanan
     e-postalarının alıcısının <strong>gelen kutusuna</strong> ulaşır ve işletmenizin saygınlığı ve itibarı asla zarar
     görmez.
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
    <span class="ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-hdd"></i></span>
    <div>
     <h3>%100 NVMe Disk</h3>
     <p>%100 NVMe disk üzerinde çalışan hosting paketleri sayesinde çok daha hızlı ve yüksek performanslı sitelere sahip
      olun.</p>
    </div>
   </li>
   <li>
    <span class="ixir-wh-diff-icon" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/lin-win.svg" alt="">
    </span>
    <div>
     <h3>Linux &amp; Windows</h3>
     <p>Platform kısıtlamasına takılmadan web sitenizi ister Linux ister Windows paketlerde barındırın.</p>
    </div>
   </li>
   <li>
    <span class="ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-shield-alt"></i></span>
    <div>
     <h3>15 Gün Para İade Garantisi</h3>
     <p>Hizmetten memnun kalmazsanız, satın alımdan itibaren 15 gün içinde koşulsuz para iade garantisi sunuyoruz.</p>
    </div>
   </li>
   <li>
    <span class="ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-signal"></i></span>
    <div>
     <h3>%99.9 Uptime Garantisi</h3>
     <p>İstanbul TIER III+ veri merkezimizde, 3 operatör yedekli altyapı ile kesintisiz ve yüksek erişilebilirlik
      garantisi sunuyoruz.</p>
    </div>
   </li>
  </ul>
 </div>
</section>
<section class="ixir-wh-apps" aria-labelledby="ixir-wh-apps-title">
 <script>
  {literal}
  (function() {
   var root = document.querySelector('.ixir-wh-apps');
   if (!root || !window.IntersectionObserver) return;
   if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
   if (window.matchMedia && window.matchMedia('(max-width: 1023px)').matches) return;
   root.classList.add('is-armed');
  })();
  {/literal}
 </script>
 <div class="container">
  <div class="ixir-wh-apps-stack" aria-hidden="true">
   <span class="ixir-wh-apps-tile ixir-wh-apps-tile--back"></span>
   <span class="ixir-wh-apps-tile ixir-wh-apps-tile--mid"></span>
   <span class="ixir-wh-apps-tile ixir-wh-apps-tile--side"></span>
   <span class="ixir-wh-apps-tile ixir-wh-apps-tile--front">
    <i class="fab fa-wordpress" aria-hidden="true"></i>
   </span>
  </div>
  <h2 id="ixir-wh-apps-title">Hazır Sistemler</h2>
  <p class="ixir-wh-apps-lead">Tek Tıkla Yükle ve Başla</p>
  <p class="ixir-wh-apps-copy">Dünyanın en popüler içerik yönetim sistemlerinin son versiyonlarını tek tıkla kurulum
   imkanı
   sunuyoruz. Üstelik hiç bir versiyon güncelleme işlemi yapmanıza gerek kalmadan yönetim
   gerçekleştirebilirsiniz.</p>
  <ul class="ixir-wh-apps-list">
   <li>
    <span class="ixir-wh-app ixir-wh-app--wp" aria-hidden="true"><i class="fab fa-wordpress"></i></span>
    WordPress
   </li>
   <li>
    <span class="ixir-wh-app ixir-wh-app--oc" aria-hidden="true"><i class="fab fa-opencart"></i></span>
    OpenCart
   </li>
   <li>
    <span class="ixir-wh-app ixir-wh-app--drupal" aria-hidden="true"><i class="fab fa-drupal"></i></span>
    Drupal
   </li>
   <li>
    <span class="ixir-wh-app ixir-wh-app--joomla" aria-hidden="true"><i class="fab fa-joomla"></i></span>
    Joomla
   </li>
   <li>
    <span class="ixir-wh-app ixir-wh-app--magento" aria-hidden="true"><i class="fab fa-magento"></i></span>
    Magento
   </li>
   <li>
    <span class="ixir-wh-app ixir-wh-app--presta"><img src="{$WEB_ROOT}/templates/{$template}/img/prestashop.png"
      alt="PrestaShop"></span>
    PrestaShop
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
   <p>Web Hosting paketlerimiz arasından size en uygun olan seçimi yapın</p>
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
       <div>Haftalık</div>
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
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
      </div>
      <div class="ixir-wh-table-row">
       <div>LiteSpeed Web Sunucusu</div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
      </div>
      <div class="ixir-wh-table-row">
       <div>LiteSpeed LSCache</div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
      </div>
      <div class="ixir-wh-table-row">
       <div>PHP X-RAY</div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
      </div>
      <div class="ixir-wh-table-row">
       <div>Accelerate WP</div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
      </div>
      <div class="ixir-wh-table-row">
       <div>Gzip / Brotli İçerik Sıkıştırma</div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
      </div>
      <div class="ixir-wh-table-row">
       <div>Imunify360 WAF</div>
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
       <div>URL Re-write ve .htaccess Desteği</div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
      </div>
      <div class="ixir-wh-table-row">
       <div>Şifre Korumalı Klasörler</div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
      </div>
      <div class="ixir-wh-table-row">
       <div>PHP Ioncube Loader (v13)</div>
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
       <div>MySQL Sayısı</div>
       <div>1</div>
       <div>Limitsiz</div>
       <div class="is-best">Limitsiz</div>
       <div>Limitsiz</div>
      </div>
      <div class="ixir-wh-table-row">
       <div>MySQL Başına Boyut</div>
       <div>Limitsiz</div>
       <div>Limitsiz</div>
       <div class="is-best">Limitsiz</div>
       <div>Limitsiz</div>
      </div>
      <div class="ixir-wh-table-row">
       <div>MySQL Uzak Erişim</div>
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
       <div>Tek Tıkla Uygulama Kurulumu</div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
       <div class="is-best"><i class="fas fa-check" aria-label="Var"></i></div>
       <div><i class="fas fa-check" aria-label="Var"></i></div>
      </div>
      <div class="ixir-wh-table-row">
       <div>Otomatik 300+ Özel Uygulama Kurulumu</div>
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
   <p>Web Hosting paketlerimiz ile ilgili detaylı bilgiye mi ihtiyacınız var?</p>
  </header>
  <div class="ixir-wh-faq-list">
   <div class="ixir-wh-faq-item">
    <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
      aria-hidden="true"></i>Linux Hosting paketlerinde sadece PHP mi
     kullanabilirim?</button>
    <div class="ixir-wh-faq-a">
     <p>Tüm linux hosting hizmetlerimizde sadece PHP;HTML ve MySQL kullanabilirsiniz. ASP ve ASP.NET yazılım kullanan
      bir
      web siteniz var ise windows hosting hizmetlerimizden satın almalısınız.</p>
    </div>
   </div>
   <div class="ixir-wh-faq-item">
    <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
      aria-hidden="true"></i>Hosting hizmetimde ne kadar CPU kullanabilirim?
    </button>
    <div class="ixir-wh-faq-a">
     <p>Budget ve Economy paketlerde 1 Core Intel Xeon Gold, Professional ve Extreme paketlerde 2 Core Intel Xeon Gold
      işlemci kaynağı tahsis edilmektedir. Daha fazla kaynağa ihtiyaç duyarsanız destek ekibimizle irtibata
      geçebilirsiniz.</p>
    </div>
   </div>
   <div class="ixir-wh-faq-item">
    <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
      aria-hidden="true"></i>E-posta gönderiminde limit var mı?</button>
    <div class="ixir-wh-faq-a">
     <p>Evet, spam engellemesi amacıyla saatlik e-posta gönderim limiti uygulanmaktadır. Budget pakette saatte 100 adet,
      Economy pakette 200 adet, Professional ve Extreme paketlerde 400 adet e-posta gönderimi yapılabilmektedir. Toplu
      e-posta ihtiyacınız için destek ekibimizle iletişime geçebilirsiniz.</p>
    </div>
   </div>
   <div class="ixir-wh-faq-item">
    <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
      aria-hidden="true"></i>Para iade garantisi sunuyor musunuz?</button>
    <div class="ixir-wh-faq-a">
     <p>Evet, tüm hosting hizmetlerimizde olduğu gibi 15 gün boyunca koşulsuz para iade garantisi sunuyoruz. Muhasebe
      servisimize bunu iletmeniz yeterlidir.</p>
    </div>
   </div>
   <div class="ixir-wh-faq-item">
    <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
      aria-hidden="true"></i>Yeni bir kullanıcıyım ücretsiz deneme yapabilir
     miyim?</button>
    <div class="ixir-wh-faq-a">
     <p>Elbette Web sitemize üye olup denemek istediğiniz ürünün siparişini verin ve ödeme kısmında banka havalesi
      seçiniz. Sonrasında Destek talebi ileterek yada telefon ile arayarak seçmiş olduğunuz ürünü 2 günlük bir süre
      içersinde deneyebilirsiniz.</p>
    </div>
   </div>
   <div class="ixir-wh-faq-item">
    <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
      aria-hidden="true"></i>Sipariş verdiğim ürün hemen aktif olacak mı?
    </button>
    <div class="ixir-wh-faq-a">
     <p>Evet, siparişinizi verdiğiniz hizmetin ödemesini gerçekleştirdiğiniz anda otomatik olarak aktif olacaktır.</p>
    </div>
   </div>
   <div class="ixir-wh-faq-item">
    <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
      aria-hidden="true"></i>Hosting hizmetini yanlış satın aldım, değiştirebilir
     miyim?</button>
    <div class="ixir-wh-faq-a">
     <p>Tabiki eğer yanlış hizmeti sipariş verdiğinizi düşünüyorsanız yada linux hosting yerine başka bir hosting
      hizmetimizi kullanmak istediniz bu değişikliği istediğiniz zaman yaptırabilirsiniz. Bu konuda bize destek talebi
      iletmeniz yeterlidir hemen yapacağız.</p>
    </div>
   </div>
   <div class="ixir-wh-faq-item">
    <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
      aria-hidden="true"></i>Ücretsiz .COM.TR Alan Adı Şartları</button>
    <div class="ixir-wh-faq-a">
     <p>Sipariş esnasında sepette yeni com.tr / net.tr alan adınızı sepete eklediğinizde ilk 1 yıl hediye olarak
      sağlanacaktır. Yalnızca sipariş esnasında geçerlidir, sonradan bu hak kullanılamamaktadır.</p>
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
    <h2>Web Hosting Altyapısı Neden Bu Kadar Önemlidir?</h2>
    <p>Web sitenizin yükleme hızı yalnızca kodunuza ya da tasarımınıza değil, barındırıldığı sunucunun altyapısına
     doğrudan bağlıdır. Geleneksel HDD disk sistemlerine kıyasla %100 NVMe SSD altyapısı, dosya okuma ve yazma hızını 40
     kata kadar artırarak veritabanı sorgularını anlık tamamlar, sayfa yükleme sürelerini minimuma indirir. ixirhost web
     hosting paketlerinde kullanılan <strong>LiteSpeed web sunucusu</strong> ise Apache'ye göre 10 kat daha yüksek
      performans sunar, özellikle WordPress, WooCommerce ve OpenCart gibi içerik yönetim sistemlerinde bu fark ziyaretçi
      deneyimine ve Google sıralamasına doğrudan yansır. Tüm paketlerde ayrıca LiteSpeed Cache, PHP X-RAY ve AccelerateWP
      desteği standart olarak sunulmaktadır.</p>
    </article>
    <article class="ixir-wh-guide-item">
     <span class="ixir-wh-guide-icon" aria-hidden="true"><i class="fas fa-layer-group"></i></span>
     <h2>Hangi Web Hosting Paketi Size Uygun?</h2>
     <p>Paket seçimi, sitenizin trafiğine, barındırmak istediğiniz alan adı sayısına ve kaynak ihtiyacınıza göre
      şekillenmelidir. Tek bir web sitesi yayınlayan ve yeni başlayanlar için <strong>Budget planı</strong> bir başlangıç
      noktasıdır. Birden fazla alan adını tek panelde yönetmek isteyenler <strong>Economy veya Professional</strong>
      paketleri tercih edebilir. Yoğun trafik alan bir e-ticaret sitesi ya da kurumsal web uygulaması işletiyorsanız, 2
      Core Intel Xeon Gold işlemci ve 4 GB RAM kapasitesiyle donatılmış <strong>Extreme paketi</strong> size kesintisiz
      bir ortam sağlar. Hangi paketi seçerseniz seçin; cPanel kontrol paneli, ücretsiz Let's Encrypt SSL, Imunify360 WAF
     güvenlik koruması ve haftalık JetBackup yedekleme hizmetleri tüm planlarda standart olarak yer almaktadır.</p>
   </article>
   <article class="ixir-wh-guide-item">
    <span class="ixir-wh-guide-icon" aria-hidden="true"><i class="fas fa-shield-alt"></i></span>
    <h2>İXİRHOST ile Türkiye'de Güvenilir Web Hosting</h2>
     <p>ixirhost, tüm web hosting hizmetlerini İstanbul'daki TIER III+ veri merkezinden, 3 operatör yedekli ağ
     altyapısıyla sunmaktadır. Bu sayede %99.9 uptime garantisiyle web siteniz her zaman erişilebilir kalır. Satın alma
     tarihinden itibaren 15 gün boyunca geçerli olan koşulsuz para iade garantisi sayesinde hizmeti risksiz deneyimleme
     şansına sahip olursunuz. WordPress tabanlı bir siteniz varsa <a href="{$WEB_ROOT}/wordpress-hosting">WordPress
      Hosting</a>, ASP.NET ya da MSSQL kullanıyorsanız <a href="{$WEB_ROOT}/windows-hosting">Windows Hosting</a>
     paketlerimizi de inceleyebilirsiniz.</p>
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
  var root = document.querySelector('.ixir-wh-apps');
  if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
  var nodes = root.querySelectorAll(
   '.ixir-wh-apps-stack, .ixir-wh-apps h2, .ixir-wh-apps-lead, .ixir-wh-apps-copy, .ixir-wh-apps-list li');
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
    }, 1200);
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
{else}
 <div class="ixir-landing">
  <div class="ixir-landing-hero">
   <span class="ixir-landing-icon" aria-hidden="true"><i class="{$ixirPage.icon}"></i></span>
   <p>{$ixirPage.tagline|escape}</p>
   <div class="ixir-landing-actions">
    <a href="{$WEB_ROOT}/sepet" class="btn btn-primary">Paketleri İncele</a>
    <a href="{$WEB_ROOT}/iletisim" class="btn btn-default">İletişime Geç</a>
   </div>
  </div>
  {if $ixirPage.points}
   <ul class="ixir-landing-points">
    {foreach $ixirPage.points as $point}
     <li><i class="fas fa-check" aria-hidden="true"></i> {$point|escape}</li>
    {/foreach}
   </ul>
  {/if}
  <div class="ixir-landing-note">
   Bu hizmet için paketleri sepetten inceleyebilir veya satış ekibimizden teklif alabilirsiniz.
  </div>
 </div>
{/if}