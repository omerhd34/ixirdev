{if $loggedin && $innerTemplate}
 <div class="ixir-split-form">
  <div class="ixir-split-form-head">
   <h1>Şifremi Unuttum</h1>
  </div>
  {include file="$template/includes/alert.tpl" type="error" msg=$LANG.noPasswordResetWhenLoggedIn textcenter=true}
  <button type="button" class="ixir-split-switch-link" data-ixir-auth-goto="login">Giriş Yap'a dön</button>
 </div>
{elseif $successMessage}
 <div class="ixir-split-form">
  <div class="ixir-split-form-head">
   <h1>Şifremi Unuttum</h1>
  </div>
  {include file="$template/includes/alert.tpl" type="success" msg=$successTitle textcenter=true}
  <p class="ixir-reset-success-text">{$successMessage}</p>
  <a href="{$WEB_ROOT}/hesabim" class="btn ixir-split-btn">Giriş Yap</a>
 </div>
{elseif $innerTemplate}
 {include file="$template/password-reset-$innerTemplate.tpl"}
{else}
 {include file="$template/password-reset-email-prompt.tpl"}
{/if}
