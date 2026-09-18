<?php

require_once __DIR__ . '/includes/ixir-inbound-route.php';

ixir_apply_inbound_route();

$scriptName = str_replace('\\', '/', (string) ($_SERVER['SCRIPT_NAME'] ?? '/index.php'));
if (basename($scriptName) !== 'index.php') {
    $base = rtrim(dirname($scriptName), '/');
    $_SERVER['SCRIPT_NAME'] = ($base === '' ? '' : $base) . '/index.php';
    $_SERVER['PHP_SELF'] = $_SERVER['SCRIPT_NAME'];
    $_SERVER['SCRIPT_FILENAME'] = __DIR__ . DIRECTORY_SEPARATOR . 'index.php';
}

require __DIR__ . '/index.php';
