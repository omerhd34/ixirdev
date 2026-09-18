<!-- Styling -->
<link href="{assetPath file='all.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">
{assetExists file="base.css"}
<link href="{$__assetPath__}?v={$versionHash}" rel="stylesheet">
{/assetExists}
<link href="{$WEB_ROOT}/templates/{$template}/components/header/header.css?v={$versionHash}" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/components/news-bar/news-bar.css?v={$versionHash}" rel="stylesheet">
{if $templatefile == 'homepage'}
 <link href="{$WEB_ROOT}/templates/{$template}/components/hero/hero.css?v={$versionHash}" rel="stylesheet">
 <link href="{$WEB_ROOT}/templates/{$template}/components/packages/packages.css?v={$versionHash}" rel="stylesheet">
{/if}
<link href="{$WEB_ROOT}/templates/{$template}/components/footer/footer.css?v={$versionHash}" rel="stylesheet">
{if $showingLoginPage || $templatefile == 'login' || $templatefile == 'logout'}
 <link href="{$WEB_ROOT}/templates/{$template}/css/auth.css?v={$versionHash}" rel="stylesheet">
{/if}
{if $templatefile == 'whois-sorgulama'}
 <link href="{$WEB_ROOT}/templates/{$template}/css/whois.css?v={$versionHash}" rel="stylesheet">
{/if}
{if $templatefile == 'product-landing'}
 <link href="{$WEB_ROOT}/templates/{$template}/css/product-landing.css?v={$versionHash}" rel="stylesheet">
{/if}

<!-- Favicon -->
<link rel="icon" href="{$WEB_ROOT}/templates/{$template}/img/favicon.ico?v={$versionHash}" type="image/x-icon">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

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

{if $templatefile == "viewticket" && !$loggedin}
 <meta name="robots" content="noindex" />
{/if}