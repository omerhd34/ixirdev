<form method="post" action="{$WEB_ROOT}/hesabim?panel=sifre" role="form" class="ixir-split-form ixir-reset-form">
 <input type="hidden" name="action" value="reset" />

 <div class="ixir-split-form-head">
  <h1>Şifremi Unuttum</h1>
  <p>Hesabınıza kayıtlı e-posta adresinizi girin; güvenlik doğrulamasından sonra yeni şifrenizi belirlemeniz için
   adımları sizinle paylaşacağız.</p>
 </div>

 {if $errorMessage}
  {include file="$template/includes/alert.tpl" type="error" msg=$errorMessage textcenter=true}
 {/if}

 <div class="ixir-field">
  <label for="inputResetEmail">E-posta Adresiniz:</label>
  <input type="email" name="email" class="form-control" id="inputResetEmail" placeholder="E-posta" autofocus>
 </div>

 {if $captcha}
  <div class="ixir-split-captcha">
   {include file="$template/includes/auth-captcha.tpl"}
  </div>
 {/if}

 <button type="submit" class="btn ixir-split-btn">
  Şifre Sıfırlama Bağlantısı Gönder
 </button>
 <div class="ixir-reset-switch-row">
  <button type="button" class="ixir-split-switch-link" data-ixir-auth-goto="login">Giriş Yap'a dön</button>
  <button type="button" class="ixir-split-switch-link ixir-auth-mobile-inline" data-ixir-auth-goto="register">Kayıt
   Ol</button>
 </div>
</form>
<script>
 jQuery(function() {
  var $form = jQuery(".ixir-reset-form");
  if (!$form.length) return;
  $form.on("submit", function(e) {
   var $wrap = $form.find(".ixir-captcha-wrap");
   if (!$wrap.find(".g-recaptcha, .recaptcha-container").length) return;
   var token = jQuery.trim($form.find("[name='g-recaptcha-response']").val() || "");
   if (!token) {
    e.preventDefault();
    window.ixirCaptchaMessage($wrap[0], "Devam etmek için lütfen \"Ben robot değilim\" kutusunu işaretleyin.");
    return false;
   }
   window.ixirCaptchaMessage($wrap[0], "");
  });
 });
</script>