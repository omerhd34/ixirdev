<script>
 {literal}
  (function() {
   var list = document.querySelector('.ixir-cs-faq-list') || document.querySelector('.ixir-wh-faq-list');
   if (!list) return;
   Array.prototype.forEach.call(list.querySelectorAll('.ixir-cs-faq-q, .ixir-wh-faq-q'), function(btn) {
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

   reveal('.ixir-cs-plans, .ixir-cs-plans-section, .ixir-wh-plans', '.ixir-cs-plans-head, .ixir-wh-plans-head, .ixir-cs-plan, .ixir-wh-plan, .ixir-cs-shared-box, .ixir-wh-shared-box', 1300, 0.15);
   reveal('.ixir-cs-story, .ixir-wh-story', '.ixir-cs-story-intro, .ixir-wh-story-intro, .ixir-cs-story-row, .ixir-wh-story-row', 900, 0.2);
   reveal('.ixir-cs-diff, .ixir-cs-usage, .ixir-wh-diff', '.ixir-cs-diff-head, .ixir-cs-usage-head, .ixir-wh-diff-head, .ixir-cs-diff-grid li, .ixir-cs-usage-grid li, .ixir-wh-diff-grid li', 1100, 0.15);
   reveal('.ixir-cs-faq, .ixir-wh-faq', '.ixir-cs-plans-head, .ixir-wh-plans-head, .ixir-cs-faq-item, .ixir-wh-faq-item', 1300, 0.15);
  })();
 {/literal}
</script>