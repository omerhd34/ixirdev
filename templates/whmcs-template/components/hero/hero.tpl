<section id="home-banner" class="ixir-hero">
 <picture class="ixir-hero-photo">
  <source srcset="{$WEB_ROOT}/templates/{$template}/img/hero-bg.webp" type="image/webp">
  <img src="{$WEB_ROOT}/templates/{$template}/img/hero-bg.jpg" alt="">
 </picture>
 <div class="container">
  <div class="ixir-hero-copy">
   <h1>Mükemmel Bir Domain İle Başlayın!</h1>
   <p>125 TL'den başlayan fiyatlarla mükemmel bir alan adına sahip olun!</p>
  </div>
  {if $registerdomainenabled || $transferdomainenabled}
  <form method="post" action="{$WEB_ROOT}/domain-sorgu" id="frmDomainHomepage" novalidate>
   <div class="ixir-domain-checker">
    <div class="ixir-dc-input">
     <span class="ixir-dc-icon" aria-hidden="true"><i class="fas fa-globe"></i></span>
     <label for="ixir-domain-query" class="sr-only">Alan adı sorgula</label>
     <input type="text" id="ixir-domain-query" class="form-control" name="domain" placeholder="Örneğin ixirhost.com"
      data-placeholder="Örneğin ixirhost.com" data-placeholder-sm="ixirhost.com"
      data-placeholder-error="Lütfen bir alan adı girin." autocapitalize="none" autocomplete="off" />
    </div>
    <div class="ixir-dc-button">
     {if $registerdomainenabled}
     <button type="submit" class="btn btn-primary btn-block search{$captcha->getButtonClass($captchaForm)}"><i
       class="fas fa-search" aria-hidden="true"></i> Sorgula</button>
     {else}
     <button type="submit" id="btnTransfer"
      class="btn btn-primary btn-block transfer{$captcha->getButtonClass($captchaForm)}"><i class="fas fa-exchange-alt"
       aria-hidden="true"></i> Transfer</button>
     {/if}
    </div>
   </div>
   <p class="ixir-dc-error" id="ixirDomainError" role="alert">Lütfen sorgulamak istediğiniz alan adını girin.</p>
  </form>
  {/if}
  <div class="ixir-domain-links-wrap" role="region" aria-label="Domain hizmetleri">
   <ul class="ixir-domain-links">
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
    <li><i class="far fa-eye-slash fa-fw" aria-hidden="true"></i>Ücretsiz Whois Gizleme</li>
    <li><i class="fas fa-server fa-fw" aria-hidden="true"></i>Ücretsiz DNS Yönetimi</li>
    <li><i class="fas fa-link fa-fw" aria-hidden="true"></i>Ücretsiz URL Yönlendirme</li>
    <li><i class="far fa-envelope fa-fw" aria-hidden="true"></i>Ücretsiz Mail Yönlendirme</li>
   </ul>
   <ul class="ixir-domain-links">
    <li><i class="fas fa-flag fa-fw" aria-hidden="true"></i><b>.TR</b> Kayıtları Başladı!</li>
    <li><i class="fas fa-bolt fa-fw" aria-hidden="true"></i>Belgesiz <b>.com.tr</b> Anında Tescil!</li>
    <li><i class="fas fa-check-circle fa-fw" aria-hidden="true"></i>Belgesiz <b>.net.tr</b> Anında Tescil!</li>
   </ul>
  </div>
 </div>
 <div class="ixir-domain-tlds" id="ixirDomainTlds">
  <div class="ixir-tld-track">
   <div class="ixir-tld" aria-label=".net, 855 TL yerine 655 TL">
    <span class="ixir-tld-name">.net</span>
    <span class="ixir-tld-prices">
     <del class="ixir-tld-old">855 TL</del>
     <span class="ixir-tld-new">655 TL</span>
    </span>
   </div>
   <div class="ixir-tld" aria-label=".pro, 1700 TL yerine 200 TL">
    <span class="ixir-tld-name">.pro</span>
    <span class="ixir-tld-prices">
     <del class="ixir-tld-old">1700 TL</del>
     <span class="ixir-tld-new">200 TL</span>
    </span>
   </div>
   <div class="ixir-tld" aria-label=".tr, 300 TL yerine 200 TL">
    <span class="ixir-tld-name">.tr</span>
    <span class="ixir-tld-prices">
     <del class="ixir-tld-old">300 TL</del>
     <span class="ixir-tld-new">200 TL</span>
    </span>
   </div>
   <div class="ixir-tld" aria-label=".xyz, 775 TL yerine 125 TL">
    <span class="ixir-tld-name">.xyz</span>
    <span class="ixir-tld-prices">
     <del class="ixir-tld-old">775 TL</del>
     <span class="ixir-tld-new">125 TL</span>
    </span>
   </div>
   <div class="ixir-tld" aria-label=".info, 1390 TL yerine 220 TL">
    <span class="ixir-tld-name">.info</span>
    <span class="ixir-tld-prices">
     <del class="ixir-tld-old">1390 TL</del>
     <span class="ixir-tld-new">220 TL</span>
    </span>
   </div>
   <div class="ixir-tld" aria-label=".net.tr, 200 TL yerine 150 TL">
    <span class="ixir-tld-name">.net.tr</span>
    <span class="ixir-tld-prices">
     <del class="ixir-tld-old">200 TL</del>
     <span class="ixir-tld-new">150 TL</span>
    </span>
   </div>
   <div class="ixir-tld" aria-label=".com.tr, 200 TL yerine 150 TL">
    <span class="ixir-tld-name">.com.tr</span>
    <span class="ixir-tld-prices">
     <del class="ixir-tld-old">200 TL</del>
     <span class="ixir-tld-new">150 TL</span>
    </span>
   </div>
   <div class="ixir-tld" aria-label=".com, 775 TL yerine 615 TL">
    <span class="ixir-tld-name">.com</span>
    <span class="ixir-tld-prices">
     <del class="ixir-tld-old">775 TL</del>
     <span class="ixir-tld-new">615 TL</span>
    </span>
   </div>
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
    if (window.innerWidth > 768) {
     hero.style.removeProperty('--ixir-hero-offset');
     return;
    }
    var top = Math.max(0, Math.round(hero.getBoundingClientRect().top + (window.pageYOffset || 0)));
    hero.style.setProperty('--ixir-hero-offset', top + 'px');
   }
   apply();
   window.addEventListener('resize', apply);
   window.addEventListener('load', apply);
   $(document).on('click', '.newsClose', function() {
    window.setTimeout(apply, 220);
   });
  })();

  (function initIxirTldCarousel() {
   var viewport = document.getElementById('ixirDomainTlds');
   if (!viewport) {
    return;
   }
   var track = viewport.querySelector('.ixir-tld-track');
   if (!track || !track.children.length) {
    return;
   }
   var html = track.innerHTML;
   track.innerHTML = html + html + html;
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
   var speed = reduceMotion ? 0 : 0.55;

   function measure() {
    setWidth = track.scrollWidth / 3;
    wrap();
    apply();
   }

   function wrap() {
    if (!setWidth) {
     return;
    }
    while (x <= -setWidth * 2) {
     x += setWidth;
    }
    while (x >= 0) {
     x -= setWidth;
    }
   }

   function apply() {
    wrap();
    track.style.transform = 'translate3d(' + x + 'px,0,0)';
   }

   function tick() {
    if (!dragging && !paused && speed) {
     x -= speed;
     apply();
    }
    window.requestAnimationFrame(tick);
   }

   function endDrag() {
    if (!dragging) {
     return;
    }
    dragging = false;
    viewport.classList.remove('is-dragging');
    x += velocity * 10;
    apply();
    window.clearTimeout(resumeTimer);
    resumeTimer = window.setTimeout(function() {
     if (!dragging) {
      paused = false;
     }
    }, 350);
   }

   viewport.addEventListener('pointerdown', function(e) {
    if (e.pointerType === 'mouse' && e.button !== 0) {
     return;
    }
    dragging = true;
    paused = true;
    startX = e.clientX;
    startOffset = x;
    lastX = e.clientX;
    velocity = 0;
    viewport.classList.add('is-dragging');
    viewport.setPointerCapture(e.pointerId);
    e.preventDefault();
   });
   viewport.addEventListener('pointermove', function(e) {
    if (!dragging) {
     return;
    }
    velocity = e.clientX - lastX;
    lastX = e.clientX;
    x = startOffset + (e.clientX - startX);
    apply();
   });
   viewport.addEventListener('pointerup', endDrag);
   viewport.addEventListener('pointercancel', endDrag);
   viewport.addEventListener('pointerenter', function(e) {
    if (e.pointerType === 'mouse' && !dragging) {
     paused = true;
    }
   });
   viewport.addEventListener('pointerleave', function(e) {
    if (e.pointerType === 'mouse' && !dragging) {
     paused = false;
    }
   });
   window.addEventListener('resize', measure);
   window.addEventListener('load', measure);
   window.setTimeout(measure, 50);
   measure();
   window.requestAnimationFrame(tick);
  })();

  (function initIxirDomainChecker() {
   var form = document.getElementById('frmDomainHomepage');
   var input = document.getElementById('ixir-domain-query');
   var error = document.getElementById('ixirDomainError');
   if (!form || !input || !error) {
    return;
   }
   var placeholderFull = input.getAttribute('data-placeholder') || input.getAttribute('placeholder');
   var placeholderSm = input.getAttribute('data-placeholder-sm') || 'ixirhost.com';
   var placeholderError = input.getAttribute('data-placeholder-error') || 'Lütfen bir alan adı girin.';

   function isSm() {
    return window.innerWidth <= 767;
   }

   function applyPlaceholder() {
    if (isSm() && form.classList.contains('ixir-dc-invalid')) {
     input.setAttribute('placeholder', placeholderError);
    } else {
     input.setAttribute('placeholder', isSm() ? placeholderSm : placeholderFull);
    }
   }

   function showError() {
    form.classList.remove('ixir-dc-shake');
    void form.offsetWidth;
    form.classList.add('ixir-dc-invalid', 'ixir-dc-shake');
    input.setAttribute('aria-invalid', 'true');
    applyPlaceholder();
    input.focus();
   }

   function hideError() {
    form.classList.remove('ixir-dc-invalid', 'ixir-dc-shake');
    input.removeAttribute('aria-invalid');
    applyPlaceholder();
   }

   applyPlaceholder();
   window.addEventListener('resize', applyPlaceholder);

   form.addEventListener('submit', function(e) {
    if (!$.trim(input.value)) {
     e.preventDefault();
     e.stopImmediatePropagation();
     showError();
    }
   }, true);

   $(input).on('input keydown', function() {
    if ($.trim(input.value)) {
     hideError();
    }
   });
  })();
 });
 {/literal}
</script>