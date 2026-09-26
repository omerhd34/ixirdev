<script>
 {literal}
  (function() {
   function prepareSlides() {
    var content = document.querySelector('.ixir-corp-content');
    if (!content) return;
    Array.prototype.forEach.call(content.children, function(el, index) {
     if (el.classList.contains('ixir-slide')) return;
     el.classList.add(
      'ixir-slide',
      index % 2 === 0 ? 'ixir-slide--left' : 'ixir-slide--right',
      'is-slide-on'
     );
    });
   }

   function initSlides() {
    prepareSlides();
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
      show(el, index * 140);
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
  })();
 {/literal}
</script>