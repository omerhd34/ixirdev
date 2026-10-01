<?php

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

function ixir_product_pages()
{
    return [
        'linux-hosting' => 'Linux Hosting',
        'windows-hosting' => 'Windows Hosting',
        'wordpress-hosting' => 'WordPress Hosting',
        'kurumsal-mail-hosting' => 'Kurumsal Mail Hosting',
        'developer-hosting' => 'Developer Hosting',
        'cloud-drive' => 'Cloud Drive',
        'linux-reseller-hosting' => 'Linux Reseller Hosting',
        'windows-reseller-hosting' => 'Windows Reseller Hosting',
        'kurumsal-mail-server' => 'Kurumsal Mail Server',
        'outbound-mail-gateway' => 'Outbound Mail Gateway',
        'cloud-server' => 'Cloud Server',
        'dedicated-server' => 'Dedicated Server',
        'colocation' => 'Co-Location',
        'ek-servisler' => 'Server Servisleri',
        'pci-tarama' => 'PCI-DSS Tarama',
        'ssl-sertifikalari' => 'SSL Sertifikaları',
        'site-pratik' => 'Site Pratik',
        'antispam' => 'AntiSpam',
    ];
}

function ixir_find_product_group($slug, $title)
{
    if (!class_exists('\WHMCS\Database\Capsule')) {
        return null;
    }

    try {
        return \WHMCS\Database\Capsule::table('tblproductgroups')
            ->where('hidden', 0)
            ->where(function ($q) use ($slug, $title) {
                $q->where('slug', $slug)->orWhere('name', $title);
            })
            ->orderBy('id')
            ->first();
    } catch (\Throwable $e) {
        return null;
    }
}
