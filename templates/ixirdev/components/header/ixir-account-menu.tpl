<style>
 .ixir-account-dropdown-link:hover .ixir-account-dropdown-icon,
 .ixir-account-dropdown-link:focus .ixir-account-dropdown-icon {
  width: 35px !important;
  height: 35px !important;
  flex: 0 0 35px !important;
  transform: none !important;
 }

 .ixir-account-dropdown-link:hover .ixir-account-dropdown-icon i,
 .ixir-account-dropdown-link:focus .ixir-account-dropdown-icon i {
  font-size: 14px !important;
 }
</style>
<div class="ixir-account-dropdown" role="menu" aria-label="Hesap menüsü">
 <div class="ixir-account-dropdown-head">
  <span class="ixir-account-avatar" aria-hidden="true">
   {if $ixirFirstName || $ixirLastName}
    {if $ixirFirstName}{$ixirFirstName|truncate:1:"":true|upper}{/if}{if $ixirLastName}{$ixirLastName|truncate:1:"":true|upper}{/if}
   {else}
    M
   {/if}
  </span>
  <div class="ixir-account-dropdown-identity">
   <strong>
    {if $ixirFirstName || $ixirLastName}
     {$ixirFirstName} {$ixirLastName}
    {else}
     Müşteri
    {/if}
   </strong>
   <span class="ixir-account-role">Müşteri Hesabı</span>
  </div>
 </div>
 <a href="{$WEB_ROOT}/musteri-paneli#genel-bakis" class="ixir-account-dropdown-link ixir-account-dropdown-link--panel"
  role="menuitem">
  <span class="ixir-account-dropdown-icon"><i class="fas fa-th-list" aria-hidden="true"></i></span>
  <span class="ixir-account-dropdown-text">Müşteri Paneli</span>
  <i class="fas fa-arrow-right ixir-account-panel-arrow" aria-hidden="true"></i>
 </a>
 <div class="ixir-account-dropdown-label">Hesap Ayarları</div>
 <a href="{$WEB_ROOT}/hesap/profil" class="ixir-account-dropdown-link" role="menuitem">
  <span class="ixir-account-dropdown-icon"><i class="fas fa-user" aria-hidden="true"></i></span>
  <span class="ixir-account-dropdown-text">Kullanıcı Bilgilerini Düzenle</span>
 </a>
 <a href="{$WEB_ROOT}/musteri-paneli/kisiler" class="ixir-account-dropdown-link" role="menuitem">
  <span class="ixir-account-dropdown-icon"><i class="fas fa-users" aria-hidden="true"></i></span>
  <span class="ixir-account-dropdown-text">{$LANG.clientareanavcontacts}</span>
 </a>
 <a href="{$WEB_ROOT}/hesap/sifre" class="ixir-account-dropdown-link" role="menuitem">
  <span class="ixir-account-dropdown-icon"><i class="fas fa-lock" aria-hidden="true"></i></span>
  <span class="ixir-account-dropdown-text">{$LANG.clientareanavchangepw}</span>
 </a>
 <a href="{$WEB_ROOT}/hesap/guvenlik" class="ixir-account-dropdown-link" role="menuitem">
  <span class="ixir-account-dropdown-icon"><i class="fas fa-shield-alt" aria-hidden="true"></i></span>
  <span class="ixir-account-dropdown-text">{$LANG.clientareanavsecurity}</span>
 </a>
 <a href="{$WEB_ROOT}/musteri-paneli/epostalar" class="ixir-account-dropdown-link" role="menuitem">
  <span class="ixir-account-dropdown-icon"><i class="fas fa-envelope" aria-hidden="true"></i></span>
  <span class="ixir-account-dropdown-text">{$LANG.navemailssent}</span>
 </a>
 <div class="ixir-account-dropdown-foot">
  <a href="{$WEB_ROOT}/cikis" class="ixir-account-dropdown-link ixir-account-dropdown-link--logout" role="menuitem">
   <span class="ixir-account-dropdown-icon"><i class="fas fa-sign-out-alt" aria-hidden="true"></i></span>
   <span class="ixir-account-dropdown-text">Güvenli Çıkış</span>
  </a>
 </div>
</div>