<script>
 {literal}
  (function() {
   var list = document.querySelector('.ixir-as-shared--click, .ixir-wh-shared--click');
   if (!list) return;

   function setOpen(li, open) {
    var tipBtn = li.querySelector('.ixir-as-tip-btn, .ixir-wh-tip-btn');
    li.classList.toggle('is-open', open);
    if (tipBtn) tipBtn.setAttribute('aria-expanded', open ? 'true' : 'false');
   }

   function closeAll(except) {
    Array.prototype.forEach.call(list.querySelectorAll('li.is-open'), function(li) {
     if (li !== except) setOpen(li, false);
    });
   }

   Array.prototype.forEach.call(list.children, function(li) {
    var tipBtn = li.querySelector('.ixir-as-tip-btn, .ixir-wh-tip-btn');
    if (tipBtn) tipBtn.setAttribute('aria-expanded', 'false');
    li.addEventListener('click', function(event) {
     event.stopPropagation();
     if (event.target.closest && (event.target.closest('.ixir-as-tip-box') || event.target.closest('.ixir-wh-tip-box'))) return;
     var open = !li.classList.contains('is-open');
     closeAll(li);
     setOpen(li, open);
    });
   });

   document.addEventListener('click', function() {
    closeAll(null);
   });
   document.addEventListener('keydown', function(event) {
    if (event.key === 'Escape') closeAll(null);
   });
  })();

  (function() {
   var root = document.getElementById('ixir-as-plans') || document.querySelector('.ixir-as-plans, .ixir-wh-plans');
   if (!root) return;
   var items = root.querySelectorAll('.ixir-as-billing, .ixir-wh-billing');

   function closeAll(except) {
    Array.prototype.forEach.call(items, function(item) {
     if (item === except) return;
     item.classList.remove('is-open');
     var plan = item.closest ? (item.closest('.ixir-as-plan') || item.closest('.ixir-wh-plan')) : null;
     if (plan) plan.classList.remove('is-billing-open');
     var btn = item.querySelector('.ixir-as-billing-btn, .ixir-wh-billing-btn');
     if (btn) btn.setAttribute('aria-expanded', 'false');
    });
   }

   Array.prototype.forEach.call(items, function(item) {
    var btn = item.querySelector('.ixir-as-billing-btn, .ixir-wh-billing-btn');
    var closeBtn = item.querySelector('.ixir-as-billing-close, .ixir-wh-billing-close');
    var pop = item.querySelector('.ixir-as-billing-pop, .ixir-wh-billing-pop');
    var plan = item.closest ? (item.closest('.ixir-as-plan') || item.closest('.ixir-wh-plan')) : null;
    if (!btn) return;
    btn.addEventListener('click', function(event) {
     event.stopPropagation();
     var open = item.classList.contains('is-open');
     closeAll(open ? null : item);
     var willOpen = !open;
     item.classList.toggle('is-open', willOpen);
     if (plan) plan.classList.toggle('is-billing-open', willOpen);
     btn.setAttribute('aria-expanded', willOpen ? 'true' : 'false');
    });
    if (closeBtn) {
     closeBtn.addEventListener('click', function(event) {
      event.stopPropagation();
      item.classList.remove('is-open');
      if (plan) plan.classList.remove('is-billing-open');
      btn.setAttribute('aria-expanded', 'false');
      btn.focus();
     });
    }
    if (pop) {
     pop.addEventListener('click', function(event) {
      event.stopPropagation();
     });
    }
   });

   document.addEventListener('click', function() {
    closeAll(null);
   });
   document.addEventListener('keydown', function(event) {
    if (event.key === 'Escape') closeAll(null);
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
   arm(document.getElementById('ixir-as-plans') || document.getElementById('ixir-wh-plans'), '.ixir-as-plans-head, .ixir-wh-plans-head, .ixir-as-plan, .ixir-wh-plan, .ixir-as-shared-box, .ixir-wh-shared-box', 1300, sectionOptions);
   arm(document.querySelector('.ixir-as-story, .ixir-wh-story'), '.ixir-as-story-intro, .ixir-wh-story-intro, .ixir-as-story-row, .ixir-wh-story-row', 900, storyOptions);
   arm(document.querySelector('.ixir-as-faq, .ixir-wh-faq'), '.ixir-as-faq-head, .ixir-wh-plans-head, .ixir-as-faq-item, .ixir-wh-faq-item', 1300, sectionOptions);
  })();
 {/literal}
</script>
