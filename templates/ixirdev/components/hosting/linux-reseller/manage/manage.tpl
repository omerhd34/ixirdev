<section class="ixir-wh-manage bg-light-blue ixir-slide ixir-slide--right is-slide-on" aria-labelledby="ixir-wh-manage-title">
 <script>
  {literal}
   (function() {
    var root = document.querySelector('.ixir-wh-manage');
    if (!root || !window.IntersectionObserver) return;
    if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
    root.classList.add('is-armed');
   })();
  {/literal}
 </script>
 <div class="container">
  <header class="ixir-wh-manage-head">
   <div class="ixir-badge-pill ixir-ssl-badge-pill"><i class="fas fa-user-cog" aria-hidden="true"></i> MERKEZİ YÖNETİM</div>
   {include file="$template/components/Heading.tpl" title="Hosting Firmanızı Profesyonelce Yönetin!" id="ixir-wh-manage-title"}
   <p>WHM Yönetim Paneli ile Tüm Kontrol Sizde! Müşterilerinizi Dilediğiniz Gibi Yönetin.</p>
  </header>
  <ul class="ixir-wh-manage-grid">
   <li>
    <span class="ixir-wh-manage-icon" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/hosting/manage-easy.svg" alt="">
    </span>
    <h3>Kolay Yönetim</h3>
    <p>WHM kontrol paneli ile müşterilerinizi kolayca yönetin. Dilediğiniz gibi site oluşturun, kaynak atayın, paket
     özelliklerini limitlendirin.</p>
   </li>
   <li>
    <span class="ixir-wh-manage-icon" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/hosting/manage-flex.svg" alt="">
    </span>
    <h3>Esnek Yönetim</h3>
    <p>Müşterilerinize sağladığınız tüm site, e-posta, disk ve trafik kaynaklarını dilediğiniz zaman hızlı ve kolayca
     değiştirin, sorunsuz bir şekilde yönetin.</p>
   </li>
   <li>
    <span class="ixir-wh-manage-icon" aria-hidden="true">
     <img src="{$WEB_ROOT}/templates/{$template}/img/hosting/manage-scale.svg" alt="">
    </span>
    <h3>Ölçeklenebilir Yönetim</h3>
    <p>Mevcut paket özellikleriniz size yeterli gelmiyor mu? Hiç sorun değil, sadece aradaki fiyat farkını ödeyerek bir
     üst pakete geçin, limitlere takılmayın.</p>
   </li>
  </ul>
 </div>
</section>