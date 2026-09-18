<?php

use WHMCS\Database\Capsule;

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

add_hook('ClientAreaPage', 1, function ($vars) {
    $items = [];

    try {
        $cart = (isset($_SESSION['cart']) && is_array($_SESSION['cart'])) ? $_SESSION['cart'] : [];

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
            foreach ($cart['products'] as $product) {
                $pid = isset($product['pid']) ? (int) $product['pid'] : 0;
                $qty = isset($product['qty']) ? (int) $product['qty'] : 1;
                $items[] = [
                    'type' => 'product',
                    'name' => $productNames[$pid] ?? 'Ürün',
                    'meta' => !empty($product['domain']) ? $product['domain'] : '',
                    'qty' => $qty > 1 ? $qty : 0,
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
            foreach ($cart['addons'] as $addon) {
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
                ];
            }
        }

        if (!empty($cart['domains']) && is_array($cart['domains'])) {
            foreach ($cart['domains'] as $domain) {
                $type = isset($domain['type']) ? $domain['type'] : '';
                $meta = 'Domain';
                if ($type === 'register') {
                    $meta = 'Tescil';
                } elseif ($type === 'transfer') {
                    $meta = 'Transfer';
                }
                $items[] = [
                    'type' => 'domain',
                    'name' => !empty($domain['domain']) ? $domain['domain'] : 'Domain',
                    'meta' => $meta,
                    'qty' => 0,
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
                ];
            }
        }
    } catch (\Throwable $e) {
        $items = [];
    }

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
