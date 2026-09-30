<div class="news-bar" id="ixirNewsBar">
 <div class="news-bar-fx" aria-hidden="true"></div>
 <div class="container">
  <div class="news-content">
   <span class="news-badge"><i class="far fa-envelope"></i></span>
   <p>İşletmeniz için en iyi çözüm; <strong>Mail</strong> <strong>Hosting</strong> paketlerimizi incelediniz mi?</p>
   <a href="{$WEB_ROOT}/kurumsal-mail-hosting" class="news-cta"><span class="news-cta-full">Hemen </span>İncele <i
     class="fas fa-arrow-right"></i></a>
  </div>
 </div>
 <button type="button" class="newsClose ixir-close" title="Kapat" aria-label="Kapat"><i
   class="fas fa-times"></i></button>
</div>

<script>
 {literal}
  jQuery(function($) {
   var onAuth = $('body').hasClass('ixir-auth-page') || /\/hesabim(?:\/|$)/i.test(location.pathname);
   if (onAuth) {
    $('#ixirNewsBar').remove();
    return;
   }
   try { localStorage.removeItem('ixirNewsBarClosed'); } catch (e) {}
   $('#ixirNewsBar').show();
   if (typeof window.updateIxirHeaderSpacer === 'function') {
    window.updateIxirHeaderSpacer();
   }
   $(document).on('click', '.newsClose', function(e) {
    e.preventDefault();
    $('#ixirNewsBar').addClass('is-hidden').slideUp(200, function() {
     if (typeof window.updateIxirHeaderSpacer === 'function') {
      window.updateIxirHeaderSpacer();
     }
    });
   });
  });
 {/literal}
</script>