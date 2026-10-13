<div align="center">

<a href="https://www.ixirhost.com">
  <img src="./templates/ixirdev/img/logo.webp" alt="ixirHost Logo" width="240">
</a>

# ixirdev

**ixirHost için geliştirilmiş modern, modüler ve responsive WHMCS müşteri paneli teması**

<p>
  <a href="https://ixirdev.com.tr/"><img alt="Canlı Demo" src="https://img.shields.io/badge/Canl%C4%B1%20Demo-ixirdev.com.tr-0A66C2?style=for-the-badge&logo=googlechrome&logoColor=white"></a>
  <a href="https://www.ixirhost.com"><img alt="ixirHost" src="https://img.shields.io/badge/Marka-ixirHost-F58220?style=for-the-badge"></a>
</p>

<p>
  <img alt="WHMCS" src="https://img.shields.io/badge/WHMCS-Theme-2C3E50?logo=whmcs&logoColor=white">
  <img alt="Smarty" src="https://img.shields.io/badge/Smarty-3-F5C518">
  <img alt="Bootstrap" src="https://img.shields.io/badge/Bootstrap-3.4-7952B3?logo=bootstrap&logoColor=white">
  <img alt="FontAwesome" src="https://img.shields.io/badge/FontAwesome-5-339AF0?logo=fontawesome&logoColor=white">
  <img alt="Responsive" src="https://img.shields.io/badge/Responsive-%E2%9C%94-2ECC71">
  <img alt="Lisans" src="https://img.shields.io/badge/Lisans-Tescilli-red">
</p>

[Özellikler](#-özellikler) •
[Teknolojiler](#-kullanılan-teknolojiler) •
[Proje Yapısı](#-proje-yapısı) •
[Kurulum](#-kurulum) •
[İletişim](#-i̇letişim)

</div>

---

## 📖 Hakkında

**ixirdev**, [İksir İnternet Hizmetleri A.Ş.](https://www.ixirhost.com) bünyesindeki **ixirHost** markası için özel olarak geliştirilmiş bir **WHMCS müşteri paneli temasıdır**.

Domain, web hosting, bulut/kiralık sunucu, kurumsal e-posta ve SSL sertifikası gibi hizmetlerin sergilendiği müşteri paneli arayüzü ve sipariş adımları, modern web standartlarıyla yeniden tasarlanmıştır.

> 🔗 **Canlı adres:** [ixirdev.com.tr](https://ixirdev.com.tr/)

<!--
📸 Ekran görüntüsü eklemek için:
1. Görseli assets/ klasörüne yükleyin (ör. assets/preview.webp)
2. Aşağıdaki satırın yorumunu kaldırın

<p align="center"><img src="./assets/preview.webp" alt="ixirdev önizleme" width="90%"></p>
-->

## ✨ Özellikler

| | Özellik | Açıklama |
|---|---|---|
| 📱 | **Tam Responsive Tasarım** | Masaüstü, tablet ve mobil cihazlarla uyumlu modern arayüz |
| 🧩 | **Modüler Bileşen Mimarisi** | Hero, paketler, promo karusel, sunucu tabloları gibi bölümler bağımsız `components/` klasöründe yönetilir |
| ⚡ | **Optimize Stil Mimarisi** | Sayfa bazlı yüklenen dinamik CSS sistemi ve hafif asset yapısı |
| 🌐 | **Domain Arayüzü** | Hızlı WHOIS sorgulama, domain tescil ve fiyatlandırma tabloları |
| 🖥️ | **Sunucu & Hosting Şablonları** | Dedicated, cloud ve web hosting paketleri için özel kartlar ve sipariş akışları |
| 🔒 | **Gelişmiş Müşteri Paneli** | Fatura görüntüleme, destek bileti sistemi, hesap güvenliği ve SSL yönetim şablonları |
| 🎨 | **WHMCS Uyumlu** | WHMCS standart şablon yapısıyla tam entegre Smarty şablonları |

## 🛠️ Kullanılan Teknolojiler

| Teknoloji | Kullanım Amacı |
|---|---|
| ![Smarty](https://img.shields.io/badge/Smarty%203-F5C518?style=flat-square) | Şablonlama ve dinamik içerik render motoru |
| ![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=css3&logoColor=white) | Flexbox & Grid ile modüler stil mimarisi ve responsive düzenler |
| ![JavaScript](https://img.shields.io/badge/JavaScript%20ES6+-F7DF1E?style=flat-square&logo=javascript&logoColor=black) ![jQuery](https://img.shields.io/badge/jQuery-0769AD?style=flat-square&logo=jquery&logoColor=white) | İnteraktif bileşenler, karuseller ve animasyonlar |
| ![Bootstrap](https://img.shields.io/badge/Bootstrap%203.4-7952B3?style=flat-square&logo=bootstrap&logoColor=white) ![FontAwesome](https://img.shields.io/badge/FontAwesome%205-339AF0?style=flat-square&logo=fontawesome&logoColor=white) | WHMCS çekirdek bağımlılıkları ve ikon kütüphanesi |
| ![WebP](https://img.shields.io/badge/WebP%20%26%20SVG-4CAF50?style=flat-square) | Optimize edilmiş görsel ve vektörel varlıklar |

## 📁 Proje Yapısı

```text
templates/
└── ixirdev/                    # ⭐ Aktif tema klasörü
    ├── components/             # Modüler bileşenler (header, footer, home, hosting, server, domain...)
    ├── css/                    # Stil dosyaları
    ├── error/                  # Hata sayfaları
    ├── fonts/                  # Font dosyaları
    ├── images/                 # Görseller
    ├── img/                    # Görseller (ikincil klasör)
    ├── includes/               # Ortak/parçalı şablon dosyaları (head, navbar vb.)
    ├── js/                     # JavaScript dosyaları
    ├── oauth/                  # OAuth giriş şablonları
    ├── payment/                # Ödeme sayfası şablonları
    ├── store/                  # Mağaza/ürün sayfası şablonları
    ├── index.php               # Dizin güvenliği dosyası
    ├── theme.yaml              # Tema yapılandırma dosyası
    └── *.tpl                   # 90+ Smarty şablon dosyası
```

<details>
<summary><b>📄 Başlıca şablon dosyaları (genişletmek için tıklayın)</b></summary>

<br>

| Grup | Dosyalar |
|---|---|
| **Müşteri paneli** | `clientarea*.tpl` — ana sayfa, domainler, faturalar, ürünler |
| **Hesap yönetimi** | `account-*.tpl` |
| **Destek** | `supportticket*.tpl` |
| **Domain işlemleri** | `domain-pricing.tpl`, `whois*.tpl`, `bulkdomainmanagement.tpl` |
| **SSL** | `configuressl-*.tpl`, `managessl.tpl` |
| **Kimlik doğrulama & güvenlik** | `password-reset-*.tpl`, `two-factor-*.tpl` |
| **Fatura & teklif** | `invoice*.tpl`, `quotepdf.tpl`, `masspay.tpl` |
| **Bilgi bankası** | `knowledgebase*.tpl` |
| **Giriş / kayıt** | `login.tpl`, `logout.tpl`, `clientregister.tpl` |
| **Genel sayfa yapısı** | `header.tpl`, `footer.tpl`, `homepage.tpl` |
| **Diğer** | announcements, affiliates, upgrade, serverstatus, kurumsal vb. |

</details>

## 🚀 Kurulum

### Gereksinimler

- Çalışan bir **WHMCS** kurulumu
- Sunucuda `git` (klonlama için) veya dosyaları FTP/SFTP ile yükleme erişimi

### Adımlar

**1.** Depoyu WHMCS kurulumunuzdaki `templates/` dizinine klonlayın:

```bash
cd /path/to/whmcs
git clone https://github.com/omerhd34/ixirdev.git templates/ixirdev
```

**2.** WHMCS Yönetici Paneline giriş yapın.

**3.** **Kurulum › Genel Ayarlar** (*Setup › General Settings*) sayfasına gidin.

**4.** **Şablon (Template)** açılır menüsünden `ixirdev` seçeneğini seçip **Değişiklikleri Kaydet** deyin.

**5.** Değişikliklerin görünmemesi durumunda şablon önbelleğini temizleyin:
**Yardımcı Araçlar › Sistem › Sistem Temizliği › Şablon Önbelleğini Boşalt**
*(Utilities › System › System Cleanup › Empty Template Cache)*

### Güncelleme

```bash
cd /path/to/whmcs/templates/ixirdev
git pull origin main
```

> ⚠️ Güncelleme sonrası şablon önbelleğini temizlemeyi unutmayın.

## 🤝 Katkıda Bulunma

Bu depo şu an için **İksir İnternet Hizmetleri A.Ş.** bünyesinde özel olarak geliştirilmektedir. Dış katkılar şu an kabul edilmemektedir.

## 📜 Lisans

Bu proje **İksir İnternet Hizmetleri A.Ş.**'ye aittir ve **tüm hakları saklıdır**. İzinsiz kopyalanamaz, dağıtılamaz veya ticari amaçla kullanılamaz.

## 📬 İletişim

| | |
|---|---|
| 🌐 **Web** | [ixirhost.com](https://www.ixirhost.com) |
| 📧 **E-posta** | [destek@ixirhost.com](mailto:destek@ixirhost.com) |
| ☎️ **Telefon** | [0850 302 7 111](tel:+908503027111) |

---

<div align="center">

© İksir İnternet Hizmetleri A.Ş. — Tüm hakları saklıdır.

<a href="https://www.ixirhost.com"><img src="./templates/ixirdev/img/logo.webp" alt="ixirHost" width="120"></a>

</div>