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
    <span class="ixir-wh-guide-icon" aria-hidden="true"><i class="fas fa-server"></i></span>
    <h2>Linux Hosting Altyapısı Neden Bu Kadar Önemlidir?</h2>
    <p>Web sitenizin yükleme hızı yalnızca kodunuza ya da tasarımınıza değil, barındırıldığı sunucunun altyapısına
     doğrudan bağlıdır. Geleneksel HDD disk sistemlerine kıyasla %100 NVMe SSD altyapısı, dosya okuma ve yazma hızını 40
     kata kadar artırarak veritabanı sorgularını anlık tamamlar, sayfa yükleme sürelerini minimuma indirir. ixirhost web
     hosting paketlerinde kullanılan <strong>LiteSpeed web sunucusu</strong> ise Apache'ye göre 10 kat daha yüksek
     performans sunar, özellikle WordPress, WooCommerce ve OpenCart gibi içerik yönetim sistemlerinde bu fark ziyaretçi
     deneyimine ve Google sıralamasına doğrudan yansır. Tüm paketlerde ayrıca LiteSpeed Cache, PHP X-RAY ve AccelerateWP
     desteği standart olarak sunulmaktadır.</p>
   </article>
   <article class="ixir-wh-guide-item">
    <span class="ixir-wh-guide-icon" aria-hidden="true"><i class="fas fa-layer-group"></i></span>
    <h2>Hangi Linux Hosting Paketi Size Uygun?</h2>
    <p>Paket seçimi, sitenizin trafiğine, barındırmak istediğiniz alan adı sayısına ve kaynak ihtiyacınıza göre
     şekillenmelidir. Tek bir web sitesi yayınlayan ve yeni başlayanlar için <strong>Budget planı</strong> bir başlangıç
     noktasıdır. Birden fazla alan adını tek panelde yönetmek isteyenler <strong>Economy veya Professional</strong>
     paketleri tercih edebilir. Yoğun trafik alan bir e-ticaret sitesi ya da kurumsal web uygulaması işletiyorsanız, 2
     Core Intel Xeon Gold işlemci ve 4 GB RAM kapasitesiyle donatılmış <strong>Extreme paketi</strong> size kesintisiz
     bir ortam sağlar. Hangi paketi seçerseniz seçin; cPanel kontrol paneli, ücretsiz Let's Encrypt SSL, Imunify360 WAF
     güvenlik koruması ve haftalık JetBackup yedekleme hizmetleri tüm planlarda standart olarak yer almaktadır.</p>
   </article>
   <article class="ixir-wh-guide-item">
    <span class="ixir-wh-guide-icon" aria-hidden="true"><i class="fas fa-shield-alt"></i></span>
    <h2>İXİRHOST ile Türkiye'de Güvenilir Linux Hosting</h2>
    <p>ixirhost, tüm web hosting hizmetlerini İstanbul'daki TIER III+ veri merkezinden, 3 operatör yedekli ağ
     altyapısıyla sunmaktadır. Bu sayede %99.9 uptime garantisiyle web siteniz her zaman erişilebilir kalır. Satın alma
     tarihinden itibaren 15 gün boyunca geçerli olan koşulsuz para iade garantisi sayesinde hizmeti risksiz deneyimleme
     şansına sahip olursunuz. WordPress tabanlı bir siteniz varsa <a href="{$WEB_ROOT}/wordpress-hosting">WordPress
      Hosting</a>, ASP.NET ya da MSSQL kullanıyorsanız <a href="{$WEB_ROOT}/windows-hosting">Windows Hosting</a>
     paketlerimizi de inceleyebilirsiniz.</p>
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