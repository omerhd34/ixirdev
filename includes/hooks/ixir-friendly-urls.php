<?php

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

require_once dirname(__DIR__) . '/ixir-product-pages.php';
require_once dirname(__DIR__) . '/ixir-inbound-route.php';

ixir_apply_inbound_route();

function ixir_web_root()
{
    $root = \WHMCS\Utility\Environment\WebHelper::getBaseUrl();
    return rtrim(str_replace('\\', '/', (string) $root), '/');
}

function ixir_url_maps()
{
    return [
        'files' => [
            'clientarea.php' => 'musteri-paneli',
            'register.php' => 'hesabim',
            'ixir-hesabim.php' => 'hesabim',
            'cart.php' => 'sepet',
            'logout.php' => 'cikis',
            'contact.php' => 'iletisim',
            'knowledgebase.php' => 'bilgi-bankasi',
            'announcements.php' => 'duyurular',
            'downloads.php' => 'dosyalar',
            'submitticket.php' => 'destek/yeni',
            'supporttickets.php' => 'destek',
            'viewticket.php' => 'destek/talep',
            'serverstatus.php' => 'sunucu-durumu',
            'affiliates.php' => 'ortaklik',
            'domainchecker.php' => 'domain-sorgu',
            'viewinvoice.php' => 'fatura',
            'viewquote.php' => 'teklif',
            'configuressl.php' => 'ssl-yapilandir',
            'upgrade.php' => 'yukselt',
            'unsubscribe.php' => 'abonelik-iptal',
            'pwreset.php' => 'hesabim',
            'ixir-whois.php' => 'whois-sorgulama',
            'index.php' => '',
        ],
        'rp' => [
            '/login' => 'hesabim',
            '/login/validate' => 'hesabim',
            '/login/two-factor/challenge' => 'giris/dogrulama',
            '/login/two-factor/challenge/verify' => 'giris/dogrulama',
            '/login/two-factor/challenge/backup-verify' => 'giris/dogrulama/yedek',
            '/logout' => 'cikis',
            '/password/reset/begin' => 'hesabim',
            '/password/reset' => 'hesabim',
            '/user/profile' => 'hesap/profil',
            '/user/password' => 'hesap/sifre',
            '/user/security' => 'hesap/guvenlik',
            '/register' => 'hesabim',
            '/cart' => 'sepet',
            '/clientarea' => 'musteri-paneli',
            '/contact' => 'iletisim',
            '/knowledgebase' => 'bilgi-bankasi',
            '/announcements' => 'duyurular',
            '/downloads' => 'dosyalar',
        ],
        'clientarea_actions' => [
            'services' => 'hizmetler',
            'products' => 'hizmetler',
            'domains' => 'alan-adlari',
            'invoices' => 'faturalar',
            'quotes' => 'teklifler',
            'addfunds' => 'bakiye',
            'details' => 'bilgilerim',
            'contacts' => 'kisiler',
            'emails' => 'epostalar',
            'masspay' => 'toplu-odeme',
            'cancel' => 'iptal',
        ],
        'cart_actions' => [
            'view' => 'goruntule',
            'checkout' => 'odeme',
        ],
    ];
}

function ixir_skip_url($url)
{
    $path = strtolower((string) parse_url($url, PHP_URL_PATH));
    $skip = ['/admin', '/includes/', '/assets/', '/modules/', '/vendor/', '/oauth/', '/api/', '/crons/'];
    foreach ($skip as $part) {
        if (strpos($path, $part) !== false) {
            return true;
        }
    }

    $file = basename($path);
    $keepPhp = ['verifyimage.php', 'dologin.php', 'dl.php', 'viewemail.php', 'announcementsrss.php'];
    return in_array($file, $keepPhp, true);
}

function ixir_build_url($path, $query = '', $fragment = '')
{
    $root = ixir_web_root();
    $path = '/' . ltrim($path, '/');
    if ($path === '/') {
        $uri = $root === '' ? '/' : $root . '/';
    } else {
        $uri = $root . $path;
    }
    if ($query !== '' && $query !== null) {
        $query = str_replace('&amp;', '&', html_entity_decode((string) $query, ENT_QUOTES, 'UTF-8'));
        $uri .= '?' . ltrim($query, '?');
    }
    if ($fragment !== '' && $fragment !== null) {
        $uri .= '#' . ltrim($fragment, '#');
    }
    return $uri;
}

function ixir_query_without($query, array $keys)
{
    if ($query === '' || $query === null) {
        return '';
    }
    parse_str($query, $params);
    foreach ($keys as $key) {
        unset($params[$key]);
    }
    return http_build_query($params, '', '&');
}

function ixir_friendly_domain_cart($path, $query, $fragment)
{
    $path = strtolower(rtrim(str_replace('\\', '/', (string) $path), '/') ?: '/');
    parse_str(str_replace('&amp;', '&', html_entity_decode((string) $query, ENT_QUOTES, 'UTF-8')), $params);
    $action = $params['a'] ?? '';
    $domain = $params['domain'] ?? '';
    $file = basename($path);
    $isCart = in_array($file, ['cart.php', 'sepet', 'store', 'cart'], true);
    $rest = ixir_query_without($query, ['a', 'domain']);

    if (preg_match('#/(?:store|cart|sepet)/domain/register$#', $path) || ($isCart && $action === 'add' && $domain === 'register')) {
        return ixir_build_url('domain-sorgu', $rest, $fragment);
    }
    if (preg_match('#/(?:store|cart|sepet)/domain/transfer$#', $path) || ($isCart && $action === 'add' && $domain === 'transfer')) {
        return ixir_build_url('domain-transfer', $rest, $fragment);
    }

    return null;
}

function ixir_make_friendly($url)
{
    if ($url === '' || $url === '#' || strpos($url, 'javascript:') === 0 || strpos($url, 'mailto:') === 0 || strpos($url, 'tel:') === 0) {
        return $url;
    }
    if (ixir_skip_url($url)) {
        return $url;
    }

    $parts = parse_url($url);
    if ($parts === false) {
        return $url;
    }

    $path = $parts['path'] ?? '';
    $query = str_replace('&amp;', '&', html_entity_decode((string) ($parts['query'] ?? ''), ENT_QUOTES, 'UTF-8'));
    $fragment = $parts['fragment'] ?? '';
    $file = strtolower(basename($path));
    $maps = ixir_url_maps();

    $domainCart = ixir_friendly_domain_cart($path, $query, $fragment);
    if ($domainCart !== null) {
        return $domainCart;
    }

    if ($file === 'ixir-route.php') {
        parse_str($query, $params);
        $route = (string) ($params['ixir_rp'] ?? '');
        $friendly = [
            'user-profile' => 'hesap/profil',
            'user-password' => 'hesap/sifre',
            'user-security' => 'hesap/guvenlik',
            'login' => 'hesabim',
            'login-validate' => 'hesabim',
            'login-2fa' => 'giris/dogrulama',
            'login-2fa-verify' => 'giris/dogrulama',
            'login-2fa-backup' => 'giris/dogrulama/yedek',
            'password-reset' => 'hesabim',
            'password-reset-validate' => 'hesabim',
        ];
        if (isset($friendly[$route])) {
            $path = $friendly[$route];
            $suffix = trim((string) ($params['ixir_suffix'] ?? ''), '/');
            $rest = ixir_query_without($query, ['ixir_rp', 'rp', 'ixir_suffix']);
            if ($suffix !== '' && $route === 'password-reset') {
                return ixir_build_url('hesabim/sifre/' . $suffix, $rest, $fragment);
            }
            if ($route === 'password-reset' || $route === 'password-reset-validate') {
                parse_str($rest, $restParams);
                $restParams['panel'] = 'sifre';
                $rest = http_build_query($restParams, '', '&');
            }
            return ixir_build_url($path, $rest, $fragment);
        }
    }

    if ($file === 'ixir-hesabim.php') {
        return ixir_build_url('hesabim', $query, $fragment);
    }

    if ($file === 'ixir-page.php') {
        parse_str($query, $params);
        $slug = preg_replace('/[^a-z0-9-]/', '', strtolower((string) ($params['slug'] ?? '')));
        if ($slug !== '' && isset(ixir_product_pages()[$slug])) {
            return ixir_build_url($slug, ixir_query_without($query, ['slug']), $fragment);
        }
    }

    if ($file === 'index.php') {
        parse_str($query, $params);
        $rp = $params['rp'] ?? '';
        unset($params['rp']);
        $rest = http_build_query($params, '', '&');
        if ($rp === '' || $rp === '/') {
            return ixir_build_url('/', $rest, $fragment);
        }
        $rp = '/' . ltrim($rp, '/');
        $resetUrl = ixir_friendly_password_reset($rp, $rest, $fragment);
        if ($resetUrl !== null) {
            return $resetUrl;
        }
        if (isset($maps['rp'][$rp])) {
            return ixir_build_url($maps['rp'][$rp], $rest, $fragment);
        }
        foreach ($maps['rp'] as $from => $to) {
            if (strpos($rp, $from . '/') === 0) {
                $suffix = substr($rp, strlen($from));
                return ixir_build_url($to . $suffix, $rest, $fragment);
            }
        }
        return ixir_build_url($rp, $rest, $fragment);
    }

    if ($file === 'clientarea.php') {
        parse_str($query, $params);
        $action = $params['action'] ?? '';
        if ($action === 'productdetails' && !empty($params['id'])) {
            $id = (int) $params['id'];
            $rest = ixir_query_without($query, ['action', 'id']);
            return ixir_build_url('musteri-paneli/hizmet/' . $id, $rest, $fragment);
        }
        if ($action === 'domaindetails' && !empty($params['id'])) {
            $id = (int) $params['id'];
            $rest = ixir_query_without($query, ['action', 'id']);
            return ixir_build_url('musteri-paneli/alan-adi/' . $id, $rest, $fragment);
        }
        if ($action !== '' && isset($maps['clientarea_actions'][$action])) {
            $rest = ixir_query_without($query, ['action']);
            return ixir_build_url('musteri-paneli/' . $maps['clientarea_actions'][$action], $rest, $fragment);
        }
        return ixir_build_url('musteri-paneli', $query, $fragment);
    }

    if ($file === 'cart.php') {
        parse_str($query, $params);
        $action = $params['a'] ?? '';
        if ($action !== '' && isset($maps['cart_actions'][$action])) {
            $rest = ixir_query_without($query, ['a']);
            return ixir_build_url('sepet/' . $maps['cart_actions'][$action], $rest, $fragment);
        }
        return ixir_build_url('sepet', $query, $fragment);
    }

    if ($file === 'viewinvoice.php') {
        parse_str($query, $params);
        if (!empty($params['id'])) {
            $id = (int) $params['id'];
            $rest = ixir_query_without($query, ['id']);
            return ixir_build_url('fatura/' . $id, $rest, $fragment);
        }
        return ixir_build_url('fatura', $query, $fragment);
    }

    if ($file === 'viewquote.php') {
        parse_str($query, $params);
        if (!empty($params['id'])) {
            $id = (int) $params['id'];
            $rest = ixir_query_without($query, ['id']);
            return ixir_build_url('teklif/' . $id, $rest, $fragment);
        }
        return ixir_build_url('teklif', $query, $fragment);
    }

    if ($file === 'pwreset.php') {
        return ixir_friendly_password_reset('/password/reset', $query, $fragment);
    }

    if (isset($maps['files'][$file]) && $file !== 'index.php') {
        return ixir_build_url($maps['files'][$file], $query, $fragment);
    }

    $relative = $path;
    $root = ixir_web_root();
    if ($root !== '' && strpos($relative, $root) === 0) {
        $relative = substr($relative, strlen($root));
    }
    $relative = '/' . ltrim($relative, '/');
    $resetUrl = ixir_friendly_password_reset($relative, $query, $fragment);
    if ($resetUrl !== null) {
        return $resetUrl;
    }
    if (isset($maps['rp'][$relative])) {
        return ixir_build_url($maps['rp'][$relative], $query, $fragment);
    }
    foreach ($maps['rp'] as $from => $to) {
        if ($from !== '/' && strpos($relative, $from . '/') === 0) {
            return ixir_build_url($to . substr($relative, strlen($from)), $query, $fragment);
        }
    }

    return $url;
}

function ixir_friendly_password_reset($path, $query = '', $fragment = '')
{
    $path = '/' . ltrim(strtolower((string) $path), '/');
    $path = rtrim($path, '/') ?: '/';

    if ($path === '/sifremi-unuttum' || $path === '/password/reset' || $path === '/password/reset/begin') {
        parse_str(str_replace('&amp;', '&', html_entity_decode((string) $query, ENT_QUOTES, 'UTF-8')), $params);
        $params['panel'] = 'sifre';
        return ixir_build_url('hesabim', http_build_query($params, '', '&'), $fragment);
    }

    if (preg_match('#^/(?:sifremi-unuttum|password/reset)/(.+)$#', $path, $match)) {
        return ixir_build_url('hesabim/sifre/' . $match[1], $query, $fragment);
    }

    return null;
}

function ixir_current_request_url()
{
    return $_SERVER['IXIR_FRIENDLY_URI'] ?? $_SERVER['REQUEST_URI'] ?? '/';
}

function ixir_should_redirect_request()
{
    if (!empty($_SERVER['IXIR_INTERNAL_RP'])) {
        return false;
    }
    $method = strtoupper($_SERVER['REQUEST_METHOD'] ?? 'GET');
    if ($method !== 'GET' && $method !== 'HEAD') {
        return false;
    }
    if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) === 'xmlhttprequest') {
        return false;
    }

    $uri = ixir_current_request_url();
    $path = parse_url($uri, PHP_URL_PATH) ?: '';
    if (preg_match('#/admin(?:/|$)#i', $path)) {
        return false;
    }
    if (ixir_skip_url($uri)) {
        return false;
    }

    $friendly = ixir_make_friendly($uri);
    $currentPath = rtrim(parse_url($uri, PHP_URL_PATH) ?: '', '/') ?: '/';
    $friendlyPath = rtrim(parse_url($friendly, PHP_URL_PATH) ?: '', '/') ?: '/';
    $currentQuery = parse_url($uri, PHP_URL_QUERY) ?: '';
    $friendlyQuery = parse_url($friendly, PHP_URL_QUERY) ?: '';

    return $currentPath !== $friendlyPath || $currentQuery !== $friendlyQuery;
}

function ixir_rewrite_html($html)
{
    $html = preg_replace_callback(
        '/\b(href|action|src|data-href|data-url)=(["\'])([^"\']+)\2/i',
        function ($match) {
            return $match[1] . '=' . $match[2] . ixir_make_friendly($match[3]) . $match[2];
        },
        $html
    );

    $html = preg_replace_callback(
        '/window\.location(?:\.href)?\s*=\s*(["\'])([^"\']+)\1/i',
        function ($match) {
            return str_replace($match[2], ixir_make_friendly($match[2]), $match[0]);
        },
        $html
    );

    return $html;
}

function ixir_friendly_buffer($html)
{
    if (!is_string($html) || $html === '') {
        return $html;
    }
    $trim = ltrim($html);
    if ($trim === '' || $trim[0] === '{' || $trim[0] === '[') {
        return $html;
    }
    if (stripos($trim, '<') === false) {
        return $html;
    }
    return ixir_rewrite_html($html);
}

function ixir_smarty_urls()
{
    $root = ixir_web_root();
    $base = $root === '' ? '' : $root;
    return [
        'home' => $base . '/',
        'login' => $base . '/hesabim',
        'register' => $base . '/hesabim',
        'account' => $base . '/hesabim',
        'clientarea' => $base . '/musteri-paneli',
        'services' => $base . '/musteri-paneli/hizmetler',
        'domains' => $base . '/musteri-paneli/alan-adlari',
        'invoices' => $base . '/musteri-paneli/faturalar',
        'contacts' => $base . '/musteri-paneli/kisiler',
        'emails' => $base . '/musteri-paneli/epostalar',
        'profile' => $base . '/hesap/profil',
        'password' => $base . '/hesap/sifre',
        'security' => $base . '/hesap/guvenlik',
        'cart' => $base . '/sepet',
        'cartView' => $base . '/sepet/goruntule',
        'domainCheck' => $base . '/domain-sorgu',
        'domainTransfer' => $base . '/domain-transfer',
        'whois' => $base . '/whois-sorgulama',
        'logout' => $base . '/cikis',
        'forgot' => $base . '/hesabim?panel=sifre',
    ];
}

add_hook('ClientAreaPage', -9999, function ($vars) {
    $uri = ixir_current_request_url();
    if (preg_match('#/admin(?:/|$)#i', $uri)) {
        return [];
    }

    if (ixir_should_redirect_request()) {
        $target = ixir_make_friendly($uri);
        if ($target && $target !== $uri) {
            header('Location: ' . str_replace('&amp;', '&', html_entity_decode($target, ENT_QUOTES, 'UTF-8')), true, 301);
            exit;
        }
    }

    static $bufferStarted = false;
    if (!$bufferStarted) {
        ob_start('ixir_friendly_buffer');
        $bufferStarted = true;
    }

    return [
        'ixirUrl' => ixir_smarty_urls(),
    ];
});
