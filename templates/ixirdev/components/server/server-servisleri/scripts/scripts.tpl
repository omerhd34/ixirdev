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
   var sharedList = document.querySelector('.ixir-wh-shared--click');
   if (!sharedList) return;
   function setOpen(li, open) {
    var tipBtn = li.querySelector('.ixir-wh-tip-btn');
    li.classList.toggle('is-open', open);
    if (tipBtn) tipBtn.setAttribute('aria-expanded', open ? 'true' : 'false');
   }
   Array.prototype.forEach.call(sharedList.querySelectorAll('li'), function(li) {
    li.addEventListener('click', function() {
     var isOpen = li.classList.contains('is-open');
     setOpen(li, !isOpen);
    });
   });
  })();
  (function() {
   function arm(root, selector, settleDelay, observerOptions) {
    if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
    var nodes = root.querySelectorAll(selector);
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
    }, observerOptions);
    Array.prototype.forEach.call(nodes, function(node) {
     observer.observe(node);
    });
   }

   var sectionOptions = { threshold: 0.1, rootMargin: '40px 0px 40px 0px' };
   var storyOptions = { threshold: 0.1, rootMargin: '40px 0px 40px 0px' };
   arm(document.getElementById('ixir-wh-plans'), '.ixir-wh-plans-head, .ixir-wh-plan, .ixir-wh-shared-box', 1300, sectionOptions);
   arm(document.querySelector('.ixir-wh-story--intro'), '.ixir-wh-story-intro', 900, storyOptions);
   arm(document.querySelector('.ixir-wh-story--features'), '.ixir-wh-story-row', 900, storyOptions);
   arm(document.querySelector('.ixir-wh-faq'), '.ixir-wh-plans-head, .ixir-wh-faq-item', 1300, sectionOptions);
  })();
 {/literal}
</script>

