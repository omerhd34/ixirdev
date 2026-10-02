<div class="ixir-captcha-wrap">
 <div class="ixir-recaptcha-box">
  <div class="g-recaptcha ixir-g-recaptcha" data-theme="light" {if $ixirRecaptchaSiteKey}
   data-sitekey="{$ixirRecaptchaSiteKey|escape:'html'}" {/if}></div>
 </div>
 <div class="ixir-captcha-msg" role="alert" aria-live="polite" hidden>
  <i class="fas fa-shield-alt" aria-hidden="true"></i>
  <span class="ixir-captcha-msg-text"></span>
 </div>
</div>