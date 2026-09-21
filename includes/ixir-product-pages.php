<?php

if (!defined('WHMCS')) {
    die('This file cannot be accessed directly');
}

function ixir_product_pages()
{
    return [
        'webhosting' => [
            'title' => 'Web Hosting',
            'tagline' => 'NVMe, LiteSpeed, ücretsiz SSL ve cPanel ile Linux web hosting.',
            'icon' => 'fas fa-infinity',
            'groupNames' => ['Web Hosting', 'Linux Hosting', 'Hosting'],
            'points' => [
                'NVMe disk ve LiteSpeed web sunucusu',
                'Ücretsiz SSL ve cPanel kontrol paneli',
                'Imunify360 ile güvenlik',
            ],
        ],
        'windows-hosting' => [
            'title' => 'Windows Hosting',
            'tagline' => 'Windows 2022, SQL Server ve ASP.NET Core için hosting.',
            'icon' => 'fab fa-windows',
            'groupNames' => ['Windows Hosting'],
            'points' => [
                'Windows Server 2022 altyapısı',
                'SQL Server ve ASP.NET Core desteği',
                'Plesk kontrol paneli',
            ],
        ],
        'wordpress-hosting' => [
            'title' => 'WordPress Hosting',
            'tagline' => 'WordPress sitelere özel LiteSpeed Cache ve AccelerateWP.',
            'icon' => 'fab fa-wordpress-simple',
            'groupNames' => ['WordPress Hosting', 'Wordpress Hosting'],
            'points' => [
                'WordPress’e özel önbellek',
                'NVMe disk ve LiteSpeed',
                'Ücretsiz SSL ve cPanel',
            ],
        ],
        'kurumsal-mail-hosting' => [
            'title' => 'Kurumsal Mail Hosting',
            'tagline' => 'Kişi, takvim ve mesajlaşmayı bir arada sunan mail çözümü.',
            'icon' => 'far fa-envelope',
            'groupNames' => ['Kurumsal Mail Hosting', 'Mail Hosting', 'E-Posta Hosting'],
            'points' => [
                'Büyük posta kutusu kotası',
                'Takvim, kişi ve mobil senkron',
                'Spam ve virüs koruması',
            ],
        ],
        'developer-hosting' => [
            'title' => 'Developer Hosting',
            'tagline' => 'Laravel, Node.js, Python ve SSH destekli geliştirici hostingi.',
            'icon' => 'fas fa-code',
            'groupNames' => ['Developer Hosting'],
            'points' => [
                'SSH / terminal erişimi',
                'Laravel, Node.js, Python, Ruby',
                'Geliştiricilere uygun çalışma ortamı',
            ],
        ],
        'cloud-drive' => [
            'title' => 'Cloud Drive',
            'tagline' => 'Dosyalarınızı yüksek kotalı bulut depolamada barındırın.',
            'icon' => 'fas fa-cloud-upload-alt',
            'groupNames' => ['Cloud Drive', 'Bulut Depolama'],
            'points' => [
                'Yüksek depolama kotası',
                'Her yerden erişim',
                'Yedekli altyapı',
            ],
        ],
        'reseller-hosting' => [
            'title' => 'Linux Bayi Hosting',
            'tagline' => 'WHM / cPanel ile sınırsız site barındırma.',
            'icon' => 'fab fa-cpanel',
            'groupNames' => ['Reseller Hosting', 'Linux Reseller', 'Bayi Hosting'],
            'points' => [
                'WHM / cPanel bayi paneli',
                'Sınırsız site barındırma',
                'Kendi paketlerinizi satın',
            ],
        ],
        'windows-reseller-hosting' => [
            'title' => 'Windows Bayi Hosting',
            'tagline' => 'Plesk panelli Windows reseller hosting.',
            'icon' => 'fas fa-atom',
            'groupNames' => ['Windows Reseller', 'Windows Bayi Hosting'],
            'points' => [
                'Plesk kontrol paneli',
                'Sınırsız site barındırma',
                'Windows altyapısı',
            ],
        ],
        'kurumsal-mail-server' => [
            'title' => 'Kurumsal Mail Server',
            'tagline' => 'İşletmenize özel, güvenli ve performanslı mail altyapısı.',
            'icon' => 'fas fa-server',
            'groupNames' => ['Kurumsal Mail Server', 'Mail Server'],
            'points' => [
                'Size özel mail sunucusu',
                'Yüksek gönderim kapasitesi',
                'KVKK uyumlu altyapı',
            ],
        ],
        'outbound-mail-gateway' => [
            'title' => 'Outbound Mail Gateway',
            'tagline' => 'SmartHost ile yüksek reputation ve KVKK uyumlu gönderim.',
            'icon' => 'fas fa-check-double',
            'groupNames' => ['Outbound Mail Gateway', 'SmartHost'],
            'points' => [
                'Yüksek reputation & sender score',
                'Kendi sunucunuzdan bağımsız gönderim',
                'KVKK uyumlu altyapı',
            ],
        ],
        'cloud' => [
            'title' => 'Bulut Sunucu',
            'tagline' => '60 saniyede kurulan, yüksek performanslı cloud sunucu.',
            'icon' => 'far fa-cloud',
            'groupNames' => ['Cloud', 'Bulut Sunucu', 'Cloud Server', 'VPS'],
            'points' => [
                'Dakikalar içinde teslim',
                'Ölçeklenebilir kaynaklar',
                'İstanbul lokasyonu',
            ],
        ],
        'dedicated-server' => [
            'title' => 'Dedicated Server',
            'tagline' => 'İstanbul merkezli, operatör yedekli fiziksel sunucu.',
            'icon' => 'fas fa-server',
            'groupNames' => ['Dedicated Server', 'Dedicated', 'Fiziksel Sunucu'],
            'points' => [
                'Size özel donanım',
                'Operatör yedekli bağlantı',
                'İstanbul veri merkezi',
            ],
        ],
        'colocation' => [
            'title' => 'Co-Location',
            'tagline' => 'Tier III veri merkezinde sunucunuzu güvenle barındırın.',
            'icon' => 'fas fa-database',
            'groupNames' => ['Colocation', 'Co-Location', 'Sunucu Barındırma'],
            'points' => [
                'Tier III veri merkezi',
                'Kesintisiz elektrik ve soğutma',
                'Yedekli network',
            ],
        ],
        'ek-servisler' => [
            'title' => 'Sunucu Servisleri',
            'tagline' => 'Çözüm odaklı sunucu yönetim ve destek hizmeti.',
            'icon' => 'far fa-life-ring',
            'groupNames' => ['Ek Servisler', 'Sunucu Yönetimi', 'Managed'],
            'points' => [
                'Sunucu kurulum ve yönetim',
                '7/24 izleme ve müdahale',
                'Güvenlik ve yedekleme desteği',
            ],
        ],
        'pci-tarama' => [
            'title' => 'PCI-DSS Tarama',
            'tagline' => 'Sunucu güvenliği için PCI-DSS uyumluluk taraması.',
            'icon' => 'fas fa-shield-alt',
            'groupNames' => ['PCI-DSS', 'PCI Tarama'],
            'points' => [
                'Periyodik güvenlik taraması',
                'Uyumluluk raporu',
                'Açıkların tespit edilmesi',
            ],
        ],
        'ssl-sertifikalari' => [
            'title' => 'SSL Sertifikaları',
            'tagline' => 'Sitenizi HTTPS ile güvence altına alın.',
            'icon' => 'far fa-lock',
            'groupNames' => ['SSL', 'SSL Sertifikaları', 'SSL Certificates'],
            'points' => [
                'DV, OV ve EV sertifika seçenekleri',
                'Tarayıcıda kilit simgesi ve HTTPS',
                'Hızlı kurulum ve yenileme',
            ],
        ],
        'website-olusturucu' => [
            'title' => 'Site Pratik',
            'tagline' => 'AI destekli web sitesi oluşturucu ile sitenizi dakikalar içinde yayınlayın.',
            'icon' => 'far fa-magic',
            'groupNames' => ['Site Pratik', 'Site Builder', 'Website Builder', 'Sitejet'],
            'points' => [
                'Sürükle-bırak ile site kurulumu',
                'Hazır şablonlar ve AI destekli içerik',
                'Hosting ile birlikte çalışır',
            ],
        ],
        'antispam' => [
            'title' => 'AntiSpam',
            'tagline' => 'Gelen maillerinizi yapay zeka destekli, KVKK uyumlu koruma.',
            'icon' => 'fas fa-shield-alt',
            'groupNames' => ['AntiSpam', 'SpamExperts', 'Spam Filtering'],
            'points' => [
                'Yapay zeka destekli spam filtresi',
                'Alan adınız nerede olursa olsun koruma',
                'KVKK uyumlu altyapı',
            ],
        ],
    ];
}

function ixir_product_store_routes()
{
    return [];
}

function ixir_find_product_group($slug, array $page)
{
    if (!class_exists('\WHMCS\Database\Capsule')) {
        return null;
    }

    try {
        $names = $page['groupNames'] ?? [];
        return \WHMCS\Database\Capsule::table('tblproductgroups')
            ->where('hidden', 0)
            ->where(function ($q) use ($slug, $names) {
                $q->where('slug', $slug);
                foreach ($names as $name) {
                    $q->orWhere('name', $name);
                }
            })
            ->orderBy('id')
            ->first();
    } catch (\Throwable $e) {
        return null;
    }
}
