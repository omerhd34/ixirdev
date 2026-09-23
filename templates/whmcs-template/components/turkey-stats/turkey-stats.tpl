<section class="ixir-stats" id="ixir-stats" aria-label="Türkiye tercih istatistikleri">
 <div class="container">
  <div class="ixir-stats-stage">
   <picture class="ixir-stats-map">
    <source srcset="{$WEB_ROOT}/templates/{$template}/img/turkey-stats/turkey-map.webp" type="image/webp">
    <img src="{$WEB_ROOT}/templates/{$template}/img/turkey-stats/turkey-map.jpg" alt="Türkiye haritası" width="816"
     height="343" decoding="async">
   </picture>
   <h2>
    <span class="ixir-stats-heading">
     Türkiye Bizi Tercih Ediyor!
    </span>
   </h2>
   <ul class="ixir-stats-grid">
    <li>
     <strong data-to="22000" data-suffix="+">22.000+</strong>
     <span>Müşteri</span>
    </li>
    <li>
     <strong data-to="10000" data-suffix="+">10.000+</strong>
     <span>Web Sitesi</span>
    </li>
    <li>
     <strong data-to="20000" data-suffix="+">20.000+</strong>
     <span>Domain</span>
    </li>
    <li>
     <strong data-to="99.9" data-prefix="%" data-decimals="1">%99.9</strong>
     <span>Müşteri Memnuniyeti</span>
    </li>
   </ul>
  </div>
 </div>
</section>
<script>
 {literal}
  (function() {
   var root = document.getElementById('ixir-stats');
   if (!root) {
    return;
   }
   var values = root.querySelectorAll('.ixir-stats-grid strong[data-to]');
   var reduceMotion = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;

   function formatValue(n, decimals) {
    if (decimals) {
     return Number(n).toFixed(decimals);
    }
    return String(Math.round(n)).replace(/\B(?=(\d{3})+(?!\d))/g, '.');
   }

   function paint(el, n) {
    var prefix = el.getAttribute('data-prefix') || '';
    var suffix = el.getAttribute('data-suffix') || '';
    var decimals = parseInt(el.getAttribute('data-decimals') || '0', 10);
    el.textContent = prefix + formatValue(n, decimals) + suffix;
   }

   function countUp() {
    var duration = 1600;
    var start = null;

    function frame(now) {
     if (start === null) {
      start = now;
     }
     var t = Math.min(1, (now - start) / duration);
     var eased = 1 - Math.pow(1 - t, 3);
     values.forEach(function(el) {
      paint(el, parseFloat(el.getAttribute('data-to')) * eased);
     });
     if (t < 1) {
      window.requestAnimationFrame(frame);
      return;
     }
     values.forEach(function(el) {
      paint(el, parseFloat(el.getAttribute('data-to')));
     });
    }
    window.requestAnimationFrame(frame);
   }

   if (reduceMotion || !window.IntersectionObserver) {
    return;
   }

   values.forEach(function(el) {
    paint(el, 0);
   });
   root.classList.add('is-armed');
   var started = false;
   var observer = new IntersectionObserver(function(entries) {
    entries.forEach(function(entry) {
     if (!entry.isIntersecting || started) {
      return;
     }
     started = true;
     observer.disconnect();
     window.requestAnimationFrame(function() {
      window.requestAnimationFrame(function() {
       root.classList.add('is-in');
       window.setTimeout(countUp, 160);
       window.setTimeout(function() {
        root.classList.remove('is-armed');
       }, 1300);
      });
     });
    });
   }, {
    threshold: 0.18,
    rootMargin: '0px 0px -6% 0px'
   });
   observer.observe(root);
  })();
 {/literal}
</script>