<section id="home-banner" class="ixir-hero ixir-hero--webhosting" aria-label="Kurumsal Mail Hosting">
 <picture class="ixir-hero-photo ixir-hero-photo--mail">
  <img src="{$WEB_ROOT}/templates/{$template}/img/hosting/bg35.webp" alt="Kurumsal Mail Hosting">
 </picture>
 <div class="container">
  <div class="ixir-hero-main">
   <div class="ixir-hero-copy">
    <div class="ixir-badge-pill ixir-ssl-badge-pill"><i class="fas fa-at" aria-hidden="true"></i> KURUMSAL E-POSTA</div>
    <h1>Kurumsal Mail Hosting</h1>
    <p>Büyük ve Esnek Kapasiteli, Türkiye Merkezli, KVKK Uyumlu</p>
   </div>
   <div class="ixir-hero-actions">
    <a href="#ixir-wh-plans" class="ixir-hero-btn ixir-hero-btn--primary ixir-wh-plans-btn">
     Kurumsal Mail Hosting Paketleri <i class="fas fa-arrow-down" aria-hidden="true"></i>
    </a>
   </div>

    {assign var="features" value=[
      ['label' => 'Bulut E-posta Yapısı',         'icon' => 'fas fa-cloud'],
      ['label' => 'Tüm Cihazlardan Erişim',       'icon' => 'fas fa-mobile-alt'],
      ['label' => 'Kişiler',                      'icon' => 'fas fa-address-book'],
      ['label' => 'Takvimler',                    'icon' => 'fas fa-calendar-alt'],
      ['label' => 'Notlar',                       'icon' => 'fas fa-sticky-note'],
      ['label' => 'Video Konferans',              'icon' => 'fas fa-video'],
      ['label' => 'Anlık Mesajlaşma',             'icon' => 'fas fa-comments'],
      ['label' => '%100 KVKK Uyumlu',             'icon' => 'fas fa-user-shield'],
      ['label' => 'AI Destekli Anti-Spam',        'icon' => 'fas fa-robot']
    ]}
    {include file="$template/components/List.tpl" title="Özellikler" items=$features columns=3}
    
    {assign var="otherServices" value=[
       ['label' => 'Domain Sorgulama',            'icon' => 'fas fa-retweet',             'href' => 'domain-sorgu'],
       ['label' => 'Domain Transfer',             'icon' => 'fas fa-retweet',             'href' => 'domain-transfer'],
       ['label' => 'Whois Sorgulama',             'icon' => 'far fa-eye',                 'href' => 'whois-sorgulama'],
       ['label' => 'SSL Sertifikaları',           'icon' => 'far fa-lock',                'href' => 'ssl-sertifikalari'],
       ['label' => 'Site Pratik',                 'icon' => 'fas fa-globe',               'href' => 'site-pratik'],
       ['label' => 'Linux Hosting',               'icon' => 'fab fa-linux',               'href' => 'linux-hosting'],
       ['label' => 'Windows Hosting',             'icon' => 'fab fa-windows',             'href' => 'windows-hosting'],
       ['label' => 'Linux Reseller Hosting',      'icon' => 'fab fa-linux',               'href' => 'linux-reseller-hosting'],
       ['label' => 'Kurumsal Mail Server',        'icon' => 'fas fa-mail-bulk',           'href' => 'kurumsal-mail-server'],
       ['label' => 'Cloud Drive',                 'icon' => 'fas fa-cloud-upload-alt',    'href' => 'cloud-drive'],
       ['label' => 'Cloud Server',                'icon' => 'fas fa-cloud',               'href' => 'cloud-server'],
       ['label' => 'PCI Uyumluluk Hizmeti',       'icon' => 'fas fa-shield-alt',          'href' => 'pci-tarama']
     ]}
    {include file="$template/components/List.tpl" title="Diğer Hizmetler" items=$otherServices columns=3}
  </div>
 </div>
 <div class="ixir-hero-strip" aria-hidden="true">
  <div class="ixir-hero-strip-track" id="ixirHeroStripTrack">
   <span>Bulut E-posta Yapısı</span>
   <span>Tüm Cihazlardan Erişim</span>
   <span>Video Konferans</span>
   <span>Anlık Mesajlaşma</span>
   <span>%100 KVKK Uyumlu</span>
   <span>AI Destekli Anti-Spam</span>
   <span>Gelişmiş Paylaşımlı Takvim</span>
   <span>Ekip Yönetim Uygulamaları</span>
   <span>Ekip içi Mesajlaşma</span>
   <span>Gelişmiş Antivirüs</span>
   <span>%100 Exchange Uyumlu</span>
   <span>Kişiler</span>
   <span>Takvimler</span>
   <span>Notlar</span>
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
     var badge = plans.querySelector('.ixir-badge-pill.ixir-ssl-badge-pill') || plans;
     return Math.max(0, Math.round(badge.getBoundingClientRect().top + y - stickyBottom() - 20));
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