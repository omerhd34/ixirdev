# ixirdev

**ixirdev**, [İksir İnternet Hizmetleri A.Ş.](https://www.ixirhost.com) bünyesindeki **ixirHost** markası için özel olarak geliştirilmiş modern, modüler ve responsive **WHMCS müşteri paneli temasıdır**.

Domain, web hosting, bulut/kiralık sunucu, kurumsal e-posta ve SSL sertifikası gibi hizmetlerin sergilendiği, müşteri paneli arayüzünün ve sipariş adımlarının modern web standartlarıyla yeniden tasarlandığı arayüz projesidir.

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

- 📱 **Tam Responsive Tasarım** — Masaüstü, tablet ve mobil cihazlarla %100 uyumlu modern kullanıcı arayüzü
- 🧩 **Modüler Bileşen Mimarisi** — Sayfa bölümlerinin (hero, paketler, promo karusel, sunucu tabloları vb.) bağımsız `components/` klasöründe yönetimi
- ⚡ **Optimize Edilmiş Stil Mimarisi** — Sayfa bazlı yüklenen dinamik CSS sistemi ve hafif asset yapısı
- 🌐 **Özel Alan Adı (Domain) Arayüzü** — Hızlı WHOIS sorgulama, domain tescil ve fiyatlandırma tabloları
- 🖥️ **Sunucu & Hosting Şablonları** — Dedicated, cloud ve web hosting paketleri için özel kartlar ve sipariş akışları
- 🔒 **Gelişmiş Müşteri Paneli Sayfaları** — Fatura görüntüleme, bilet (ticket) sistemi, hesap güvenliği ve SSL yönetim şablonları
- 🎨 **WHMCS Ekosistemi ile Uyumlu** — WHMCS standart şablon yapısıyla tam entegre Smarty şablonları

## Kullanılan Teknolojiler

- **Smarty 3** — Şablonlama ve dinamik içerik render motoru
- **CSS3 (Flexbox & Grid)** — Özel modüler stil mimarisi ve responsive düzenler
- **JavaScript (ES6+ & jQuery)** — İnteraktif bileşenler, karuseller ve animasyonlar
- **Bootstrap 3.4 & FontAwesome 5** — WHMCS çekirdek bağımlılıkları ve ikon kütüphanesi
- **WebP & SVG** — Optimize edilmiş görsel ve vektörel varlıklar

## Proje Yapısı

```
templates/
└── ixirdev/                        # ⭐ Aktif tema klasörü
    ├── components/                 # Modüler bileşenler (header, footer, home, hosting, server, domain...)
    ├── css/                        # Stil dosyaları
    ├── error/                      # Hata sayfaları
    ├── fonts/                      # Font dosyaları
    ├── images/                     # Görseller
    ├── img/                        # Görseller (ikincil klasör)
    ├── includes/                   # Ortak/parçalı şablon dosyaları (head, navbar vb.)
    ├── js/                         # JavaScript dosyaları
    ├── oauth/                      # OAuth giriş şablonları
    ├── payment/                    # Ödeme sayfası şablonları
    ├── store/                      # Mağaza/ürün sayfası şablonları
    ├── index.php                   # Dizin güvenliği dosyası
    ├── theme.yaml                  # Tema yapılandırma dosyası
    └── *.tpl                       # 90+ Smarty şablon dosyası, başlıca:
        ├── clientarea*.tpl         # Müşteri paneli: ana sayfa, domainler, faturalar, ürünler...
        ├── account-*.tpl           # Hesap/kullanıcı yönetimi sayfaları
        ├── supportticket*.tpl      # Destek talebi oluşturma/listeleme
        ├── domain-pricing.tpl, whois*.tpl, bulkdomainmanagement.tpl  # Domain işlemleri
        ├── configuressl-*.tpl, managessl.tpl  # SSL yapılandırma
        ├── password-reset-*.tpl, two-factor-*.tpl  # Kimlik doğrulama & güvenlik
        ├── invoice*.tpl, quotepdf.tpl, masspay.tpl  # Fatura & teklif işlemleri
        ├── knowledgebase*.tpl      # Bilgi bankası
        ├── login.tpl, logout.tpl, clientregister.tpl  # Giriş/kayıt
        ├── header.tpl, footer.tpl, homepage.tpl       # Genel sayfa yapısı
        └── ... (announcements, affiliates, upgrade, serverstatus, kurumsal, vb.)
```

## Kurulum

1. Depoyu WHMCS kurulu sisteminizdeki `templates/ixirdev` dizinine klonlayın:
   ```bash
   git clone https://github.com/omerhd34/ixirdev.git templates/ixirdev
   ```
2. WHMCS Yönetici Paneline giriş yapın.
3. **Kurulum > Genel Ayarlar** (Setup > General Settings) sayfasına gidin.
4. **Şablon (Template)** açılır menüsünden `ixirdev` seçeneğini seçip kaydedin.

## Katkıda Bulunma

Bu depo şu an için **İksir İnternet Hizmetleri A.Ş.** bünyesinde özel olarak geliştirilmektedir. Dış katkılar şu an kabul edilmemektedir.

## Lisans

Bu proje **İksir İnternet Hizmetleri A.Ş.**'ye aittir ve tüm hakları saklıdır. İzinsiz kopyalanamaz, dağıtılamaz veya ticari amaçla kullanılamaz.

## İletişim

- 🌐 [ixirhost.com](https://www.ixirhost.com)
- 📧 destek@ixirhost.com
- ☎️ 0850 302 7 111