<?php

use WHMCS\ClientArea;

define('CLIENTAREA', true);

require __DIR__ . '/init.php';

$ca = new ClientArea();
$ca->setPageTitle('WHOIS Sorgulama');
$ca->addToBreadCrumb('index.php', Lang::trans('globalsystemname'));
$ca->addToBreadCrumb('whois-sorgulama', 'WHOIS Sorgulama');
$ca->initPage();

$domain = '';
$whois = '';
$error = '';
$status = '';

$input = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (function_exists('check_token')) {
        check_token();
    }
    $input = $_POST['domain'] ?? '';
} elseif (!empty($_GET['domain'])) {
    $input = $_GET['domain'];
}

if ($input !== '') {
    $domain = ixir_whois_normalize_domain($input);
    if ($domain === '' || !ixir_whois_valid_domain($domain)) {
        $error = 'Lütfen geçerli bir domain girin. Örneğin: ixirhost.com';
        $domain = $input;
    } else {
        $now = time();
        $last = (int) ($_SESSION['ixir_whois_last'] ?? 0);
        if ($last && ($now - $last) < 2) {
            $error = 'Lütfen yeni bir sorgu için kısa bir süre bekleyin.';
        } else {
            $_SESSION['ixir_whois_last'] = $now;
            $results = localAPI('DomainWhois', ['domain' => $domain]);
            if (($results['result'] ?? '') === 'success') {
                $status = strtolower((string) ($results['status'] ?? ''));
                $whois = ixir_whois_plain((string) ($results['whois'] ?? ''));
            } else {
                $error = (string) ($results['message'] ?? 'WHOIS sorgusu şu anda yapılamadı. Lütfen daha sonra tekrar deneyin.');
            }
        }
    }
}

$ca->assign('displayTitle', 'WHOIS Sorgulama');
$ca->assign('tagline', 'Domain'in sahiplik bilgilerini ücretsiz ve anında sorgulayın');
$ca->assign('ixirWhoisDomain', $domain);
$ca->assign('ixirWhoisResult', $whois);
$ca->assign('ixirWhoisParsed', $whois !== '' ? ixir_whois_parse($whois, $domain) : null);
$ca->assign('ixirWhoisError', $error);
$ca->assign('ixirWhoisInvalid', $error === 'Lütfen geçerli bir domain girin. Örneğin: ixirhost.com');
$ca->assign('ixirWhoisStatus', $status);
$ca->setTemplate('whois-sorgulama');
$ca->output();

function ixir_whois_normalize_domain($input)
{
    $domain = strtolower(trim((string) $input));
    $domain = preg_replace('#^https?://#i', '', $domain);
    $domain = preg_replace('#^www\.#i', '', $domain);
    $domain = preg_replace('~[/?#].*$~', '', $domain);
    $domain = preg_replace('#\s+#', '', $domain);
    $domain = trim($domain, '.');
    return $domain;
}

function ixir_whois_valid_domain($domain)
{
    return (bool) preg_match('/^(?:[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?\.)+[a-z]{2,63}$/i', $domain);
}

function ixir_whois_plain($raw)
{
    $text = str_ireplace(['<br />', '<br/>', '<br>'], "\n", (string) $raw);
    $text = html_entity_decode(strip_tags($text), ENT_QUOTES, 'UTF-8');
    $text = str_replace(["\r\n", "\r"], "\n", $text);
    $text = preg_replace("/[ \t]+\n/", "\n", $text);
    $text = preg_replace("/\n{3,}/", "\n\n", $text);
    return trim($text);
}

function ixir_whois_parse($text, $fallbackDomain)
{
    $months = [1 => 'Ocak', 'Şubat', 'Mart', 'Nisan', 'Mayıs', 'Haziran', 'Temmuz', 'Ağustos', 'Eylül', 'Ekim', 'Kasım', 'Aralık'];
    $statusLabels = [
        'clienttransferprohibited' => 'Transfer koruması',
        'clientdeleteprohibited' => 'Silme koruması',
        'clientupdateprohibited' => 'Güncelleme koruması',
        'clientrenewprohibited' => 'Yenileme koruması',
        'clienthold' => 'Askıda',
        'servertransferprohibited' => 'Kayıt kuruluşu transfer kilidi',
        'serverdeleteprohibited' => 'Kayıt kuruluşu silme kilidi',
        'serverupdateprohibited' => 'Kayıt kuruluşu güncelleme kilidi',
        'serverhold' => 'Kayıt kuruluşu askısı',
        'ok' => 'Aktif',
        'active' => 'Aktif',
        'redemptionperiod' => 'Kurtarma süresi',
        'pendingdelete' => 'Silinmeyi bekliyor',
        'pendingtransfer' => 'Transfer bekliyor',
    ];

    $single = [
        'domain name' => 'domain',
        'domain' => 'domain',
        'registrar' => 'registrar',
        'registrar url' => 'registrarUrl',
        'sponsoring registrar' => 'registrar',
        'creation date' => 'created',
        'created' => 'created',
        'created on' => 'created',
        'registered' => 'created',
        'registration date' => 'created',
        'updated date' => 'updated',
        'last updated' => 'updated',
        'changed' => 'updated',
        'registry expiry date' => 'expires',
        'registrar registration expiration date' => 'expires',
        'expiry date' => 'expires',
        'expiration date' => 'expires',
        'expires' => 'expires',
        'expire date' => 'expires',
        'paid-till' => 'expires',
        'dnssec' => 'dnssec',
        'registry domain id' => 'registryId',
        'registrar abuse contact email' => 'abuseEmail',
        'registrar abuse contact phone' => 'abusePhone',
    ];

    $pick = [];
    $nameservers = [];
    $statuses = [];
    $privacy = false;

    foreach (preg_split("/\n/", $text) as $line) {
        $line = trim(preg_replace('/^\*+\s*/', '', trim($line)));
        if ($line === '' || $line[0] === '%' || $line[0] === '#' || strncmp($line, '>>>', 3) === 0) {
            continue;
        }
        if (!preg_match('/^([^:]{2,80}):\s*(.+)$/', $line, $match)) {
            continue;
        }
        $key = strtolower(trim($match[1]));
        $value = trim($match[2]);
        if ($value === '' || $value === '-') {
            continue;
        }
        if (preg_match('/redacted|privacy|data protected|whois privacy/i', $value)) {
            $privacy = true;
        }
        if (in_array($key, ['name server', 'nameserver', 'nserver'], true)) {
            $host = strtolower(preg_replace('/\s+.*/', '', $value));
            if ($host !== '' && !in_array($host, $nameservers, true)) {
                $nameservers[] = $host;
            }
            continue;
        }
        if (in_array($key, ['domain status', 'status'], true)) {
            $code = strtolower(preg_replace('/\s+.*/', '', $value));
            $url = '';
            if (preg_match('#https?://\S+#', $value, $urlMatch)) {
                $url = rtrim($urlMatch[0], '.,)');
            }
            $already = false;
            foreach ($statuses as $statusRow) {
                if ($statusRow['code'] === $code) {
                    $already = true;
                    break;
                }
            }
            if (!$already && $code !== '') {
                $statuses[] = [
                    'code' => $code,
                    'label' => $statusLabels[$code] ?? $code,
                    'url' => $url,
                ];
            }
            continue;
        }
        if (isset($single[$key]) && empty($pick[$single[$key]])) {
            $pick[$single[$key]] = $value;
        }
    }

    $formatDate = function ($value) use ($months) {
        $ts = strtotime($value);
        if (!$ts) {
            return ['display' => $value, 'iso' => '', 'days' => null];
        }
        return [
            'display' => (int) date('j', $ts) . ' ' . $months[(int) date('n', $ts)] . ' ' . date('Y', $ts),
            'iso' => date('Y-m-d', $ts),
            'days' => (int) floor(($ts - time()) / 86400),
        ];
    };

    $created = isset($pick['created']) ? $formatDate($pick['created']) : null;
    $updated = isset($pick['updated']) ? $formatDate($pick['updated']) : null;
    $expires = isset($pick['expires']) ? $formatDate($pick['expires']) : null;
    $dnssecRaw = strtolower($pick['dnssec'] ?? '');
    $dnssec = '';
    if ($dnssecRaw !== '') {
        $dnssec = (strpos($dnssecRaw, 'unsigned') !== false || $dnssecRaw === 'no') ? 'Kapalı' : 'Açık';
    }

    $hasSummary = $created || $updated || $expires || !empty($pick['registrar']) || $nameservers || $statuses;
    if (!$hasSummary) {
        return null;
    }

    return [
        'domain' => $pick['domain'] ?? $fallbackDomain,
        'registrar' => $pick['registrar'] ?? '',
        'registrarUrl' => $pick['registrarUrl'] ?? '',
        'created' => $created['display'] ?? '',
        'updated' => $updated['display'] ?? '',
        'expires' => $expires['display'] ?? '',
        'expiresNote' => isset($expires['days'])
            ? ($expires['days'] < 0 ? 'Süresi doldu' : ($expires['days'] === 0 ? 'Bugün bitiyor' : $expires['days'] . ' gün kaldı'))
            : '',
        'dnssec' => $dnssec,
        'registryId' => $pick['registryId'] ?? '',
        'abuseEmail' => $pick['abuseEmail'] ?? '',
        'abusePhone' => $pick['abusePhone'] ?? '',
        'nameservers' => $nameservers,
        'statuses' => $statuses,
        'privacy' => $privacy,
    ];
}
