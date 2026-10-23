<?php

define('CLIENTAREA', true);

require __DIR__ . '/init.php';

header('Content-Type: application/json; charset=utf-8');
header('Cache-Control: no-store');

if (strtoupper((string) ($_SERVER['REQUEST_METHOD'] ?? '')) !== 'POST') {
    echo json_encode(['ok' => false, 'error' => 'Geçersiz istek yöntemi.']);
    exit;
}

$name = trim((string) ($_POST['name'] ?? ''));
$phone = trim((string) ($_POST['phone'] ?? ''));
$email = trim((string) ($_POST['email'] ?? ''));
$message = trim((string) ($_POST['message'] ?? ''));

// Doğrulamalar
if ($name === '') {
    echo json_encode(['ok' => false, 'field' => 'name', 'error' => 'Lütfen adınızı ve soyadınızı girin.']);
    exit;
}

if ($phone === '') {
    echo json_encode(['ok' => false, 'field' => 'phone', 'error' => 'Lütfen telefon numaranızı girin.']);
    exit;
}

if ($email === '' || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
    echo json_encode(['ok' => false, 'field' => 'email', 'error' => 'Lütfen geçerli bir e-posta adresi girin.']);
    exit;
}

$recipient = 'destek@ixirhost.com';
$subject = 'Yeni PCI - DSS Tarama Bilgi Talebi: ' . $name;
$date = date('d.m.Y H:i:s');
$ip = $_SERVER['REMOTE_ADDR'] ?? '-';

$htmlContent = '<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>' . htmlspecialchars($subject, ENT_QUOTES, 'UTF-8') . '</title>
</head>
<body style="font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; line-height: 1.6; color: #1e293b; background-color: #f1f5f9; padding: 24px; margin: 0;">
    <div style="max-width: 600px; margin: 0 auto; background: #ffffff; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 12px rgba(0,0,0,0.06); border: 1px solid #e2e8f0;">
        <div style="background: linear-gradient(135deg, #2563eb 0%, #1d4ed8 100%); color: #ffffff; padding: 24px 28px;">
            <h2 style="margin: 0; font-size: 20px; font-weight: 700;">Yeni PCI - DSS Tarama Bilgi Talebi</h2>
            <p style="margin: 6px 0 0; font-size: 13px; opacity: 0.9;">İxirHost web sitesi üzerinden gönderildi</p>
        </div>
        <div style="padding: 28px;">
            <table style="width: 100%; border-collapse: collapse; margin-bottom: 24px;">
                <tr>
                    <td style="padding: 10px 0; border-bottom: 1px solid #f1f5f9; font-weight: 600; width: 140px; color: #64748b; font-size: 13.5px;">Ad ve Soyad:</td>
                    <td style="padding: 10px 0; border-bottom: 1px solid #f1f5f9; color: #0f172a; font-weight: 700; font-size: 14.5px;">' . htmlspecialchars($name, ENT_QUOTES, 'UTF-8') . '</td>
                </tr>
                <tr>
                    <td style="padding: 10px 0; border-bottom: 1px solid #f1f5f9; font-weight: 600; color: #64748b; font-size: 13.5px;">Telefon:</td>
                    <td style="padding: 10px 0; border-bottom: 1px solid #f1f5f9; color: #0f172a; font-size: 14px;"><strong>' . htmlspecialchars($phone, ENT_QUOTES, 'UTF-8') . '</strong></td>
                </tr>
                <tr>
                    <td style="padding: 10px 0; border-bottom: 1px solid #f1f5f9; font-weight: 600; color: #64748b; font-size: 13.5px;">E-posta:</td>
                    <td style="padding: 10px 0; border-bottom: 1px solid #f1f5f9; color: #0f172a; font-size: 14px;"><a href="mailto:' . htmlspecialchars($email, ENT_QUOTES, 'UTF-8') . '" style="color: #2563eb; text-decoration: none;">' . htmlspecialchars($email, ENT_QUOTES, 'UTF-8') . '</a></td>
                </tr>
                <tr>
                    <td style="padding: 10px 0; border-bottom: 1px solid #f1f5f9; font-weight: 600; color: #64748b; font-size: 13.5px;">Tarih & Saat:</td>
                    <td style="padding: 10px 0; border-bottom: 1px solid #f1f5f9; color: #475569; font-size: 13.5px;">' . $date . '</td>
                </tr>
                <tr>
                    <td style="padding: 10px 0; border-bottom: 1px solid #f1f5f9; font-weight: 600; color: #64748b; font-size: 13.5px;">IP Adresi:</td>
                    <td style="padding: 10px 0; border-bottom: 1px solid #f1f5f9; color: #475569; font-size: 13.5px;">' . htmlspecialchars($ip, ENT_QUOTES, 'UTF-8') . '</td>
                </tr>
            </table>';

if ($message !== '') {
    $htmlContent .= '
            <div>
                <p style="font-weight: 700; margin: 0 0 8px; color: #334155; font-size: 14px;">Açıklama / Not:</p>
                <div style="background: #f8fafc; border: 1.5px solid #e2e8f0; border-radius: 8px; padding: 14px 16px; white-space: pre-wrap; font-size: 14px; color: #1e293b; line-height: 1.6;">' . htmlspecialchars($message, ENT_QUOTES, 'UTF-8') . '</div>
            </div>';
}

$htmlContent .= '
        </div>
    </div>
</body>
</html>';

$headers = [
    'MIME-Version: 1.0',
    'Content-Type: text/html; charset=UTF-8',
    'From: =?UTF-8?B?' . base64_encode('İxirHost Web Formu') . '?= <destek@ixirhost.com>',
    'Reply-To: ' . $email,
    'X-Mailer: PHP/' . phpversion()
];

@mail($recipient, '=?UTF-8?B?' . base64_encode($subject) . '?=', $htmlContent, implode("\r\n", $headers));

if (function_exists('logActivity')) {
    logActivity("PCI - DSS Tarama Bilgi Talebi Alındı - İsim: " . $name . " - E-posta: " . $email . " - Telefon: " . $phone);
}

if (function_exists('sendAdminNotification')) {
    try {
        sendAdminNotification("system", $subject, "Ad Soyad: " . $name . "\nTelefon: " . $phone . "\nE-posta: " . $email . ($message !== '' ? "\nMesaj:\n" . $message : ''));
    } catch (\Throwable $e) {}
}

echo json_encode([
    'ok' => true,
    'message' => 'Teşekkürler, en kısa sürede sizinle iletişime geçeceğiz.'
]);
exit;
