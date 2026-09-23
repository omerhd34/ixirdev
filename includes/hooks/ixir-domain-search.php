<?php

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

function ixir_domain_search_root()
{
    $root = \WHMCS\Utility\Environment\WebHelper::getBaseUrl();
    return rtrim(str_replace('\\', '/', (string) $root), '/');
}

function ixir_domain_search_path()
{
    $uri = $_SERVER['IXIR_FRIENDLY_URI'] ?? $_SERVER['REQUEST_URI'] ?? '/';
    return strtolower(rtrim((string) parse_url($uri, PHP_URL_PATH), '/') ?: '/');
}

function ixir_domain_search_is_ajax()
{
    $requested = strtolower((string) ($_SERVER['HTTP_X_REQUESTED_WITH'] ?? ''));
    if ($requested === 'xmlhttprequest') {
        return true;
    }
    $accept = strtolower((string) ($_SERVER['HTTP_ACCEPT'] ?? ''));
    return strpos($accept, 'application/json') !== false && strpos($accept, 'text/html') === false;
}

function ixir_domain_search_posted_term()
{
    $term = trim((string) ($_POST['query'] ?? $_POST['domain'] ?? ''));
    if ($term === '' || in_array(strtolower($term), ['register', 'transfer'], true)) {
        return '';
    }
    return $term;
}

function ixir_domain_search_is_page()
{
    if (ixir_domain_search_is_ajax()) {
        return false;
    }
    $path = ixir_domain_search_path();
    if (preg_match('#/(?:domain-sorgu|domain-sorgula)$#', $path)) {
        return true;
    }
    $action = (string) ($_GET['a'] ?? '');
    $domain = (string) ($_GET['domain'] ?? '');
    return $action === 'add' && $domain === 'register';
}

function ixir_domain_transfer_is_page()
{
    if (ixir_domain_search_is_ajax()) {
        return false;
    }
    $path = ixir_domain_search_path();
    if (preg_match('#/domain-transfer$#', $path)) {
        return true;
    }
    $action = (string) ($_GET['a'] ?? '');
    $domain = (string) ($_GET['domain'] ?? '');
    return $action === 'add' && $domain === 'transfer';
}

function ixir_domain_search_is_lookup()
{
    $action = (string) ($_POST['a'] ?? $_GET['a'] ?? '');
    $rp = (string) ($_GET['rp'] ?? $_SERVER['IXIR_INTERNAL_RP'] ?? $_SERVER['PATH_INFO'] ?? '');
    $uri = (string) ($_SERVER['REQUEST_URI'] ?? '');
    $path = ixir_domain_search_path();

    if (strpos($rp, '/domain/check') !== false
        || strpos($uri, '/domain/check') !== false
        || preg_match('#/domain/check/?$#', $path)
    ) {
        return true;
    }

    if ($action === 'checkDomain') {
        return true;
    }

    if ($action === 'validateCaptcha' && ixir_domain_search_posted_term() !== '') {
        return true;
    }

    return false;
}

function ixir_domain_search_disable_captcha_config()
{
    global $CONFIG;
    if (!isset($CONFIG) || !is_array($CONFIG)) {
        return;
    }
    foreach (['CaptchaForms', 'CaptchaForm'] as $key) {
        if (empty($CONFIG[$key])) {
            continue;
        }
        $forms = $CONFIG[$key];
        if (is_string($forms) && preg_match('/^a:\d+:\{/', $forms)) {
            $un = @unserialize($forms);
            if (is_array($un)) {
                $forms = $un;
            }
        }
        if (is_array($forms)) {
            $CONFIG[$key] = array_values(array_filter($forms, function ($form) {
                return stripos((string) $form, 'domain') === false;
            }));
        } elseif (is_string($forms)) {
            $CONFIG[$key] = trim(preg_replace('/,?(?:domainchecker|domainChecker|domain_checker),?/i', ',', $forms), ',');
        }
    }
    if (ixir_domain_search_is_lookup()) {
        $CONFIG['EnableCaptcha'] = '';
    }
}

function ixir_domain_search_satisfy_captcha()
{
    $code = '';
    if (!empty($_SESSION['ixirDomainCaptcha'])) {
        $code = (string) $_SESSION['ixirDomainCaptcha'];
    }
    if ($code === '') {
        try {
            $code = bin2hex(random_bytes(3));
        } catch (\Throwable $e) {
            $code = substr(md5(uniqid((string) mt_rand(), true)), 0, 6);
        }
        $_SESSION['ixirDomainCaptcha'] = $code;
    }

    $_POST['code'] = $code;
    $_REQUEST['code'] = $code;
    $hash = md5(strtolower($code));

    if (class_exists('\WHMCS\Session')) {
        try {
            \WHMCS\Session::set('captchaValue', $hash);
            \WHMCS\Session::set('captcha', $code);
            \WHMCS\Session::set('captchaHash', $hash);
        } catch (\Throwable $e) {
            // ignore
        }
    }
    if (isset($_SESSION) && is_array($_SESSION)) {
        $_SESSION['captchaValue'] = $hash;
        $_SESSION['captcha'] = $code;
        $_SESSION['captchaHash'] = $hash;
    }

    ixir_domain_search_disable_captcha_config();

    return $code;
}

function ixir_domain_spotlight_tlds()
{
    return [
        ['tld' => '.com', 'tldNoDots' => 'com', 'register' => '615.00TL'],
        ['tld' => '.net', 'tldNoDots' => 'net', 'register' => '655.00TL'],
        ['tld' => '.com.tr', 'tldNoDots' => 'comtr', 'register' => '150.00TL'],
        ['tld' => '.net.tr', 'tldNoDots' => 'nettr', 'register' => '150.00TL'],
        ['tld' => '.tr', 'tldNoDots' => 'tr', 'register' => '200.00TL'],
        ['tld' => '.xyz', 'tldNoDots' => 'xyz', 'register' => '125.00TL'],
        ['tld' => '.info', 'tldNoDots' => 'info', 'register' => '220.00TL'],
        ['tld' => '.pro', 'tldNoDots' => 'pro', 'register' => '200.00TL'],
        ['tld' => '.org', 'tldNoDots' => 'org', 'register' => '555.00TL'],
        ['tld' => '.work', 'tldNoDots' => 'work', 'register' => '150.00TL'],
    ];
}

function ixir_domain_split($domain)
{
    $domain = strtolower(trim((string) $domain));
    $domain = preg_replace('#^https?://#', '', $domain);
    $domain = preg_replace('#^www\.#', '', $domain);
    $domain = explode('/', explode('?', $domain)[0])[0];
    if ($domain === '') {
        return ['sld' => '', 'tld' => 'com', 'full' => '', 'tldNoDots' => 'com'];
    }
    if (strpos($domain, '.') === false) {
        return ['sld' => $domain, 'tld' => 'com', 'full' => $domain . '.com', 'tldNoDots' => 'com'];
    }
    $parts = explode('.', $domain);
    $last = $parts[count($parts) - 1];
    $second = $parts[count($parts) - 2] ?? '';
    $doubles = ['com', 'net', 'org', 'info', 'biz', 'gen', 'web', 'name', 'tv', 'co', 'dr', 'av', 'k12', 'bel', 'gov'];
    if ($last === 'tr' && in_array($second, $doubles, true) && count($parts) >= 3) {
        $tld = $second . '.tr';
        $sld = implode('.', array_slice($parts, 0, -2));
        return ['sld' => $sld, 'tld' => $tld, 'full' => $domain, 'tldNoDots' => str_replace('.', '', $tld)];
    }
    $tld = $last;
    $sld = implode('.', array_slice($parts, 0, -1));
    return ['sld' => $sld, 'tld' => $tld, 'full' => $domain, 'tldNoDots' => $tld];
}

function ixir_domain_price_for_tld($tld)
{
    $tld = '.' . ltrim((string) $tld, '.');
    foreach (ixir_domain_price_list() as $row) {
        if (strcasecmp($row['tld'], $tld) === 0) {
            return [
                '1' => [
                    'register' => $row['register'],
                    'transfer' => $row['transfer'],
                    'renew' => $row['renew'],
                ],
            ];
        }
    }
    return [
        '1' => [
            'register' => '-',
            'transfer' => '-',
            'renew' => '-',
        ],
    ];
}

function ixir_domain_whois_server($domain)
{
    $parts = explode('.', strtolower(trim((string) $domain)));
    $tld = $parts[count($parts) - 1] ?? '';
    $servers = [
        'com' => 'whois.verisign-grs.com',
        'net' => 'whois.verisign-grs.com',
        'org' => 'whois.pir.org',
        'info' => 'whois.afilias.net',
        'biz' => 'whois.biz',
        'xyz' => 'whois.nic.xyz',
        'pro' => 'whois.nic.pro',
        'club' => 'whois.nic.club',
        'online' => 'whois.nic.online',
        'site' => 'whois.nic.site',
        'tech' => 'whois.nic.tech',
        'work' => 'whois.nic.work',
        'blog' => 'whois.nic.blog',
        'app' => 'whois.nic.google',
        'live' => 'whois.nic.live',
        'market' => 'whois.nic.market',
        'io' => 'whois.nic.io',
        'co' => 'whois.nic.co',
        'me' => 'whois.nic.me',
        'tv' => 'whois.nic.tv',
        'tr' => 'whois.trabis.gov.tr',
    ];
    return $servers[$tld] ?? ('whois.nic.' . $tld);
}

function ixir_domain_whois_parse($out)
{
    if (trim((string) $out) === '') {
        return null;
    }
    $text = strtolower($out);
    if (strpos($text, 'tld is not supported') !== false
        || strpos($text, 'unsupported tld') !== false
        || strpos($text, 'whois server is being retired') !== false
        || strpos($text, 'please use rdap') !== false
    ) {
        return null;
    }
    $available = [
        'no match',
        'not found',
        'no entries found',
        'no object found',
        'no data found',
        'status: available',
        'status: free',
        'domain not found',
        'the queried object does not exist',
        'nothing found',
        'available for registration',
        'no information found',
    ];
    foreach ($available as $needle) {
        if (strpos($text, $needle) !== false) {
            return true;
        }
    }
    $taken = [
        'domain name:',
        'nserver:',
        'name server:',
        'nameserver:',
        'registry domain id:',
        'creation date:',
        'created date:',
        'created on:',
        'status: active',
        'status: ok',
        'status: clienttransferprohibited',
    ];
    foreach ($taken as $needle) {
        if (strpos($text, $needle) !== false) {
            return false;
        }
    }
    return null;
}

function ixir_domain_rdap_url($domain)
{
    $domain = strtolower(trim((string) $domain));
    if ($domain === '' || strpos($domain, '.') === false) {
        return '';
    }
    $parts = explode('.', $domain);
    $tld = $parts[count($parts) - 1];
    if ($tld === 'tr') {
        return '';
    }
    if ($tld === 'com' || $tld === 'net') {
        return 'https://rdap.verisign.com/' . $tld . '/v1/domain/' . rawurlencode($domain);
    }
    $identity = [
        'info', 'pro', 'kim', 'blue', 'pink', 'black', 'green', 'lgbt', 'poker', 'red',
        'vote', 'voto', 'archi', 'bio', 'ski', 'bet', 'promo', 'pet', 'lotto',
        'online', 'work', 'live', 'tech', 'club', 'site', 'blog', 'studio', 'market',
        'life', 'world', 'today', 'email', 'group', 'company', 'ltd', 'services',
        'solutions', 'network', 'digital', 'agency', 'fun', 'guru', 'expert',
    ];
    if (in_array($tld, $identity, true)) {
        return 'https://rdap.identitydigital.services/rdap/domain/' . rawurlencode($domain);
    }
    $direct = [
        'org' => 'https://rdap.publicinterestregistry.org/rdap/domain/',
        'app' => 'https://pubapi.registry.google/rdap/domain/',
        'dev' => 'https://pubapi.registry.google/rdap/domain/',
        'xyz' => 'https://rdap.centralnic.com/xyz/domain/',
        'biz' => 'https://rdap.nic.biz/domain/',
    ];
    if (isset($direct[$tld])) {
        return $direct[$tld] . rawurlencode($domain);
    }
    return 'https://rdap.org/domain/' . rawurlencode($domain);
}

function ixir_domain_rdap_status($httpCode, $body)
{
    $code = (int) $httpCode;
    $json = json_decode((string) $body, true);
    $errorCode = is_array($json) ? (int) ($json['errorCode'] ?? 0) : 0;
    if ($code === 404 || $errorCode === 404) {
        return true;
    }
    if ($code === 200 && is_array($json)) {
        if ($errorCode >= 400) {
            return $errorCode === 404 ? true : null;
        }
        if (!empty($json['objectClassName']) && strtolower((string) $json['objectClassName']) === 'domain') {
            return false;
        }
        if (!empty($json['ldhName']) || !empty($json['unicodeName']) || !empty($json['handle'])) {
            return false;
        }
        return null;
    }
    return null;
}

function ixir_domain_http_get($url, $timeout = 6)
{
    if (function_exists('curl_init')) {
        $ch = curl_init($url);
        curl_setopt_array($ch, [
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_MAXREDIRS => 5,
            CURLOPT_CONNECTTIMEOUT => 3,
            CURLOPT_TIMEOUT => $timeout,
            CURLOPT_USERAGENT => 'ixirhost-domain-check/1.0',
            CURLOPT_HTTPHEADER => ['Accept: application/rdap+json, application/json'],
            CURLOPT_SSL_VERIFYPEER => true,
            CURLOPT_ENCODING => '',
        ]);
        $body = curl_exec($ch);
        $code = (int) curl_getinfo($ch, CURLINFO_HTTP_CODE);
        $err = curl_errno($ch);
        curl_close($ch);
        if ($err) {
            return ['code' => 0, 'body' => ''];
        }
        return ['code' => $code, 'body' => (string) $body];
    }
    $ctx = stream_context_create([
        'http' => [
            'method' => 'GET',
            'timeout' => $timeout,
            'ignore_errors' => true,
            'header' => "Accept: application/rdap+json, application/json\r\nUser-Agent: ixirhost-domain-check/1.0\r\n",
        ],
    ]);
    $body = @file_get_contents($url, false, $ctx);
    $code = 0;
    if (!empty($http_response_header[0]) && preg_match('/\s(\d{3})\s/', $http_response_header[0], $m)) {
        $code = (int) $m[1];
    }
    return ['code' => $code, 'body' => (string) $body];
}

function ixir_domain_http_parallel(array $urls, $timeout = 6)
{
    $results = [];
    if (!$urls) {
        return $results;
    }
    if (!function_exists('curl_multi_init') || count($urls) === 1) {
        foreach ($urls as $key => $url) {
            $results[$key] = ixir_domain_http_get($url, $timeout);
        }
        return $results;
    }
    $mh = curl_multi_init();
    $map = [];
    foreach ($urls as $key => $url) {
        $ch = curl_init($url);
        curl_setopt_array($ch, [
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_MAXREDIRS => 5,
            CURLOPT_CONNECTTIMEOUT => 3,
            CURLOPT_TIMEOUT => $timeout,
            CURLOPT_USERAGENT => 'ixirhost-domain-check/1.0',
            CURLOPT_HTTPHEADER => ['Accept: application/rdap+json, application/json'],
            CURLOPT_SSL_VERIFYPEER => true,
            CURLOPT_ENCODING => '',
        ]);
        curl_multi_add_handle($mh, $ch);
        $map[(int) $ch] = ['key' => $key, 'ch' => $ch];
    }
    $running = null;
    do {
        $status = curl_multi_exec($mh, $running);
        if ($running) {
            curl_multi_select($mh, 0.2);
        }
    } while ($running && $status === CURLM_OK);
    foreach ($map as $row) {
        $ch = $row['ch'];
        if (curl_errno($ch)) {
            $results[$row['key']] = ['code' => 0, 'body' => ''];
        } else {
            $results[$row['key']] = [
                'code' => (int) curl_getinfo($ch, CURLINFO_HTTP_CODE),
                'body' => (string) curl_multi_getcontent($ch),
            ];
        }
        curl_multi_remove_handle($mh, $ch);
        curl_close($ch);
    }
    curl_multi_close($mh);
    return $results;
}

function ixir_domain_rdap_parallel(array $domains, $timeout = 6)
{
    $status = [];
    $urls = [];
    foreach ($domains as $domain) {
        $domain = strtolower(trim((string) $domain));
        if ($domain === '') {
            continue;
        }
        $url = ixir_domain_rdap_url($domain);
        if ($url === '') {
            $status[$domain] = null;
            continue;
        }
        $urls[$domain] = $url;
    }
    foreach (ixir_domain_http_parallel($urls, $timeout) as $domain => $row) {
        $status[$domain] = ixir_domain_rdap_status($row['code'] ?? 0, $row['body'] ?? '');
    }
    return $status;
}

function ixir_domain_availability_map(array $domains, $timeout = 6)
{
    $list = [];
    foreach ($domains as $domain) {
        $domain = strtolower(trim((string) $domain));
        if ($domain !== '') {
            $list[$domain] = true;
        }
    }
    $status = array_fill_keys(array_keys($list), null);
    if (!$status) {
        return $status;
    }
    foreach (ixir_domain_rdap_parallel(array_keys($status), $timeout) as $domain => $value) {
        if ($value !== null) {
            $status[$domain] = $value;
        }
    }
    $pending = [];
    foreach ($status as $domain => $value) {
        if ($value === null) {
            $pending[] = $domain;
        }
    }
    if ($pending) {
        foreach (ixir_domain_whois_parallel($pending, min(4, $timeout)) as $domain => $value) {
            if ($value !== null) {
                $status[$domain] = $value;
            }
        }
    }
    return $status;
}

function ixir_domain_whois_parallel(array $domains, $timeout = 4)
{
    $status = [];
    $socks = [];
    foreach ($domains as $domain) {
        $domain = strtolower(trim((string) $domain));
        if ($domain === '') {
            continue;
        }
        $server = ixir_domain_whois_server($domain);
        $fp = @stream_socket_client('tcp://' . $server . ':43', $errno, $errstr, 2);
        if (!$fp) {
            $status[$domain] = null;
            continue;
        }
        stream_set_blocking($fp, false);
        fwrite($fp, $domain . "\r\n");
        $socks[(int) $fp] = ['fp' => $fp, 'domain' => $domain, 'out' => ''];
    }
    $deadline = microtime(true) + $timeout;
    while ($socks && microtime(true) < $deadline) {
        $read = [];
        foreach ($socks as $row) {
            $read[] = $row['fp'];
        }
        $write = $except = null;
        $changed = @stream_select($read, $write, $except, 0, 200000);
        if ($changed === false) {
            break;
        }
        foreach ($read as $fp) {
            $id = (int) $fp;
            if (!isset($socks[$id])) {
                continue;
            }
            $chunk = fread($fp, 4096);
            if ($chunk === false || $chunk === '') {
                if (feof($fp)) {
                    $status[$socks[$id]['domain']] = ixir_domain_whois_parse($socks[$id]['out']);
                    fclose($fp);
                    unset($socks[$id]);
                }
                continue;
            }
            $socks[$id]['out'] .= $chunk;
            if (feof($fp)) {
                $status[$socks[$id]['domain']] = ixir_domain_whois_parse($socks[$id]['out']);
                fclose($fp);
                unset($socks[$id]);
            }
        }
    }
    foreach ($socks as $row) {
        $status[$row['domain']] = ixir_domain_whois_parse($row['out']);
        fclose($row['fp']);
    }
    return $status;
}

function ixir_domain_whois_socket($domain)
{
    $domain = strtolower(trim((string) $domain));
    $server = ixir_domain_whois_server($domain);
    $fp = @fsockopen($server, 43, $errno, $errstr, 5);
    if (!$fp) {
        return null;
    }
    stream_set_timeout($fp, 5);
    fwrite($fp, $domain . "\r\n");
    $out = '';
    while (!feof($fp)) {
        $chunk = fgets($fp, 2048);
        if ($chunk === false) {
            break;
        }
        $out .= $chunk;
    }
    fclose($fp);
    return ixir_domain_whois_parse($out);
}

function ixir_domain_whois_available($domain)
{
    $domain = strtolower(trim((string) $domain));
    $map = ixir_domain_availability_map([$domain]);
    return $map[$domain] ?? null;
}

function ixir_domain_lookup_item($sld, $tld)
{
    $tld = ltrim((string) $tld, '.');
    $sld = strtolower(trim((string) $sld));
    if ($sld === '' || $tld === '') {
        return null;
    }
    $full = $sld . '.' . $tld;
    $available = ixir_domain_whois_available($full);
    if ($available === null) {
        return null;
    }
    return [
        'domainName' => $full,
        'idnDomainName' => $full,
        'sld' => $sld,
        'tld' => $tld,
        'tldNoDots' => str_replace('.', '', $tld),
        'isValidDomain' => (bool) preg_match('/^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?$/i', str_replace('.', '', $sld)),
        'isAvailable' => $available,
        'pricing' => ixir_domain_price_for_tld($tld),
    ];
}

function ixir_domain_emit_check()
{
    $type = (string) ($_POST['type'] ?? $_GET['type'] ?? '');
    if (!in_array($type, ['domain', 'spotlight', 'suggestions'], true)) {
        return false;
    }
    $term = ixir_domain_search_posted_term();
    if ($term === '') {
        return false;
    }
    $parsed = ixir_domain_split($term);
    $result = [];
    if ($type === 'domain') {
        $item = ixir_domain_lookup_item($parsed['sld'], $parsed['tld']);
        if ($item === null) {
            while (ob_get_level() > 0) {
                ob_end_clean();
            }
            header('Content-Type: application/json; charset=utf-8');
            echo json_encode(['result' => ['error' => 'Sorgulanamadı, lütfen tekrar deneyin.']]);
            exit;
        }
        $result = [$item];
    } elseif ($type === 'spotlight') {
        $rows = [];
        $fulls = [];
        foreach (ixir_domain_spotlight_tlds() as $spot) {
            $tld = ltrim((string) $spot['tld'], '.');
            $full = $parsed['sld'] . '.' . $tld;
            $fulls[] = $full;
            $rows[] = ['spot' => $spot, 'tld' => $tld, 'full' => $full];
        }
        $availability = ixir_domain_availability_map($fulls);
        foreach ($rows as $row) {
            $available = $availability[$row['full']] ?? null;
            if ($available === null) {
                continue;
            }
            $result[] = [
                'domainName' => $row['full'],
                'idnDomainName' => $row['full'],
                'sld' => $parsed['sld'],
                'tld' => $row['tld'],
                'tldNoDots' => str_replace('.', '', $row['tld']),
                'isValidDomain' => (bool) preg_match('/^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?$/i', str_replace('.', '', $parsed['sld'])),
                'isAvailable' => (bool) $available,
                'pricing' => [
                    '1' => [
                        'register' => $row['spot']['register'],
                        'transfer' => $row['spot']['register'],
                        'renew' => $row['spot']['register'],
                    ],
                ],
            ];
        }
        if (!$result) {
            return false;
        }
    } else {
        $skip = strtolower($parsed['tld']);
        $spotlight = [];
        foreach (ixir_domain_spotlight_tlds() as $spot) {
            $spotlight[strtolower(ltrim((string) $spot['tld'], '.'))] = true;
        }
        $candidates = [];
        foreach (['online', 'live', 'tech', 'app', 'co', 'eu', 'me', 'club', 'site', 'blog', 'biz', 'pw', 'io', 'studio', 'gen.tr', 'web.tr', 'market'] as $tld) {
            if (strcasecmp($tld, $skip) === 0 || !empty($spotlight[strtolower($tld)])) {
                continue;
            }
            $candidates[] = [
                'sld' => $parsed['sld'],
                'tld' => $tld,
                'full' => $parsed['sld'] . '.' . $tld,
            ];
        }
        $availability = $candidates ? ixir_domain_availability_map(array_column($candidates, 'full'), 6) : [];
        foreach ($candidates as $row) {
            if (($availability[$row['full']] ?? null) !== true) {
                continue;
            }
            $result[] = [
                'domainName' => $row['full'],
                'idnDomainName' => $row['full'],
                'sld' => $row['sld'],
                'tld' => $row['tld'],
                'tldNoDots' => str_replace('.', '', $row['tld']),
                'isValidDomain' => true,
                'isAvailable' => true,
                'pricing' => ixir_domain_price_for_tld($row['tld']),
            ];
            if (count($result) >= 16) {
                break;
            }
        }
    }

    while (ob_get_level() > 0) {
        ob_end_clean();
    }
    header('Content-Type: application/json; charset=utf-8');
    header('Cache-Control: no-store');
    echo json_encode(['result' => $result]);
    exit;
}

function ixir_domain_search_redirect($term)
{
    $root = ixir_domain_search_root();
    $target = ($root === '' ? '' : $root) . '/domain-sorgu?query=' . rawurlencode($term);
    header('Location: ' . $target, true, 303);
    exit;
}

function ixir_domain_add_to_cart_respond()
{
    $domain = trim((string) ($_POST['domain'] ?? ''));
    $added = function_exists('ixir_cart_add_domain')
        ? ixir_cart_add_domain($domain)
        : ['ok' => false, 'domain' => $domain];
    $items = function_exists('ixir_cart_items') ? ixir_cart_items() : [];

    while (ob_get_level() > 0) {
        ob_end_clean();
    }
    header('Content-Type: application/json; charset=utf-8');
    header('Cache-Control: no-store');
    echo json_encode([
        'result' => !empty($added['ok']) ? 'added' : 'unavailable',
        'period' => 1,
        'cartCount' => count($items),
        'domain' => $added['domain'] ?? $domain,
        'items' => $items,
    ]);
    exit;
}

function ixir_domain_is_add_to_cart()
{
    $action = (string) ($_POST['a'] ?? $_GET['a'] ?? '');
    $type = (string) ($_POST['type'] ?? '');
    if ($action !== 'addToCart' && $type !== 'addToCart') {
        return false;
    }
    $domain = trim((string) ($_POST['domain'] ?? ''));
    if ($domain === '' || in_array(strtolower($domain), ['register', 'transfer'], true)) {
        return false;
    }
    return true;
}

add_hook('ClientAreaInit', -800, function () {
    if (ixir_domain_is_add_to_cart() && ixir_domain_search_is_ajax()) {
        ixir_domain_add_to_cart_respond();
    }
});

add_hook('ClientAreaInit', -500, function () {
    $method = strtoupper((string) ($_SERVER['REQUEST_METHOD'] ?? 'GET'));
    $term = ixir_domain_search_posted_term();
    $action = (string) ($_POST['a'] ?? $_GET['a'] ?? '');

    if ($method === 'POST' && $term !== '' && !ixir_domain_search_is_ajax()) {
        if ($action === 'checkDomain' && empty($_POST['type'])) {
            ixir_domain_search_redirect($term);
        }
        if (ixir_domain_search_is_page() && !in_array($action, ['checkDomain', 'validateCaptcha', 'addToCart'], true)) {
            ixir_domain_search_redirect($term);
        }
    }

    if (ixir_domain_search_is_page() || ixir_domain_search_is_lookup()) {
        ixir_domain_search_satisfy_captcha();
    }
    if (ixir_domain_search_is_lookup() && ixir_domain_search_is_ajax()) {
        ixir_domain_emit_check();
    }
});

add_hook('ClientAreaInit', 1000, function () {
    if (ixir_domain_search_is_lookup() && ixir_domain_search_is_ajax()) {
        ixir_domain_search_satisfy_captcha();
        ixir_domain_emit_check();
    }
});

function ixir_domain_price_format($amount)
{
    return number_format((float) $amount, 2, '.', '') . 'TL';
}

function ixir_domain_price_list()
{
    $rows = [
        ['.com', 615, 615, 615],
        ['.net', 655, 655, 855],
        ['.org', 555, 700, 855],
        ['.biz', 1100, 1100, 1350],
        ['.info', 220, 1390, 1690],
        ['.tv', 1750, 1750, 2050],
        ['.in', 800, 800, 800],
        ['.com.tr', 150, 150, 150],
        ['.gen.tr', 150, 150, 150],
        ['.biz.tr', 150, 150, 150],
        ['.net.tr', 150, 150, 150],
        ['.info.tr', 150, 150, 150],
        ['.org.tr', 150, 150, 150],
        ['.web.tr', 150, 150, 150],
        ['.av.tr', 150, 150, 150],
        ['.dr.tr', 150, 150, 150],
        ['.k12.tr', 150, 150, 150],
        ['.name.tr', 150, 150, 150],
        ['.bel.tr', 150, 150, 150],
        ['.gov.tr', 150, 150, 150],
        ['.co', 2080, 2080, 2080],
        ['.eu', 600, 600, 600],
        ['.me', 1150, 1150, 1150],
        ['.nl', 650, 650, 650],
        ['.pw', 260, 1230, 1470],
        ['.kim', 1205, 1205, 1205],
        ['.xyz', 125, 775, 960],
        ['.pro', 200, 1700, 1990],
        ['.club', 1400, 1400, 1400],
        ['.tech', 550, 3900, 3900],
        ['.market', 2450, 2450, 2450],
        ['.work', 150, 950, 950],
        ['.ru', 300, 300, 300],
        ['.co.uk', 550, 550, 550],
        ['.site', 1960, 1960, 1960],
        ['.online', 350, 1860, 1860],
        ['.blog', 1600, 1600, 1600],
        ['.studio', 1810, 1810, 1810],
        ['.live', 169, 1610, 1610],
        ['.io', 1760, 3490, 3490],
        ['.tr', 200, 200, 200],
        ['.app', 1150, 1150, 1150],
    ];

    $list = [];
    foreach ($rows as $row) {
        $list[] = [
            'tld' => $row[0],
            'period' => '1 Yıl',
            'register' => ixir_domain_price_format($row[1]),
            'transfer' => ixir_domain_price_format($row[2]),
            'renew' => ixir_domain_price_format($row[3]),
            'registerNum' => (float) $row[1],
            'transferNum' => (float) $row[2],
            'renewNum' => (float) $row[3],
        ];
    }

    return $list;
}

function ixir_domain_search_page_vars($vars)
{
    $query = trim((string) ($_GET['query'] ?? $_GET['sld'] ?? ''));
    $data = [
        'ixirDomainSearchPage' => true,
        'ixirDomainCaptchaCode' => ixir_domain_search_satisfy_captcha(),
        'ixirDomainPrices' => ixir_domain_price_list(),
        'ixirSpotlightTlds' => ixir_domain_spotlight_tlds(),
        'showSuggestionsContainer' => true,
        'skipMainBodyContainer' => true,
    ];
    if ($query !== '' && empty($vars['lookupTerm'])) {
        $data['lookupTerm'] = $query;
    }
    return $data;
}

function ixir_domain_transfer_page_vars()
{
    return [
        'ixirDomainTransferPage' => true,
        'skipMainBodyContainer' => true,
        'ixirDomainPrices' => ixir_domain_price_list(),
    ];
}

add_hook('ClientAreaPage', -100, function ($vars) {
    if (ixir_domain_transfer_is_page()) {
        return ixir_domain_transfer_page_vars();
    }
    if (!ixir_domain_search_is_page()) {
        return [];
    }
    return ixir_domain_search_page_vars($vars);
});

add_hook('ClientAreaPageCart', 50, function ($vars) {
    if (ixir_domain_transfer_is_page()) {
        return ixir_domain_transfer_page_vars();
    }
    if (ixir_domain_search_is_page()) {
        return ixir_domain_search_page_vars($vars);
    }
    $file = (string) ($vars['templatefile'] ?? '');
    if ($file === 'domainregister') {
        return ['ixirDomainPrices' => ixir_domain_price_list()];
    }
    return [];
});