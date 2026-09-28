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
   <article class="ixir-whois-card ixir-slide ixir-slide--left is-slide-on" id="ixir-whois-kayit">
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

  <div class="ixir-whois-guide ixir-slide ixir-slide--right is-slide-on" id="ixir-whois-guide">
   <div class="ixir-whois-intro">
    <h2>Ücretsiz Whois Sorgulama</h2>
    <p>Domain'inin sahibini merak ediyor veya sahibi ile iletişime geçmek istiyorsanız, hemen bir domain
     sorgulayabilir ve sonuçlara göz atabilirsiniz.</p>
   </div>
   <div class="ixir-whois-cols">
    <article class="ixir-whois-col">
     <div class="ixir-whois-col-head">
      <span class="ixir-whois-col-icon" aria-hidden="true"><i class="far fa-eye"></i></span>
      <h3>Whois Sorgulama Neden Yapılır?</h3>
     </div>
     <p>Whois, kayıtlı bir domain'inin sahiplik kaydıdır. Sorgulama ile bu kayda bakılır.</p>
     <ul class="ixir-whois-points">
      <li>Domain'inin kime ait olduğu görülür.</li>
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
  var root = document.getElementById('ixir-whois-guide');
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
<script>
 {literal}
 (function() {
  var form = document.getElementById('frmWhoisChecker');
  var input = document.getElementById('ixir-whois-domain');
  if (!form || !input) {
   return;
  }

  function isReload() {
   var nav = performance.getEntriesByType && performance.getEntriesByType('navigation')[0];
   return (nav && nav.type === 'reload') || (performance.navigation && performance.navigation.type === 1);
  }

  function clearIfReload() {
   if (!isReload()) {
    return;
   }
   input.value = '';
   input.setAttribute('placeholder', input.getAttribute('data-placeholder') || '');
   var nodes = document.querySelectorAll('.ixir-whois-alert, .ixir-whois-card, .ixir-whois-result');
   var i;
   for (i = 0; i < nodes.length; i++) {
    if (nodes[i].parentNode) {
     nodes[i].parentNode.removeChild(nodes[i]);
    }
   }
  }
  clearIfReload();
  window.addEventListener('pageshow', function(e) {
   if (e.persisted || isReload()) {
    clearIfReload();
   }
  });
  var hint = document.getElementById('ixir-whois-field-error');
  var placeholder = input.getAttribute('data-placeholder') || input.getAttribute('placeholder') || '';
  var placeholderError = input.getAttribute('data-placeholder-error') || 'Lütfen bir domain girin.';

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