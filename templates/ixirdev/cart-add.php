<?php

define('CLIENTAREA', true);

$init = dirname(__DIR__, 2) . DIRECTORY_SEPARATOR . 'init.php';
if (!is_file($init)) {
    http_response_code(500);
    header('Content-Type: application/json; charset=utf-8');
    echo json_encode(['ok' => false, 'error' => 'init']);
    exit;
}

ob_start();
require $init;
while (ob_get_level() > 0) {
    ob_end_clean();
}

header('Content-Type: application/json; charset=utf-8');
header('Cache-Control: no-store');

if (($_SERVER['REQUEST_METHOD'] ?? '') !== 'POST') {
    http_response_code(405);
    echo json_encode(['ok' => false, 'error' => 'method']);
    exit;
}

$catalog = [
    363 => ['name' => 'Starter', 'product' => 'Developer Hosting', 'aliases' => ['BudgetDev', 'Budget Dev']],
    364 => ['name' => 'Essential', 'product' => 'Developer Hosting', 'aliases' => ['EconomyDev', 'Economy Dev']],
    365 => ['name' => 'Advanced', 'product' => 'Developer Hosting', 'aliases' => ['ProDev', 'Professional Dev']],
    366 => ['name' => 'Premium', 'product' => 'Developer Hosting', 'aliases' => ['ExtremeDev', 'Extreme Dev']],
    211 => ['name' => 'Starter', 'product' => 'Linux Hosting', 'aliases' => ['BudgetLin']],
    212 => ['name' => 'Essential', 'product' => 'Linux Hosting', 'aliases' => ['EconomyLin']],
    213 => ['name' => 'Advanced', 'product' => 'Linux Hosting', 'aliases' => ['ProLin']],
    324 => ['name' => 'Premium', 'product' => 'Linux Hosting', 'aliases' => ['ExtremeLin']],
    208 => ['name' => 'Starter', 'product' => 'Windows Hosting', 'aliases' => ['BudgetWin']],
    209 => ['name' => 'Essential', 'product' => 'Windows Hosting', 'aliases' => ['EconomyWin']],
    210 => ['name' => 'Advanced', 'product' => 'Windows Hosting', 'aliases' => ['ProWin']],
    325 => ['name' => 'Premium', 'product' => 'Windows Hosting', 'aliases' => ['ExtremeWin']],
    287 => ['name' => 'Starter', 'product' => 'WordPress Hosting', 'aliases' => ['BudgetWP']],
    288 => ['name' => 'Growth', 'product' => 'WordPress Hosting', 'aliases' => ['EcoWP']],
    289 => ['name' => 'Advanced', 'product' => 'WordPress Hosting', 'aliases' => ['ProWP']],
    428 => ['name' => 'Starter', 'product' => 'Linux Reseller Hosting', 'aliases' => ['CoreLin']],
    217 => ['name' => 'Essential', 'product' => 'Linux Reseller Hosting', 'aliases' => ['StarterLin']],
    218 => ['name' => 'Advanced', 'product' => 'Linux Reseller Hosting', 'aliases' => ['PremiumResellerLin']],
    219 => ['name' => 'Premium', 'product' => 'Linux Reseller Hosting', 'aliases' => ['ExpertResellerLin']],
    427 => ['name' => 'Starter', 'product' => 'Windows Reseller Hosting', 'aliases' => ['CoreWin']],
    214 => ['name' => 'Essential', 'product' => 'Windows Reseller Hosting', 'aliases' => ['StarterWin']],
    215 => ['name' => 'Advanced', 'product' => 'Windows Reseller Hosting', 'aliases' => ['PremiumResellerWin']],
    216 => ['name' => 'Premium', 'product' => 'Windows Reseller Hosting', 'aliases' => ['ExpertResellerWin']],
    373 => ['name' => 'Starter', 'product' => 'Kurumsal Mail Hosting', 'aliases' => ['BudgetMail']],
    410 => ['name' => 'Essential', 'product' => 'Kurumsal Mail Hosting', 'aliases' => ['EssentialMail']],
    374 => ['name' => 'Advanced', 'product' => 'Kurumsal Mail Hosting', 'aliases' => ['EconomyMail']],
    375 => ['name' => 'Premium', 'product' => 'Kurumsal Mail Hosting', 'aliases' => ['ProfessionalMail']],
    284 => ['name' => 'Starter', 'product' => 'Kurumsal Mail Server', 'aliases' => ['BudgetMailServer']],
    285 => ['name' => 'Essential', 'product' => 'Kurumsal Mail Server', 'aliases' => ['EconomyMailServer']],
    286 => ['name' => 'Advanced', 'product' => 'Kurumsal Mail Server', 'aliases' => ['ProfessionalMailServer']],
    420 => ['name' => 'Premium', 'product' => 'Kurumsal Mail Server', 'aliases' => ['ExpertMailServer']],
    244 => ['name' => 'Starter', 'product' => 'Cloud Server', 'aliases' => ['BudgetCloud']],
    250 => ['name' => 'Essential', 'product' => 'Cloud Server', 'aliases' => ['EconomyCloud']],
    254 => ['name' => 'Advanced', 'product' => 'Cloud Server', 'aliases' => ['PremiumCloud']],
    255 => ['name' => 'Premium', 'product' => 'Cloud Server', 'aliases' => ['ExpertCloud']],
    268 => ['name' => 'Starter', 'product' => 'Pro Cloud Server', 'aliases' => ['BudgetCloudPRO']],
    269 => ['name' => 'Essential', 'product' => 'Pro Cloud Server', 'aliases' => ['EconomyCloudPRO']],
    270 => ['name' => 'Advanced', 'product' => 'Pro Cloud Server', 'aliases' => ['PremiumCloudPRO']],
    271 => ['name' => 'Premium', 'product' => 'Pro Cloud Server', 'aliases' => ['ExpertCloudPRO']],
    232 => ['name' => 'Starter', 'product' => 'Cloud Drive', 'aliases' => ['Cloud Drive Sprinkle']],
    233 => ['name' => 'Growth', 'product' => 'Cloud Drive', 'aliases' => ['Cloud Drive Thunderstrom']],
    234 => ['name' => 'Advanced', 'product' => 'Cloud Drive', 'aliases' => ['Cloud Drive Typhoon']],
    278 => ['name' => 'Starter', 'product' => 'AntiSpam', 'aliases' => ['BudgetAntispam']],
    409 => ['name' => 'Essential', 'product' => 'AntiSpam', 'aliases' => ['EssentialAntispam']],
    279 => ['name' => 'Advanced', 'product' => 'AntiSpam', 'aliases' => ['EconomyAntispam']],
    280 => ['name' => 'Premium', 'product' => 'AntiSpam', 'aliases' => ['ProfessionalAntispam']],
    281 => ['name' => 'Starter', 'product' => 'Outbound Mail Gateway', 'aliases' => ['BudgetOutbound']],
    282 => ['name' => 'Growth', 'product' => 'Outbound Mail Gateway', 'aliases' => ['EconomyOutbound']],
    283 => ['name' => 'Advanced', 'product' => 'Outbound Mail Gateway', 'aliases' => ['ProfessionalOutbound']],
    291 => ['name' => 'Starter', 'product' => 'Site Pratik', 'aliases' => ['SitePratikStarter']],
    292 => ['name' => 'Growth', 'product' => 'Site Pratik', 'aliases' => ['SitePratikGrowth']],
    293 => ['name' => 'Advanced', 'product' => 'Site Pratik', 'aliases' => ['SitePratikAdvanced']],
    326 => ['name' => 'Starter', 'product' => 'Server Servisleri', 'aliases' => ['BudgetManagement']],
    327 => ['name' => 'Growth', 'product' => 'Server Servisleri', 'aliases' => ['EconomyManagement']],
    328 => ['name' => 'Advanced', 'product' => 'Server Servisleri', 'aliases' => ['AdvancedManagement']],
];
$cycles = [
    'monthly' => '1 Aylık',
    'annually' => '1 Yıllık',
    'biennially' => '2 Yıllık',
    'triennially' => '3 Yıllık',
];

$postedToken = (string) ($_POST['token'] ?? '');
$sessionToken = '';
if (isset($_SESSION['token']) && is_string($_SESSION['token'])) {
    $sessionToken = $_SESSION['token'];
}
if ($sessionToken !== '' && !hash_equals($sessionToken, $postedToken)) {
    http_response_code(403);
    echo json_encode(['ok' => false, 'error' => 'token']);
    exit;
}

$action = strtolower((string) ($_POST['action'] ?? 'add'));
if ($action === 'clear') {
    try {
        $cart = [];
        if (class_exists('\\WHMCS\\Session')) {
            $stored = \WHMCS\Session::get('cart');
            if (is_array($stored)) {
                $cart = $stored;
            }
        }
        if (!$cart && isset($_SESSION['cart']) && is_array($_SESSION['cart'])) {
            $cart = $_SESSION['cart'];
        }
        $cart['products'] = [];
        $cart['domains'] = [];
        $cart['addons'] = [];
        $cart['renewals'] = [];
        if (class_exists('\\WHMCS\\Session')) {
            \WHMCS\Session::set('cart', $cart);
        }
        $_SESSION['cart'] = $cart;
        $_SESSION['ixirCartProducts'] = [];
        echo json_encode([
            'ok' => true,
            'result' => 'cleared',
            'cartCount' => 0,
            'items' => [],
        ], JSON_UNESCAPED_UNICODE);
    } catch (\Throwable $e) {
        http_response_code(500);
        echo json_encode(['ok' => false, 'error' => 'cart']);
    }
    exit;
}

$cycleLabels = [
    'monthly' => '1 Aylık',
    'quarterly' => '3 Aylık',
    'semiannually' => '6 Aylık',
    'annually' => '1 Yıllık',
    'biennially' => '2 Yıllık',
    'triennially' => '3 Yıllık',
];

$loadCart = static function (): array {
    $cart = [];
    if (class_exists('\\WHMCS\\Session')) {
        $stored = \WHMCS\Session::get('cart');
        if (is_array($stored)) {
            $cart = $stored;
        }
    }
    if (!$cart && isset($_SESSION['cart']) && is_array($_SESSION['cart'])) {
        $cart = $_SESSION['cart'];
    }
    if (!isset($cart['products']) || !is_array($cart['products'])) {
        $cart['products'] = [];
    }
    return $cart;
};

$saveCart = static function (array $cart): void {
    if (class_exists('\\WHMCS\\Session')) {
        \WHMCS\Session::set('cart', $cart);
    }
    $_SESSION['cart'] = $cart;
    $_SESSION['ixirCartProducts'] = $cart['products'];
};

$enabledCycles = static function (int $pid) use ($cycleLabels): array {
    if ($pid < 1 || !class_exists('\\WHMCS\\Database\\Capsule')) {
        return [];
    }
    $currency = null;
    if (class_exists('\\WHMCS\\Session')) {
        $currency = \WHMCS\Session::get('currency');
    }
    if (!$currency && isset($_SESSION['currency'])) {
        $currency = $_SESSION['currency'];
    }
    if (is_array($currency)) {
        $currency = $currency['id'] ?? 0;
    }
    $currencyId = (int) $currency;
    $query = \WHMCS\Database\Capsule::table('tblpricing')
        ->where('type', 'product')
        ->where('relid', $pid);
    $row = $currencyId > 0 ? (clone $query)->where('currency', $currencyId)->first() : null;
    if (!$row) {
        $try = \WHMCS\Database\Capsule::table('tblcurrencies')->where('code', 'TRY')->value('id');
        if ($try) {
            $row = (clone $query)->where('currency', (int) $try)->first();
        }
    }
    if (!$row) {
        $row = $query->orderBy('currency')->first();
    }
    if (!$row) {
        return [];
    }
    $enabled = [];
    foreach ($cycleLabels as $key => $label) {
        if (!isset($row->{$key}) || (float) $row->{$key} < 0) {
            continue;
        }
        $enabled[] = ['id' => $key, 'label' => $label];
    }
    return $enabled;
};

if ($action === 'cycles' || $action === 'cycle') {
    try {
        $cart = $loadCart();
        $products = $cart['products'];
        if ($action === 'cycle') {
            $index = (int) ($_POST['i'] ?? -1);
            $next = strtolower((string) ($_POST['billingcycle'] ?? ''));
            $product = $products[$index] ?? null;
            $pid = (int) (is_array($product) ? ($product['pid'] ?? 0) : 0);
            $allowed = [];
            foreach ($enabledCycles($pid) as $choice) {
                $allowed[$choice['id']] = $choice['label'];
            }
            if (!is_array($product) || !isset($allowed[$next])) {
                http_response_code(422);
                echo json_encode(['ok' => false, 'error' => 'cycle']);
                exit;
            }
            $products[$index]['billingcycle'] = $next;
            $products[$index]['ixirmeta'] = $allowed[$next];
            $cart['products'] = $products;
            $saveCart($cart);
            echo json_encode(['ok' => true, 'result' => 'updated', 'billingcycle' => $next], JSON_UNESCAPED_UNICODE);
            exit;
        }
        $items = [];
        foreach ($products as $index => $product) {
            if (!is_array($product)) {
                continue;
            }
            $current = strtolower((string) ($product['billingcycle'] ?? ''));
            $choices = $enabledCycles((int) ($product['pid'] ?? 0));
            if ($current !== '' && !in_array($current, array_column($choices, 'id'), true) && isset($cycleLabels[$current])) {
                $choices[] = ['id' => $current, 'label' => $cycleLabels[$current]];
            }
            $items[] = [
                'index' => (int) $index,
                'current' => $current,
                'cycles' => $choices,
            ];
        }
        echo json_encode(['ok' => true, 'items' => $items], JSON_UNESCAPED_UNICODE);
    } catch (\Throwable $e) {
        http_response_code(500);
        echo json_encode(['ok' => false, 'error' => 'cart']);
    }
    exit;
}

if ($action === 'checkout' || $action === 'restore') {
    try {
        $cart = $loadCart();
        $products = isset($cart['products']) && is_array($cart['products']) ? $cart['products'] : [];
        $domains = isset($cart['domains']) && is_array($cart['domains']) ? $cart['domains'] : [];
        $heldProducts = $_SESSION['ixirHeldProducts'] ?? [];
        $heldDomains = $_SESSION['ixirHeldDomains'] ?? [];
        if (!is_array($heldProducts)) {
            $heldProducts = [];
        }
        if (!is_array($heldDomains)) {
            $heldDomains = [];
        }
        if ($action === 'restore') {
            $restored = $heldProducts || $heldDomains;
            if ($heldProducts) {
                foreach ($heldProducts as $product) {
                    if (is_array($product)) {
                        $products[] = $product;
                    }
                }
                $cart['products'] = $products;
                $_SESSION['ixirHeldProducts'] = [];
            }
            if ($heldDomains) {
                foreach ($heldDomains as $domain) {
                    if (is_array($domain)) {
                        $domains[] = $domain;
                    }
                }
                $cart['domains'] = array_values($domains);
                $_SESSION['ixirHeldDomains'] = [];
            }
            if ($restored) {
                $saveCart($cart);
            }
            echo json_encode(['ok' => true, 'restored' => (bool) $restored], JSON_UNESCAPED_UNICODE);
            exit;
        }
        $index = (int) ($_POST['i'] ?? -1);
        $kind = (string) ($_POST['kind'] ?? 'product');
        if ($kind === 'domain') {
            $chosen = $domains[$index] ?? $domains[(string) $index] ?? null;
            if (!is_array($chosen)) {
                http_response_code(422);
                echo json_encode(['ok' => false, 'error' => 'domain']);
                exit;
            }
            foreach ($products as $product) {
                if (is_array($product)) {
                    $heldProducts[] = $product;
                }
            }
            foreach ($domains as $domainIndex => $domain) {
                if ((int) $domainIndex === $index || !is_array($domain)) {
                    continue;
                }
                $heldDomains[] = $domain;
            }
            $_SESSION['ixirHeldProducts'] = array_values($heldProducts);
            $_SESSION['ixirHeldDomains'] = array_values($heldDomains);
            $cart['products'] = [];
            $cart['domains'] = [$chosen];
            $saveCart($cart);
            echo json_encode(['ok' => true, 'result' => 'checkout'], JSON_UNESCAPED_UNICODE);
            exit;
        }
        $products = array_values($products);
        $chosen = $products[$index] ?? null;
        if (!is_array($chosen)) {
            http_response_code(422);
            echo json_encode(['ok' => false, 'error' => 'product']);
            exit;
        }
        foreach ($products as $productIndex => $product) {
            if ($productIndex === $index || !is_array($product)) {
                continue;
            }
            $heldProducts[] = $product;
        }
        foreach ($domains as $domain) {
            if (is_array($domain)) {
                $heldDomains[] = $domain;
            }
        }
        $_SESSION['ixirHeldProducts'] = array_values($heldProducts);
        $_SESSION['ixirHeldDomains'] = array_values($heldDomains);
        $cart['products'] = [$chosen];
        $cart['domains'] = [];
        $saveCart($cart);
        echo json_encode(['ok' => true, 'result' => 'checkout'], JSON_UNESCAPED_UNICODE);
    } catch (\Throwable $e) {
        http_response_code(500);
        echo json_encode(['ok' => false, 'error' => 'cart']);
    }
    exit;
}

$pid = (int) ($_POST['pid'] ?? 0);
$cycle = strtolower((string) ($_POST['billingcycle'] ?? 'triennially'));
if (!isset($catalog[$pid]) || !isset($cycles[$cycle])) {
    http_response_code(422);
    echo json_encode(['ok' => false, 'error' => 'product']);
    exit;
}

try {
    $cart = [];
    if (class_exists('\\WHMCS\\Session')) {
        $stored = \WHMCS\Session::get('cart');
        if (is_array($stored)) {
            $cart = $stored;
        }
    }
    if (!$cart && isset($_SESSION['cart']) && is_array($_SESSION['cart'])) {
        $cart = $_SESSION['cart'];
    }
    if (!isset($cart['products']) || !is_array($cart['products'])) {
        $cart['products'] = [];
    }

    $realPid = $pid;
    if (class_exists('\\WHMCS\\Database\\Capsule')) {
        $row = \WHMCS\Database\Capsule::table('tblproducts')->where('id', $pid)->first();
        if (!$row) {
            $aliasNames = $catalog[$pid]['aliases'];
            $found = $aliasNames ? \WHMCS\Database\Capsule::table('tblproducts')->whereIn('name', $aliasNames)->first() : null;
            if ($found) {
                $realPid = (int) $found->id;
            }
        }
    }

    $cart['products'][] = [
        'pid' => $realPid,
        'domain' => '',
        'billingcycle' => $cycle,
        'configoptions' => [],
        'customfields' => [],
        'addons' => [],
        'server' => '',
        'qty' => 1,
        'ixirname' => $catalog[$pid]['name'],
        'ixirproduct' => $catalog[$pid]['product'],
        'ixirmeta' => $cycles[$cycle],
        'ixirprice' => mb_substr(trim((string) ($_POST['price'] ?? '')), 0, 48),
    ];

    if (class_exists('\\WHMCS\\Session')) {
        \WHMCS\Session::set('cart', $cart);
    }
    $_SESSION['cart'] = $cart;
    $_SESSION['ixirCartProducts'] = $cart['products'];

    $grouped = [];
    foreach ($cart['products'] as $index => $product) {
        if (!is_array($product)) {
            continue;
        }
        $name = !empty($product['ixirname']) ? $product['ixirname'] : 'Ürün';
        $itemCycle = strtolower((string) ($product['billingcycle'] ?? ''));
        $meta = !empty($product['ixirmeta']) ? $product['ixirmeta'] : ($cycles[$itemCycle] ?? '');
        $linePid = (int) ($product['pid'] ?? 0);
        $productName = !empty($product['ixirproduct']) ? $product['ixirproduct'] : '';
        if ($productName === '' && isset($catalog[$linePid])) {
            $productName = $catalog[$linePid]['product'];
            if ($name === 'Ürün') {
                $name = $catalog[$linePid]['name'];
            }
        }
        $lineQty = (int) ($product['qty'] ?? 1);
        if ($lineQty < 1) {
            $lineQty = 1;
        }
        $key = 'p|' . $productName . '|' . $name . '|' . $meta;
        if (!isset($grouped[$key])) {
            $grouped[$key] = [
                'type' => 'product',
                'name' => $name,
                'product' => $productName,
                'meta' => $meta,
                'qty' => 0,
                'removeType' => 'p',
                'removeIndexes' => [],
            ];
        }
        $grouped[$key]['qty'] += $lineQty;
        $grouped[$key]['removeIndexes'][] = $index;
    }

    if (!empty($cart['domains']) && is_array($cart['domains'])) {
        foreach ($cart['domains'] as $index => $domain) {
            if (!is_array($domain)) {
                continue;
            }
            $type = $domain['type'] ?? '';
            $meta = 'Domain';
            if ($type === 'register') {
                $meta = 'Tescil';
            } elseif ($type === 'transfer') {
                $meta = 'Transfer';
            }
            $name = !empty($domain['domain']) ? $domain['domain'] : 'Domain';
            $key = 'd|' . $name . '|' . $meta;
            if (!isset($grouped[$key])) {
                $grouped[$key] = [
                    'type' => 'domain',
                    'name' => $name,
                    'meta' => $meta,
                    'qty' => 0,
                    'removeType' => 'd',
                    'removeIndexes' => [],
                ];
            }
            $grouped[$key]['qty']++;
            $grouped[$key]['removeIndexes'][] = $index;
        }
    }

    $items = [];
    $cartCount = 0;
    foreach ($grouped as $item) {
        $item['removeIndex'] = $item['removeIndexes'][0];
        $cartCount += (int) $item['qty'];
        $items[] = $item;
    }

    echo json_encode([
        'ok' => true,
        'result' => 'added',
        'cartCount' => $cartCount,
        'items' => $items,
    ], JSON_UNESCAPED_UNICODE);
} catch (\Throwable $e) {
    http_response_code(500);
    echo json_encode(['ok' => false, 'error' => 'cart']);
}

exit;
