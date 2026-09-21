<?php

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

function ixir_corporate_nav()
{
    $root = function_exists('ixir_web_root') ? ixir_web_root() : '';

    $items = [
        ['slug' => 'kurumsal', 'href' => $root . '/kurumsal', 'label' => 'Hakkımızda'],
        ['slug' => 'altyapi', 'href' => $root . '/altyapi', 'label' => 'Altyapı Bilgileri'],
        ['slug' => 'kayitkurulusu', 'href' => $root . '/kayitkurulusu', 'label' => '.TR Kayıt Kuruluşu'],
        ['slug' => 'bankahesaplari', 'href' => $root . '/bankahesaplari', 'label' => 'Banka Bilgileri'],
        ['slug' => 'gizlilikpolitikasi', 'href' => $root . '/gizlilikpolitikasi', 'label' => 'Gizlilik Politikası'],
        ['slug' => 'hizmetsozlesmesi', 'href' => $root . '/hizmetsozlesmesi', 'label' => 'Hizmet Sözleşmesi'],
        ['slug' => 'kvkkaydinlatmametni', 'href' => $root . '/kvkkaydinlatmametni', 'label' => 'KVKK Aydınlatma Metni'],
        ['slug' => 'iletisim', 'href' => $root . '/iletisim', 'label' => 'İletişim'],
    ];

    if (!ixir_corporate_is_logged_in()) {
        $items = array_values(array_filter($items, static function ($item) {
            return ($item['slug'] ?? '') !== 'bankahesaplari';
        }));
    }

    return $items;
}

function ixir_corporate_aliases()
{
    return [
        'altyapibilgileri' => 'altyapi',
        'altyapimiz' => 'altyapi',
        'gizlilik' => 'gizlilikpolitikasi',
        'gizlilikilkesi' => 'gizlilikpolitikasi',
        'kvkk' => 'kvkkaydinlatmametni',
        'trkayitkurulusu' => 'kayitkurulusu',
        'banka' => 'bankahesaplari',
        'bankabilgileri' => 'bankahesaplari',
        'hizmetsozlesme' => 'hizmetsozlesmesi',
    ];
}

function ixir_corporate_pages()
{
    return [
        'kurumsal' => [
            'title' => 'Hakkımızda',
            'pageTitle' => 'Kurumsal Bilgiler',
            'hero' => 'Hakkımızda',
            'content' => 'hakkimizda',
        ],
        'altyapi' => [
            'title' => 'Altyapı Bilgileri',
            'pageTitle' => 'Altyapı Bilgileri',
            'hero' => 'Altyapı Bilgileri',
            'content' => 'altyapi',
        ],
        'bankahesaplari' => [
            'title' => 'Banka Bilgileri',
            'pageTitle' => 'Banka Hesap Numaraları',
            'hero' => 'Banka Bilgileri',
            'content' => 'banka',
            'requireLogin' => true,
        ],
        'gizlilikpolitikasi' => [
            'title' => 'Gizlilik Politikası',
            'pageTitle' => 'Gizlilik Politikası',
            'hero' => 'Gizlilik Politikası',
            'content' => 'gizlilik',
        ],
        'hizmetsozlesmesi' => [
            'title' => 'Hizmet Sözleşmesi',
            'pageTitle' => 'Hizmet Sözleşmesi',
            'hero' => 'Hizmet Sözleşmesi',
            'content' => 'sozlesme',
        ],
        'kvkkaydinlatmametni' => [
            'title' => 'KVKK Aydınlatma Metni',
            'pageTitle' => 'KVKK Aydınlatma Metni',
            'hero' => 'KVKK Aydınlatma Metni',
            'content' => 'kvkk',
        ],
        'kayitkurulusu' => [
            'title' => '.TR Kayıt Kuruluşu',
            'pageTitle' => '.TR Kayıt Kuruluşu',
            'hero' => '.TR Kayıt Kuruluşu',
            'content' => 'kayitkurulusu',
        ],
        'iletisim' => [
            'title' => 'İletişim',
            'pageTitle' => 'İletişim',
            'hero' => 'İletişim',
            'content' => 'iletisim',
        ],
    ];
}

function ixir_corporate_payto()
{
    try {
        if (class_exists('\WHMCS\Config\Setting')) {
            $payto = (string) \WHMCS\Config\Setting::getValue('InvoicePayTo');
            if (trim(html_entity_decode(strip_tags($payto), ENT_QUOTES, 'UTF-8')) !== '') {
                return $payto;
            }
        }
    } catch (\Throwable $e) {
     // ignore
    }

    return '';
}

function ixir_corporate_assign(\WHMCS\ClientArea $ca, $slug)
{
    $pages = ixir_corporate_pages();
    $page = $pages[$slug];
    $ca->assign('displayTitle', $page['hero']);
    $ca->assign('ixirCorporate', true);
    $ca->assign('ixirCorpSlug', $slug);
    $ca->assign('ixirCorpPage', $page);
    $ca->assign('ixirCorpNav', ixir_corporate_nav());
    $ca->assign('ixirCorpPayto', ixir_corporate_payto());
}

function ixir_corporate_is_logged_in()
{
    if (!empty($_SESSION['uid'])) {
        return true;
    }

    try {
        if (class_exists('\WHMCS\Authentication\CurrentUser')) {
            $current = new \WHMCS\Authentication\CurrentUser();
            if (method_exists($current, 'isAuthenticatedUser') && $current->isAuthenticatedUser()) {
                return true;
            }
            if (method_exists($current, 'user') && $current->user()) {
                return true;
            }
        }
    } catch (\Throwable $e) {
     // ignore
    }

    return false;
}

function ixir_corporate_require_login($returnPath)
{
    if (ixir_corporate_is_logged_in()) {
        return;
    }

    $root = function_exists('ixir_web_root') ? ixir_web_root() : '';
    $return = $root . '/' . ltrim((string) $returnPath, '/');
    if (session_status() === PHP_SESSION_ACTIVE) {
        $_SESSION['loginurlredirect'] = $return;
    }

    header('Location: ' . $root . '/hesabim', true, 302);
    exit;
}

function ixir_render_corporate_page($slug)
{
    $aliases = ixir_corporate_aliases();
    if (isset($aliases[$slug])) {
        $slug = $aliases[$slug];
    }

    $pages = ixir_corporate_pages();
    if (!isset($pages[$slug]) || $slug === 'iletisim') {
        return false;
    }

    $page = $pages[$slug];
    $ca = new \WHMCS\ClientArea();
    $ca->setPageTitle($page['pageTitle']);
    $ca->addToBreadCrumb('index.php', 'Anasayfa');
    $ca->addToBreadCrumb('kurumsal', 'Kurumsal');
    if ($slug !== 'kurumsal') {
        $ca->addToBreadCrumb($slug, $page['title']);
    } else {
        $ca->addToBreadCrumb('kurumsal', 'Hakkımızda');
    }
    $ca->initPage();
    if (!empty($page['requireLogin'])) {
        if (method_exists($ca, 'requireLogin')) {
            $ca->requireLogin();
        }
        ixir_corporate_require_login($slug);
    }
    ixir_corporate_assign($ca, $slug);
    $ca->setTemplate('kurumsal');
    $ca->output();

    return true;
}
