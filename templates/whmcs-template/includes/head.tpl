<!-- Styling -->
<link href="{assetPath file='all.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">
{assetExists file="base.css"}
<link href="{$__assetPath__}?v={$versionHash}-r5" rel="stylesheet">
{/assetExists}
<link href="{$WEB_ROOT}/templates/{$template}/components/header/header.css?v={$versionHash}-r10" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/components/news-bar/news-bar.css?v={$versionHash}-r3" rel="stylesheet">
{if $templatefile == 'homepage'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/hero/hero.css?v={$versionHash}" rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/packages/packages.css?v={$versionHash}" rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/promo-carousel/promo-carousel.css?v={$versionHash}-r5"
  rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/trust/trust.css?v={$versionHash}-r5" rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/turkey-stats/turkey-stats.css?v={$versionHash}-r12"
  rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/testimonials/testimonials.css?v={$versionHash}-r6"
  rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/solutions/solutions.css?v={$versionHash}-r5" rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/help/help.css?v={$versionHash}-r9" rel="stylesheet">
{/if}
<link href="{$WEB_ROOT}/templates/{$template}/components/footer/footer.css?v={$versionHash}-r29" rel="stylesheet">
{if $showingLoginPage || $templatefile == 'login' || $templatefile == 'logout' || $templatefile == 'clientregister' || $templatefile == 'password-reset'}
 <link href="{$WEB_ROOT}/templates/{$template}/css/auth.css?v={$versionHash}-r59" rel="stylesheet">
{/if}
{if $templatefile == 'whois-sorgulama'}
 <link href="{$WEB_ROOT}/templates/{$template}/css/whois.css?v={$versionHash}" rel="stylesheet">
{/if}
{if $templatefile == 'product-landing'}
 <link href="{$WEB_ROOT}/templates/{$template}/css/product-landing.css?v={$versionHash}" rel="stylesheet">
{/if}

<!-- Favicon -->
<link rel="icon" href="{$WEB_ROOT}/templates/{$template}/img/favicon.ico?v={$versionHash}" type="image/x-icon">

<script type="text/javascript">
 var csrfToken = '{$token}',
 markdownGuide = '{lang|addslashes key="markdown.title"}',
 locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
 saved = '{lang|addslashes key="markdown.saved"}',
 saving = '{lang|addslashes key="markdown.saving"}',
 whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}";
 {if $captcha && !($loggedin && $templatefile == 'clientregister')}{$captcha->getPageJs()}{/if}
</script>
<script src="{assetPath file='scripts.min.js'}?v={$versionHash}"></script>
{if $showingLoginPage || $templatefile == 'login' || $templatefile == 'clientregister' || $templatefile == 'password-reset'}
 <script>
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
    var id = grecaptcha.render(el, {
     sitekey: key,
     theme: "light"
    });
    el.setAttribute("data-widget-id", String(id));
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