<div class="ixir-auth">
 <div class="ixir-auth-card{if $linkableProviders} has-social{/if}">
  <div class="ixir-auth-head">
   <h1>Giriş Yap</h1>
   <p>Müşteri hesabınıza erişmek için e-posta adresiniz ve şifrenizle giriş yapın.</p>
  </div>

  {include file="$template/includes/flashmessage.tpl"}
  <div class="providerLinkingFeedback"></div>

  <form method="post" action="{$WEB_ROOT}/giris" class="ixir-auth-form login-form" role="form">
   <div class="form-group prepend-icon">
    <label for="inputEmail" class="field-icon"><i class="fas fa-envelope"></i></label>
    <input type="email" name="username" class="field form-control" id="inputEmail" placeholder="{$LANG.clientareaemail}"
     autofocus>
   </div>
   <div class="form-group prepend-icon">
    <label for="inputPassword" class="field-icon"><i class="fas fa-lock"></i></label>
    <input type="password" name="password" class="field form-control" id="inputPassword"
     placeholder="{$LANG.clientareapassword}" autocomplete="current-password">
   </div>

   <div class="ixir-auth-meta">
    <label class="ixir-auth-remember">
     <input type="checkbox" name="rememberme" />
     <span>{$LANG.loginrememberme}</span>
    </label>
    <a href="{$WEB_ROOT}/sifremi-unuttum" class="ixir-auth-forgot">{$LANG.forgotpw}</a>
   </div>

   {if $captcha->isEnabled()}
    <div class="ixir-auth-captcha">
     {include file="$template/includes/captcha.tpl"}
    </div>
   {/if}

   <button id="login" type="submit" class="btn ixir-auth-submit{$captcha->getButtonClass($captchaForm)}">
    {$LANG.loginbutton}
   </button>
  </form>

  {if $condlinks.allowClientRegistration}
   <div class="ixir-auth-foot">
    Hesabınız yok mu?
    <a href="{$WEB_ROOT}/kayit">Kayıt Ol</a>
   </div>
  {/if}
 </div>

 {if $linkableProviders}
  <div class="ixir-auth-social">
   {include file="$template/includes/linkedaccounts.tpl" linkContext="login" customFeedback=true}
  </div>
 {/if}
</div>