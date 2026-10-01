 <section id="home-banner" class="ixir-hero ixir-hero--cloud-server" aria-label="Cloud Server">
  <picture class="ixir-hero-photo">
   <img src="{$WEB_ROOT}/templates/{$template}/img/server/bg18.webp" alt="Cloud Server">
  </picture>
  <div class="container">
   <div class="ixir-hero-main">
    <div class="ixir-hero-copy">
     <h1>60 Saniye'de Cloud Server Hazır!</h1>
     <p>Yüksek Performanslı Cloud Server'ınızı hemen kullanın!</p>
    </div>
    <p class="ixir-hero-label" aria-hidden="true">Özellikler</p>
    <ul class="ixir-hero-points" aria-label="Özellikler">
     <li>
      <i class="fas fa-bolt" aria-hidden="true"></i>
      <span>60 Saniyede Otomatik Kurulum</span>
     </li>
     <li>
      <i class="fas fa-exchange-alt" aria-hidden="true"></i>
      <span>Limitsiz Trafik</span>
     </li>
     <li>
      <i class="fas fa-hdd" aria-hidden="true"></i>
      <span>SSD Depolama</span>
     </li>
     <li>
      <i class="fas fa-map-marker-alt" aria-hidden="true"></i>
      <span>İstanbul Lokasyon</span>
     </li>
     <li>
      <i class="fas fa-desktop" aria-hidden="true"></i>
      <span>Ücretsiz Yönetim Paneli</span>
     </li>
     <li>
      <i class="fas fa-server" aria-hidden="true"></i>
      <span>Tier III+ Veri Merkezi</span>
     </li>
     <li>
      <i class="fas fa-award" aria-hidden="true"></i>
      <span>ISO 27001 Sertifikalı</span>
     </li>
     <li>
      <i class="fas fa-network-wired" aria-hidden="true"></i>
      <span>1 adet IP Adresi</span>
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
       <a href="{$WEB_ROOT}/colocation" title="Co-Location">
        <i class="fas fa-cloud fa-fw" aria-hidden="true"></i><span>Co-Location</span>
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
    <span>60 Saniyede Otomatik Kurulum</span>
    <span>Limitsiz Trafik</span>
    <span>SSD Depolama</span>
    <span>İstanbul Lokasyon</span>
    <span>Ücretsiz Yönetim Paneli</span>
    <span>Tier III+ Veri Merkezi</span>
    <span>ISO 27001 Sertifikalı</span>
    <span>1 adet IP Adresi</span>
    <span>Windows &amp; Linux Desteği</span>
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