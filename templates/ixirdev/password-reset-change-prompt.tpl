<form class="ixir-split-form ixir-reset-form using-password-strength" method="POST"
 action="{routePath('password-reset-change-perform')}" role="form">
 <input type="hidden" name="answer" id="answer" value="{$securityAnswer}" />

 <div class="ixir-split-form-head">
  <h1>Şifremi Unuttum</h1>
 </div>

 {if $errorMessage}
  {include file="$template/includes/alert.tpl" type="error" msg=$errorMessage textcenter=true}
 {/if}

 <div class="ixir-field" id="newPassword1">
  <div class="ixir-domain-checker">
   <div class="ixir-dc-input ixir-dc-float ixir-password-wrap">
    <span class="ixir-dc-icon" aria-hidden="true"><i class="fas fa-lock"></i></span>
    <input type="password" name="newpw" id="inputNewPassword1" class="form-control" placeholder=" "
     autocomplete="new-password" required>
    <label for="inputNewPassword1" class="ixir-dc-label">Yeni Şifre</label>
    <button type="button" class="ixir-toggle-password" tabindex="-1" aria-label="Şifreyi göster/gizle">
     <i class="far fa-eye" aria-hidden="true"></i>
    </button>
   </div>
  </div>
 </div>

 <div class="ixir-field" id="newPassword2">
  <div class="ixir-domain-checker">
   <div class="ixir-dc-input ixir-dc-float ixir-password-wrap">
    <span class="ixir-dc-icon" aria-hidden="true"><i class="fas fa-lock"></i></span>
    <input type="password" name="confirmpw" id="inputNewPassword2" class="form-control" placeholder=" "
     autocomplete="new-password" required>
    <label for="inputNewPassword2" class="ixir-dc-label">Yeni Şifre (Tekrar)</label>
    <button type="button" class="ixir-toggle-password" tabindex="-1" aria-label="Şifreyi göster/gizle">
     <i class="far fa-eye" aria-hidden="true"></i>
    </button>
   </div>
  </div>
  <div id="inputNewPassword2Msg"></div>
 </div>

 <div class="ixir-field ixir-pw-strength-field">
  <label>Şifre Gücü</label>
  {include file="$template/includes/pwstrength.tpl"}
 </div>

 <button type="submit" name="submit" class="btn ixir-split-btn" value="1">
  Şifreyi Kaydet
 </button>

 <a href="{$WEB_ROOT}/hesabim" class="ixir-reset-back">İptal</a>
</form>