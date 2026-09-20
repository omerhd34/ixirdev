<?php

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

function ixir_desired_security_questions()
{
    return [
        'En sevdiğiniz kahraman?',
        'İlkokul öğretmeniniz?',
        'En sevdiğiniz SQL sorgusu?',
    ];
}

function ixir_ensure_security_questions()
{
    $desired = ixir_desired_security_questions();
    $byText = [];

    try {
        $rows = \WHMCS\Database\Capsule::table('tbladminsecurityquestions')->get();
        foreach ($rows as $row) {
            $text = function_exists('decrypt') ? decrypt($row->question) : $row->question;
            if ($text !== '' && $text !== false && $text !== null) {
                $byText[$text] = (int) $row->id;
            }
        }
    } catch (\Throwable $e) {
        return [];
    }

    foreach ($desired as $text) {
        if (isset($byText[$text])) {
            continue;
        }
        try {
            $payload = function_exists('encrypt') ? encrypt($text) : $text;
            $id = (int) \WHMCS\Database\Capsule::table('tbladminsecurityquestions')->insertGetId([
                'question' => $payload,
            ]);
            if ($id > 0) {
                $byText[$text] = $id;
            }
        } catch (\Throwable $e) {
            // ignore insert failure; fall through
        }
    }

    $questions = [];
    foreach ($desired as $text) {
        if (!isset($byText[$text])) {
            continue;
        }
        $questions[] = [
            'id' => $byText[$text],
            'question' => $text,
        ];
    }

    return $questions;
}

add_hook('ClientAreaPageRegister', 1, function ($vars) {
    $questions = ixir_ensure_security_questions();
    if (!$questions) {
        return [];
    }
    return [
        'securityquestions' => $questions,
    ];
});
