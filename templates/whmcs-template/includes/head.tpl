{if !$ixirDomainSearchPage && $filename == 'cart' && $domain == 'register'}
 {assign var="ixirDomainSearchPage" value=true}
{/if}
{if $templatefile == 'domaintransfer'}
 {assign var="ixirDomainTransferPage" value=true}
{/if}
{assign var="ixirLoadRecaptcha" value=false}
{if $ixirIsAuthPage || $showingLoginPage || $templatefile == 'login' || $templatefile == 'clientregister' || $templatefile == 'password-reset' || $filename == 'ixir-hesabim' || $templatefile == 'contact'}
 {assign var="ixirLoadRecaptcha" value=true}
{/if}
<!-- Styling -->
<link href="{assetPath file='all.min.css'}?v={$versionHash}-r1" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">
{assetExists file="base.css"}
<link href="{$__assetPath__}?v={$versionHash}-r21" rel="stylesheet">
{/assetExists}
<link href="{$WEB_ROOT}/templates/{$template}/components/common/common.css?v={$versionHash}-r1" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/components/header/header.css?v={$versionHash}-r37" rel="stylesheet">
{if $templatefile == 'homepage'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/news-bar/news-bar.css?v={$versionHash}-r12" rel="stylesheet">
{/if}
{if $templatefile == 'homepage' || $templatefile == 'whois-sorgulama' || $ixirDomainSearchPage || $ixirDomainTransferPage || ($templatefile == 'product-landing' && ($ixirPageSlug == 'linux-hosting' || $ixirPageSlug == 'windows-hosting' || $ixirPageSlug == 'wordpress-hosting' || $ixirPageSlug == 'developer-hosting' || $ixirPageSlug == 'cloud-drive'))}
 <link href="{$WEB_ROOT}/templates/{$template}/components/homepage-hero/homepage-hero.css?v={$versionHash}-r54"
  rel="stylesheet">
{/if}
{if $ixirDomainSearchPage || $ixirDomainTransferPage || $templatefile == 'whois-sorgulama'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/domain/domain.css?v={$versionHash}-r105" rel="stylesheet">
{/if}
{if $templatefile == 'homepage'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/packages/packages.css?v={$versionHash}-r18" rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/promo-carousel/promo-carousel.css?v={$versionHash}-r12"
  rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/trust/trust.css?v={$versionHash}-r11" rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/turkey-stats/turkey-stats.css?v={$versionHash}-r22"
  rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/testimonials/testimonials.css?v={$versionHash}-r12"
  rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/solutions/solutions.css?v={$versionHash}-r12" rel="stylesheet">
{/if}
{if !$ixirIsAuthPage && !$showingLoginPage && $templatefile != 'login' && $templatefile != 'clientregister' && $templatefile != 'password-reset' && $filename != 'ixir-hesabim' && $filename != 'register'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/help/help.css?v={$versionHash}-r17" rel="stylesheet">
{/if}
<link href="{$WEB_ROOT}/templates/{$template}/components/footer/footer.css?v={$versionHash}-r42" rel="stylesheet">
{if $ixirIsAuthPage || $showingLoginPage || $templatefile == 'login' || $templatefile == 'logout' || $templatefile == 'clientregister' || $templatefile == 'password-reset' || $filename == 'ixir-hesabim'}
 <link href="{$WEB_ROOT}/templates/{$template}/css/auth.css?v={$versionHash}-r65" rel="stylesheet">
{/if}
{if $templatefile == 'whois-sorgulama'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/domain/whois/whois.css?v={$versionHash}-r19" rel="stylesheet">
{/if}
{if $ixirCorporate || $templatefile == 'kurumsal' || $templatefile == 'contact'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/kurumsal/kurumsal.css?v={$versionHash}-r33" rel="stylesheet">
{/if}
{if $templatefile == 'product-landing'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/hosting/hosting.css?v={$versionHash}-r62" rel="stylesheet">
{/if}


<!-- Favicon -->
<link rel="icon" href="{$WEB_ROOT}/templates/{$template}/img/favicon.ico?v={$versionHash}-r1" type="image/x-icon">

<script type="text/javascript">
 var csrfToken = '{$token}',
 markdownGuide = '{lang|addslashes key="markdown.title"}',
 locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
 saved = '{lang|addslashes key="markdown.saved"}',
 saving = '{lang|addslashes key="markdown.saving"}',
 whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}";
 {if $ixirLoadRecaptcha && $captcha && !($loggedin && $templatefile == 'clientregister')}{$captcha->getPageJs()}{/if}
</script>
<script src="{assetPath file='scripts.min.js'}?v={$versionHash}-r1"></script>
{if $ixirLoadRecaptcha}
 <script>
  window.ixirMarkRecaptchaBroken = function(wrap) {
   if (!wrap || wrap.classList.contains("is-broken")) return;
   wrap.classList.add("is-broken");
   wrap.innerHTML = "";
   wrap.hidden = true;
   wrap.style.display = "none";
   var slot = wrap.closest(".ixir-contact-captcha, .ixir-split-captcha");
   if (slot) {
    slot.hidden = true;
    slot.style.display = "none";
   }
  };
  (function() {
   var nativeError = console.error;
   console.error = function() {
    var msg = Array.prototype.slice.call(arguments).join(" ");
    if (/invalid site key|geçersiz site anahtarı|site sahibinin görmesi gereken hata|recaptcha/i.test(msg) &&
     /invalid|geçersiz|error|hata/i.test(msg)) {
     document.querySelectorAll(".ixir-captcha-wrap").forEach(window.ixirMarkRecaptchaBroken);
    }
    return nativeError.apply(console, arguments);
   };
  })();
  window.ixirOnRecaptchaLoad = function() {
   if (typeof grecaptcha === "undefined" || typeof grecaptcha.render !== "function") return;
   var siteKey = "";
   if (typeof recaptcha !== "undefined" && recaptcha.siteKey) {
    siteKey = recaptcha.siteKey;
   }
   document.querySelectorAll(".ixir-g-recaptcha").forEach(function(el) {
    if (el.getAttribute("data-widget-id")) return;
    var key = el.getAttribute("data-sitekey") || siteKey;
    if (!key) return;
    if (el.offsetParent === null) return;
    var wrap = el.closest(".ixir-captcha-wrap");
    try {
     var id = grecaptcha.render(el, {
      sitekey: key,
      theme: "light",
      "error-callback": function() {
       window.ixirMarkRecaptchaBroken(wrap);
      }
     });
     el.setAttribute("data-widget-id", String(id));
    } catch (err) {
     window.ixirMarkRecaptchaBroken(wrap);
    }
   });
  };
  document.addEventListener("DOMContentLoaded", function() {
   if (typeof grecaptcha !== "undefined") {
    window.ixirOnRecaptchaLoad();
   }
  });
 </script>
 <script src="https://www.google.com/recaptcha/api.js?hl=tr&onload=ixirOnRecaptchaLoad&render=explicit" async defer>
 </script>
{/if}

{if $templatefile == "viewticket" && !$loggedin}
 <meta name="robots" content="noindex" />
{/if}