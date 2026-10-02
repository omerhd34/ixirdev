<form method="post" action="{$WEB_ROOT}/hesabim" class="ixir-split-form ixir-login-form login-form" role="form"
 novalidate>
 {include file="$template/includes/flashmessage.tpl"}
 <div class="providerLinkingFeedback"></div>

 <div class="ixir-split-form-head">
  <h1>Giriş Yap</h1>
 </div>

 <div class="ixir-field">
  <label for="inputEmail">E-posta Adresiniz:</label>
  <input type="email" name="username" class="form-control" id="inputEmail" placeholder="E-posta" autofocus
   autocomplete="username" data-ixir-validate="1" data-ixir-required="E-posta adresi gerekli." data-ixir-type="email">
 </div>

 <div class="ixir-field">
  <label for="inputPassword">Parola:</label>
  <div class="ixir-password-group">
   <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Parola"
    autocomplete="current-password" data-ixir-validate="1" data-ixir-required="Parola gerekli.">
   <button type="button" class="ixir-toggle-password" tabindex="-1">
    <i class="far fa-eye" aria-hidden="true"></i>
   </button>
  </div>
 </div>

 <div class="ixir-split-meta">
  <label class="ixir-remember" for="rememberme">
   <input type="checkbox" name="rememberme" id="rememberme" value="1" />
   <span class="ixir-remember-box" aria-hidden="true"></span>
   <span class="ixir-remember-text">Beni hatırla</span>
  </label>
 </div>

 <div class="ixir-split-captcha">
  {include file="$template/includes/auth-captcha.tpl"}
 </div>

 <button id="login" type="submit"
  class="btn ixir-split-btn{if $captcha && $captcha->recaptcha->isEnabled() && $captcha->recaptcha->isInvisible()}{$captcha->getButtonClass($captchaForm)}{/if}">
  <i class="fas fa-sign-in-alt" aria-hidden="true"></i>
  Giriş Yap
 </button>

 <div class="ixir-auth-mobile-links">
  <button type="button" class="ixir-split-switch-link" data-ixir-auth-goto="reset">Şifrenizi mi unuttunuz?</button>
 </div>

 {if $linkableProviders}
  <div class="ixir-split-social">
   {include file="$template/includes/linkedaccounts.tpl" linkContext="login" customFeedback=true}
  </div>
 {/if}
</form>

<script>
 jQuery(function() {
  var $form = jQuery(".ixir-login-form");
  if (!$form.length) return;

  function clearFieldError($el) {
   var $field = $el.closest(".ixir-field");
   $el.removeClass("is-invalid");
   $field.removeClass("has-error");
  }

  function setFieldError($el) {
   clearFieldError($el);
   $el.addClass("is-invalid");
   $el.closest(".ixir-field").addClass("has-error");
  }

  function isEmail(value) {
   return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value);
  }

  $form.on("input change", "[data-ixir-validate]", function() {
   var $el = jQuery(this);
   if (jQuery.trim($el.val() || "") !== "") {
    clearFieldError($el);
   }
  });

  function recaptchaOk($current) {
   var $wrap = $current.find(".ixir-captcha-wrap");
   if (!$wrap.length) return true;
   if (!$wrap.find(".g-recaptcha, .recaptcha-container").length) return true;
   var token = jQuery.trim($current.find("[name='g-recaptcha-response']").val() || "");
   if (token) return true;
   var widgetId = $wrap.find(".ixir-g-recaptcha, .g-recaptcha").attr("data-widget-id");
   if (window.grecaptcha && typeof grecaptcha.getResponse === "function") {
    try {
     token = widgetId ? grecaptcha.getResponse(widgetId) : grecaptcha.getResponse();
    } catch (err) {
     token = "";
    }
   }
   return jQuery.trim(token || "") !== "";
  }

  $form.on("submit", function(e) {
   var $current = jQuery(this);
   var firstInvalid = null;
   $current.find("[data-ixir-validate]").each(function() {
    var $el = jQuery(this);
    var value = jQuery.trim($el.val() || "");
    var ok = value !== "";
    if (ok && $el.attr("data-ixir-type") === "email" && !isEmail(value)) {
     ok = false;
    }
    if (!ok) {
     setFieldError($el);
     if (!firstInvalid) firstInvalid = $el;
    } else {
     clearFieldError($el);
    }
   });
   if (firstInvalid) {
    e.preventDefault();
    firstInvalid.focus();
    return false;
   }
   if (!recaptchaOk($current)) {
    e.preventDefault();
    window.ixirCaptchaMessage($current.find(".ixir-captcha-wrap")[0],
     "Devam etmek için lütfen \"Ben robot değilim\" kutusunu işaretleyin.");
    return false;
   }
   window.ixirCaptchaMessage($current.find(".ixir-captcha-wrap")[0], "");
  });

  jQuery(document).off("click", ".ixir-toggle-password").on("click", ".ixir-toggle-password", function(e) {
   e.preventDefault();
   var $btn = jQuery(this);
   var input = $btn.siblings("input")[0];
   var $icon = $btn.find("i");
   if (input && input.type === "password") {
    input.type = "text";
    $icon.removeClass("fa-eye").addClass("fa-eye-slash");
   } else if (input) {
    input.type = "password";
    $icon.removeClass("fa-eye-slash").addClass("fa-eye");
   }
  });
 });
</script>