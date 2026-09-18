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
        $error = 'Lütfen geçerli bir alan adı girin. Örneğin: ixirhost.com';
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
                $whois = (string) ($results['whois'] ?? '');
            } else {
                $error = (string) ($results['message'] ?? 'WHOIS sorgusu şu anda yapılamadı. Lütfen daha sonra tekrar deneyin.');
            }
        }
    }
}

$ca->assign('displayTitle', 'WHOIS Sorgulama');
$ca->assign('tagline', 'Alan adının sahiplik bilgilerini ücretsiz ve anında sorgulayın');
$ca->assign('ixirWhoisDomain', $domain);
$ca->assign('ixirWhoisResult', $whois);
$ca->assign('ixirWhoisError', $error);
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
