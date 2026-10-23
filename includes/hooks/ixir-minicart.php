<?php

use WHMCS\Database\Capsule;

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

function ixir_cart_session()
{
    if (isset($_SESSION['cart']) && is_array($_SESSION['cart'])) {
        return $_SESSION['cart'];
    }
    if (class_exists('\WHMCS\Session')) {
        try {
            $sessionCart = \WHMCS\Session::get('cart');
            if (is_array($sessionCart)) {
                return $sessionCart;
            }
        } catch (\Throwable $e) {
            // Fall through to empty cart.
        }
    }
    return [];
}

function ixir_cart_save(array $cart)
{
    $_SESSION['cart'] = $cart;
    if (class_exists('\WHMCS\Session')) {
        try {
            \WHMCS\Session::set('cart', $cart);
        } catch (\Throwable $e) {
            // Session helper is optional; $_SESSION is the source of truth.
        }
    }
}

function ixir_cart_add_domain($domain)
{
    $domain = strtolower(trim((string) $domain));
    $domain = preg_replace('#^https?://#', '', $domain);
    $domain = preg_replace('#^www\.#', '', $domain);
    $domain = explode('/', explode('?', $domain)[0])[0];
    $domain = preg_replace('/[^a-z0-9.-]/', '', $domain);

    if ($domain === '' || strpos($domain, '.') === false || in_array($domain, ['register', 'transfer'], true)) {
        return ['ok' => false, 'domain' => $domain];
    }

    $cart = ixir_cart_session();
    if (!isset($cart['domains']) || !is_array($cart['domains'])) {
        $cart['domains'] = [];
    }

    foreach ($cart['domains'] as $existing) {
        if (isset($existing['domain']) && strtolower((string) $existing['domain']) === $domain) {
            return ['ok' => true, 'already' => true, 'domain' => $domain];
        }
    }

    $idnLanguage = trim((string) ($_POST['idnlanguage'] ?? $_POST['idnLanguage'] ?? ''));
    $cart['domains'][] = [
        'type' => 'register',
        'domain' => $domain,
        'regperiod' => 1,
        'isPremium' => false,
        'dnsmanagement' => false,
        'emailforwarding' => false,
        'idprotection' => false,
        'eppcode' => '',
        'fields' => [],
        'idnLanguage' => $idnLanguage,
    ];
    ixir_cart_save($cart);

    return ['ok' => true, 'already' => false, 'domain' => $domain];
}

function ixir_cart_remove_item($type, $index, $renewalType = '')
{
    $cart = ixir_cart_session();
    $removedName = '';
    $type = (string) $type;
    $renewalType = (string) $renewalType;

    $pick = function (array $arr, $key) {
        if (array_key_exists($key, $arr)) {
            return $arr[$key];
        }
        if (is_numeric($key) && array_key_exists((int) $key, $arr)) {
            return $arr[(int) $key];
        }
        return null;
    };
    $drop = function (array &$arr, $key) {
        if (array_key_exists($key, $arr)) {
            unset($arr[$key]);
            return true;
        }
        if (is_numeric($key) && array_key_exists((int) $key, $arr)) {
            unset($arr[(int) $key]);
            return true;
        }
        return false;
    };

    if ($type === 'p' && !empty($cart['products']) && is_array($cart['products'])) {
        $item = $pick($cart['products'], $index);
        if (is_array($item)) {
            $removedName = (string) ($item['domain'] ?? '');
        }
        $drop($cart['products'], $index);
    } elseif ($type === 'd' && !empty($cart['domains']) && is_array($cart['domains'])) {
        $item = $pick($cart['domains'], $index);
        if (is_array($item)) {
            $removedName = (string) ($item['domain'] ?? '');
        }
        $drop($cart['domains'], $index);
    } elseif ($type === 'a' && !empty($cart['addons']) && is_array($cart['addons'])) {
        $drop($cart['addons'], $index);
    } elseif ($type === 'r') {
        $id = is_numeric($index) ? (int) $index : $index;
        if ($renewalType === '' || $renewalType === 'domain') {
            if (!empty($cart['renewals']) && is_array($cart['renewals'])) {
                $drop($cart['renewals'], $id);
            }
            if (!empty($cart['domainrenewals']) && is_array($cart['domainrenewals'])) {
                $drop($cart['domainrenewals'], $id);
            }
        } elseif ($renewalType === 'service' && !empty($cart['serviceRenewals']) && is_array($cart['serviceRenewals'])) {
            $drop($cart['serviceRenewals'], $id);
        } elseif ($renewalType === 'addon' && !empty($cart['addonRenewals']) && is_array($cart['addonRenewals'])) {
            $drop($cart['addonRenewals'], $id);
        }
    }

    ixir_cart_save($cart);
    $items = ixir_cart_items();

    return [
        'ok' => true,
        'count' => count($items),
        'removedName' => $removedName,
    ];
}

function ixir_cart_items()
{
    $items = [];

    try {
        $cart = ixir_cart_session();

        $productIds = [];
        if (!empty($cart['products']) && is_array($cart['products'])) {
            foreach ($cart['products'] as $product) {
                if (!empty($product['pid'])) {
                    $productIds[] = (int) $product['pid'];
                }
            }
        }

        $productNames = [];
        if ($productIds) {
            $rows = Capsule::table('tblproducts')
                ->whereIn('id', array_unique($productIds))
                ->get(['id', 'name']);
            foreach ($rows as $row) {
                $productNames[(int) $row->id] = $row->name;
            }
        }

        $addonIds = [];
        if (!empty($cart['products']) && is_array($cart['products'])) {
            foreach ($cart['products'] as $product) {
                if (empty($product['addons']) || !is_array($product['addons'])) {
                    continue;
                }
                foreach ($product['addons'] as $addon) {
                    $addonId = is_array($addon)
                        ? (int) ($addon['addonid'] ?? $addon['id'] ?? 0)
                        : (int) $addon;
                    if ($addonId) {
                        $addonIds[] = $addonId;
                    }
                }
            }
        }
        if (!empty($cart['addons']) && is_array($cart['addons'])) {
            foreach ($cart['addons'] as $addon) {
                $addonId = is_array($addon)
                    ? (int) ($addon['id'] ?? $addon['addonid'] ?? 0)
                    : (int) $addon;
                if ($addonId) {
                    $addonIds[] = $addonId;
                }
            }
        }

        $addonNames = [];
        if ($addonIds) {
            $rows = Capsule::table('tbladdons')
                ->whereIn('id', array_unique($addonIds))
                ->get(['id', 'name']);
            foreach ($rows as $row) {
                $addonNames[(int) $row->id] = $row->name;
            }
        }

        if (!empty($cart['products']) && is_array($cart['products'])) {
            foreach ($cart['products'] as $index => $product) {
                $pid = isset($product['pid']) ? (int) $product['pid'] : 0;
                $qty = isset($product['qty']) ? (int) $product['qty'] : 1;
                $items[] = [
                    'type' => 'product',
                    'name' => $productNames[$pid] ?? 'Ürün',
                    'meta' => !empty($product['domain']) ? $product['domain'] : '',
                    'qty' => $qty > 1 ? $qty : 0,
                    'removeType' => 'p',
                    'removeIndex' => $index,
                ];
                if (empty($product['addons']) || !is_array($product['addons'])) {
                    continue;
                }
                foreach ($product['addons'] as $addon) {
                    $addonId = is_array($addon)
                        ? (int) ($addon['addonid'] ?? $addon['id'] ?? 0)
                        : (int) $addon;
                    if (!$addonId) {
                        continue;
                    }
                    $items[] = [
                        'type' => 'addon',
                        'name' => $addonNames[$addonId] ?? 'Eklenti',
                        'meta' => 'Eklenti',
                        'qty' => 0,
                    ];
                }
            }
        }

        if (!empty($cart['addons']) && is_array($cart['addons'])) {
            foreach ($cart['addons'] as $index => $addon) {
                $addonId = is_array($addon)
                    ? (int) ($addon['id'] ?? $addon['addonid'] ?? 0)
                    : (int) $addon;
                if (!$addonId) {
                    continue;
                }
                $items[] = [
                    'type' => 'addon',
                    'name' => $addonNames[$addonId] ?? 'Eklenti',
                    'meta' => 'Eklenti',
                    'qty' => 0,
                    'removeType' => 'a',
                    'removeIndex' => $index,
                ];
            }
        }

        if (!empty($cart['domains']) && is_array($cart['domains'])) {
            foreach ($cart['domains'] as $index => $domain) {
                $type = isset($domain['type']) ? $domain['type'] : '';
                $meta = 'Domain';
                if ($type === 'transfer') {
                    $meta = 'Transfer';
                }
                $items[] = [
                    'type' => 'domain',
                    'name' => !empty($domain['domain']) ? $domain['domain'] : 'Domain',
                    'meta' => $meta,
                    'qty' => 0,
                    'removeType' => 'd',
                    'removeIndex' => $index,
                ];
            }
        }

        $renewals = [];
        if (!empty($cart['renewals']) && is_array($cart['renewals'])) {
            $renewals = $cart['renewals'];
        } elseif (!empty($cart['domainrenewals']) && is_array($cart['domainrenewals'])) {
            $renewals = $cart['domainrenewals'];
        }
        if ($renewals) {
            $domainIds = array_map('intval', array_keys($renewals));
            $domainNames = [];
            if ($domainIds) {
                $rows = Capsule::table('tbldomains')
                    ->whereIn('id', $domainIds)
                    ->get(['id', 'domain']);
                foreach ($rows as $row) {
                    $domainNames[(int) $row->id] = $row->domain;
                }
            }
            foreach ($renewals as $domainId => $years) {
                $domainId = (int) $domainId;
                $items[] = [
                    'type' => 'renewal',
                    'name' => $domainNames[$domainId] ?? 'Domain Yenileme',
                    'meta' => 'Yenileme',
                    'qty' => 0,
                    'removeType' => 'r',
                    'removeIndex' => $domainId,
                    'renewalType' => 'domain',
                ];
            }
        }
    } catch (\Throwable $e) {
        $items = [];
    }

    return $items;
}

add_hook('ClientAreaPage', 1, function ($vars) {
    $items = ixir_cart_items();

    $result = [
        'ixirCartItems' => $items,
        'ixirCartCount' => count($items),
        'ixirFirstName' => '',
        'ixirLastName' => '',
    ];

    if (!isset($vars['optionalFields']) || !is_array($vars['optionalFields'])) {
        $result['optionalFields'] = [];
    }
    if (!array_key_exists('clientAlerts', $vars) || $vars['clientAlerts'] === null) {
        $result['clientAlerts'] = [];
    }
    if (!array_key_exists('locales', $vars) || $vars['locales'] === null) {
        $result['locales'] = [];
    }

    try {
        $firstName = '';
        $lastName = '';
        $user = $vars['loggedinuser'] ?? null;
        if (is_object($user)) {
            $firstName = (string) ($user->firstName ?? $user->first_name ?? '');
            $lastName = (string) ($user->lastName ?? $user->last_name ?? '');
        } elseif (is_array($user)) {
            $firstName = (string) ($user['firstName'] ?? $user['first_name'] ?? '');
            $lastName = (string) ($user['lastName'] ?? $user['last_name'] ?? '');
        }
        if ($firstName === '' && !empty($vars['clientsdetails']) && is_array($vars['clientsdetails'])) {
            $firstName = (string) ($vars['clientsdetails']['firstname'] ?? '');
            $lastName = (string) ($vars['clientsdetails']['lastname'] ?? '');
        }
        $result['ixirFirstName'] = $firstName;
        $result['ixirLastName'] = $lastName;
    } catch (\Throwable $e) {
        // Keep empty names rather than breaking the page after registration.
    }

    return $result;
});
