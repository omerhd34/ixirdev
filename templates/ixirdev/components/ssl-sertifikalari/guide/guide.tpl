<section class="ixir-ssl-guide-section bg-dark-blue ixir-slide ixir-slide--left is-slide-on" id="ssl-rehberi" aria-labelledby="ssl-guide-main-title">
  <div class="container">
    <header class="ixir-ssl-plans-head ixir-wh-plans-head ixir-ssl-guide-head">
      <div class="ixir-badge-pill ixir-ssl-badge-pill">
        <i class="fas fa-book-open" aria-hidden="true"></i> BİLGİ REHBERİ</div>
      {include file="$template/components/Heading.tpl" title="SSL Sertifikası Hakkında Bilmeniz Gerekenler" id="ssl-guide-main-title" align="center"}
      <p class="ssl-guide-lead">SSL güvenliğinin önemi, tarayıcı uyarıları, sertifika türleri ve seçim kriterleri hakkında bilmeniz gereken tüm detaylar.</p>
    </header>

    <div class="ssl-guide-hero-grid">
      <article class="ssl-guide-card ssl-guide-card--primary">
        <div class="ssl-guide-card-head">
          <div class="ssl-guide-icon-wrap ssl-icon--primary">
            <i class="fas fa-lock" aria-hidden="true"></i>
          </div>
          <div class="ssl-guide-head-meta">
            <span class="ssl-guide-badge ssl-badge--blue">
              <i class="fas fa-shield-alt" aria-hidden="true"></i> Temel Güvenlik Belgesi
            </span>
            <h3 class="ssl-guide-card-title">SSL Sertifikası Nedir? Neden Her Web Sitesi İçin Zorunludur?</h3>
          </div>
        </div>
        <div class="ssl-guide-card-body">
          <p class="ssl-guide-text">
            SSL (Secure Sockets Layer) sertifikası, web siteniz ile ziyaretçileriniz arasındaki veri iletişimini şifreleyen dijital bir güvenlik belgesidir. SSL sertifikası kurulu sitelerin adres çubuğunda <strong>https://</strong> protokolü ve kilit simgesi görünür. Bu görünüm ziyaretçilere sitenizin güvenli olduğunu kanıtlar ve kişisel bilgilerinin korunduğunu bildirir. Bugün itibarıyla SSL sertifikası, bireysel blogdan büyük e-ticaret platformuna kadar her web sitesi için temel bir gereksinim hâline gelmiştir.
          </p>
        </div>
        <div class="ssl-guide-pills-row">
          <span class="ssl-guide-pill"><i class="fas fa-link" aria-hidden="true"></i> https:// Protokolü</span>
          <span class="ssl-guide-pill"><i class="fas fa-lock" aria-hidden="true"></i> Yeşil Kilit Simgesi</span>
          <span class="ssl-guide-pill"><i class="fas fa-shield-check" aria-hidden="true"></i> Uçtan Uca Şifreleme</span>
        </div>
      </article>

      <article class="ssl-guide-card ssl-guide-card--warning">
        <div class="ssl-guide-card-head">
          <div class="ssl-guide-icon-wrap ssl-icon--warning">
            <i class="fas fa-exclamation-triangle" aria-hidden="true"></i>
          </div>
          <div class="ssl-guide-head-meta">
            <span class="ssl-guide-badge ssl-badge--red">
              <i class="fas fa-user-times" aria-hidden="true"></i> Ziyaretçi &amp; SEO Riski
            </span>
            <h3 class="ssl-guide-card-title">SSL Olmayan Siteler Neden "Güvensiz" Görünür?</h3>
          </div>
        </div>
        <div class="ssl-guide-card-body">
          <p class="ssl-guide-text">
            Google Chrome, Firefox ve Safari gibi modern tarayıcılar, SSL sertifikası bulunmayan web sitelerini adres çubuğunda <strong>"Güvenli Değil"</strong> olarak işaretler. Araştırmalar, bu uyarıyla karşılaşan ziyaretçilerin büyük çoğunluğunun siteyi terk ettiğini göstermektedir. Bunun yanı sıra Google, 2014 yılından bu yana HTTPS'i resmi bir SEO sıralama sinyali olarak kullandığını açıklamıştır; yani SSL sertifikası, arama motoru sıralamanızı doğrudan etkiler.
          </p>
        </div>
        <div class="ssl-guide-pills-row">
          <span class="ssl-guide-pill ssl-pill--danger"><i class="fas fa-ban" aria-hidden="true"></i> "Güvenli Değil" Uyarısı</span>
          <span class="ssl-guide-pill ssl-pill--danger"><i class="fas fa-sign-out-alt" aria-hidden="true"></i> Ziyaretçi Kaybı</span>
          <span class="ssl-guide-pill ssl-pill--danger"><i class="fas fa-chart-line" aria-hidden="true"></i> Google SEO Sinyali</span>
        </div>
      </article>
    </div>

    <div class="ssl-guide-showcase-card">
      <div class="ssl-guide-showcase-head">
        <div class="ssl-guide-badge ssl-badge--indigo">
          <i class="fas fa-layer-group" aria-hidden="true"></i> SERTİFİKA REHBERİ
        </div>
        <h3 class="ssl-guide-showcase-title">SSL Sertifikası Türleri: Hangisi Size Uygun?</h3>
        <p class="ssl-guide-showcase-desc">İhtiyacınıza, bütçenize ve doğrulama derinliğine göre web siteniz için en ideal SSL sertifikası türünü seçin:</p>
      </div>

      <div class="ssl-guide-types-grid">
        <div class="ssl-type-card-item">
          <div class="ssl-type-item-badge ssl-badge--dv">Hızlı Kurulum</div>
          <div class="ssl-type-item-icon-box icon--dv">
            <i class="fas fa-bolt" aria-hidden="true"></i>
          </div>
          <div class="ssl-type-item-title-block">
            <h4 class="ssl-type-item-name">DV SSL</h4>
            <span class="ssl-type-item-full">Domain Validated – Hızlı Kurulum SSL</span>
          </div>
          <p class="ssl-type-item-desc">
            Alan adı doğrulaması yapılan, belge gerektirmeyen en hızlı SSL türüdür. Dakikalar içinde aktif olur. Kişisel web siteleri, blog siteleri, kurumsal tanıtım sayfaları ve SEO odaklı projeler için idealdir. En ekonomik seçenektir.
          </p>
          <div class="ssl-type-item-footer">
            <div class="ssl-type-for-label">
              <i class="fas fa-check-circle" aria-hidden="true"></i> Bloglar, Kişisel &amp; Tanıtım Siteleri
            </div>
            <a href="#ixir-wh-plans" class="ssl-type-item-btn ssl-type-jump-btn" data-target-filter="dv" title="Hızlı Kurulum DV SSL Paketlerini İncele">
              <span>Paketleri İncele</span> <i class="fas fa-arrow-right" aria-hidden="true"></i>
            </a>
          </div>
        </div>

        <div class="ssl-type-card-item">
          <div class="ssl-type-item-badge ssl-badge--ov">Kurumsal Doğrulama</div>
          <div class="ssl-type-item-icon-box icon--ov">
            <i class="fas fa-building" aria-hidden="true"></i>
          </div>
          <div class="ssl-type-item-title-block">
            <h4 class="ssl-type-item-name">OV SSL</h4>
            <span class="ssl-type-item-full">Organization Validated – Şirket SSL</span>
          </div>
          <p class="ssl-type-item-desc">
            Şirket kimliğinin doğrulandığı kurumsal sertifika türüdür. Belge ibrazı gerekir; bu nedenle daha güçlü bir kurumsal kimlik ve güven sağlar. E-ticaret siteleri ve orta-büyük ölçekli işletmeler için önerilir.
          </p>
          <div class="ssl-type-item-footer">
            <div class="ssl-type-for-label">
              <i class="fas fa-check-circle" aria-hidden="true"></i> E-Ticaret &amp; Şirket Siteleri
            </div>
            <a href="#ixir-wh-plans" class="ssl-type-item-btn ssl-type-jump-btn" data-target-filter="ov" title="Şirketler İçin OV SSL Paketlerini İncele">
              <span>Paketleri İncele</span> <i class="fas fa-arrow-right" aria-hidden="true"></i>
            </a>
          </div>
        </div>

        <div class="ssl-type-card-item">
          <div class="ssl-type-item-badge ssl-badge--ev">En Yüksek Prestij</div>
          <div class="ssl-type-item-icon-box icon--ev">
            <i class="fas fa-award" aria-hidden="true"></i>
          </div>
          <div class="ssl-type-item-title-block">
            <h4 class="ssl-type-item-name">EV SSL</h4>
            <span class="ssl-type-item-full">Extended Validation – Kurumsal SSL</span>
          </div>
          <p class="ssl-type-item-desc">
            En yüksek doğrulama düzeyine sahip sertifikadır. Bankacılık ve finans platformlarında yaygın olarak kullanılır; bazı tarayıcılarda şirket adını adres çubuğunda göstererek maksimum güven sunar.
          </p>
          <div class="ssl-type-item-footer">
            <div class="ssl-type-for-label">
              <i class="fas fa-check-circle" aria-hidden="true"></i> Banka, Finans &amp; Büyük Markalar
            </div>
            <a href="#ixir-wh-plans" class="ssl-type-item-btn ssl-type-jump-btn" data-target-filter="ev" title="Kurumsal EV SSL Paketlerini İncele">
              <span>Paketleri İncele</span> <i class="fas fa-arrow-right" aria-hidden="true"></i>
            </a>
          </div>
        </div>

        <div class="ssl-type-card-item">
          <div class="ssl-type-item-badge ssl-badge--wildcard">Tüm Alt Alan Adları</div>
          <div class="ssl-type-item-icon-box icon--wildcard">
            <i class="fas fa-asterisk" aria-hidden="true"></i>
          </div>
          <div class="ssl-type-item-title-block">
            <h4 class="ssl-type-item-name">Wildcard SSL</h4>
            <span class="ssl-type-item-full">Sınırsız Subdomain Koruması</span>
          </div>
          <p class="ssl-type-item-desc">
            Ana alan adının yanı sıra tüm alt alan adlarını (subdomain) tek bir sertifikayla koruma altına alır. portal.siteniz.com, shop.siteniz.com, mail.siteniz.com gibi tüm subdomainlerinizi ayrı sertifika almadan güvende tutabilirsiniz.
          </p>
          <div class="ssl-type-item-footer">
            <div class="ssl-type-for-label">
              <i class="fas fa-check-circle" aria-hidden="true"></i> *.alanadiniz.com Koruması
            </div>
            <a href="#ixir-wh-plans" class="ssl-type-item-btn ssl-type-jump-btn" data-target-filter="wildcard" title="Wildcard SSL Paketlerini İncele">
              <span>Paketleri İncele</span> <i class="fas fa-arrow-right" aria-hidden="true"></i>
            </a>
          </div>
        </div>
      </div>
    </div>

    <div class="ssl-guide-bottom-grid">
      <article class="ssl-guide-card ssl-guide-card--selection">
        <div class="ssl-guide-card-head">
          <div class="ssl-guide-icon-wrap ssl-icon--sky">
            <i class="fas fa-compass" aria-hidden="true"></i>
          </div>
          <div class="ssl-guide-head-meta">
            <span class="ssl-guide-badge ssl-badge--sky">
              <i class="fas fa-lightbulb" aria-hidden="true"></i> İpuçları &amp; Tavsiyeler
            </span>
            <h3 class="ssl-guide-card-title">SSL Sertifikası Seçerken Nelere Dikkat Edilmeli?</h3>
          </div>
        </div>
        <div class="ssl-guide-card-body">
          <p class="ssl-guide-text">
            Kişisel site veya blog sahibiyseniz ekonomik bir DV SSL yeterlidir. E-ticaret ya da kurumsal bir web sitesi işletiyorsanız OV SSL daha güçlü bir kurumsal imaj sunar. Birden fazla alt alan adınız (subdomain) varsa Wildcard SSL tek sertifika ile tüm yapınızı kapsar ve uzun vadede maliyet tasarrufu sağlar. Tüm bankalarla uyumlu sertifika arıyorsanız portföyümüzdeki her ürün sanal pos gereksinimlerini karşılar.
          </p>

          <div class="ssl-guide-checklist">
            <div class="ssl-guide-check-item">
              <span class="ssl-check-icon"><i class="fas fa-user-check" aria-hidden="true"></i></span>
              <div class="ssl-check-content">
                <strong>Kişisel &amp; Blog Siteleri:</strong> Ekonomik ve dakikalar içinde kurulan DV SSL sertifikaları tam yeterlidir.
              </div>
            </div>
            <div class="ssl-guide-check-item">
              <span class="ssl-check-icon"><i class="fas fa-store" aria-hidden="true"></i></span>
              <div class="ssl-check-content">
                <strong>E-Ticaret &amp; Kurumsal Siteler:</strong> Şirket doğrulamalı OV SSL daha güçlü bir kurumsal imaj sunar.
              </div>
            </div>
            <div class="ssl-guide-check-item">
              <span class="ssl-check-icon"><i class="fas fa-sitemap" aria-hidden="true"></i></span>
              <div class="ssl-check-content">
                <strong>Birden Fazla Subdomain:</strong> Wildcard SSL tek sertifika ile tüm yapınızı kapsar ve uzun vadede tasarruf sağlar.
              </div>
            </div>
            <div class="ssl-guide-check-item">
              <span class="ssl-check-icon"><i class="fas fa-credit-card" aria-hidden="true"></i></span>
              <div class="ssl-check-content">
                <strong>Sanal POS Uyumu:</strong> Portföyümüzdeki tüm SSL ürünleri bankaların sanal POS şartlarını eksiksiz karşılar.
              </div>
            </div>
          </div>
        </div>
      </article>

      <article class="ssl-guide-card ssl-guide-card--guarantee">
        <div class="ssl-guide-card-head">
          <div class="ssl-guide-icon-wrap ssl-icon--emerald">
            <i class="fas fa-certificate" aria-hidden="true"></i>
          </div>
          <div class="ssl-guide-head-meta">
            <span class="ssl-guide-badge ssl-badge--emerald">
              <i class="fas fa-check-double" aria-hidden="true"></i> Resmi Distribütör &amp; Destek
            </span>
            <h3 class="ssl-guide-card-title">IxirHost SSL Sertifikası Güvenceleri</h3>
          </div>
        </div>
        <div class="ssl-guide-card-body">
          <p class="ssl-guide-text">
            Sectigo (Comodo), DigiCert, RapidSSL ve GeoTrust gibi dünyanın en güvenilir SSL sağlayıcılarından aldığımız sertifikaları Türkiye'nin en uygun fiyatlarıyla sunuyoruz. <strong>%99 tarayıcı uyumluluğu</strong>, tüm bankalar ve ödeme kuruluşlarıyla tam uyumluluk, hızlı aktivasyon ve isteğe bağlı kurulum desteği standart olarak tüm SSL paketlerimizde mevcuttur. 20 yıllık altyapı ve teknik destek deneyimimizle SSL sürecinizin her adımında yanınızdayız.
          </p>

          <div class="ssl-guide-brands-wrap">
            <span class="ssl-brand-tag"><i class="fas fa-shield-alt" aria-hidden="true"></i> Sectigo (Comodo)</span>
            <span class="ssl-brand-tag"><i class="fas fa-shield-alt" aria-hidden="true"></i> DigiCert</span>
            <span class="ssl-brand-tag"><i class="fas fa-shield-alt" aria-hidden="true"></i> RapidSSL</span>
            <span class="ssl-brand-tag"><i class="fas fa-shield-alt" aria-hidden="true"></i> GeoTrust</span>
          </div>

          <div class="ssl-guarantee-stat-grid">
            <div class="ssl-guarantee-stat-card">
              <div class="stat-number">%99</div>
              <div class="stat-label">Tarayıcı Uyumluluğu</div>
            </div>
            <div class="ssl-guarantee-stat-card">
              <div class="stat-number">%100</div>
              <div class="stat-label">Banka &amp; POS Uyumu</div>
            </div>
            <div class="ssl-guarantee-stat-card">
              <div class="stat-number">Anında</div>
              <div class="stat-label">Hızlı Aktivasyon</div>
            </div>
            <div class="ssl-guarantee-stat-card">
              <div class="stat-number">20 Yıl</div>
              <div class="stat-label">Altyapı Deneyimi</div>
            </div>
          </div>
        </div>
      </article>
    </div>
  </div>
</section>
