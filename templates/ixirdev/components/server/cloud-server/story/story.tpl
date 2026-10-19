 <section class="ixir-cs-story ixir-wh-story ixir-slide ixir-slide--left is-slide-on"
  aria-labelledby="ixir-cs-story-title">
  <script>
   {literal}
    (function() {
     var root = document.querySelector('.ixir-cs-story') || document.querySelector('.ixir-wh-story');
     if (!root || !window.IntersectionObserver) return;
     if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
     if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
     root.classList.add('is-armed');
    })();
   {/literal}
  </script>
  <div class="container">
   <div class="ixir-cs-story-intro ixir-wh-story-intro">
    <div class="ixir-badge-pill ixir-badge-pill--left ixir-ssl-badge-pill ixir-ssl-badge-pill--left"><i class="fas fa-server" aria-hidden="true"></i> CLOUD NEDİR</div>
    {include file="$template/components/Heading.tpl" title="Cloud Server Nedir?" id="ixir-cs-story-title" class="text-white"}
    <p>CPU, RAM, disk gibi fiziksel sunucu kaynaklarının sanallaştırma teknolojisi yardımıyla özel sunuculara ayrılması
     işlemidir. Cloud Server hizmetinde, paylaşımlı hosting paketlerinde bulunan güvenlik ve performans gibi hiçbir
     kısıtlama bulunmamaktadır. Sadece sizin seçtiğiniz kaynak ve konfigürasyonlara göre özel olarak kurulur ve sadece
     size özel bir sunucu hizmeti olmaktadır.</p>
    <a class="ixir-cs-story-cta ixir-wh-story-cta" href="#ixir-cs-plans">Hemen Satın Al</a>
   </div>
  </div>
</section>