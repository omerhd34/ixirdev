<div class="ixir-account-dropdown" role="menu" aria-label="Hesap menüsü">
 <div class="ixir-account-dropdown-head">
  <strong>
   {if $ixirFirstName || $ixirLastName}
    {$ixirFirstName} {$ixirLastName}
   {else}
    Müşteri
   {/if}
  </strong>
  <span>Müşteri Hesabı</span>
 </div>
 <a href="{$WEB_ROOT}/musteri-paneli" class="ixir-account-dropdown-link">
  <i class="fas fa-th-list" aria-hidden="true"></i>
  Müşteri Paneli
 </a>
 <div class="ixir-account-dropdown-label">Hesap Ayarları</div>
 <a href="{$WEB_ROOT}/hesap/profil" class="ixir-account-dropdown-link">
  <i class="fas fa-user" aria-hidden="true"></i>
  Kullanıcı Bilgilerini Düzenle
 </a>
 <a href="{$WEB_ROOT}/musteri-paneli/kisiler" class="ixir-account-dropdown-link">
  <i class="fas fa-users" aria-hidden="true"></i>
  {$LANG.clientareanavcontacts}
 </a>
 <a href="{$WEB_ROOT}/hesap/sifre" class="ixir-account-dropdown-link">
  <i class="fas fa-lock" aria-hidden="true"></i>
  {$LANG.clientareanavchangepw}
 </a>
 <a href="{$WEB_ROOT}/hesap/guvenlik" class="ixir-account-dropdown-link">
  <i class="fas fa-shield-alt" aria-hidden="true"></i>
  {$LANG.clientareanavsecurity}
 </a>
 <a href="{$WEB_ROOT}/musteri-paneli/epostalar" class="ixir-account-dropdown-link">
  <i class="fas fa-envelope" aria-hidden="true"></i>
  {$LANG.navemailssent}
 </a>
 <a href="{$WEB_ROOT}/cikis" class="ixir-account-dropdown-link ixir-account-dropdown-link--logout">
  <i class="fas fa-sign-out-alt" aria-hidden="true"></i>
  Güvenli Çıkış
 </a>
</div>