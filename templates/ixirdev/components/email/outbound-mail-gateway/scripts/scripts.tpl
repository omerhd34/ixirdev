<script>
  {literal}
    (function() {
      var root = document.getElementById('ixir-wh-plans');
      if (!root) return;
      var items = root.querySelectorAll('.ixir-wh-billing');

      function closeAll(except) {
        Array.prototype.forEach.call(items, function(item) {
          if (item === except) return;
          item.classList.remove('is-open');
          var plan = item.closest ? item.closest('.ixir-wh-plan') : null;
          if (plan) plan.classList.remove('is-billing-open');
          var btn = item.querySelector('.ixir-wh-billing-btn');
          if (btn) btn.setAttribute('aria-expanded', 'false');
        });
      }

      Array.prototype.forEach.call(items, function(item) {
        if (item.dataset && item.dataset.billingInit) return;
        if (item.dataset) item.dataset.billingInit = '1';

        var btn = item.querySelector('.ixir-wh-billing-btn');
        var closeBtn = item.querySelector('.ixir-wh-billing-close');
        var pop = item.querySelector('.ixir-wh-billing-pop');
        var plan = item.closest ? item.closest('.ixir-wh-plan') : null;
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

      arm(document.getElementById('ixir-wh-plans'), '.ixir-wh-plans-head, .ixir-wh-plan, .ixir-wh-shared-box', 1300, sectionOptions);
      arm(document.getElementById('ixir-omg-story') || document.querySelector('.ixir-wh-story'), '.ixir-wh-story-intro, .ixir-omg-story-card, .ixir-wh-story-row', 900, storyOptions);
      arm(document.getElementById('ixir-omg-workflow'), '.ixir-omg-section-head, .ixir-flow-canvas', 900, sectionOptions);
      arm(document.getElementById('ixir-omg-audience'), '.ixir-wh-diff-head, .ixir-wh-diff-grid li', 1100, sectionOptions);
      arm(document.getElementById('ixir-omg-platforms'), '.ixir-omg-section-head, .ixir-omg-platform-card, .ixir-omg-platforms-support', 900, sectionOptions);
      arm(document.getElementById('ixir-omg-why'), '.ixir-wh-diff-head, .ixir-wh-diff-grid li', 1100, sectionOptions);
      arm(document.getElementById('ixir-omg-guide'), '.ixir-wh-guide-item', 900, storyOptions);
      arm(document.getElementById('ixir-wh-faq'), '.ixir-wh-plans-head, .ixir-wh-faq-item', 1300, sectionOptions);
    })();
  {/literal}
</script>