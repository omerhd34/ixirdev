<section class="ixir-next ixir-slide ixir-slide--left is-slide-on" id="ixir-next" aria-labelledby="ixir-next-title">
 <div class="container">
  <div class="ixir-next-panel">
   <h4 id="ixir-next-title">İxirNext ile Geleceğe Dokunuyoruz!</h4>
   <p><strong>İxirhost</strong> olarak 2005 yılından bu yana internet teknolojileri üretiyoruz. Bugün ise bu yolculuğun
    bir parçasını, internetin geleceğini inşa edecek çocuklara ve gençlere armağan ediyoruz.</p>
   <p><strong>İxirNext</strong> kapsamında hiçbir karşılık beklemeden üniversite öğrencilerine eğitim bursu sağlıyor;
    köy okulları başta olmak üzere ihtiyaç duyan okullara bilgisayar ve bilişim laboratuvarları kuruyor, robotik kodlama
    ve Arduino eğitim kitleri ulaştırıyor, okul kütüphanelerine kitap desteği veriyoruz.</p>
   <p>Bütün bunlar, yıllardır bize güvenen müşterilerimizin desteği sayesinde mümkün oluyor. Siz yalnızca bir hosting
    hizmeti satın almıyorsunuz; aynı zamanda daha fazla gencin teknolojiyle tanışmasına ve eğitimine katkı sağlayan bu
    yolculuğun da bir parçası oluyorsunuz.</p>
   <p>Eğer üniversite öğrencisiyseniz ve burs desteğine ihtiyaç duyuyorsanız veya okulunuz için teknoloji ya da
    kütüphane desteği talep etmek istiyorsanız, başvurunuzu birkaç dakika içinde iletebilirsiniz. Tüm başvurular
    gizlilik içinde değerlendirilir; hiçbir karşılık veya yükümlülük beklenmez.</p>
   <a class="ixir-next-cta" href="https://ixirnext.tr" target="_blank" rel="noopener">Başvuru</a>
  </div>
 </div>
</section>
<script>
 {literal}
  (function() {
   var root = document.getElementById('ixir-next');
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

  function initSlides() {
   var nodes = document.querySelectorAll('.ixir-slide');
   if (!nodes.length) return;
   var reduce = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
   if (reduce || !window.IntersectionObserver) {
    Array.prototype.forEach.call(nodes, function(node) {
     node.classList.add('is-slide-on', 'is-slide-in');
    });
    return;
   }
   Array.prototype.forEach.call(nodes, function(node) {
    node.classList.add('is-slide-on');
   });

   function hide(el) {
    if (!el.classList.contains('is-slide-in')) return;
    el.classList.add('is-slide-reset');
    el.classList.remove('is-slide-in');
    el.style.transitionDelay = '';
   }

   function show(el, delay) {
    if (el.classList.contains('is-slide-in')) return;
    el.classList.add('is-slide-reset');
    el.classList.remove('is-slide-in');
    void el.offsetWidth;
    el.style.transitionDelay = delay ? delay + 'ms' : '';
    el.classList.remove('is-slide-reset');
    el.classList.add('is-slide-in');
   }

   var enter = new IntersectionObserver(function(entries) {
    var batch = [];
    entries.forEach(function(entry) {
     if (!entry.isIntersecting) return;
     if (entry.target.classList.contains('is-slide-in')) return;
     batch.push(entry.target);
    });
    batch.sort(function(a, b) {
     return a.compareDocumentPosition(b) & Node.DOCUMENT_POSITION_FOLLOWING ? -1 : 1;
    });
    batch.forEach(function(el, index) {
     show(el, index * 90);
    });
   }, {
    threshold: 0,
    rootMargin: '-10% 0px -10% 0px'
   });

   var leave = new IntersectionObserver(function(entries) {
    entries.forEach(function(entry) {
     if (entry.isIntersecting) return;
     hide(entry.target);
    });
   }, {
    threshold: 0
   });

   Array.prototype.forEach.call(nodes, function(node) {
    enter.observe(node);
    leave.observe(node);
   });
  }
  if (document.readyState === 'loading') {
   document.addEventListener('DOMContentLoaded', initSlides);
  } else {
   initSlides();
  }
 {/literal}
</script>