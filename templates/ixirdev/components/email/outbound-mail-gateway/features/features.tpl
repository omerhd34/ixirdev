<section class="ixir-omg-features ixir-slide ixir-slide--right is-slide-on" id="ixir-omg-features" aria-labelledby="ixir-omg-features-title">
  <script>
    {literal}
      (function() {
        var root = document.getElementById('ixir-omg-features');
        if (!root || !window.IntersectionObserver) return;
        if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
        if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
        root.classList.add('is-armed');
      })();
    {/literal}
  </script>
  <div class="container">
    <header class="ixir-omg-section-head text-center">
      {include file="$template/components/Heading.tpl" title="SmartHost Hizmetini Kusursuz Yapan Özellikler" id="ixir-omg-features-title"}
    </header>
    <div class="ixir-omg-features-grid">
      <article class="ixir-omg-feature-card">
        <div class="ixir-omg-feature-icon" aria-hidden="true">
          <i class="fas fa-magic"></i>
        </div>
        <div class="ixir-omg-feature-body">
          <h3>Kolay Kurulum</h3>
          <p>Mevcut e-posta sunucunuza eklenecek birkaç smarthost ve dns kaydı ile mail trafiğinizi bize yönlendirin.</p>
        </div>
      </article>

      <article class="ixir-omg-feature-card">
        <div class="ixir-omg-feature-icon" aria-hidden="true">
          <i class="fas fa-shield-alt"></i>
        </div>
        <div class="ixir-omg-feature-body">
          <h3>%99.8 Giden Spam Engelleme</h3>
          <p>İXİRHOST'un SmartHost hizmetinde bulunan ve sürekli güncellenen anti spam ve anti-virüs hizmeti ile giden e-postalarınız filtrelenilir, güvenilir e-posta hizmeti sunulur.</p>
        </div>
      </article>

      <article class="ixir-omg-feature-card">
        <div class="ixir-omg-feature-icon" aria-hidden="true">
          <i class="fas fa-brain"></i>
        </div>
        <div class="ixir-omg-feature-body">
          <h3>Makine Öğrenimi</h3>
          <p>SmartHost servisinde makine öğrenimi mevcuttur ve gönderdiğiniz maillerin içeriğine göre skorlama yapılmaktadır.</p>
        </div>
      </article>

      <article class="ixir-omg-feature-card">
        <div class="ixir-omg-feature-icon" aria-hidden="true">
          <i class="fas fa-tachometer-alt"></i>
        </div>
        <div class="ixir-omg-feature-body">
          <h3>Yüksek Sender Score</h3>
          <p>E-posta gönderimleri sistem tarafından sürekli izlenir ve spam ve virüslü iletiler engellenir, yüksek gönderici puanına sahip hizmet sunulur.</p>
        </div>
      </article>
    </div>
  </div>
</section>
