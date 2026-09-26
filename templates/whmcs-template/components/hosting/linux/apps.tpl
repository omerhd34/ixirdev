<section class="ixir-wh-apps" aria-labelledby="ixir-wh-apps-title">
 <script>
  {literal}
   (function() {
    var root = document.querySelector('.ixir-wh-apps');
    if (!root || !window.IntersectionObserver) return;
    if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    if (window.matchMedia && window.matchMedia('(max-width: 1023px)').matches) return;
    root.classList.add('is-armed');
   })();
  {/literal}
 </script>
 <div class="container">
  <div class="ixir-wh-apps-stack" aria-hidden="true">
   <span class="ixir-wh-apps-tile ixir-wh-apps-tile--back"></span>
   <span class="ixir-wh-apps-tile ixir-wh-apps-tile--mid"></span>
   <span class="ixir-wh-apps-tile ixir-wh-apps-tile--side"></span>
   <span class="ixir-wh-apps-tile ixir-wh-apps-tile--front">
    <i class="fab fa-wordpress" aria-hidden="true"></i>
   </span>
  </div>
  <h2 id="ixir-wh-apps-title">Hazır Sistemler</h2>
  <p class="ixir-wh-apps-lead">Tek Tıkla Yükle ve Başla</p>
  <p class="ixir-wh-apps-copy">Dünyanın en popüler içerik yönetim sistemlerinin son versiyonlarını tek tıkla kurulum
   imkanı
   sunuyoruz. Üstelik hiç bir versiyon güncelleme işlemi yapmanıza gerek kalmadan yönetim
   gerçekleştirebilirsiniz.</p>
  <ul class="ixir-wh-apps-list">
   <li>
    <span class="ixir-wh-app ixir-wh-app--wp" aria-hidden="true"><i class="fab fa-wordpress"></i></span>
    WordPress
   </li>
   <li>
    <span class="ixir-wh-app ixir-wh-app--oc" aria-hidden="true"><i class="fab fa-opencart"></i></span>
    OpenCart
   </li>
   <li>
    <span class="ixir-wh-app ixir-wh-app--drupal" aria-hidden="true"><i class="fab fa-drupal"></i></span>
    Drupal
   </li>
   <li>
    <span class="ixir-wh-app ixir-wh-app--joomla" aria-hidden="true"><i class="fab fa-joomla"></i></span>
    Joomla
   </li>
   <li>
    <span class="ixir-wh-app ixir-wh-app--magento" aria-hidden="true"><i class="fab fa-magento"></i></span>
    Magento
   </li>
   <li>
    <span class="ixir-wh-app ixir-wh-app--presta"><img src="{$WEB_ROOT}/templates/{$template}/img/prestashop.png"
      alt="PrestaShop"></span>
    PrestaShop
   </li>
  </ul>
 </div>
</section>