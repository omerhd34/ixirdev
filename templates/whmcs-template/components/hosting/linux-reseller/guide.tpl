<section class="ixir-wh-guide ixir-slide ixir-slide--right is-slide-on" aria-label="Web hosting rehberi">
 <script>
  {literal}
   (function() {
    var root = document.querySelector('.ixir-wh-guide');
    if (!root || !window.IntersectionObserver) return;
    if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    if (window.matchMedia && window.matchMedia('(max-width: 1023px)').matches) return;
    root.classList.add('is-armed');
   })();
  {/literal}
 </script>
 <div class="container">
  <div class="ixir-wh-guide-list">
   <article class="ixir-wh-guide-item">
    <span class="ixir-wh-guide-icon" aria-hidden="true"><i class="fas fa-store"></i></span>
    <h2>Linux Bayi Hosting ile Kendi Hosting İşinizi Kurun</h2>
    <p>Linux Reseller, web tasarım ajanslarının, freelance geliştiricilerin ve dijital pazarlama firmalarının
     müşterilerine profesyonel hosting hizmeti sunabilmesi için tasarlanmış çok kullanıcılı bir hosting çözümüdür.
     WHM/cPanel altyapısı sayesinde satın aldığınız kaynakları dilediğiniz gibi bölerek müşterilerinize ayrı cPanel
     hesabı açabilir; disk alanı, e-posta ve trafik limitlerini kendiniz belirleyebilirsiniz. IxirHost Linux Reseller
     Hosting paketleri, CloudLinux işletim sistemi üzerinde çalışan LiteSpeed web sunucusu ve Enterprise NVME disk
     altyapısıyla hem sizin hem de müşterilerinizin internet sitelerinin maksimum hızda çalışmasını sağlar. 10 siteden
     100 siteye kadar farklı ihtiyaçlara uygun 4 paket seçeneğiyle, büyümenize paralel olarak kolayca bir üst pakete
     geçebilirsiniz.</p>
   </article>
   <article class="ixir-wh-guide-item">
    <span class="ixir-wh-guide-icon" aria-hidden="true"><i class="fas fa-users-cog"></i></span>
    <h2>WHM/cPanel Reseller Hosting ile Sunucu Maliyeti Olmadan Hosting Firması Yönetin</h2>
    <p>Geleneksel dedicated sunucu ya da VPS çözümlerinde sunucu kurulumu, güvenlik yamaları ve kernel güncellemeleri
     gibi teknik sorumluluklar tamamen size aittir. IxirHost Linux Bayi Hosting paketlerinde ise tüm altyapı yönetimi,
     güvenlik güncellemeleri ve sunucu optimizasyonları IxirHost teknik ekibi tarafından gerçekleştirilir; siz yalnızca
     müşterilerinizi yönetmeye odaklanırsınız. CloudLinux CageFS sanallaştırma teknolojisi sayesinde her cPanel hesabı
     birbirinden izole çalışır: bir müşterinin yaşadığı sorun diğerlerini etkilemez. Imunify360 WAF güvenlik katmanı tüm
     hesapları malware, brute-force ve DDoS saldırılarına karşı korurken, JetBackup ile verileriniz haftalık otomatik
     olarak yedeklenir ve ihtiyaç anında panel üzerinden tek tıkla geri yüklenebilir. %99.9 uptime garantisi ve 7/24
     teknik destek ile altyapınız kesintisiz çalışmaya devam eder.</p>
   </article>
  </div>
 </div>
</section>
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
   var table = document.querySelector('.ixir-wh-table');
   if (!table) return;
   var buttons = table.querySelectorAll('.ixir-wh-table-toggle');

   function setOpen(btn, open) {
    var group = btn.parentNode;
    var rows = document.getElementById(btn.getAttribute('aria-controls'));
    var icon = btn.querySelector('i');
    group.classList.toggle('is-open', open);
    btn.setAttribute('aria-expanded', open ? 'true' : 'false');
    if (rows) rows.hidden = !open;
    if (icon) icon.className = open ? 'fas fa-chevron-up' : 'fas fa-chevron-down';
   }

   Array.prototype.forEach.call(buttons, function(btn) {
    btn.addEventListener('click', function() {
     var open = !btn.parentNode.classList.contains('is-open');
     Array.prototype.forEach.call(buttons, function(other) {
      if (other !== btn) setOpen(other, false);
     });
     setOpen(btn, open);
    });
   });
  })();
  (function() {
   var root = document.querySelector('.ixir-wh-plans');
   if (!root) return;
   var items = root.querySelectorAll('.ixir-wh-billing');

   function closeAll(except) {
    Array.prototype.forEach.call(items, function(item) {
     if (item === except) return;
     item.classList.remove('is-open');
     var btn = item.querySelector('.ixir-wh-billing-btn');
     if (btn) btn.setAttribute('aria-expanded', 'false');
    });
   }

   Array.prototype.forEach.call(items, function(item) {
    var btn = item.querySelector('.ixir-wh-billing-btn');
    var closeBtn = item.querySelector('.ixir-wh-billing-close');
    var pop = item.querySelector('.ixir-wh-billing-pop');
    if (!btn) return;
    btn.addEventListener('click', function(event) {
     event.stopPropagation();
     var open = item.classList.contains('is-open');
     closeAll(open ? null : item);
     item.classList.toggle('is-open', !open);
     btn.setAttribute('aria-expanded', open ? 'false' : 'true');
    });
    if (closeBtn) {
     closeBtn.addEventListener('click', function(event) {
      event.stopPropagation();
      item.classList.remove('is-open');
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
   var links = document.querySelectorAll('a.ixir-wh-more');
   if (!links.length) return;
   var frame = 0;

   function stickyBottom() {
    var bottom = 0;
    var selectors = ['.ixir-header', '.mobile-header', '.news-bar'];
    var i;
    for (i = 0; i < selectors.length; i++) {
     var el = document.querySelector(selectors[i]);
     if (!el || el.classList.contains('is-hidden')) continue;
     var style = window.getComputedStyle(el);
     if (style.display === 'none' || style.visibility === 'hidden' || style.position !== 'fixed') continue;
     var rect = el.getBoundingClientRect();
     if (rect.height > 0 && rect.bottom > bottom) bottom = rect.bottom;
    }
    return Math.ceil(bottom);
   }

   function destination(target) {
    var y = window.pageYOffset || document.documentElement.scrollTop || 0;
    return Math.max(0, Math.round(target.getBoundingClientRect().top + y - stickyBottom()));
   }

   function easeOutCubic(t) {
    return 1 - Math.pow(1 - t, 3);
   }

   Array.prototype.forEach.call(links, function(link) {
    link.addEventListener('click', function(e) {
     var target = document.getElementById('ixir-wh-compare');
     if (!target) return;
     if (e.metaKey || e.ctrlKey || e.shiftKey || e.altKey || e.button !== 0) return;
     e.preventDefault();
     if (frame) {
      window.cancelAnimationFrame(frame);
      frame = 0;
     }
     var reduce = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
     var start = window.pageYOffset || document.documentElement.scrollTop || 0;
     var dest = destination(target);
     if (window.history && window.history.pushState) {
      window.history.pushState(null, '', '#ixir-wh-compare');
     }
     if (reduce || Math.abs(dest - start) < 2) {
      window.scrollTo(0, dest);
      return;
     }
     var distance = dest - start;
     var duration = Math.min(900, Math.max(420, Math.abs(distance) * 0.55));
     var t0 = null;

     function step(now) {
      if (t0 === null) t0 = now;
      var progress = Math.min(1, (now - t0) / duration);
      window.scrollTo(0, start + distance * easeOutCubic(progress));
      if (progress < 1) {
       frame = window.requestAnimationFrame(step);
      } else {
       frame = 0;
       window.scrollTo(0, destination(target));
      }
     }

     frame = window.requestAnimationFrame(step);
    });
   });
  })();
  (function() {
   var root = document.getElementById('ixir-wh-plans');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll('.ixir-wh-plans-head, .ixir-wh-plan, .ixir-wh-shared-box');
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
     }, 1300);
    });
   }, {
    threshold: 0.15
   });
   Array.prototype.forEach.call(nodes, function(node) {
    observer.observe(node);
   });
  })();
  (function() {
   var root = document.querySelector('.ixir-wh-manage');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll('.ixir-wh-manage-head, .ixir-wh-manage-grid li');
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
     }, 1100);
    });
   }, {
    threshold: 0.15
   });
   Array.prototype.forEach.call(nodes, function(node) {
    observer.observe(node);
   });
  })();
  (function() {
   var root = document.querySelector('.ixir-wh-diff');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll('.ixir-wh-diff-head, .ixir-wh-diff-grid li');
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
     }, 1100);
    });
   }, {
    threshold: 0.15
   });
   Array.prototype.forEach.call(nodes, function(node) {
    observer.observe(node);
   });
  })();
  (function() {
   var root = document.querySelector('.ixir-wh-features');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll('.ixir-wh-features-head, .ixir-wh-features-grid > li');
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
     }, 1100);
    });
   }, {
    threshold: 0.15
   });
   Array.prototype.forEach.call(nodes, function(node) {
    observer.observe(node);
   });
  })();
  (function() {
   var root = document.getElementById('ixir-wh-compare');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll('.ixir-wh-plans-head, .ixir-wh-table-scroll');
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
     }, 1100);
    });
   }, {
    threshold: 0.15
   });
   Array.prototype.forEach.call(nodes, function(node) {
    observer.observe(node);
   });
  })();
  (function() {
   var root = document.querySelector('.ixir-wh-faq');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll('.ixir-wh-plans-head, .ixir-wh-faq-item');
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
     }, 1300);
    });
   }, {
    threshold: 0.15
   });
   Array.prototype.forEach.call(nodes, function(node) {
    observer.observe(node);
   });
  })();
  (function() {
   var root = document.querySelector('.ixir-wh-apps');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll(
    '.ixir-wh-apps-stack, .ixir-wh-apps h2, .ixir-wh-apps-lead, .ixir-wh-apps-copy, .ixir-wh-apps-list li');
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
     }, 1200);
    });
   }, {
    threshold: 0.15
   });
   Array.prototype.forEach.call(nodes, function(node) {
    observer.observe(node);
   });
  })();
  (function() {
   var root = document.querySelector('.ixir-wh-story');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll('.ixir-wh-story-intro, .ixir-wh-story-row');
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
     }, 900);
    });
   }, {
    threshold: 0.2,
    rootMargin: '0px'
   });
   Array.prototype.forEach.call(nodes, function(node) {
    observer.observe(node);
   });
  })();
  (function() {
   var root = document.querySelector('.ixir-wh-guide');
   if (!root || !root.classList.contains('is-armed') || !window.IntersectionObserver) return;
   var nodes = root.querySelectorAll('.ixir-wh-guide-item');
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
     }, 900);
    });
   }, {
    threshold: 0.15
   });
   Array.prototype.forEach.call(nodes, function(node) {
    observer.observe(node);
   });
  })();
 {/literal}
</script>