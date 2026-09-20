<?php

function ixir_laravel_routes()
{
    return [
        'user-profile' => '/user/profile',
        'user-password' => '/user/password',
        'user-security' => '/user/security',
        'login' => '/login',
        'login-validate' => '/login',
        'login-2fa' => '/login/two-factor/challenge',
        'login-2fa-verify' => '/login/two-factor/challenge',
        'login-2fa-backup' => '/login/two-factor/challenge/backup-verify',
        'password-reset' => '/password/reset',
        'password-reset-validate' => '/password/reset',
    ];
}

function ixir_friendly_inbound()
{
    return [
        'giris' => 'login',
        'giris/dogrulama' => 'login-2fa',
        'giris/dogrulama/yedek' => 'login-2fa-backup',
        'sifremi-unuttum' => ['GET' => 'password-reset', 'HEAD' => 'password-reset', 'POST' => 'password-reset-validate'],
        'hesabim/sifre' => ['GET' => 'password-reset', 'HEAD' => 'password-reset', 'POST' => 'password-reset-validate'],
        'hesap/profil' => 'user-profile',
        'hesap/sifre' => 'user-password',
        'hesap/guvenlik' => 'user-security',
    ];
}

function ixir_request_slug()
{
    $path = parse_url($_SERVER['IXIR_FRIENDLY_URI'] ?? $_SERVER['REQUEST_URI'] ?? '/', PHP_URL_PATH) ?: '/';
    $path = str_replace('\\', '/', $path);

    $script = str_replace('\\', '/', (string) ($_SERVER['SCRIPT_NAME'] ?? ''));
    $base = rtrim(dirname($script), '/');
    if ($base !== '' && $base !== '.' && strpos($path, $base) === 0) {
        $path = substr($path, strlen($base)) ?: '/';
    }

    return strtolower(trim($path, '/'));
}

function ixir_inbound_key_from_map($mapped, $hasSuffix)
{
    if (!is_array($mapped)) {
        return $mapped;
    }
    if ($hasSuffix) {
        return $mapped['GET'] ?? '';
    }
    $method = strtoupper($_SERVER['REQUEST_METHOD'] ?? 'GET');
    return $mapped[$method] ?? $mapped['GET'] ?? '';
}

function ixir_apply_inbound_route()
{
    if (!empty($_SERVER['IXIR_INTERNAL_RP'])) {
        return true;
    }

    $currentUri = $_SERVER['REQUEST_URI'] ?? '/';
    if (preg_match('#/admin(?:/|$)#i', $currentUri)) {
        return false;
    }

    $routes = ixir_laravel_routes();
    $key = (string) ($_GET['ixir_rp'] ?? '');
    $suffix = trim((string) ($_GET['ixir_suffix'] ?? ''), '/');

    if ($key === '' || !isset($routes[$key])) {
        $slug = ixir_request_slug();
        $inbound = ixir_friendly_inbound();
        $mapped = $inbound[$slug] ?? null;
        if ($mapped === null) {
            $matches = [];
            foreach ($inbound as $friendly => $candidate) {
                if ($friendly !== '' && strpos($slug, $friendly . '/') === 0) {
                    $matches[] = [$friendly, $candidate];
                }
            }
            if ($matches) {
                usort($matches, function ($a, $b) {
                    return strlen($b[0]) - strlen($a[0]);
                });
                $mapped = $matches[0][1];
                $suffix = substr($slug, strlen($matches[0][0]) + 1);
            }
        }
        if ($mapped === null) {
            return false;
        }
        $key = ixir_inbound_key_from_map($mapped, $suffix !== '');
    }

    if ($key === '' || !isset($routes[$key])) {
        return false;
    }

    $whmcsPath = $routes[$key];
    if ($suffix !== '') {
        $whmcsPath = ($key === 'password-reset')
            ? '/password/reset/' . $suffix
            : rtrim($whmcsPath, '/') . '/' . $suffix;
    }

    $originalUri = $_SERVER['IXIR_FRIENDLY_URI'] ?? $_SERVER['REQUEST_URI'] ?? $whmcsPath;
    $_SERVER['IXIR_FRIENDLY_URI'] = $originalUri;
    $_SERVER['IXIR_INTERNAL_RP'] = $whmcsPath;

    $query = $_GET;
    unset($query['ixir_rp'], $query['rp'], $query['ixir_suffix']);
    $queryString = http_build_query($query, '', '&');

    $_GET = $query;
    $_GET['rp'] = $whmcsPath;
    $_REQUEST['rp'] = $whmcsPath;
    unset($_GET['ixir_rp'], $_GET['ixir_suffix'], $_REQUEST['ixir_rp'], $_REQUEST['ixir_suffix']);
    $_SERVER['QUERY_STRING'] = ltrim(($queryString !== '' ? $queryString . '&' : '') . 'rp=' . $whmcsPath, '&');
    $_SERVER['REQUEST_URI'] = $whmcsPath . ($queryString !== '' ? '?' . $queryString : '');
    $_SERVER['PATH_INFO'] = $whmcsPath;
    $_SERVER['REDIRECT_URL'] = $whmcsPath;
    $_SERVER['REDIRECT_QUERY_STRING'] = $_SERVER['QUERY_STRING'];
    unset($_SERVER['REDIRECT_STATUS']);

    $scriptName = str_replace('\\', '/', (string) ($_SERVER['SCRIPT_NAME'] ?? '/index.php'));
    if (basename($scriptName) !== 'index.php') {
        $base = rtrim(dirname($scriptName), '/');
        $_SERVER['SCRIPT_NAME'] = ($base === '' ? '' : $base) . '/index.php';
        $_SERVER['PHP_SELF'] = $_SERVER['SCRIPT_NAME'];
        if (!empty($_SERVER['SCRIPT_FILENAME'])) {
            $_SERVER['SCRIPT_FILENAME'] = dirname($_SERVER['SCRIPT_FILENAME']) . DIRECTORY_SEPARATOR . 'index.php';
        }
    }

    return true;
}
