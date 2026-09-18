<?php

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

function ixir_log_register_error($message)
{
    $line = date('c') . ' ' . $message . "\n";
    @file_put_contents(dirname(__DIR__) . '/ixir-php-error.log', $line, FILE_APPEND);
}

function ixir_is_register_request()
{
    $uri = $_SERVER['REQUEST_URI'] ?? '';
    $script = $_SERVER['SCRIPT_NAME'] ?? '';
    $self = $_SERVER['PHP_SELF'] ?? '';
    return stripos($uri, 'register.php') !== false
        || stripos($script, 'register.php') !== false
        || stripos($self, 'register.php') !== false;
}

$ixirPreviousExceptionHandler = set_exception_handler(function ($exception) {
    global $ixirPreviousExceptionHandler;
    ixir_log_register_error(
        get_class($exception) . ': ' . $exception->getMessage()
        . ' in ' . $exception->getFile() . ':' . $exception->getLine()
        . "\n" . $exception->getTraceAsString()
    );
    if (is_callable($ixirPreviousExceptionHandler)) {
        return $ixirPreviousExceptionHandler($exception);
    }
    throw $exception;
});

register_shutdown_function(function () {
    $error = error_get_last();
    if (!$error) {
        return;
    }
    $fatalTypes = [E_ERROR, E_PARSE, E_CORE_ERROR, E_COMPILE_ERROR, E_USER_ERROR, E_RECOVERABLE_ERROR];
    if (!in_array($error['type'], $fatalTypes, true) && !ixir_is_register_request()) {
        return;
    }
    ixir_log_register_error(
        'shutdown type=' . $error['type'] . ' ' . $error['message']
        . ' in ' . $error['file'] . ':' . $error['line']
    );
});

if (ixir_is_register_request()) {
    ixir_log_register_error(($_SERVER['REQUEST_METHOD'] ?? '') . ' ' . ($_SERVER['REQUEST_URI'] ?? ''));
}

add_hook('ClientAdd', 1, function ($vars) {
    ixir_log_register_error('ClientAdd userid=' . ($vars['userid'] ?? ''));
});

add_hook('EmailPreSend', 1, function ($vars) {
    $name = $vars['messagename'] ?? '';
    if (!ixir_is_register_request() || (($_SERVER['REQUEST_METHOD'] ?? '') !== 'POST')) {
        return [];
    }
    ixir_log_register_error('EmailPreSend abort ' . $name);
    return ['abortsend' => true];
});

add_hook('ClientAreaPageRegister', 1, function ($vars) {
    if (empty($vars['loggedin'])) {
        return [];
    }
    ixir_log_register_error('ClientAreaPageRegister loggedin redirect');
    if (!headers_sent()) {
        header('Location: clientarea.php', true, 303);
        exit;
    }
    return [];
});

add_hook('ClientAreaPage', 1, function ($vars) {
    if (empty($vars['loggedin'])) {
        return [];
    }
    $template = $vars['templatefile'] ?? '';
    $filename = $vars['filename'] ?? '';
    if ($template !== 'clientregister' && $filename !== 'register') {
        return [];
    }
    ixir_log_register_error('ClientAreaPage loggedin register redirect');
    if (!headers_sent()) {
        header('Location: clientarea.php', true, 303);
        exit;
    }
    return [];
});
