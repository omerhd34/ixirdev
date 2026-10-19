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
    var nodes = Array.prototype.slice.call(document.querySelectorAll('.ixir-slide'));
    if (!nodes.length) return;

    var reduce = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
    if (reduce) {
     nodes.forEach(function(node) {
      node.classList.add('is-slide-on', 'is-slide-in');
     });
     return;
    }

    nodes.forEach(function(node) {
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
     el.classList.remove('is-slide-reset');
     void el.offsetWidth;
     el.style.transitionDelay = delay ? delay + 'ms' : '';
     el.classList.add('is-slide-in');
    }

    var lastY = window.pageYOffset || document.documentElement.scrollTop || 0;
    var scrollDirection = 'down';
    var ticking = false;

    function checkSlides() {
     var currentY = window.pageYOffset || document.documentElement.scrollTop || 0;
     var delta = currentY - lastY;
     if (Math.abs(delta) > 1) {
      scrollDirection = delta > 0 ? 'down' : 'up';
      lastY = currentY;
     }

     var vh = window.innerHeight || document.documentElement.clientHeight || 0;
     var header = document.querySelector('.ixir-header') || document.querySelector('.mobile-header') || document.querySelector('.header');
     var headerH = header ? header.offsetHeight : 113;
     var topTrigger = headerH + 10;
     var bottomTrigger = vh - 60;
     var upShowTrigger = headerH + 60;

     var toShow = [];

     nodes.forEach(function(el) {
      var rect = el.getBoundingClientRect();
      var isAbove = rect.bottom <= topTrigger;
      var isBelow = rect.top >= vh;

      if (scrollDirection === 'down') {
       if (isAbove) {
        hide(el);
       } else if (rect.top <= bottomTrigger && rect.bottom > topTrigger) {
        if (!el.classList.contains('is-slide-in')) {
         toShow.push(el);
        }
       }
      } else {
       if (isBelow) {
        hide(el);
       } else if (rect.bottom >= upShowTrigger && rect.top <= bottomTrigger) {
        if (!el.classList.contains('is-slide-in')) {
         toShow.push(el);
        }
       }
      }
     });

     if (toShow.length) {
      if (scrollDirection === 'up') {
       toShow.reverse();
      }
      toShow.forEach(function(el, i) {
       show(el, i * 100);
      });
     }
    }

    function onScroll() {
     if (!ticking) {
      ticking = true;
      window.requestAnimationFrame(function() {
       checkSlides();
       ticking = false;
      });
     }
    }

    window.addEventListener('scroll', onScroll, { passive: true });
    window.addEventListener('resize', onScroll, { passive: true });
    window.addEventListener('orientationchange', onScroll, { passive: true });
    window.ixirRefreshSlides = checkSlides;

    checkSlides();
    setTimeout(checkSlides, 200);
    setTimeout(checkSlides, 800);
   }

   if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initSlides);
   } else {
    initSlides();
   }
  })();
 {/literal}
</script>