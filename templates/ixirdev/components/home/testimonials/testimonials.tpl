<section class="ixir-reviews ixir-slide ixir-slide--left is-slide-on" id="ixirReviews" aria-label="Müşteri yorumları">
 <div class="container">
  <header class="ixir-reviews-head">
   <h2>Gerçek Deneyimler, Mutlu Müşteriler!</h2>
   <p>Siz de üstün hizmet kalitemizi deneyimleyin.</p>
  </header>
 </div>
 {assign var="ixirReviews" value=[
  [
   "initials" => "OA",
   "name" => "Ozan Akçora",
   "role" => "RGLabs",
   "text" => "17 yıldır birlikte çalıştığımız ixirhost, gelişen teknolojilere ayak uyduran ve farklı bir noktaya taşıyan öncü bir firmadır. Güvenilir, sürdürülebilir çözümler arayan her firma tarafından tercih edilmelidir."
  ],
  [
   "initials" => "BD",
   "name" => "Bilgehan Demir",
   "role" => "Spiker / Yapımcı",
   "text" => "FightClub 15 yıldır tüm hosting, kiralık sunucu ve servisleriyle ixirhost bünyesinde, çözüm odaklı ve hızlı destek, güçlü altyapı ile verdikleri hizmetler için teşekkür ederim."
  ],
  [
   "initials" => "BK",
   "name" => "Burak K.",
   "role" => "Müşteri",
   "text" => "Yıllardır sorunsuz hizmet alıyorum, müşteri desteği her zaman yardımcı oluyor."
  ],
  [
   "initials" => "ZU",
   "name" => "Zeynep Uçar",
   "role" => "Müşteri",
   "text" => "Hızlı kurulum, mükemmel optimizasyon. Çok memnunum!"
  ],
  [
   "initials" => "MA",
   "name" => "Mazhar Aydın",
   "role" => "Developer",
   "text" => "Çözüm odaklı destek, uygun fiyatlar ve en önemlisi güven, şiddetle öneririm!"
  ],
  [
   "initials" => "IU",
   "name" => "İsmail Uygar",
   "role" => "Webmaster",
   "text" => "Uygun fiyatlı hizmet, kaliteli destek ve yüksek uptime, teşekkürler!"
  ],
  [
   "initials" => "OHD",
   "name" => "Ömer Halis Demir",
   "role" => "Full Stack Developer",
   "text" => "Full stack projelerimde performans ve uptime vazgeçilmez. ixirhost altyapısı tutarlı, panel sade, teknik ekip de gerçekten geliştirici dilinden anlıyor. Gönül rahatlığıyla öneririm."
  ]
 ]}

 {capture name="ixirReviewStars"}
  <div class="ixir-reviews-stars" aria-hidden="true">
   <i class="fas fa-star"></i>
   <i class="fas fa-star"></i>
   <i class="fas fa-star"></i>
   <i class="fas fa-star"></i>
   <i class="fas fa-star"></i>
  </div>
 {/capture}
 <div class="ixir-reviews-board">
  <div class="ixir-reviews-viewport" data-dir="fwd">
   <div class="ixir-reviews-track">
    <div class="ixir-reviews-group">
     {foreach $ixirReviews as $review}
      <article class="ixir-reviews-card">
       {$smarty.capture.ixirReviewStars}
       <p>{$review.text}</p>
       <footer class="ixir-reviews-person">
        <span class="ixir-reviews-avatar" aria-hidden="true">{$review.initials}</span>
        <span class="ixir-reviews-who">
         <strong>{$review.name}</strong>
         <span>{$review.role}</span>
        </span>
       </footer>
      </article>
     {/foreach}
    </div>
   </div>
  </div>
 </div>
</section>

<script>
 {literal}
  jQuery(function($) {
     (function initIxirReviews() {
       var root = document.getElementById('ixirReviews');
       if (!root) {
        return;
       }
       var viewport = root.querySelector('.ixir-reviews-viewport');
       var track = viewport && viewport.querySelector('.ixir-reviews-track');
       var group = viewport && viewport.querySelector('.ixir-reviews-group');
       if (!viewport || !track || !group) {
        return;
       }

       var reduceMotion = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
       var autoSpeed = reduceMotion ? 0 : 0.7;
       var setWidth = 0;
       var dragging = false;
       var paused = false;
       var hovering = false;
       var lastX = 0;
       var lastT = 0;
       var velocity = 0;
       var acc = 0;
       var resumeTimer = null;
       var wrapping = false;

       function gapPx() {
        var style = window.getComputedStyle(track);
        return parseFloat(style.columnGap || style.gap) || 16;
       }

       function ensureClones() {
        if (track.querySelector('.ixir-reviews-group[data-clone="1"]')) {
         return;
        }
        for (var n = 0; n < 2; n++) {
         var clone = group.cloneNode(true);
         clone.setAttribute('aria-hidden', 'true');
         clone.setAttribute('data-clone', '1');
         track.appendChild(clone);
        }
       }

       function wrapScroll() {
        if (!setWidth || wrapping) {
         return;
        }
        var sl = viewport.scrollLeft;
        if (sl >= setWidth * 2) {
         wrapping = true;
         viewport.scrollLeft = sl - setWidth;
         wrapping = false;
        } else if (sl < setWidth) {
         wrapping = true;
         viewport.scrollLeft = sl + setWidth;
         wrapping = false;
        }
       }

       function measure() {
        var prev = setWidth;
        var offset = prev ? viewport.scrollLeft - prev : 0;
        ensureClones();
        setWidth = group.offsetWidth + gapPx();
        viewport.scrollLeft = setWidth + offset;
        wrapScroll();
        root.classList.add('is-ready');
       }

       var lastTick = 0;

       function tick(now) {
        var dt = lastTick ? Math.min(32, now - lastTick) : 16;
        lastTick = now;
        if (!dragging && !paused && autoSpeed) {
         acc += autoSpeed * (dt / 16.67);
         if (acc >= 1) {
          var step = acc | 0;
          acc -= step;
          viewport.scrollLeft += step;
          wrapScroll();
         }
        } else if (!dragging && velocity) {
         viewport.scrollLeft -= velocity * dt;
         velocity *= Math.pow(0.92, dt / 16.67);
         if (Math.abs(velocity) < 0.04) {
          velocity = 0;
         }
         wrapScroll();
        }
        window.requestAnimationFrame(tick);
       }

       function scheduleResume() {
        window.clearTimeout(resumeTimer);
        resumeTimer = window.setTimeout(function() {
         if (!dragging && !hovering) {
          paused = false;
         }
        }, 900);
       }

       function endDrag() {
        if (!dragging) {
         scheduleResume();
         return;
        }
        dragging = false;
        viewport.classList.remove('is-dragging');
        scheduleResume();
       }

       viewport.addEventListener('pointerdown', function(e) {
        paused = true;
        velocity = 0;
        acc = 0;
        if (e.pointerType !== 'mouse' || e.button !== 0) {
         return;
        }
        dragging = true;
        lastX = e.clientX;
        lastT = e.timeStamp || performance.now();
        viewport.classList.add('is-dragging');
        if (viewport.setPointerCapture) {
         viewport.setPointerCapture(e.pointerId);
        }
       });
       viewport.addEventListener('pointermove', function(e) {
        if (!dragging) {
         return;
        }
        var dx = e.clientX - lastX;
        var now = e.timeStamp || performance.now();
        var dt = Math.max(1, now - lastT);
        velocity = dx / dt;
        lastX = e.clientX;
        lastT = now;
        viewport.scrollLeft -= dx;
        wrapScroll();
       });
       viewport.addEventListener('pointerup', endDrag);
       viewport.addEventListener('pointercancel', endDrag);
       viewport.addEventListener('scroll', function() {
        if (!dragging) {
         wrapScroll();
        }
        }, {passive: true});
        viewport.addEventListener('wheel', function() {
         paused = true;
         velocity = 0;
         scheduleResume();
         }, {passive: true});
         viewport.addEventListener('pointerenter', function(e) {
          if (e.pointerType === 'mouse') {
           hovering = true;
           paused = true;
          }
         });
         viewport.addEventListener('pointerleave', function(e) {
          if (e.pointerType === 'mouse') {
           hovering = false;
           if (!dragging) {
            scheduleResume();
           }
          }
         });

         var resizeTimer = null;
         window.addEventListener('resize', function() {
          window.clearTimeout(resizeTimer);
          resizeTimer = window.setTimeout(measure, 180);
         });
         window.addEventListener('load', measure);
         window.setTimeout(measure, 50);
         measure();
         window.requestAnimationFrame(tick);
        })();
       });
      {/literal}
</script>