<?php

$method = strtoupper($_SERVER['REQUEST_METHOD'] ?? 'GET');

$isResetPost = $method === 'POST' && empty($_POST['register']) && (
    (isset($_POST['action']) && $_POST['action'] === 'reset')
    || isset($_POST['newpw'])
    || (isset($_POST['answer']) && !isset($_POST['username']) && !isset($_POST['password']))
);

if ($isResetPost) {
    $_GET['ixir_rp'] = 'password-reset-validate';
    $_REQUEST['ixir_rp'] = 'password-reset-validate';
    require __DIR__ . '/ixir-route.php';
    exit;
}

if ($method === 'POST' && empty($_POST['register']) && (isset($_POST['username']) || isset($_POST['password']))) {
    $_GET['ixir_rp'] = 'login';
    $_REQUEST['ixir_rp'] = 'login';
    require __DIR__ . '/ixir-route.php';
    exit;
}

require __DIR__ . '/register.php';
