<script>
 {literal}
  (function() {
   var list = document.querySelector('.ixir-wh-faq-list');
   if (!list) return;
   Array.prototype.forEach.call(list.querySelectorAll('.ixir-wh-faq-q'), function(btn) {
    btn.addEventListener('click', function() {
     var item = btn.parentNode;
     var open = item.classList.toggle('is-open');
     btn.setAttribute('aria-expanded', open ? 'true' : 'false');
    });
   });
  })();
  (function() {
   function reveal(rootSelector, itemSelector, settleDelay, threshold) {
    Array.prototype.forEach.call(document.querySelectorAll(rootSelector + '.is-armed'), function(root) {
     if (!window.IntersectionObserver) {
      root.classList.remove('is-armed');
      return;
     }
     var nodes = root.querySelectorAll(itemSelector);
     if (!nodes.length) {
      root.classList.remove('is-armed');
      return;
     }
     var pending = nodes.length;
     var observer = new IntersectionObserver(function(entries) {
      entries.forEach(function(entry) {
       if (!entry.isIntersecting) return;
       observer.unobserve(entry.target);
       window.requestAnimationFrame(function() {
        entry.target.classList.add('is-in');
       });
       pending -= 1;
       if (pending > 0) return;
       window.setTimeout(function() {
        root.classList.remove('is-armed');
        root.classList.add('is-settled');
       }, settleDelay);
      });
     }, {
      threshold: threshold
     });
     Array.prototype.forEach.call(nodes, function(node) {
      observer.observe(node);
     });
    });
   }

   reveal('.ixir-wh-plans', '.ixir-wh-plans-head, .ixir-wh-plan, .ixir-wh-shared-box', 1300, 0.15);
   reveal('.ixir-pci-story, .ixir-wh-story', '.pci-story-intro, .ixir-wh-story-intro, .ixir-wh-story-row', 900, 0.2);
   reveal('.ixir-wh-diff', '.ixir-wh-diff-head, .ixir-wh-diff-grid li', 1100, 0.15);
   reveal('.ixir-wh-software', '.ixir-wh-software-card', 1100, 0.15);
   reveal('.ixir-wh-faq', '.ixir-wh-plans-head, .ixir-wh-faq-item', 1300, 0.15);
  })();

  (function() {
    function scrollToCta(e) {
      var href = this.getAttribute('href');
      var isTarget = (href && (href === '#ixir-pci-cta-title' || href === '#ixir-pci-cta' || href.indexOf('#ixir-pci-cta') !== -1)) || this.classList.contains('pci-aud-footer-btn');
      if (!isTarget) return;

      var targetSection = document.getElementById('ixir-pci-cta') || document.querySelector('.ixir-pci-cta');
      if (!targetSection) return;

      e.preventDefault();

      var navSpacer = document.querySelector('.ixir-header-spacer') || document.querySelector('.ixir-header');
      var navHeight = navSpacer ? navSpacer.offsetHeight : 113;
      var visibleHeight = window.innerHeight - navHeight;
      var rect = targetSection.getBoundingClientRect();
      var sectionHeight = rect.height || targetSection.offsetHeight;

      var topOffset;
      if (sectionHeight < visibleHeight) {
        topOffset = navHeight + ((visibleHeight - sectionHeight) / 2);
      } else {
        topOffset = navHeight + 20;
      }

      var targetY = window.pageYOffset + rect.top - topOffset;

      window.scrollTo({
        top: Math.max(0, Math.round(targetY)),
        behavior: 'smooth'
      });

    }

    var links = document.querySelectorAll('a[href*="#ixir-pci-cta"], .pci-aud-footer-btn');
    Array.prototype.forEach.call(links, function(link) {
      link.addEventListener('click', scrollToCta);
    });
  })();
 {/literal}
</script>