 <section class="ixir-wh-story ixir-cs-story ixir-slide ixir-slide--left is-slide-on"
  aria-labelledby="ixir-cs-story-title">
  <script>
   {literal}
    (function() {
     var root = document.querySelector('.ixir-wh-story');
     if (!root || !window.IntersectionObserver) return;
     if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
     if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
     root.classList.add('is-armed');
    })();
   {/literal}
  </script>
  <div class="container">
   <div class="ixir-wh-story-intro">
    <span class="ixir-wh-story-icon" aria-hidden="true"><i class="fas fa-info"></i></span>
    {include file="$template/components/Heading.tpl" title="Cloud Server Nedir?" id="ixir-cs-story-title"}
    <p>CPU, RAM, disk gibi fiziksel sunucu kaynaklarının sanallaştırma teknolojisi yardımıyla özel sunuculara ayrılması
     işlemidir. Cloud Server hizmetinde, paylaşımlı hosting paketlerinde bulunan güvenlik ve performans gibi hiçbir
     kısıtlama bulunmamaktadır. Sadece sizin seçtiğiniz kaynak ve konfigürasyonlara göre özel olarak kurulur ve sadece
     size özel bir sunucu hizmeti olmaktadır.</p>
    <a class="ixir-wh-story-cta" href="#ixir-wh-plans">Hemen Satın Al</a>
   </div>
  </div>
</section>