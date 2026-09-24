<div id="order-standard_cart" class="ixir-domain-page">
 <section id="home-banner" class="ixir-hero">
  <picture class="ixir-hero-photo">
   <source srcset="{$WEB_ROOT}/templates/{$template}/img/hero-whois.webp?v=r2" type="image/webp">
   <img src="{$WEB_ROOT}/templates/{$template}/img/hero-whois.jpg?v=r2" alt="">
  </picture>
  <div class="container">
   <div class="ixir-hero-main">
    <div class="ixir-hero-copy">
     <h1>Whois Domain Sorgulama</h1>
     <p>Alan adının sahiplik bilgilerini ücretsiz ve anında sorgulayın.</p>
    </div>
    <form method="post" action="{$WEB_ROOT}/whois-sorgulama"
     class="ixir-whois-form{if $ixirWhoisInvalid} ixir-dc-invalid{/if}" id="frmWhoisChecker" novalidate>
     <input type="hidden" name="token" value="{$token}" />
     <div class="ixir-domain-checker">
      <div class="ixir-dc-input">
       <span class="ixir-dc-icon" aria-hidden="true"><i class="fas fa-globe"></i></span>
       <label for="ixir-whois-domain" class="sr-only">Alan adı</label>
       <input type="text" id="ixir-whois-domain" class="form-control" name="domain" value="{$ixirWhoisDomain|escape}"
        placeholder="Bir alan adı yazınız (örn: ixirhost.com)"
        data-placeholder="Bir alan adı yazınız (örn: ixirhost.com)" data-placeholder-error="Lütfen bir alan adı girin."
        autocapitalize="none" autocomplete="off" spellcheck="false" />
      </div>
      <div class="ixir-dc-button">
       <button type="submit" class="btn btn-primary btn-block search">
        <i class="fas fa-search" aria-hidden="true"></i> Sorgula
       </button>
      </div>
     </div>
     <p class="ixir-whois-field-error" id="ixir-whois-field-error" role="alert" {if !$ixirWhoisInvalid} hidden{/if}>
      <i class="fas fa-exclamation-circle" aria-hidden="true"></i>
      <span>Lütfen geçerli bir alan adı girin. Örneğin: <b>ixirhost.com</b></span>
     </p>
    </form>
    <div class="ixir-domain-links-wrap" role="region" aria-label="Domain hizmetleri">
     <p class="ixir-domain-links-title">Hizmetler</p>
     <ul class="ixir-domain-links">
      <li>
       <a href="{$WEB_ROOT}/domain-sorgu" title="Domain Sorgulama">
        <i class="far fa-eye fa-fw" aria-hidden="true"></i><span>Domain Sorgulama</span>
       </a>
      </li>
      <li>
       <a href="{$WEB_ROOT}/domain-transfer" title="Domain Transfer">
        <i class="fas fa-retweet fa-fw" aria-hidden="true"></i><span>Domain Transfer</span>
       </a>
      </li>
      <li><i class="fas fa-server fa-fw" aria-hidden="true"></i>Ücretsiz DNS Yönetimi</li>
     </ul>
     <ul class="ixir-domain-links">
      <li><i class="far fa-eye-slash fa-fw" aria-hidden="true"></i>Ücretsiz Whois Gizleme</li>
      <li><i class="fas fa-link fa-fw" aria-hidden="true"></i>Ücretsiz URL Yönlendirme</li>
      <li><i class="far fa-envelope fa-fw" aria-hidden="true"></i>Ücretsiz Mail Yönlendirme</li>
     </ul>
     <ul class="ixir-domain-links">
      <li><i class="fas fa-flag fa-fw" aria-hidden="true"></i>.TR Kayıtları Başladı!</li>
      <li><i class="fas fa-bolt fa-fw" aria-hidden="true"></i>Belgesiz .com.tr Tescil!</li>
      <li><i class="fas fa-check-circle fa-fw" aria-hidden="true"></i>Belgesiz .net.tr Tescil!</li>
     </ul>
    </div>
   </div>
  </div>
  <div class="ixir-domain-tlds" id="ixirDomainTlds" aria-label="İndirimli uzantılar">
   <div class="ixir-tld-track">
    <div class="ixir-tld" aria-label=".net, 855 TL yerine 655 TL, yüzde 23 indirim">
     <span class="ixir-tld-off">%23</span>
     <span class="ixir-tld-name">.net</span>
     <span class="ixir-tld-prices">
      <del class="ixir-tld-old">855 TL</del>
      <span class="ixir-tld-new">655 TL</span>
     </span>
    </div>
    <div class="ixir-tld" aria-label=".pro, 1700 TL yerine 200 TL, yüzde 88 indirim">
     <span class="ixir-tld-off">%88</span>
     <span class="ixir-tld-name">.pro</span>
     <span class="ixir-tld-prices">
      <del class="ixir-tld-old">1700 TL</del>
      <span class="ixir-tld-new">200 TL</span>
     </span>
    </div>
    <div class="ixir-tld" aria-label=".tr, 300 TL yerine 200 TL, yüzde 33 indirim">
     <span class="ixir-tld-off">%33</span>
     <span class="ixir-tld-name">.tr</span>
     <span class="ixir-tld-prices">
      <del class="ixir-tld-old">300 TL</del>
      <span class="ixir-tld-new">200 TL</span>
     </span>
    </div>
    <div class="ixir-tld" aria-label=".xyz, 775 TL yerine 125 TL, yüzde 84 indirim">
     <span class="ixir-tld-off">%84</span>
     <span class="ixir-tld-name">.xyz</span>
     <span class="ixir-tld-prices">
      <del class="ixir-tld-old">775 TL</del>
      <span class="ixir-tld-new">125 TL</span>
     </span>
    </div>
    <div class="ixir-tld" aria-label=".info, 1390 TL yerine 220 TL, yüzde 84 indirim">
     <span class="ixir-tld-off">%84</span>
     <span class="ixir-tld-name">.info</span>
     <span class="ixir-tld-prices">
      <del class="ixir-tld-old">1390 TL</del>
      <span class="ixir-tld-new">220 TL</span>
     </span>
    </div>
    <div class="ixir-tld" aria-label=".net.tr, 200 TL yerine 150 TL, yüzde 25 indirim">
     <span class="ixir-tld-off">%25</span>
     <span class="ixir-tld-name">.net.tr</span>
     <span class="ixir-tld-prices">
      <del class="ixir-tld-old">200 TL</del>
      <span class="ixir-tld-new">150 TL</span>
     </span>
    </div>
    <div class="ixir-tld" aria-label=".com.tr, 200 TL yerine 150 TL, yüzde 25 indirim">
     <span class="ixir-tld-off">%25</span>
     <span class="ixir-tld-name">.com.tr</span>
     <span class="ixir-tld-prices">
      <del class="ixir-tld-old">200 TL</del>
      <span class="ixir-tld-new">150 TL</span>
     </span>
    </div>
    <div class="ixir-tld" aria-label=".com, 775 TL yerine 615 TL, yüzde 21 indirim">
     <span class="ixir-tld-off">%21</span>
     <span class="ixir-tld-name">.com</span>
     <span class="ixir-tld-prices">
      <del class="ixir-tld-old">775 TL</del>
      <span class="ixir-tld-new">615 TL</span>
     </span>
    </div>
   </div>
  </div>
 </section>
</div>
<section class="ixir-whois-page">
 <div class="container">
  {if $ixirWhoisError && !$ixirWhoisInvalid}
   <div class="ixir-whois-alert ixir-whois-alert--error" role="alert">{$ixirWhoisError|escape}</div>
  {elseif $ixirWhoisStatus == 'available'}
   <div class="ixir-whois-alert ixir-whois-alert--ok" role="status">
    <strong>{$ixirWhoisDomain|escape}</strong> kayıtlı değil, tescil edilebilir.
    <a href="{$WEB_ROOT}/domain-sorgu">Hemen kaydet</a>
   </div>
  {elseif $ixirWhoisStatus != '' && !$ixirWhoisParsed}
   <div class="ixir-whois-alert ixir-whois-alert--taken" role="status">
    <strong>{$ixirWhoisDomain|escape}</strong> kayıtlı bir domain.
   </div>
  {/if}

  {if $ixirWhoisParsed}
   <article class="ixir-whois-card" id="ixir-whois-kayit">
    <header class="ixir-whois-card-head">
     <div class="ixir-whois-card-ident">
      <span class="ixir-whois-card-mark" aria-hidden="true"><i class="fas fa-globe"></i></span>
      <div>
       <p class="ixir-whois-card-kicker">WHOIS kaydı</p>
       <h2>{$ixirWhoisParsed.domain|escape}</h2>
      </div>
     </div>
     {if $ixirWhoisStatus == 'available'}
      <span class="ixir-whois-badge ixir-whois-badge--free">Müsait</span>
     {else}
      <span class="ixir-whois-badge ixir-whois-badge--taken">Kayıtlı</span>
     {/if}
    </header>

    <div class="ixir-whois-stats">
     {if $ixirWhoisParsed.registrar}
      <div class="ixir-whois-stat">
       <span>Kayıt firması</span>
       <strong>{$ixirWhoisParsed.registrar|escape}</strong>
      </div>
     {/if}
     {if $ixirWhoisParsed.created}
      <div class="ixir-whois-stat">
       <span>Kayıt tarihi</span>
       <strong>{$ixirWhoisParsed.created|escape}</strong>
      </div>
     {/if}
     {if $ixirWhoisParsed.expires}
      <div class="ixir-whois-stat">
       <span>Bitiş tarihi</span>
       <strong>{$ixirWhoisParsed.expires|escape}</strong>
       {if $ixirWhoisParsed.expiresNote}<em>{$ixirWhoisParsed.expiresNote|escape}</em>{/if}
      </div>
     {/if}
     {if $ixirWhoisParsed.updated}
      <div class="ixir-whois-stat">
       <span>Son güncelleme</span>
       <strong>{$ixirWhoisParsed.updated|escape}</strong>
      </div>
     {/if}
     {if $ixirWhoisParsed.dnssec}
      <div class="ixir-whois-stat">
       <span>DNSSEC</span>
       <strong>{$ixirWhoisParsed.dnssec|escape}</strong>
      </div>
     {/if}
    </div>

    {if $ixirWhoisParsed.nameservers}
     <div class="ixir-whois-block">
      <h3>Ad sunucuları</h3>
      <ul class="ixir-whois-chips">
       {foreach $ixirWhoisParsed.nameservers as $ns}
        <li>{$ns|escape}</li>
       {/foreach}
      </ul>
     </div>
    {/if}

    {if $ixirWhoisParsed.statuses}
     <div class="ixir-whois-block">
      <h3>Kayıt durumu</h3>
      <ul class="ixir-whois-chips ixir-whois-chips--status">
       {foreach $ixirWhoisParsed.statuses as $st}
        <li>{$st.label|escape}</li>
       {/foreach}
      </ul>
     </div>
    {/if}

    {if $ixirWhoisParsed.registryId || $ixirWhoisParsed.abuseEmail || $ixirWhoisParsed.abusePhone || $ixirWhoisParsed.registrarUrl}
     <dl class="ixir-whois-meta">
      {if $ixirWhoisParsed.registryId}
       <div>
        <dt>Kayıt numarası</dt>
        <dd>{$ixirWhoisParsed.registryId|escape}</dd>
       </div>
      {/if}
      {if $ixirWhoisParsed.registrarUrl}
       <div>
        <dt>Kayıt firması sitesi</dt>
        <dd><a href="{$ixirWhoisParsed.registrarUrl|escape}" rel="noopener noreferrer"
          target="_blank">{$ixirWhoisParsed.registrarUrl|escape}</a></dd>
       </div>
      {/if}
      {if $ixirWhoisParsed.abuseEmail}
       <div>
        <dt>Kötüye kullanım e-postası</dt>
        <dd><a href="mailto:{$ixirWhoisParsed.abuseEmail|escape}">{$ixirWhoisParsed.abuseEmail|escape}</a></dd>
       </div>
      {/if}
      {if $ixirWhoisParsed.abusePhone}
       <div>
        <dt>Kötüye kullanım telefonu</dt>
        <dd>{$ixirWhoisParsed.abusePhone|escape}</dd>
       </div>
      {/if}
     </dl>
    {/if}

    {if $ixirWhoisParsed.privacy}
     <p class="ixir-whois-privacy"><i class="fas fa-lock" aria-hidden="true"></i> Sahiplik bilgileri gizlenmiş.</p>
    {/if}

    <div class="ixir-whois-card-actions">
     {if $ixirWhoisStatus == 'available'}
      <a class="ixir-whois-action ixir-whois-action--primary" href="{$WEB_ROOT}/domain-sorgu">Hemen kaydet</a>
     {else}
      <a class="ixir-whois-action"
       href="{$WEB_ROOT}/domain-transfer?query={$ixirWhoisParsed.domain|escape:'url'}">Transfer et</a>
     {/if}
    </div>

    {if $ixirWhoisResult}
     <details class="ixir-whois-raw">
      <summary>Ham WHOIS kaydı</summary>
      <pre>{$ixirWhoisResult|escape}</pre>
     </details>
    {/if}
   </article>
  {elseif $ixirWhoisResult}
   <div class="ixir-whois-result">
    <h2>WHOIS sonuçları</h2>
    <pre>{$ixirWhoisResult|escape}</pre>
   </div>
  {/if}

  <div class="ixir-whois-guide">
   <div class="ixir-whois-intro">
    <h2>Ücretsiz Whois Sorgulama</h2>
    <p>Alan adının sahibini merak ediyor veya sahibi ile iletişime geçmek istiyorsanız, hemen bir alan adı
     sorgulayabilir ve sonuçlara göz atabilirsiniz.</p>
   </div>
   <div class="ixir-whois-cols">
    <article class="ixir-whois-col">
     <div class="ixir-whois-col-head">
      <span class="ixir-whois-col-icon" aria-hidden="true"><i class="far fa-eye"></i></span>
      <h3>Whois Sorgulama Neden Yapılır?</h3>
     </div>
     <p>Whois, kayıtlı bir alan adının sahiplik kaydıdır. Sorgulama ile bu kayda bakılır.</p>
     <ul class="ixir-whois-points">
      <li>Alan adının kime ait olduğu görülür.</li>
      <li>Sahibiyle iletişime geçilebilir.</li>
      <li>Kaydı yapan firma (registrar) öğrenilir.</li>
     </ul>
    </article>
    <article class="ixir-whois-col">
     <div class="ixir-whois-col-head">
      <span class="ixir-whois-col-icon ixir-whois-col-icon--lock" aria-hidden="true"><i class="fas fa-lock"></i></span>
      <h3>Whois Gizleme Neden Gereklidir?</h3>
     </div>
     <p>Sahiplik bilgilerinizin herkese açık görünmesini istemiyorsanız gizlemeyi açabilirsiniz.</p>
     <ul class="ixir-whois-points">
      <li>Ad, e-posta ve telefon bilgileri gizlenir.</li>
      <li>Spam ve dolandırıcılık amaçlı iletiler azalır.</li>
      <li>Müşteri panelinden anında açılıp kapatılır.</li>
     </ul>
    </article>
   </div>
  </div>
 </div>
</section>
<script>
 {literal}
  (function() {
   var form = document.getElementById('frmWhoisChecker');
   var input = document.getElementById('ixir-whois-domain');
   if (!form || !input) {
    return;
   }

   function clearIfReload() {
    var nav = performance.getEntriesByType && performance.getEntriesByType('navigation')[0];
    var reloaded = (nav && nav.type === 'reload') || (performance.navigation && performance.navigation.type === 1);
    if (!reloaded) {
     return;
    }
    input.value = '';
    input.setAttribute('placeholder', input.getAttribute('data-placeholder') || '');
    var page = document.querySelector('.ixir-whois-page');
    if (!page) {
     return;
    }
    var nodes = page.querySelectorAll('.ixir-whois-alert, .ixir-whois-card, .ixir-whois-result');
    var i;
    for (i = 0; i < nodes.length; i++) {
     nodes[i].parentNode.removeChild(nodes[i]);
    }
   }
   clearIfReload();
   window.addEventListener('pageshow', clearIfReload);
   window.addEventListener('load', function() {
    window.setTimeout(clearIfReload, 0);
   });
   var hint = document.getElementById('ixir-whois-field-error');
   var placeholder = input.getAttribute('data-placeholder') || input.getAttribute('placeholder') || '';
   var placeholderError = input.getAttribute('data-placeholder-error') || 'Lütfen bir alan adı girin.';

   function empty() {
    return !String(input.value || '').replace(/^\s+|\s+$/g, '');
   }

   function normalize(value) {
    return String(value || '').replace(/^\s+|\s+$/g, '').toLowerCase()
     .replace(/^https?:\/\//, '')
     .replace(/^www\./, '')
     .replace(/[/?#].*$/, '')
     .replace(/\s+/g, '')
     .replace(/^\.+|\.+$/g, '');
   }

   function valid() {
    return /^(?:[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?\.)+[a-z]{2,63}$/i.test(normalize(input.value));
   }

   function shake() {
    form.classList.remove('ixir-dc-shake');
    void form.offsetWidth;
    form.classList.add('ixir-dc-invalid', 'ixir-dc-shake');
    input.setAttribute('aria-invalid', 'true');
   }

   function hide() {
    form.classList.remove('ixir-dc-invalid', 'ixir-dc-shake');
    input.setAttribute('placeholder', placeholder);
    input.removeAttribute('aria-invalid');
    if (hint) {
     hint.hidden = true;
    }
   }

   function showEmpty() {
    if (hint) {
     hint.hidden = true;
    }
    input.value = '';
    shake();
    input.setAttribute('placeholder', placeholderError);
    input.focus();
   }

   function showInvalid() {
    shake();
    input.setAttribute('placeholder', placeholder);
    if (hint) {
     hint.hidden = false;
    }
    input.focus();
   }

   input.addEventListener('input', function() {
    if (empty() || valid()) {
     hide();
    }
   });

   form.addEventListener('submit', function(e) {
    if (empty()) {
     e.preventDefault();
     e.stopPropagation();
     showEmpty();
     return;
    }
    if (!valid()) {
     e.preventDefault();
     e.stopPropagation();
     showInvalid();
    }
   }, true);
  })();

  (function() {
   var target = document.getElementById('ixir-whois-kayit') || document.querySelector(
    '.ixir-whois-alert, .ixir-whois-result');
   if (!target) {
    return;
   }
   var nav = performance.getEntriesByType && performance.getEntriesByType('navigation')[0];
   var reloaded = (nav && nav.type === 'reload') || (performance.navigation && performance.navigation.type === 1);
   if (reloaded) {
    return;
   }

   function go() {
    var spacer = document.querySelector('.ixir-header-spacer');
    var offset = spacer ? spacer.getBoundingClientRect().height : 0;
    var top = target.getBoundingClientRect().top + (window.pageYOffset || window.scrollY || 0) - offset - 20;
    window.scrollTo({
     top: Math.max(0, top),
     behavior: 'smooth'
    });
   }
   window.addEventListener('load', function() {
    window.setTimeout(go, 80);
   });
  })();

  (function() {
   var viewport = document.getElementById('ixirDomainTlds');
   if (!viewport) {
    return;
   }
   var track = viewport.querySelector('.ixir-tld-track');
   if (!track || !track.children.length) {
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
    var need = Math.max(2, Math.ceil((viewport.clientWidth * 2) / Math.max(baseWidth, 1)) + 1);
    var i;
    var html = originalHTML;
    for (i = 1; i < need; i++) {
     html += originalHTML;
    }
    track.innerHTML = html + html;
    setWidth = track.scrollWidth / 2;
    x = keep;
    apply();
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
    if (viewport.setPointerCapture) {
     viewport.setPointerCapture(e.pointerId);
    }
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
   window.addEventListener('resize', build);
   window.addEventListener('load', build);
   build();
   window.requestAnimationFrame(tick);
  })();
 {/literal}
</script>