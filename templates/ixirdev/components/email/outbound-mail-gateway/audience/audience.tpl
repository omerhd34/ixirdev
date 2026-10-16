<section class="ixir-wh-diff ixir-wh-diff--dark bg-dark-blue ixir-slide ixir-slide--right is-slide-on" id="ixir-omg-audience" aria-labelledby="ixir-omg-audience-title">
  <script>
    {literal}
      (function() {
        var root = document.getElementById('ixir-omg-audience');
        if (!root || !window.IntersectionObserver) return;
        if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
        if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
        root.classList.add('is-armed');
      })();
    {/literal}
  </script>
  <div class="container">
    <header class="ixir-wh-diff-head text-center">
      {include file="$template/components/Heading.tpl" title="SmartHost Hizmeti Kimler İçin Uygundur?" id="ixir-omg-audience-title" class="text-white"}
      <p>Kendi mail sunucusu olan ve e-postalarının güvenle iletilmesini isteyen her işletme için idealdir.</p>
    </header>

    <ul class="ixir-wh-diff-grid">
      <li>
        <span class="ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-shopping-cart"></i></span>
        <div>
          <h3>E-Ticaret Siteleri</h3>
          <p>Sipariş onayı, kargo bildirimi ve fatura e-postalarınızın spam kutusuna düşmeden alıcıya ulaşmasını sağlar. Müşteri deneyimini doğrudan etkileyen transactional mailleri güvence altına alır.</p>
        </div>
      </li>

      <li>
        <span class="ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-building"></i></span>
        <div>
          <h3>Kurumsal Şirketler</h3>
          <p>Yüzlerce çalışanı olan ve günlük yoğun kurumsal e-posta trafiğine sahip şirketler için güvenilir SMTP relay altyapısı sunar. Kara listeye düşme riskini tamamen ortadan kaldırır.</p>
        </div>
      </li>

      <li>
        <span class="ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-laptop-code"></i></span>
        <div>
          <h3>Yazılım ve SaaS Firmaları</h3>
          <p>Uygulama üzerinden otomatik gönderilen bildirim, aktivasyon ve rapor e-postaları için yüksek hacimli ve stabil SMTP relay altyapısı sağlar. Gönderim başarı oranını maksimuma çıkarır.</p>
        </div>
      </li>

      <li>
        <span class="ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-ban"></i></span>
        <div>
          <h3>Blacklist Sorunu Yaşayanlar</h3>
          <p>Sunucusunun IP'si kara listeye düşmüş, mailleri spam'e giden veya iletilemeyen işletmeler için anlık çözüm sunar. Mevcut sunucuyu değiştirmeye gerek kalmaz.</p>
        </div>
      </li>

      <li>
        <span class="ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-sitemap"></i></span>
        <div>
          <h3>Holding ve Grup Şirketleri</h3>
          <p>Birden fazla şirket veya sunucuyu tek bir outbound mail gateway üzerinden yönetmek isteyen yapılar için merkezi, izlenebilir ve güvenli e-posta çıkışı sağlar.</p>
        </div>
      </li>

      <li>
        <span class="ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-cubes"></i></span>
        <div>
          <h3>Hosting ve Reseller Firmalar</h3>
          <p>Müşterilerine ait çok sayıda domain ve sunucunun mail trafiğini tek noktadan yönetmek, IP reputation sorunlarını toplu çözmek isteyen hosting firmaları için idealdir.</p>
        </div>
      </li>
    </ul>
  </div>
</section>
