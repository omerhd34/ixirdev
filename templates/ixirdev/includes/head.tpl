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
<link href="{$WEB_ROOT}/templates/{$template}/css/common.css?v={$versionHash}-r1" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/components/header/header.css?v={$versionHash}-r37" rel="stylesheet">
{if $templatefile == 'homepage'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/news-bar/news-bar.css?v={$versionHash}-r12"
  rel="stylesheet">
{/if}
{if $templatefile == 'homepage' || $templatefile == 'whois-sorgulama' || $ixirDomainSearchPage || $ixirDomainTransferPage || ($templatefile == 'product-landing' && ($ixirPageSlug == 'linux-hosting' || $ixirPageSlug == 'windows-hosting' || $ixirPageSlug == 'wordpress-hosting' || $ixirPageSlug == 'developer-hosting' || $ixirPageSlug == 'cloud-drive' || $ixirPageSlug == 'kurumsal-mail-hosting' || $ixirPageSlug == 'linux-reseller-hosting' || $ixirPageSlug == 'windows-reseller-hosting' || $ixirPageSlug == 'cloud-server' || $ixirPageSlug == 'dedicated-server'))}
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/homepage-hero/homepage-hero.css?v={$versionHash}-r57"
  rel="stylesheet">
{/if}

{if $ixirDomainSearchPage || $ixirDomainTransferPage || $templatefile == 'whois-sorgulama'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/domain/domain.css?v={$versionHash}-r106" rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/domain/domain-float.css?v={$versionHash}-r2" rel="stylesheet">
 {if $ixirDomainSearchPage}
  <link href="{$WEB_ROOT}/templates/{$template}/components/domain/sorgu/sorgu.css?v={$versionHash}-r2" rel="stylesheet">
 {elseif $ixirDomainTransferPage}
  <link href="{$WEB_ROOT}/templates/{$template}/components/domain/transfer/transfer.css?v={$versionHash}-r1"
   rel="stylesheet">
 {/if}
{/if}

{if $templatefile == 'homepage'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/packages/packages.css?v={$versionHash}-r18"
  rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/promo-carousel/promo-carousel.css?v={$versionHash}-r12"
  rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/trust/trust.css?v={$versionHash}-r11" rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/turkey-stats/turkey-stats.css?v={$versionHash}-r24"
  rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/testimonials/testimonials.css?v={$versionHash}-r12"
  rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/solutions/solutions.css?v={$versionHash}-r12"
  rel="stylesheet">
{/if}
{if !$ixirIsAuthPage && !$showingLoginPage && $templatefile != 'login' && $templatefile != 'clientregister' && $templatefile != 'password-reset' && $filename != 'ixir-hesabim' && $filename != 'register'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/help/help.css?v={$versionHash}-r17" rel="stylesheet">
{/if}
<link href="{$WEB_ROOT}/templates/{$template}/components/footer/footer.css?v={$versionHash}-r44" rel="stylesheet">
{if $templatefile == 'homepage'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/ixir-next/ixir-next.css?v={$versionHash}-r1"
  rel="stylesheet">
{/if}
{if $ixirIsAuthPage || $showingLoginPage || $templatefile == 'login' || $templatefile == 'logout' || $templatefile == 'clientregister' || $templatefile == 'password-reset' || $filename == 'ixir-hesabim'}
 <link href="{$WEB_ROOT}/templates/{$template}/css/auth.css?v={$versionHash}-r67" rel="stylesheet">
{/if}
{if $templatefile == 'whois-sorgulama'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/domain/whois/whois.css?v={$versionHash}-r20" rel="stylesheet">
{/if}
{if $ixirCorporate || $templatefile == 'kurumsal' || $templatefile == 'contact'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/kurumsal/kurumsal.css?v={$versionHash}-r33" rel="stylesheet">
{/if}
{if $templatefile == 'product-landing'}
 {assign var=ixirHostingPageCss value=''}
 {if $ixirPageSlug == 'linux-hosting'}{assign var=ixirHostingPageCss value='linux/linux'}
 {elseif $ixirPageSlug == 'windows-hosting'}{assign var=ixirHostingPageCss value='windows/windows'}
 {elseif $ixirPageSlug == 'wordpress-hosting'}{assign var=ixirHostingPageCss value='wordpress/wordpress'}
 {elseif $ixirPageSlug == 'developer-hosting'}{assign var=ixirHostingPageCss value='developer/developer'}
 {elseif $ixirPageSlug == 'cloud-drive'}{assign var=ixirHostingPageCss value='cloud-drive/cloud-drive'}
 {elseif $ixirPageSlug == 'kurumsal-mail-hosting'}{assign var=ixirHostingPageCss value='kurumsal-mail/kurumsal-mail'}
 {/if}
 <link href="{$WEB_ROOT}/templates/{$template}/components/hosting/hosting.css?v={$versionHash}-r109" rel="stylesheet">
 {if $ixirPageSlug == 'linux-reseller-hosting' || $ixirPageSlug == 'windows-reseller-hosting'}
  <link href="{$WEB_ROOT}/templates/{$template}/components/hosting/reseller.css?v={$versionHash}-r1" rel="stylesheet">
 {/if}
 {if $ixirHostingPageCss}
  <link href="{$WEB_ROOT}/templates/{$template}/components/hosting/{$ixirHostingPageCss}.css?v={$versionHash}-r1"
   rel="stylesheet">
 {/if}
 {if $ixirPageSlug == 'cloud-server'}
  <link href="{$WEB_ROOT}/templates/{$template}/components/server/cloud-server/cloud-server.css?v={$versionHash}-r16"
   rel="stylesheet">
 {/if}
 {if $ixirPageSlug == 'dedicated-server'}
  <link
   href="{$WEB_ROOT}/templates/{$template}/components/server/dedicated-server/dedicated-server.css?v={$versionHash}-r10"
   rel="stylesheet">
 {/if}
 <script src="{$WEB_ROOT}/templates/{$template}/components/hosting/plans-slider.js?v={$versionHash}-r7" defer></script>
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
  window.ixirCaptchaMessage = function(wrap, text) {
   if (!wrap) return;
   var box = wrap.querySelector(".ixir-captcha-msg");
   if (!box) return;
   var label = box.querySelector(".ixir-captcha-msg-text");
   if (text) {
    label.textContent = text;
    box.hidden = false;
    wrap.classList.add("is-invalid");
    wrap.classList.remove("is-shake");
    void wrap.offsetWidth;
    wrap.classList.add("is-shake");
   } else {
    box.hidden = true;
    wrap.classList.remove("is-invalid", "is-shake");
   }
  };
  window.ixirFitRecaptcha = function(box) {
   if (!box) return;
   var g = box.querySelector(".ixir-g-recaptcha");
   var w = box.clientWidth;
   if (!g || !w) return;
   var MAX_SCALE = 1;
   var scale = Math.min(w / 304, MAX_SCALE);
   g.style.transformOrigin = "0 0";
   g.style.transform = "scale(" + scale + ")";
   box.style.height = Math.round(78 * scale) + "px";
  };
  window.ixirFitAllRecaptcha = function() {
   document.querySelectorAll(".ixir-recaptcha-box").forEach(function(box) {
    window.ixirFitRecaptcha(box);
    if (box.getAttribute("data-fit") || typeof ResizeObserver === "undefined") return;
    box.setAttribute("data-fit", "1");
    new ResizeObserver(function() {
     window.ixirFitRecaptcha(box);
    }).observe(box);
   });
  };
  window.addEventListener("resize", window.ixirFitAllRecaptcha);
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
    var id;
    try {
     id = grecaptcha.render(el, {
      sitekey: key,
      theme: "light",
      callback: function() {
       window.ixirCaptchaMessage(wrap, "");
      },
      "expired-callback": function() {
       try {
        grecaptcha.reset(id);
       } catch (e) {}
       window.ixirCaptchaMessage(wrap,
        "Doğrulamanın süresi doldu. Lütfen \"Ben robot değilim\" kutusunu tekrar işaretleyin.");
      },
      "error-callback": function() {
       window.ixirMarkRecaptchaBroken(wrap);
      }
     });
     el.setAttribute("data-widget-id", String(id));
     window.ixirFitAllRecaptcha();
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