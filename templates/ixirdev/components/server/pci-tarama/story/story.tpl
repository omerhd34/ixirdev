<section class="ixir-wh-story ixir-cs-story ixir-slide ixir-slide--left is-slide-on"
 aria-labelledby="ixir-cs-story-title">
 <script>
  {literal}
   (function() {
    var root = document.querySelector('.ixir-cs-story');
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
   {include file="$template/components/Heading.tpl" title="PCI - DSS Tarama Nedir?" id="ixir-cs-story-title"}
   <p>Online alışverişin her geçen gün giderek arttığı günümüzde, <strong>PCI - DSS Tarama</strong> işlemi giderek önemli ve gerekli bir hale gelmiştir. Bu hizmet, sanal pos sağlanan internet sitelerinin sunucu ve yazılım güvenliğini kontrol eden, gerekli düzenlemelerin yapılmasını şart koyan bir güvenlik standartıdır. Burada amaç kullanıcının veri güvenliğinin sağlanmasıdır. Bu standart <strong>VISA, Mastercard, American Express, Discover Financial Services</strong> gibi kuruluşlar tarafından belirlenmiştir. Ülkemizde de çeşitli banka ve finans kuruluşları bu standartın sağlanmasını talep etmektelerdir.</p>
  </div>
 </div>
</section>