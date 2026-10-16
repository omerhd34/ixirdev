{if !$ixirDomainSearchPage && (($filename == 'cart' && $domain == 'register') || $templatefile == 'domainregister')}
 {assign var="ixirDomainSearchPage" value=true}
{/if}
{if !$ixirDomainTransferPage && ($templatefile == 'domaintransfer' || ($filename == 'cart' && $domain == 'transfer'))}
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
<link href="{$__assetPath__}?v={$versionHash}-r27" rel="stylesheet">
{/assetExists}
<link href="{$WEB_ROOT}/templates/{$template}/css/common.css?v={$versionHash}-r3" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/components/header/header.css?v={$versionHash}-r37" rel="stylesheet">
{if $templatefile == 'homepage'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/news-bar/news-bar.css?v={$versionHash}-r12"
  rel="stylesheet">
{/if}
{if $templatefile == 'homepage' || $templatefile == 'whois-sorgulama' || $ixirDomainSearchPage || $ixirDomainTransferPage || ($templatefile == 'product-landing' && ($ixirPageSlug == 'linux-hosting' || $ixirPageSlug == 'windows-hosting' || $ixirPageSlug == 'wordpress-hosting' || $ixirPageSlug == 'developer-hosting' || $ixirPageSlug == 'cloud-drive' || $ixirPageSlug == 'kurumsal-mail-hosting' || $ixirPageSlug == 'kurumsal-mail-server' || $ixirPageSlug == 'linux-reseller-hosting' || $ixirPageSlug == 'windows-reseller-hosting' || $ixirPageSlug == 'cloud-server' || $ixirPageSlug == 'colocation' || $ixirPageSlug == 'co-location' || $ixirPageSlug == 'dedicated-server' || $ixirPageSlug == 'pci-tarama' || $ixirPageSlug == 'ek-servisler' || $ixirPageSlug == 'server-servisleri' || $ixirPageSlug == 'antispam' || $ixirPageSlug == 'outbound-mail-gateway'))}
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/homepage-hero/homepage-hero.css?v={$versionHash}-r58"
  rel="stylesheet">
{/if}

{if $ixirDomainSearchPage || $ixirDomainTransferPage || $templatefile == 'whois-sorgulama'}
 {if $ixirDomainSearchPage}
  {assign var=ixirDomainCss value=[
   'domain/float-label/float-label',
   'domain/shared/hero/hero',
   'domain/shared/common/common',
   'domain/shared/features/features',
   'domain/shared/prices/prices',
   'domain/shared/faq/faq',
   'domain/sorgu/results/results',
   'domain/sorgu/prices/prices',
   'domain/sorgu/hero/hero',
   'domain/sorgu/faq/faq',
   'domain/sorgu/transfer-cta/transfer-cta'
  ]}
 {elseif $ixirDomainTransferPage}
  {assign var=ixirDomainCss value=[
   'domain/float-label/float-label',
   'domain/shared/hero/hero',
   'domain/shared/common/common',
   'domain/shared/features/features',
   'domain/shared/prices/prices',
   'domain/shared/faq/faq',
   'domain/transfer/transfer',
   'domain/transfer/hero/hero',
   'domain/transfer/faq/faq',
   'domain/transfer/steps/steps',
   'domain/transfer/notes/notes',
   'domain/transfer/features/features',
   'domain/transfer/prices/prices'
  ]}
 {else}
  {assign var=ixirDomainCss value=[
   'domain/float-label/float-label',
   'domain/shared/hero/hero',
   'domain/shared/common/common',
   'domain/shared/faq/faq',
   'domain/whois/hero/hero',
   'domain/whois/results/results'
  ]}
 {/if}
 {foreach from=$ixirDomainCss item=ixirCss}
  <link href="{$WEB_ROOT}/templates/{$template}/components/{$ixirCss}.css?v={$versionHash}-r117"
   rel="stylesheet">
 {/foreach}
{/if}

{if $templatefile == 'homepage'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/packages/packages.css?v={$versionHash}-r18"
  rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/promo-carousel/promo-carousel.css?v={$versionHash}-r16"
  rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/trust/trust.css?v={$versionHash}-r11" rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/turkey-stats/turkey-stats.css?v={$versionHash}-r24"
  rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/solutions/solutions.css?v={$versionHash}-r12"
  rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/testimonials/testimonials.css?v={$versionHash}-r12"
  rel="stylesheet">
{/if}
{if !$ixirIsAuthPage && !$showingLoginPage && $templatefile != 'login' && $templatefile != 'clientregister' && $templatefile != 'password-reset' && $filename != 'ixir-hesabim' && $filename != 'register'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/help/help.css?v={$versionHash}-r18" rel="stylesheet">
{/if}
<link href="{$WEB_ROOT}/templates/{$template}/components/footer/footer.css?v={$versionHash}-r44" rel="stylesheet">
{if $templatefile == 'homepage'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/home/ixir-next/ixir-next.css?v={$versionHash}-r2"
  rel="stylesheet">
{/if}
{if $ixirIsAuthPage || $showingLoginPage || $templatefile == 'login' || $templatefile == 'logout' || $templatefile == 'clientregister' || $templatefile == 'password-reset' || $filename == 'ixir-hesabim'}
 <link href="{$WEB_ROOT}/templates/{$template}/css/auth.css?v={$versionHash}-r73" rel="stylesheet">
{/if}
{if $ixirCorporate || $templatefile == 'kurumsal' || $templatefile == 'contact'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/kurumsal/kurumsal.css?v={$versionHash}-r34" rel="stylesheet">
{/if}
{if $templatefile == 'product-landing'}
 {assign var=ixirPageCss value=[]}
 {if $ixirPageSlug == 'linux-hosting'}
  {assign var=ixirPageCss value=[
   'hosting/shared/plans/plans',
   'hosting/shared/story/story',
   'hosting/shared/compare/compare',
   'hosting/shared/common/common',
   'hosting/shared/faq/faq',
   'hosting/shared/guide/guide',
   'hosting/shared/hero/hero',
   'hosting/linux/apps/apps'
  ]}
 {elseif $ixirPageSlug == 'windows-hosting'}
  {assign var=ixirPageCss value=[
   'hosting/shared/plans/plans',
   'hosting/shared/story/story',
   'hosting/shared/compare/compare',
   'hosting/shared/common/common',
   'hosting/shared/faq/faq',
   'hosting/shared/guide/guide',
   'hosting/shared/hero/hero',
   'hosting/windows/hero/hero'
  ]}
 {elseif $ixirPageSlug == 'wordpress-hosting'}
  {assign var=ixirPageCss value=[
   'hosting/shared/plans/plans',
   'hosting/shared/story/story',
   'hosting/shared/diff/diff',
   'hosting/shared/compare/compare',
   'hosting/shared/common/common',
   'hosting/shared/faq/faq',
   'hosting/shared/guide/guide',
   'hosting/shared/hero/hero',
   'hosting/wordpress/hero/hero',
   'hosting/wordpress/why/why',
   'hosting/wordpress/migrate/migrate',
   'hosting/wordpress/plans/plans',
   'hosting/wordpress/compare/compare',
   'hosting/wordpress/guide/guide'
  ]}
 {elseif $ixirPageSlug == 'developer-hosting'}
  {assign var=ixirPageCss value=[
   'hosting/shared/plans/plans',
   'hosting/shared/story/story',
   'hosting/shared/compare/compare',
   'hosting/shared/common/common',
   'hosting/shared/faq/faq',
   'hosting/shared/guide/guide',
   'hosting/shared/about/about',
   'hosting/shared/hero/hero',
   'hosting/developer/guide/guide',
   'hosting/developer/about/about'
  ]}
 {elseif $ixirPageSlug == 'cloud-drive'}
  {assign var=ixirPageCss value=[
   'hosting/shared/plans/plans',
   'hosting/shared/story/story',
   'hosting/shared/diff/diff',
   'hosting/shared/common/common',
   'hosting/shared/faq/faq',
   'hosting/shared/hero/hero',
   'hosting/cloud-drive/plans/plans',
   'hosting/cloud-drive/cloud-drive',
   'hosting/cloud-drive/hero/hero'
  ]}
 {elseif $ixirPageSlug == 'kurumsal-mail-hosting'}
  {assign var=ixirPageCss value=[
   'hosting/shared/plans/plans',
   'hosting/shared/story/story',
   'hosting/shared/compare/compare',
   'hosting/shared/common/common',
   'hosting/shared/faq/faq',
   'hosting/shared/guide/guide',
   'hosting/shared/about/about',
   'hosting/shared/hero/hero',
   'hosting/kurumsal-mail/plans/plans',
   'hosting/kurumsal-mail/price-compare/price-compare',
   'hosting/kurumsal-mail/kurumsal-mail',
   'hosting/kurumsal-mail/turkey/turkey',
   'hosting/kurumsal-mail/suite/suite',
   'hosting/kurumsal-mail/outlook/outlook',
   'hosting/kurumsal-mail/teamwork/teamwork',
   'hosting/kurumsal-mail/reviews/reviews'
  ]}
 {elseif $ixirPageSlug == 'kurumsal-mail-server'}
  {assign var=ixirPageCss value=[
   'hosting/shared/common/common',
   'hosting/shared/hero/hero',
   'hosting/shared/plans/plans',
   'hosting/shared/story/story',
   'hosting/shared/diff/diff',
   'hosting/shared/faq/faq',
   'email/kurumsal-mail-server/plans/plans',
   'email/kurumsal-mail-server/kurumsal-mail-server',
   'email/kurumsal-mail-server/features/features'
  ]}
 {elseif $ixirPageSlug == 'antispam'}
  {assign var=ixirPageCss value=[
   'hosting/shared/plans/plans',
   'hosting/shared/story/story',
   'hosting/shared/diff/diff',
   'hosting/shared/compare/compare',
   'hosting/shared/common/common',
   'hosting/shared/faq/faq',
   'hosting/shared/guide/guide',
   'hosting/shared/hero/hero',
   'email/antispam/details/details',
   'email/antispam/why/why'
  ]}
 {elseif $ixirPageSlug == 'outbound-mail-gateway'}
  {assign var=ixirPageCss value=[
   'hosting/shared/plans/plans',
   'hosting/shared/story/story',
   'hosting/shared/diff/diff',
   'hosting/shared/compare/compare',
   'hosting/shared/common/common',
   'hosting/shared/faq/faq',
   'hosting/shared/guide/guide',
   'hosting/shared/hero/hero',
   'email/outbound-mail-gateway/hero/hero',
   'email/outbound-mail-gateway/plans/plans',
   'email/outbound-mail-gateway/outbound-mail-gateway'
  ]}
  {elseif $ixirPageSlug == 'linux-reseller-hosting'}
  {assign var=ixirPageCss value=[
   'hosting/shared/plans/plans',
   'hosting/shared/story/story',
   'hosting/shared/diff/diff',
   'hosting/shared/compare/compare',
   'hosting/shared/common/common',
   'hosting/shared/faq/faq',
   'hosting/shared/guide/guide',
   'hosting/shared/hero/hero',
   'hosting/shared/features/features',
   'hosting/shared/manage/manage'
  ]}
 {elseif $ixirPageSlug == 'windows-reseller-hosting'}
  {assign var=ixirPageCss value=[
   'hosting/shared/plans/plans',
   'hosting/shared/story/story',
   'hosting/shared/diff/diff',
   'hosting/shared/compare/compare',
   'hosting/shared/common/common',
   'hosting/shared/faq/faq',
   'hosting/shared/guide/guide',
   'hosting/shared/hero/hero',
   'hosting/shared/features/features',
   'hosting/shared/manage/manage'
  ]}
 {elseif $ixirPageSlug == 'cloud-server'}
  {assign var=ixirPageCss value=[
   'hosting/shared/common/common',
   'hosting/shared/faq/faq',
   'server/cloud-server/hero/hero',
   'server/cloud-server/plans/plans',
   'server/cloud-server/plans2/plans2',
   'server/cloud-server/story/story',
   'server/cloud-server/diff/diff',
   'server/cloud-server/cloud-server',
   'server/cloud-server/cta/cta'
  ]}
 {elseif $ixirPageSlug == 'dedicated-server'}
  {assign var=ixirPageCss value=[
   'hosting/shared/common/common',
   'hosting/shared/faq/faq',
   'server/dedicated-server/hero/hero',
   'server/dedicated-server/servers/servers',
   'server/dedicated-server/showcase/showcase',
   'server/dedicated-server/features/features',
   'server/dedicated-server/datacenter/datacenter',
   'server/dedicated-server/solutions/solutions',
   'server/dedicated-server/about/about'
  ]}
 {elseif $ixirPageSlug == 'colocation' || $ixirPageSlug == 'co-location'}
  {assign var=ixirPageCss value=[
   'hosting/shared/common/common',
   'hosting/shared/story/story',
   'hosting/shared/faq/faq',
   'server/co-location/hero/hero',
   'server/co-location/story/story',
   'server/co-location/cta/cta',
   'server/co-location/details/details',
   'server/co-location/software/software',
   'server/co-location/co-location'
  ]}
 {elseif $ixirPageSlug == 'pci-tarama'}
  {assign var=ixirPageCss value=[
   'hosting/shared/common/common',
   'hosting/shared/story/story',
   'hosting/shared/faq/faq',
   'server/pci-tarama/hero/hero',
   'server/pci-tarama/story/story',
   'server/pci-tarama/cta/cta',
   'server/pci-tarama/advantages/advantages',
   'server/pci-tarama/audience/audience',
   'server/pci-tarama/how-it-works/how-it-works',
   'server/pci-tarama/operations/operations',
   'server/pci-tarama/pci-tarama'
  ]}
 {elseif $ixirPageSlug == 'ek-servisler' || $ixirPageSlug == 'server-servisleri'}
  {assign var=ixirPageCss value=[
   'hosting/shared/common/common',
   'hosting/shared/plans/plans',
   'hosting/shared/story/story',
   'hosting/shared/faq/faq',
   'server/server-servisleri/hero/hero',
   'server/server-servisleri/plans/plans',
   'server/server-servisleri/details/details'
  ]}
 {/if}
 {foreach from=$ixirPageCss item=ixirCss}
  <link href="{$WEB_ROOT}/templates/{$template}/components/{$ixirCss}.css?v={$versionHash}-r123"
   rel="stylesheet">
 {/foreach}
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