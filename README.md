# ixirdev

**ixirdev**, [İksir İnternet Hizmetleri A.Ş.](https://www.ixirhost.com) bünyesindeki **ixirHost** markasının müşteri paneli / hizmet yönetim yazılımıdır. Domain, web hosting, bulut/kiralık sunucu, kurumsal e-posta ve SSL sertifikası gibi hizmetlerin satışı, sipariş süreci, faturalandırma ve müşteri desteğinin yönetildiği web tabanlı yönetim sistemidir.

🔗 Canlı adres: [ixirdev.com.tr](https://ixirdev.com.tr/)

## İçindekiler

- [Özellikler](#özellikler)
- [Kullanılan Teknolojiler](#kullanılan-teknolojiler)
- [Proje Yapısı](#proje-yapısı)
- [Kurulum](#kurulum)
- [Katkıda Bulunma](#katkıda-bulunma)
- [Lisans](#lisans)
- [İletişim](#iletişim)

## Özellikler

- 🌐 **Alan Adı (Domain) Yönetimi** — Domain sorgulama, tescil, transfer ve whois işlemleri
- 🖥️ **Hosting & Sunucu Yönetimi** — Web hosting, WordPress hosting, bulut sunucu ve kiralık sunucu siparişleri
- 📧 **Kurumsal E-posta Hizmetleri** — Mail hosting, antispam ve mail gateway yönetimi
- 🔒 **SSL Sertifikası** işlemleri
- 🧾 **Sipariş, Fatura ve Ödeme** süreçlerinin yönetimi
- 🎫 **Destek Talebi (Ticket)** sistemi ve dosya eki desteği
- 🛠️ **Yönetim Paneli (Admin)** üzerinden kapsamlı sistem kontrolü
- ⏱️ **Zamanlanmış Görevler (Cron)** ile otomatik işlemler
- 🔑 **OAuth** ile üçüncü parti giriş entegrasyonları
- 🌍 **Çoklu Dil Desteği** (lang modülü)
- 🧩 **Modüler Mimari** — hizmet/ödeme sağlayıcılarının modül olarak eklenebilmesi
- 📡 **Feed** desteği (RSS/XML)

## Kullanılan Teknolojiler

| Teknoloji | Kullanım Oranı |
|---|---|
| PHP | %82 |
| JavaScript | %11.4 |
| Smarty | %3.6 |
| CSS | %2.9 |
| Go Template | %0.1 |
| SCSS | %0 |

Şablonlama katmanında **Smarty** kullanılmaktadır.

## Proje Yapısı

```
templates/
├── orderforms/                    # Sipariş formu şablonları
├── six/                           # Varsayılan WHMCS teması (kullanılmıyor)
├── twenty-one/                    # Varsayılan WHMCS teması (kullanılmıyor)
└── ixirdev/                       # ⭐ Üzerinde çalışılan proje (aktif tema)
    ├── components/                 # Bileşen (component) dosyaları
    ├── css/                        # Stil dosyaları
    ├── error/                      # Hata sayfaları
    ├── fonts/                      # Font dosyaları
    ├── images/                     # Görseller
    ├── img/                        # Görseller (ikincil klasör)
    ├── includes/                   # Ortak/parçalı şablon dosyaları
    ├── js/                         # JavaScript dosyaları
    ├── oauth/                      # OAuth giriş şablonları
    ├── payment/                    # Ödeme sayfası şablonları
    ├── store/                      # Mağaza/ürün sayfası şablonları
    ├── index.php
    ├── theme.yaml                  # Tema yapılandırma dosyası
    └── *.tpl                       # 90+ Smarty şablon dosyası, başlıca:
        ├── clientarea*.tpl          # Müşteri paneli: ana sayfa, domainler, faturalar, ürünler...
        ├── account-*.tpl            # Hesap/kullanıcı yönetimi sayfaları
        ├── supportticket*.tpl       # Destek talebi oluşturma/listeleme
        ├── domain-pricing.tpl, whois*.tpl, bulkdomainmanagement.tpl  # Domain işlemleri
        ├── configuressl-*.tpl, managessl.tpl  # SSL yapılandırma
        ├── password-reset-*.tpl, two-factor-*.tpl  # Kimlik doğrulama & güvenlik
        ├── invoice*.tpl, quotepdf.tpl, masspay.tpl  # Fatura & teklif işlemleri
        ├── knowledgebase*.tpl                # Bilgi bankası
        ├── login.tpl, logout.tpl, clientregister.tpl  # Giriş/kayıt
        ├── header.tpl, footer.tpl, homepage.tpl        # Genel sayfa yapısı
        └── ... (announcements, affiliates, upgrade, serverstatus, kurumsal, vb.)
```

## Kurulum

> ⚠️ Bu proje ixirHost altyapısına özel geliştirilmiş kapalı kaynak bir sistemdir. Aşağıdaki adımlar genel kurulum akışını özetler.

1. Depoyu sunucunuza klonlayın:
   ```bash
   git clone https://github.com/omerhd34/ixirdev.git
   ```
2. Gerekli PHP bağımlılıklarını kurun (varsa `composer install`).
3. Bir veritabanı oluşturun ve bağlantı bilgilerini yapılandırın.
4. `install/` klasöründeki kurulum sihirbazını çalıştırarak sistemi başlatın.
5. Kurulum tamamlandıktan sonra güvenlik için `install/` klasörünü kaldırın veya erişime kapatın.
6. `crons/` altındaki zamanlanmış görevleri sunucu crontab'ınıza tanımlayın.

## Katkıda Bulunma

Bu depo şu an için **İksir İnternet Hizmetleri A.Ş.** bünyesinde özel olarak geliştirilmektedir. Dış katkılar şu an kabul edilmemektedir.

## Lisans

Bu proje **İksir İnternet Hizmetleri A.Ş.**'ye aittir ve tüm hakları saklıdır. İzinsiz kopyalanamaz, dağıtılamaz veya ticari amaçla kullanılamaz.

## İletişim

- 🌐 [ixirhost.com](https://www.ixirhost.com)
- 📧 destek@ixirhost.com
- ☎️ 0850 302 7 111