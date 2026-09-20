<?php

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

function ixir_is_auth_page()
{
    $uri = $_SERVER['IXIR_FRIENDLY_URI'] ?? $_SERVER['REQUEST_URI'] ?? '';
    $isAccountPage = stripos($uri, 'hesabim') !== false
        || stripos($uri, 'register') !== false
        || stripos($uri, 'kayit') !== false
        || stripos($uri, 'login') !== false
        || stripos($uri, 'giris') !== false
        || stripos($uri, 'sifremi-unuttum') !== false
        || stripos($uri, 'password/reset') !== false
        || stripos($uri, 'pwreset') !== false;

    if (!$isAccountPage) {
        $script = basename((string) ($_SERVER['SCRIPT_NAME'] ?? ''));
        $isAccountPage = in_array($script, ['register.php', 'ixir-hesabim.php', 'login.php', 'pwreset.php'], true);
    }

    return $isAccountPage;
}

function ixir_clear_sidebar_children($sidebar)
{
    if (!$sidebar || !method_exists($sidebar, 'getChildren')) {
        return;
    }
    foreach (array_keys($sidebar->getChildren()) as $name) {
        $sidebar->removeChild($name);
    }
}

add_hook('ClientAreaPrimarySidebar', 1, function ($primarySidebar) {
    if (!ixir_is_auth_page()) {
        return;
    }
    ixir_clear_sidebar_children($primarySidebar);
});

add_hook('ClientAreaSecondarySidebar', 1, function ($secondarySidebar) {
    if (!ixir_is_auth_page()) {
        return;
    }
    ixir_clear_sidebar_children($secondarySidebar);
});

add_hook('ClientAreaPage', 1, function () {
    return [
        'ixirIsAuthPage' => ixir_is_auth_page(),
    ];
});

add_hook('ClientAreaHeadOutput', 1, function () {
    if (!ixir_is_auth_page()) {
        return '';
    }

    return '<style id="ixir-hide-news-bar">.news-bar,#ixirNewsBar{display:none!important;height:0!important;margin:0!important;padding:0!important;overflow:hidden!important;border:0!important;visibility:hidden!important;}</style>';
});
