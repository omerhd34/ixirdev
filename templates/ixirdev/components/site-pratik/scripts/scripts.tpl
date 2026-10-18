<script>
 {literal}
  (function() {
   var list = document.querySelector('.ixir-sp-faq-list') || document.querySelector('.ixir-wh-faq-list');
   if (!list) return;
   Array.prototype.forEach.call(list.querySelectorAll('.ixir-sp-faq-q, .ixir-wh-faq-q'), function(btn) {
    btn.addEventListener('click', function() {
     var item = btn.parentNode;
     var open = item.classList.toggle('is-open');
     btn.setAttribute('aria-expanded', open ? 'true' : 'false');
    });
   });
  })();
  (function() {
   var root = document.querySelector('.ixir-sp-plans') || document.querySelector('.ixir-wh-plans');
   if (!root) return;
   var items = root.querySelectorAll('.ixir-sp-billing, .ixir-wh-billing');

   function closeAll(except) {
    Array.prototype.forEach.call(items, function(item) {
     if (item === except) return;
     item.classList.remove('is-open');
     var plan = item.closest ? (item.closest('.ixir-sp-plan') || item.closest('.ixir-wh-plan')) : null;
     if (plan) plan.classList.remove('is-billing-open');
     var btn = item.querySelector('.ixir-sp-billing-btn, .ixir-wh-billing-btn');
     if (btn) btn.setAttribute('aria-expanded', 'false');
    });
   }

   Array.prototype.forEach.call(items, function(item) {
    var btn = item.querySelector('.ixir-sp-billing-btn, .ixir-wh-billing-btn');
    var closeBtn = item.querySelector('.ixir-sp-billing-close, .ixir-wh-billing-close');
    var pop = item.querySelector('.ixir-sp-billing-pop, .ixir-wh-billing-pop');
    var plan = item.closest ? (item.closest('.ixir-sp-plan') || item.closest('.ixir-wh-plan')) : null;
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
   var sharedList = document.querySelector('.ixir-sp-shared--click') || document.querySelector('.ixir-wh-shared--click');
   if (!sharedList) return;
   function setOpen(li, open) {
    var tipBtn = li.querySelector('.ixir-sp-tip-btn, .ixir-wh-tip-btn');
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

   var sectionOptions = { threshold: 0.15 };
   var storyOptions = { threshold: 0.2, rootMargin: '0px' };
   arm(document.getElementById('sitepratik-paketleri') || document.getElementById('ixir-wh-plans'), '.ixir-wh-plans-head, .ixir-sp-plans-head, .ixir-wh-plan, .ixir-sp-plan, .ixir-wh-shared-box, .ixir-sp-shared-box', 1300,
    sectionOptions);
   arm(document.getElementById('sitepratik-ozellikler') || document.querySelector('.ixir-sp-story') || document.querySelector('.ixir-wh-story'), '.ixir-wh-story-intro, .ixir-sp-story-intro, .ixir-wh-story-row, .ixir-sp-story-row', 900, storyOptions);
   arm(document.getElementById('sitepratik-sss') || document.querySelector('.ixir-sp-faq') || document.querySelector('.ixir-wh-faq'), '.ixir-wh-plans-head, .ixir-sp-faq-head, .ixir-wh-faq-item, .ixir-sp-faq-item', 1300, sectionOptions);
  })();
  (function() {
   function getStickyBottom() {
    var bottom = 0;
    var selectors = ['.ixir-header', '.mobile-header', '.news-bar', 'header'];
    for (var i = 0; i < selectors.length; i++) {
     var el = document.querySelector(selectors[i]);
     if (!el || el.classList.contains('is-hidden')) continue;
     var style = window.getComputedStyle(el);
     if (style.display === 'none' || style.visibility === 'hidden') continue;
     if (style.position === 'fixed' || style.position === 'sticky') {
      var rect = el.getBoundingClientRect();
      if (rect.height > 0 && rect.bottom > bottom) bottom = rect.bottom;
     }
    }
    return Math.max(bottom, 113);
   }

   var btn = document.querySelector('.ixir-sp-sectors-btn[href*="sitepratik-paketleri"]');
   if (!btn) return;
   btn.addEventListener('click', function(e) {
    var target = document.getElementById('sitepratik-paketleri-title') || document.querySelector('.ixir-sp-plans-head') || document.getElementById('sitepratik-paketleri');
    if (!target) return;
    if (e.metaKey || e.ctrlKey || e.shiftKey || e.altKey || e.button !== 0) return;
    e.preventDefault();
    var sticky = getStickyBottom();
    var targetTop = target.getBoundingClientRect().top + (window.pageYOffset || document.documentElement.scrollTop || 0);
    var dest = Math.max(0, Math.round(targetTop - sticky - 24));
    window.scrollTo({
     top: dest,
     behavior: 'smooth'
    });
   });
  })();
 {/literal}
</script>