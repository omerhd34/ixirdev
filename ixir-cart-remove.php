<?php

define('CLIENTAREA', true);

require __DIR__ . '/init.php';

header('Content-Type: application/json; charset=utf-8');
header('Cache-Control: no-store');

if (strtoupper((string) ($_SERVER['REQUEST_METHOD'] ?? '')) !== 'POST') {
    echo json_encode(['ok' => false]);
    exit;
}

if (!function_exists('ixir_cart_remove_item')) {
    echo json_encode(['ok' => false]);
    exit;
}

$type = (string) ($_POST['r'] ?? '');
$index = $_POST['i'] ?? '';
$renewalType = (string) ($_POST['rt'] ?? '');

echo json_encode(ixir_cart_remove_item($type, $index, $renewalType));
exit;
