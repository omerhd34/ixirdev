<form method="post" action="{routePath('password-reset-security-verify')}" class="ixir-split-form ixir-reset-form"
 role="form">
 <div class="ixir-split-form-head">
  <h1>Şifremi Unuttum</h1>
 </div>

 {if $errorMessage}
  {include file="$template/includes/alert.tpl" type="error" msg=$errorMessage textcenter=true}
 {/if}

 <div class="ixir-field">
  <label for="inputAnswer">{$securityQuestion}</label>
  <input type="text" name="answer" class="form-control" id="inputAnswer" placeholder="Yanıtınız" autofocus
   autocomplete="off" required>
 </div>

 <button type="submit" class="btn ixir-split-btn">
  Devam Et
 </button>

 <a href="{$WEB_ROOT}/hesabim?panel=sifre" class="ixir-reset-back">Geri dön</a>
</form>