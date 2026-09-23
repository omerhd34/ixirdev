<?php

define('CLIENTAREA', true);

require __DIR__ . '/init.php';

header('Content-Type: application/json; charset=utf-8');
header('Cache-Control: no-store');

if (strtoupper((string) ($_SERVER['REQUEST_METHOD'] ?? '')) !== 'POST') {
    echo json_encode(['result' => ['error' => 'Sorgulanamadı, lütfen tekrar deneyin.']]);
    exit;
}

$type = (string) ($_POST['type'] ?? '');
if ($type === 'addToCart' && function_exists('ixir_domain_add_to_cart_respond')) {
    ixir_domain_add_to_cart_respond();
}

if (function_exists('ixir_domain_search_satisfy_captcha')) {
    ixir_domain_search_satisfy_captcha();
}

if (function_exists('ixir_domain_emit_check')) {
    ixir_domain_emit_check();
}

echo json_encode(['result' => ['error' => 'Sorgulanamadı, lütfen tekrar deneyin.']]);
exit;
