<section class="ixir-stats ixir-slide ixir-slide--right is-slide-on" id="ixir-stats"
 aria-label="Türkiye tercih istatistikleri">
 <div class="container">
  <div class="ixir-stats-stage">
   <div class="pci-aud-badge"><span class="pci-aud-badge-dot"></span> 20 YILLIK TECRÜBE &amp; LİDER PERFORMANS</div>
   {include file="$template/components/Heading.tpl" title="Türkiye Bizi Tercih Ediyor!" class="ixir-stats-heading"}
   <picture class="ixir-stats-map">
    <source srcset="{$WEB_ROOT}/templates/{$template}/img/turkey-stats/turkey-map.webp" type="image/webp">
    <img src="{$WEB_ROOT}/templates/{$template}/img/turkey-stats/turkey-map.jpg" alt="İXİRHOST Türkiye" width="3600"
     height="1500" decoding="async">
   </picture>
   <ul class="ixir-stats-grid">
    <li class="ixir-stat-card">
     <div class="ixir-stat-icon-wrap"><i class="fas fa-users"></i></div>
     <strong data-to="22000" data-suffix="+">22.000+</strong>
     <span>Müşteri</span>
    </li>
    <li class="ixir-stat-card">
     <div class="ixir-stat-icon-wrap"><i class="fas fa-globe"></i></div>
     <strong data-to="10000" data-suffix="+">10.000+</strong>
     <span>Web Sitesi</span>
    </li>
    <li class="ixir-stat-card">
     <div class="ixir-stat-icon-wrap"><i class="fas fa-layer-group"></i></div>
     <strong data-to="20000" data-suffix="+">20.000+</strong>
     <span>Domain</span>
    </li>
    <li class="ixir-stat-card">
     <div class="ixir-stat-icon-wrap"><i class="fas fa-smile-beam"></i></div>
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
    threshold: 0
   });
   observer.observe(root);
  })();
 {/literal}
</script>