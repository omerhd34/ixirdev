<?php

$routes = [
    'user-profile' => '/user/profile',
    'user-password' => '/user/password',
    'user-security' => '/user/security',
];

$key = (string) ($_GET['ixir_rp'] ?? '');
if (!isset($routes[$key])) {
    header('Location: /', true, 302);
    exit;
}

$whmcsPath = $routes[$key];
$originalUri = $_SERVER['REQUEST_URI'] ?? $whmcsPath;

$query = $_GET;
unset($query['ixir_rp'], $query['rp']);
$queryString = http_build_query($query, '', '&');

$_SERVER['IXIR_FRIENDLY_URI'] = $originalUri;
$_GET['rp'] = $whmcsPath;
$_REQUEST['rp'] = $whmcsPath;
$_SERVER['QUERY_STRING'] = ltrim(($queryString !== '' ? $queryString . '&' : '') . 'rp=' . $whmcsPath, '&');
$_SERVER['REQUEST_URI'] = $whmcsPath . ($queryString !== '' ? '?' . $queryString : '');
$_SERVER['PATH_INFO'] = $whmcsPath;
$_SERVER['SCRIPT_NAME'] = '/index.php';
$_SERVER['PHP_SELF'] = '/index.php';
$_SERVER['SCRIPT_FILENAME'] = __DIR__ . DIRECTORY_SEPARATOR . 'index.php';

require __DIR__ . '/index.php';
