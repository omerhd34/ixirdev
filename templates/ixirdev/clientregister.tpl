{if $loggedin}
 <div class="alert alert-success text-center">
  Hesabınız oluşturuldu. Müşteri paneline yönlendiriliyorsunuz...
 </div>
 <script>
  window.location.replace("{$WEB_ROOT}/clientarea.php");
 </script>
{else}
 {assign var="ixirAuthMode" value="login"}
 {if $errormessage || $smarty.get.panel eq "kayit" || $smarty.get.panel eq "register"}
  {assign var="ixirAuthMode" value="register"}
 {elseif $smarty.get.panel eq "sifre" || $smarty.get.panel eq "forgot" || $smarty.get.panel eq "reset"}
  {assign var="ixirAuthMode" value="reset"}
 {/if}
 {include file="$template/includes/auth-split.tpl" ixirAuthMode=$ixirAuthMode}
{/if}