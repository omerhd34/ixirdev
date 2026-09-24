<section id="home-banner" class="ixir-hero">
 <picture class="ixir-hero-photo">
  <source srcset="{$WEB_ROOT}/templates/{$template}/img/hero-bg.webp?v=r42" type="image/webp">
  <img src="{$WEB_ROOT}/templates/{$template}/img/hero-bg.jpg?v=r42" alt="">
 </picture>
 <div class="container">
  <div class="ixir-hero-main">
   <div class="ixir-hero-copy">
    <h1>İXİRHOST ile Güvenilir Hosting</h1>
    <p>Hızlı altyapı, 7/24 destek ve uygun fiyatlarla sitenizi hemen yayına alın.</p>
   </div>
   <div class="ixir-hero-actions">
    <a href="#ixir-packages" class="ixir-hero-btn ixir-hero-btn--primary">
     Hosting Paketlerini İncele <i class="fas fa-arrow-right" aria-hidden="true"></i>
    </a>
    <a href="{$WEB_ROOT}/kurumsal-mail-hosting" class="ixir-hero-btn ixir-hero-btn--secondary">
     E-posta Hosting <i class="fas fa-arrow-right" aria-hidden="true"></i>
    </a>
   </div>
   <p class="ixir-hero-label" aria-hidden="true">Avantajlar</p>
   <ul class="ixir-hero-points" aria-label="Avantajlar">
    <li>
     <i class="fas fa-bolt" aria-hidden="true"></i>
     <span>NVMe SSD & LiteSpeed</span>
    </li>
    <li>
     <i class="fas fa-headset" aria-hidden="true"></i>
     <span>7/24 uzman teknik destek</span>
    </li>
    <li>
     <i class="fas fa-shield-alt" aria-hidden="true"></i>
     <span>15 gün iade garantisi</span>
    </li>
    <li>
     <i class="fas fa-lock" aria-hidden="true"></i>
     <span>Ücretsiz SSL sertifikası</span>
    </li>
    <li>
     <i class="fab fa-cpanel" aria-hidden="true"></i>
     <span>cPanel kontrol paneli</span>
    </li>
    <li>
     <i class="fas fa-user-shield" aria-hidden="true"></i>
     <span>Imunify360 koruması</span>
    </li>
   </ul>
   <div class="ixir-domain-links-wrap" role="region" aria-label="İxirhost hizmetleri">
    <p class="ixir-hero-label">Hizmetler</p>
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
      <a href="{$WEB_ROOT}/kurumsal-mail-hosting" title="Kurumsal Mail Hosting">
       <i class="far fa-envelope fa-fw" aria-hidden="true"></i><span>Kurumsal Mail Hosting</span>
      </a>
     </li>
    </ul>
    <ul class="ixir-domain-links">
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
  jQuery(function($) {
   (function initIxirHeroFill() {
    var hero = document.getElementById('home-banner');
    if (!hero) {
     return;
    }

    function apply() {
     var offsetY = Math.max(0, Math.round(hero.getBoundingClientRect().top + (window.pageYOffset || window.scrollY ||
      0)));
     hero.style.setProperty('--ixir-hero-offset', offsetY + 'px');
    }
    apply();
    window.addEventListener('resize', apply);
    window.addEventListener('load', apply);
    $(document).on('click', '.newsClose', function() {
     window.setTimeout(apply, 220);
    });
   })();

   (function initIxirHeroPackagesScroll() {
    var link = document.querySelector('a.ixir-hero-btn--primary[href="#ixir-packages"]');
    var target = document.getElementById('ixir-packages');
    if (!link || !target) {
     return;
    }

    var frame = 0;

    function stickyBottom() {
     var bottom = 0;
     var selectors = ['.ixir-header', '.mobile-header', '.news-bar'];
     var i;
     for (i = 0; i < selectors.length; i++) {
      var el = document.querySelector(selectors[i]);
      if (!el || el.classList.contains('is-hidden')) {
       continue;
      }
      var style = window.getComputedStyle(el);
      if (style.display === 'none' || style.visibility === 'hidden' || style.position !== 'fixed') {
       continue;
      }
      var rect = el.getBoundingClientRect();
      if (rect.height > 0 && rect.bottom > bottom) {
       bottom = rect.bottom;
      }
     }
     return Math.ceil(bottom);
    }

    function destination() {
     var y = window.pageYOffset || document.documentElement.scrollTop || 0;
     var sectionTop = target.getBoundingClientRect().top + y;
     return Math.max(0, Math.round(sectionTop - stickyBottom()));
    }

    function stop() {
     if (frame) {
      window.cancelAnimationFrame(frame);
      frame = 0;
     }
    }

    function easeOutCubic(t) {
     return 1 - Math.pow(1 - t, 3);
    }

    link.addEventListener('click', function(e) {
     if (e.metaKey || e.ctrlKey || e.shiftKey || e.altKey || e.button !== 0) {
      return;
     }
     e.preventDefault();
     stop();
     if (!target.hasAttribute('tabindex')) {
      target.setAttribute('tabindex', '-1');
     }
     if (target.focus) {
      target.focus({ preventScroll: true });
     }
     var reduce = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
     var start = window.pageYOffset || document.documentElement.scrollTop || 0;
     var dest = destination();
     if (window.history && window.history.pushState) {
      window.history.pushState(null, '', '#ixir-packages');
     }
     if (reduce || Math.abs(dest - start) < 2) {
      window.scrollTo(0, dest);
      return;
     }
     var distance = dest - start;
     var duration = Math.min(900, Math.max(420, Math.abs(distance) * 0.55));
     var t0 = null;

     function step(now) {
      if (t0 === null) {
       t0 = now;
      }
      var progress = Math.min(1, (now - t0) / duration);
      window.scrollTo(0, start + distance * easeOutCubic(progress));
      if (progress < 1) {
       frame = window.requestAnimationFrame(step);
      } else {
       frame = 0;
       window.scrollTo(0, destination());
      }
     }

     frame = window.requestAnimationFrame(step);
    });
   })();

   (function initIxirHeroStrip() {
    var strip = document.querySelector('.ixir-hero-strip');
    var track = document.getElementById('ixirHeroStripTrack');
    if (!strip || !track || !track.children.length) {
     return;
    }

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

    function build() {
     var keep = x;
     track.innerHTML = originalHTML;
     var baseWidth = track.scrollWidth;
     var need = Math.max(2, Math.ceil((strip.clientWidth * 2) / Math.max(baseWidth, 1)) + 1);
     var i;
     var html = originalHTML;
     for (i = 1; i < need; i++) {
      html += originalHTML;
     }
     track.innerHTML = html + html;
     setWidth = track.scrollWidth / 2;
     x = keep;
     applyTransform();
    }

    function wrap() {
     if (!setWidth) {
      return;
     }
     while (x <= -setWidth) {
      x += setWidth;
     }
     while (x > 0) {
      x -= setWidth;
     }
    }

    function applyTransform() {
     wrap();
     track.style.transform = 'translate3d(' + x + 'px,0,0)';
    }

    function tick() {
     if (!dragging && !paused && speed) {
      x -= speed;
      applyTransform();
     }
     window.requestAnimationFrame(tick);
    }

    function endDrag() {
     if (!dragging) {
      return;
     }
     dragging = false;
     strip.classList.remove('is-dragging');
     x += velocity * 10;
     applyTransform();
     window.clearTimeout(resumeTimer);
     resumeTimer = window.setTimeout(function() {
      if (!dragging) {
       paused = false;
      }
     }, 350);
    }

    strip.addEventListener('pointerdown', function(e) {
     if (e.pointerType === 'mouse' && e.button !== 0) {
      return;
     }
     dragging = true;
     paused = true;
     startX = e.clientX;
     startOffset = x;
     lastX = e.clientX;
     velocity = 0;
     strip.classList.add('is-dragging');
     if (strip.setPointerCapture) {
      strip.setPointerCapture(e.pointerId);
     }
     e.preventDefault();
    });
    strip.addEventListener('pointermove', function(e) {
     if (!dragging) {
      return;
     }
     velocity = e.clientX - lastX;
     lastX = e.clientX;
     x = startOffset + (e.clientX - startX);
     applyTransform();
    });
    strip.addEventListener('pointerup', endDrag);
    strip.addEventListener('pointercancel', endDrag);
    strip.addEventListener('pointerenter', function(e) {
     if (e.pointerType === 'mouse' && !dragging) {
      paused = true;
     }
    });
    strip.addEventListener('pointerleave', function(e) {
     if (e.pointerType === 'mouse' && !dragging) {
      paused = false;
     }
    });

    build();
    window.addEventListener('resize', build);
    window.addEventListener('load', build);
    window.requestAnimationFrame(tick);
   })();
  });
 {/literal}
</script>