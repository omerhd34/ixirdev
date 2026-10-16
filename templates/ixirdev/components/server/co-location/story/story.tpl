<section class="ixir-colo-story ixir-wh-story ixir-slide ixir-slide--left is-slide-on"
 aria-labelledby="ixir-colo-story-title">
 <script>
  {literal}
   (function() {
    var root = document.querySelector('.ixir-colo-story') || document.querySelector('.ixir-wh-story');
    if (!root || !window.IntersectionObserver) return;
    if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
    root.classList.add('is-armed');
   })();
  {/literal}
 </script>
 <div class="container">
  <div class="colo-story-intro ixir-wh-story-intro">
   <span class="colo-story-icon ixir-wh-story-icon" aria-hidden="true"><i class="fas fa-info"></i></span>
   {include file="$template/components/Heading.tpl" title="Co-Location Nedir?" id="ixir-colo-story-title" class="text-white"}
   <p><strong>Co-Location (Sunucu Barındırma)</strong> hizmeti, donanımsal olarak size olan bir sunucunun yüksek internet bağlantısının bulunduğu, 7/24 izlenen, yedekli internet ve elektrik altyapısına ve yüksek güvenliğe sahip veri merkezlerinde barındırılması işlemine denir. <strong>Co-location işlemi</strong> ile siz sadece kabin, internet ve elektrik hattı ve eğer sahipseniz sunucu destek maliyetlerine katlanırsınız.</p>
   <a class="colo-story-cta ixir-wh-story-cta" href="#ixir-colo-cta">Hemen Satın Al</a>
  </div>
 </div>
</section>