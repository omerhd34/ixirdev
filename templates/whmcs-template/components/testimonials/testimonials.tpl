<section class="ixir-reviews" id="ixirReviews" aria-label="Müşteri yorumları">
 <div class="container">
  <header class="ixir-reviews-head">
   <h2><i class="fas fa-heart ixir-head-icon" aria-hidden="true"></i> Gerçek Deneyimler, Mutlu Müşteriler!</h2>
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
  ]
 ]}
 {assign var="ixirReviewsRows" value=[
  ["dir" => "fwd", "order" => [0, 1, 2, 3, 4, 5]]
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
  {foreach $ixirReviewsRows as $row}
   <div class="ixir-reviews-viewport" data-dir="{$row.dir}">
    <div class="ixir-reviews-track">
     <div class="ixir-reviews-group">
      {foreach $row.order as $idx}
       {assign var="review" value=$ixirReviews[$idx]}
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
  {/foreach}
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
    var viewports = root.querySelectorAll('.ixir-reviews-viewport');
    if (!viewports.length) {
     return;
    }
    var reduceMotion = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
    if (reduceMotion) {
     return;
    }

    function gapPx(track) {
     var style = window.getComputedStyle(track);
     return parseFloat(style.columnGap || style.gap) || 18;
    }

    function fill(viewport) {
     var track = viewport.querySelector('.ixir-reviews-track');
     var group = viewport.querySelector('.ixir-reviews-group');
     if (!track || !group) {
      return;
     }
     var clones = track.querySelectorAll('.ixir-reviews-group[data-clone="1"]');
     for (var i = 0; i < clones.length; i++) {
      clones[i].parentNode.removeChild(clones[i]);
     }
     var safety = 0;
     while (track.scrollWidth < viewport.offsetWidth * 2 && safety < 8) {
      var clone = group.cloneNode(true);
      clone.setAttribute('aria-hidden', 'true');
      clone.setAttribute('data-clone', '1');
      track.appendChild(clone);
      safety++;
     }
     if (track.children.length < 2) {
      var extra = group.cloneNode(true);
      extra.setAttribute('aria-hidden', 'true');
      extra.setAttribute('data-clone', '1');
      track.appendChild(extra);
     }
     var shift = group.offsetWidth + gapPx(track);
     track.style.setProperty('--ixir-reviews-shift', shift + 'px');
     var speed = viewport.getAttribute('data-dir') === 'rev' ? 38 : 42;
     var seconds = Math.max(26, Math.round(shift / speed));
     track.style.setProperty('--ixir-reviews-duration', seconds + 's');
    }

    function fillAll() {
     for (var i = 0; i < viewports.length; i++) {
      fill(viewports[i]);
     }
     root.classList.add('is-ready');
    }

    fillAll();
    var resizeTimer = null;
    window.addEventListener('resize', function() {
     window.clearTimeout(resizeTimer);
     resizeTimer = window.setTimeout(fillAll, 180);
    });
   })();
  });
 {/literal}
</script>