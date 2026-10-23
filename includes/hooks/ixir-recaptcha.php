<?php

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

/**
 * Google reCAPTCHA v2 ("Ben robot değilim") — Site Key / Secret Key.
 * Anahtarları https://www.google.com/recaptcha/admin adresinden alın.
 * WHMCS admin panelinde tanımlıysa oradakiler kullanılır; burası boş bırakılabilir.
 */
if (!defined('IXIR_RECAPTCHA_SITE_KEY')) {
    define('IXIR_RECAPTCHA_SITE_KEY', '');
}
if (!defined('IXIR_RECAPTCHA_SECRET_KEY')) {
    define('IXIR_RECAPTCHA_SECRET_KEY', '');
}

function ixir_recaptcha_config_value(array $keys)
{
    foreach ($keys as $key) {
        $value = '';
        try {
            if (class_exists('\WHMCS\Config\Setting')) {
                $value = (string) \WHMCS\Config\Setting::getValue($key);
            }
        } catch (\Throwable $e) {
            $value = '';
        }
        if ($value === '' && class_exists('\WHMCS\Database\Capsule')) {
            try {
                $value = (string) \WHMCS\Database\Capsule::table('tblconfiguration')
                    ->where('setting', $key)
                    ->value('value');
            } catch (\Throwable $e) {
                $value = '';
            }
        }
        if (trim($value) !== '') {
            return trim($value);
        }
    }
    return '';
}

function ixir_recaptcha_site_key()
{
    $fromFile = trim((string) IXIR_RECAPTCHA_SITE_KEY);
    if ($fromFile !== '') {
        return $fromFile;
    }
    return ixir_recaptcha_config_value([
        'ReCAPTCHAPublicKey',
        'RecaptchaPubKey',
        'recaptchapublickey',
        'RecaptchaPublicKey',
    ]);
}

function ixir_recaptcha_secret_key()
{
    $fromFile = trim((string) IXIR_RECAPTCHA_SECRET_KEY);
    if ($fromFile !== '') {
        return $fromFile;
    }
    return ixir_recaptcha_config_value([
        'ReCAPTCHAPrivateKey',
        'RecaptchaPrivKey',
        'recaptchaprivatekey',
        'RecaptchaPrivateKey',
    ]);
}

function ixir_recaptcha_captcha_type()
{
    return strtolower(ixir_recaptcha_config_value(['CaptchaType']));
}

function ixir_recaptcha_whmcs_native()
{
    return in_array(ixir_recaptcha_captcha_type(), [
        'recaptcha',
        'invisible',
        'recaptcha3',
        'recaptchav3',
        'hcaptcha',
        'hcaptchainvisible',
    ], true);
}

function ixir_recaptcha_explicit()
{
    return !ixir_recaptcha_whmcs_native()
        && ixir_recaptcha_site_key() !== ''
        && ixir_recaptcha_secret_key() !== '';
}

function ixir_recaptcha_form_ids()
{
    $login = 'login';
    $register = 'registration';
    if (class_exists('\WHMCS\Utility\Captcha')) {
        if (defined('\WHMCS\Utility\Captcha::FORM_LOGIN')) {
            $login = \WHMCS\Utility\Captcha::FORM_LOGIN;
        }
        if (defined('\WHMCS\Utility\Captcha::FORM_REGISTRATION')) {
            $register = \WHMCS\Utility\Captcha::FORM_REGISTRATION;
        }
    }
    return [$login, $register];
}

function ixir_recaptcha_siteverify($token)
{
    $secret = ixir_recaptcha_secret_key();
    $token = trim((string) $token);
    if ($secret === '' || $token === '') {
        return false;
    }

    $ip = $_SERVER['REMOTE_ADDR'] ?? null;
    if (class_exists('\ReCaptcha\ReCaptcha')) {
        try {
            $recaptcha = new \ReCaptcha\ReCaptcha($secret);
            return $recaptcha->verify($token, $ip)->isSuccess();
        } catch (\Throwable $e) {
            // fall through to HTTP
        }
    }

    $payload = http_build_query([
        'secret' => $secret,
        'response' => $token,
        'remoteip' => $ip,
    ]);
    $url = 'https://www.google.com/recaptcha/api/siteverify';
    $raw = '';

    if (function_exists('curl_init')) {
        $ch = curl_init($url);
        curl_setopt_array($ch, [
            CURLOPT_POST => true,
            CURLOPT_POSTFIELDS => $payload,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_TIMEOUT => 8,
        ]);
        $raw = (string) curl_exec($ch);
        curl_close($ch);
    } else {
        $context = stream_context_create([
            'http' => [
                'method' => 'POST',
                'header' => "Content-Type: application/x-www-form-urlencoded\r\n",
                'content' => $payload,
                'timeout' => 8,
            ],
        ]);
        $raw = (string) @file_get_contents($url, false, $context);
    }

    $json = json_decode($raw, true);
    return is_array($json) && !empty($json['success']);
}

function ixir_recaptcha_satisfy_default_captcha()
{
    $code = bin2hex(random_bytes(3));
    $_POST['code'] = $code;
    $_REQUEST['code'] = $code;

    if (class_exists('\WHMCS\Session')) {
        try {
            \WHMCS\Session::set('captchaValue', $code);
            \WHMCS\Session::set('captcha', $code);
        } catch (\Throwable $e) {
            // ignore
        }
    }
    if (isset($_SESSION) && is_array($_SESSION)) {
        $_SESSION['captchaValue'] = $code;
        $_SESSION['captcha'] = $code;
    }
}

function ixir_recaptcha_template_vars()
{
    $siteKey = ixir_recaptcha_site_key();
    $explicit = ixir_recaptcha_explicit();
    [$loginForm, $registerForm] = ixir_recaptcha_form_ids();

    return [
        'ixirRecaptchaSiteKey' => $siteKey,
        'ixirRecaptchaExplicit' => $explicit,
        'ixirUsePerFormCaptcha' => $explicit || ixir_recaptcha_whmcs_native(),
        'captchaFormLogin' => $loginForm,
        'captchaFormRegister' => $registerForm,
    ];
}

add_hook('ClientAreaInit', 1, function () {
    if (strtoupper($_SERVER['REQUEST_METHOD'] ?? '') !== 'POST') {
        return;
    }
    if (!ixir_recaptcha_explicit()) {
        return;
    }

    $token = (string) ($_POST['g-recaptcha-response'] ?? '');
    if (!ixir_recaptcha_siteverify($token)) {
        $_POST['code'] = '';
        $_REQUEST['code'] = '';
        return;
    }

    ixir_recaptcha_satisfy_default_captcha();
});

add_hook('ClientAreaPage', 1, function () {
    return ixir_recaptcha_template_vars();
});
