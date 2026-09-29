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
       <a href="{$WEB_ROOT}/site-pratik" title="Site Pratik">
        <i class="fas fa-globe fa-fw" aria-hidden="true"></i><span>Site Pratik</span>
       </a>
      </li>
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
       <a href="{$WEB_ROOT}/linux-reseller-hosting" title="Linux Reseller Hosting">
        <i class="fab fa-linux fa-fw" aria-hidden="true"></i><span>Linux Reseller Hosting</span>
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
       <a href="{$WEB_ROOT}/bulut-server" title="Bulut Server">
        <i class="fas fa-cloud fa-fw" aria-hidden="true"></i><span>Bulut Server</span>
       </a>
      </li>
      <li>
       <a href="{$WEB_ROOT}/kiralik-server" title="Kiralık Server">
        <i class="fas fa-server fa-fw" aria-hidden="true"></i><span>Kiralık Server</span>
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