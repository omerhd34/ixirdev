<?php

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

require_once dirname(__DIR__) . '/ixir-corporate-pages.php';

add_hook('ClientAreaPageContact', 1, function ($vars) {
    $pages = ixir_corporate_pages();

    return [
        'ixirCorporate' => true,
        'ixirCorpSlug' => 'iletisim',
        'ixirCorpPage' => $pages['iletisim'],
        'ixirCorpNav' => ixir_corporate_nav(),
        'displayTitle' => 'İletişim',
    ];
});
