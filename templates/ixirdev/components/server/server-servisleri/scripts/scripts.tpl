<script>
 {literal}
  (function() {
   var list = document.querySelector('.ixir-ss-faq-list') || document.querySelector('.ixir-wh-faq-list');
   if (!list) return;
   Array.prototype.forEach.call(list.querySelectorAll('.ixir-ss-faq-q, .ixir-wh-faq-q'), function(btn) {
    btn.addEventListener('click', function() {
     var item = btn.parentNode;
     var open = item.classList.toggle('is-open');
     btn.setAttribute('aria-expanded', open ? 'true' : 'false');
    });
   });
  })();
  (function() {
   var sharedList = document.querySelector('.ixir-ss-shared--click') || document.querySelector(
   '.ixir-wh-shared--click');
   if (!sharedList) return;

   function setOpen(li, open) {
    var tipBtn = li.querySelector('.ixir-ss-tip-btn, .ixir-wh-tip-btn');
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
   arm(document.getElementById('ixir-ss-plans') || document.getElementById('ixir-wh-plans'),
    '.ixir-ss-plans-head, .ixir-wh-plans-head, .ixir-ss-plan, .ixir-wh-plan, .ixir-ss-shared-box, .ixir-wh-shared-box',
    1300, sectionOptions);
   arm(document.querySelector('.ixir-ss-story--intro') || document.querySelector('.ixir-wh-story--intro'),
    '.ixir-ss-story-intro, .ixir-wh-story-intro', 900, storyOptions);
   arm(document.querySelector('.ixir-ss-story--features') || document.querySelector('.ixir-wh-story--features'),
    '.ixir-ss-story-row, .ixir-wh-story-row', 900, storyOptions);
   arm(document.querySelector('.ixir-ss-faq') || document.querySelector('.ixir-wh-faq'),
    '.ixir-ss-plans-head, .ixir-wh-plans-head, .ixir-ss-faq-item, .ixir-wh-faq-item', 1300, sectionOptions);
  })();


  (function() {
   var list = document.getElementById('ixir-wh-shared-list');
   if (!list) return;
   var btn = document.querySelector('.ixir-wh-shared-more-btn[aria-controls="ixir-wh-shared-list"]');
   var items = list.children;
   var total = items.length;
   var step = 10;
   if (!btn || total <= step) {
    list.removeAttribute('data-visible');
    if (btn) btn.parentNode.hidden = true;
    return;
   }
   var text = btn.querySelector('.ixir-wh-shared-more-text');
   var count = btn.querySelector('.ixir-wh-shared-more-count');
   var visible = step;

   function render(prev) {
    var i;
    for (i = 0; i < total; i++) {
     items[i].classList.toggle('is-revealed', i >= prev && i < visible);
    }
    if (visible >= total) {
     list.removeAttribute('data-visible');
     btn.setAttribute('aria-expanded', 'true');
     text.textContent = 'Daha Az Göster';
     count.textContent = '';
    } else {
     list.setAttribute('data-visible', String(visible));
     btn.setAttribute('aria-expanded', 'false');
     text.textContent = 'Diğer Özellikler';
     count.textContent = '+' + (total - visible);
    }
   }

   btn.addEventListener('click', function() {
    var prev = visible;
    if (visible >= total) {
     if (window.CustomEvent) list.dispatchEvent(new CustomEvent('ixir:collapse'));
     visible = step;
     prev = total;
     render(prev);
     var box = list.parentNode.getBoundingClientRect();
     if (box.top < 0) {
      window.scrollBy(0, box.top - 120);
     }
     return;
    }
    visible = Math.min(total, visible + step);
    render(prev);
   });

   render(total);
  })();
 {/literal}
</script>