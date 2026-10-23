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

$result = ixir_cart_remove_item($type, $index, $renewalType);
if (!empty($result['ok']) && $type === 'p' && isset($_SESSION['ixirCartProducts']) && is_array($_SESSION['ixirCartProducts'])) {
    $removeAt = (int) $index;
    if (isset($_SESSION['ixirCartProducts'][$removeAt])) {
        array_splice($_SESSION['ixirCartProducts'], $removeAt, 1);
        if (isset($_SESSION['cart']) && is_array($_SESSION['cart'])) {
            $_SESSION['cart']['products'] = array_values($_SESSION['ixirCartProducts']);
            if (class_exists('\\WHMCS\\Session')) {
                \WHMCS\Session::set('cart', $_SESSION['cart']);
            }
        }
    }
}
echo json_encode($result);
exit;
