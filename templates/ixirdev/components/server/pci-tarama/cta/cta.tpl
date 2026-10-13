<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/components/server/pci-tarama/cta/cta.css?v={$versionHash}-r6">

<section class="ixir-pci-cta" aria-labelledby="ixir-pci-cta-title">
  <div class="container">
    <div class="pci-cta-grid">
      
      <div class="pci-cta-content">
        <div class="pci-cta-badge">
          <span class="pci-cta-pulse-dot" aria-hidden="true"></span>
          <span>Uzman Danışman Desteği</span>
        </div>

        <h2 class="pci-cta-title" id="ixir-pci-cta-title">
          PCI - DSS Tarama
          <span class="pci-cta-title-highlight">Hakkında Daha Fazla Bilgi</span>
        </h2>

        <p class="pci-cta-desc">
          PCI - DSS Tarama Hizmeti hakkında daha fazla bilgi için formumuzu doldurabilirsiniz. Destek ekibimiz en kısa sürede size ulaşarak tüm sorularınızı cevaplayacaktır.
        </p>

        <div class="pci-cta-features">
          <div class="pci-cta-feature-item">
            <i class="fas fa-bolt" aria-hidden="true"></i>
            <span>Ortalama 1 Saat İçinde Hızlı Geri Dönüş</span>
          </div>
          <div class="pci-cta-feature-item">
            <i class="fas fa-user-shield" aria-hidden="true"></i>
            <span>Sertifikalı Güvenlik ve Uyumluluk Uzmanları</span>
          </div>
          <div class="pci-cta-feature-item">
            <i class="fas fa-check-double" aria-hidden="true"></i>
            <span>Sanal Pos ve Banka Standartlarına Tam Uyum</span>
          </div>
        </div>

        <div class="pci-cta-direct">
          <span>Hemen aramak ister misiniz?</span>
          <a href="tel:+908503027111" class="pci-cta-phone-link" title="Müşteri Hizmetleri">
            <i class="fas fa-phone-alt" aria-hidden="true"></i>
            <span>0850 302 7 111</span>
          </a>
        </div>
      </div>

      <div class="pci-cta-form-card">
        <div class="pci-form-head">
          <h3>Sizi Arayalım</h3>
          <p>İletişim bilgilerinizi bırakın, uzmanlarımız hemen sizi arasın.</p>
        </div>

        <div class="pci-form-alert" id="pciCtaSuccess">
          <div class="pci-form-alert-icon">
            <i class="fas fa-check"></i>
          </div>
          <h4>Talebiniz Alındı!</h4>
          <p>Müşteri temsilcimiz en kısa sürede sizinle iletişime geçecektir.</p>
        </div>

        <form class="pci-cta-form" id="pciCtaForm" method="post" action="{$WEB_ROOT}/contact.php">
          <input type="hidden" name="action" value="send" />
          <input type="hidden" name="subject" value="PCI - DSS Tarama Bilgi Talebi" />
          <input type="hidden" name="country" value="tr" />
          {if $token}<input type="hidden" name="token" value="{$token}" />{/if}

          <div class="pci-input-group">
            <input type="text" name="name" class="pci-form-input" id="pciInputName" placeholder="Ad Soyad" required autocomplete="name" />
            <span class="pci-input-icon" aria-hidden="true">
              <i class="far fa-user"></i>
            </span>
          </div>

          <div class="pci-input-group pci-input-group--phone">
            <input type="tel" name="phone" class="pci-form-input" id="pciInputPhone" placeholder="5XX XXX XX XX" required autocomplete="tel" />
          </div>

          <div class="pci-input-group">
            <input type="email" name="email" class="pci-form-input" id="pciInputEmail" placeholder="E-posta" required autocomplete="email" />
            <span class="pci-input-icon" aria-hidden="true">
              <i class="far fa-envelope"></i>
            </span>
          </div>

          <button type="submit" class="pci-submit-btn" id="pciCtaBtn">
            <span>Beni Arayın</span>
            <i class="fas fa-paper-plane" aria-hidden="true"></i>
          </button>

          <div class="pci-form-privacy">
            <i class="fas fa-shield-alt" aria-hidden="true"></i>
            <span>Bilgileriniz KVKK standartları ile %100 güvence altındadır.</span>
          </div>
        </form>
      </div>

    </div>
  </div>
</section>

<script>
{literal}
(function() {
  var form = document.getElementById('pciCtaForm');
  var successBox = document.getElementById('pciCtaSuccess');
  var submitBtn = document.getElementById('pciCtaBtn');

  // Fix intlTelInput country to Turkey ('tr')
  if (window.jQuery) {
    jQuery(function($) {
      var $phone = $('#pciInputPhone');
      function applyTrCountry() {
        if ($phone.length && $.fn.intlTelInput) {
          try {
            $phone.intlTelInput('setCountry', 'tr');
          } catch(e) {}
        }
      }
      applyTrCountry();
      setTimeout(applyTrCountry, 80);
      setTimeout(applyTrCountry, 250);
      setTimeout(applyTrCountry, 600);
    });
  }

  if (!form || !successBox) return;

  form.addEventListener('submit', function(e) {
    if (window.fetch) {
      e.preventDefault();
      var originalBtnText = submitBtn.innerHTML;
      submitBtn.disabled = true;
      submitBtn.innerHTML = '<span>Gönderiliyor...</span> <i class="fas fa-spinner fa-spin"></i>';

      var formData = new FormData(form);
      fetch(form.getAttribute('action') || window.location.href, {
        method: 'POST',
        body: formData
      }).then(function() {
        form.style.display = 'none';
        successBox.classList.add('is-shown');
      }).catch(function() {
        form.style.display = 'none';
        successBox.classList.add('is-shown');
      });
    }
  });
})();
{/literal}
</script>
