<section class="ixir-help" aria-label="Destek kanalları">
 <img class="ixir-help-visual" src="{$WEB_ROOT}/templates/{$template}/img/help/bg4.webp" alt="" width="1154"
  height="420" decoding="async" aria-hidden="true">
 <div class="container">
  <div class="ixir-help-stage">
   <div class="ixir-help-copy">
    <h2>Sizler İçin Buradayız!</h2>
    <p>Desteğe ihtiyacınız olduğu her anda bize ulaşın</p>
    <div class="ixir-help-cards">
     <a href="tel:+908503027111" class="ixir-help-card" title="ixirhost çağrı merkezi">
      <i class="far fa-phone-volume" aria-hidden="true"></i>
      <span>Telefon Destek</span>
      <small>0850 302 7 111</small>
     </a>
     <a href="mailto:destek@ixirhost.com" class="ixir-help-card" title="ixirhost destek e-posta adresi">
      <i class="far fa-paper-plane" aria-hidden="true"></i>
      <span>E-posta Destek</span>
      <small>destek@ixirhost.com</small>
     </a>
     <a href="{$WEB_ROOT}/destek/yeni" class="ixir-help-card" data-ixir-chat title="Online Destek">
      <i class="far fa-comments" aria-hidden="true"></i>
      <span>Online Destek</span>
      <small>Çevrimiçi</small>
     </a>
    </div>
   </div>
  </div>
 </div>
</section>
<script>
 (function() {
  document.addEventListener('click', function(e) {
   var link = e.target.closest('[data-ixir-chat]');
   if (!link) {
    return;
   }
   if (window.Tawk_API && typeof window.Tawk_API.toggle === 'function') {
    e.preventDefault();
    window.Tawk_API.toggle();
   }
  });
 })();
</script>