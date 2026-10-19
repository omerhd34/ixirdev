<section class="ixir-pci-story ixir-wh-story ixir-wh-story--light bg-light-blue ixir-slide ixir-slide--right is-slide-on"
 aria-labelledby="ixir-pci-story-title">
 <script>
  {literal}
   (function() {
    var root = document.querySelector('.ixir-pci-story') || document.querySelector('.ixir-wh-story');
    if (!root || !window.IntersectionObserver) return;
    if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
    root.classList.add('is-armed');
   })();
  {/literal}
 </script>
 <div class="container">
  <div class="pci-story-intro ixir-pci-story-intro ixir-wh-story-intro">
   <div class="ixir-badge-pill ixir-badge-pill--left ixir-ssl-badge-pill ixir-ssl-badge-pill--left"><i class="fas fa-shield-alt" aria-hidden="true"></i> PCI-DSS NEDİR</div>
   {include file="$template/components/Heading.tpl" title="PCI - DSS Tarama Nedir?" id="ixir-pci-story-title" class="text-white"}
   <p>Online alışverişin her geçen gün giderek arttığı günümüzde, <strong>PCI - DSS Tarama</strong> işlemi giderek önemli ve gerekli bir hale gelmiştir. Bu hizmet, sanal pos sağlanan internet sitelerinin sunucu ve yazılım güvenliğini kontrol eden, gerekli düzenlemelerin yapılmasını şart koyan bir güvenlik standartıdır. Burada amaç kullanıcının veri güvenliğinin sağlanmasıdır. Bu standart <strong>VISA, Mastercard, American Express, Discover Financial Services</strong> gibi kuruluşlar tarafından belirlenmiştir. Ülkemizde de çeşitli banka ve finans kuruluşları bu standartın sağlanmasını talep etmektelerdir.</p>
   <a class="pci-story-cta ixir-pci-story-cta ixir-wh-story-cta" href="#ixir-pci-cta">Hemen Satın Al</a>
  </div>
 </div>
</section>