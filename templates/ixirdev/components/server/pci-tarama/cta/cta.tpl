<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/components/server/pci-tarama/cta/cta.css?v={$versionHash}-r19">

<section class="ixir-pci-cta bg-dark-blue ixir-slide ixir-slide--left is-slide-on" id="ixir-pci-cta" aria-labelledby="ixir-pci-cta-title">
  <div class="container">
    <div class="pci-cta-grid">
      
      <div class="pci-cta-content">
        <div class="ixir-badge-pill ixir-ssl-badge-pill"><i class="fas fa-shield-check" aria-hidden="true"></i> Uzman Danışman Desteği</div>
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

        <div class="pci-form-alert pci-form-alert--error" id="pciCtaError">
          <div class="pci-form-alert-icon pci-form-alert-icon--error">
            <i class="fas fa-exclamation-triangle"></i>
          </div>
          <h4>Bir Sorun Oluştu</h4>
          <p id="pciCtaErrorMsg">Talebiniz iletilemedi. Lütfen bilgilerinizi kontrol edip tekrar deneyiniz.</p>
          <button type="button" class="pci-alert-retry-btn" id="pciCtaRetryBtn">
            <i class="fas fa-redo-alt"></i>
            <span>Tekrar Dene</span>
          </button>
        </div>

        <form class="pci-cta-form" id="pciCtaForm" method="post" action="{$WEB_ROOT}/ixir-pci-request.php" novalidate>
          <input type="hidden" name="action" value="send" />
          <input type="hidden" name="subject" value="PCI - DSS Tarama Bilgi Talebi" />
          <input type="hidden" name="country" value="tr" />
          {if $token}<input type="hidden" name="token" value="{$token}" />{/if}

          <div class="pci-input-group" id="pciGroupName">
            <input type="text" name="name" class="pci-form-input" id="pciInputName" placeholder="Ad ve Soyad" data-placeholder="Ad ve Soyad" required autocomplete="name" />
            <span class="pci-input-icon" aria-hidden="true">
              <i class="far fa-user"></i>
            </span>
          </div>

          <div class="pci-input-group pci-input-group--phone" id="pciGroupPhone">
            <input type="tel" name="phone" class="pci-form-input" id="pciInputPhone" placeholder="5XX XXX XX XX" data-placeholder="5XX XXX XX XX" required autocomplete="tel" />
          </div>

          <div class="pci-input-group" id="pciGroupEmail">
            <input type="email" name="email" class="pci-form-input" id="pciInputEmail" placeholder="E-posta" data-placeholder="E-posta" required autocomplete="email" />
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
  var errorBox = document.getElementById('pciCtaError');
  var retryBtn = document.getElementById('pciCtaRetryBtn');
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

  if (!form) return;

  var nameInput = document.getElementById('pciInputName');
  var phoneInput = document.getElementById('pciInputPhone');
  var emailInput = document.getElementById('pciInputEmail');

  var nameGroup = document.getElementById('pciGroupName') || (nameInput && nameInput.closest('.pci-input-group'));
  var phoneGroup = document.getElementById('pciGroupPhone') || (phoneInput && phoneInput.closest('.pci-input-group'));
  var emailGroup = document.getElementById('pciGroupEmail') || (emailInput && emailInput.closest('.pci-input-group'));

  function getOriginalPlaceholder(input) {
    if (!input) return '';
    return input.getAttribute('data-placeholder') || input.placeholder || '';
  }

  function setError(input, group, errorMsg) {
    if (!input || !group) return;
    input.value = '';
    input.placeholder = errorMsg;
    group.classList.add('has-error');
  }

  function clearError(input, group) {
    if (!input || !group) return;
    group.classList.remove('has-error');
    group.classList.remove('is-shaking');
    input.placeholder = getOriginalPlaceholder(input);
  }

  function validateName(showError) {
    if (!nameInput) return true;
    var val = nameInput.value.trim();
    if (!val) {
      if (showError) setError(nameInput, nameGroup, 'Lütfen adınızı ve soyadınızı giriniz');
      return false;
    }
    if (val.length < 3) {
      if (showError) setError(nameInput, nameGroup, 'Lütfen geçerli bir ad ve soyad giriniz');
      return false;
    }
    clearError(nameInput, nameGroup);
    return true;
  }

  function validatePhone(showError) {
    if (!phoneInput) return true;
    var val = phoneInput.value.trim();
    if (!val) {
      if (showError) setError(phoneInput, phoneGroup, 'Lütfen telefon numaranızı giriniz');
      return false;
    }
    var digits = val.replace(/\D/g, '');
    if (digits.length < 10) {
      if (showError) setError(phoneInput, phoneGroup, 'Geçerli bir telefon giriniz (5XX...)');
      return false;
    }
    clearError(phoneInput, phoneGroup);
    return true;
  }

  function validateEmail(showError) {
    if (!emailInput) return true;
    var val = emailInput.value.trim();
    if (!val) {
      if (showError) setError(emailInput, emailGroup, 'Lütfen e-posta adresinizi giriniz');
      return false;
    }
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/;
    if (!emailRegex.test(val)) {
      if (showError) setError(emailInput, emailGroup, 'Geçerli bir e-posta giriniz');
      return false;
    }
    clearError(emailInput, emailGroup);
    return true;
  }

  // Restore placeholder on focus / typing
  [nameInput, phoneInput, emailInput].forEach(function(input) {
    if (!input) return;
    var grp = input.closest('.pci-input-group');

    input.addEventListener('focus', function() {
      if (grp && grp.classList.contains('has-error')) {
        input.placeholder = getOriginalPlaceholder(input);
      }
    });

    input.addEventListener('input', function() {
      if (grp && grp.classList.contains('has-error')) {
        grp.classList.remove('has-error');
        grp.classList.remove('is-shaking');
        input.placeholder = getOriginalPlaceholder(input);
      }
    });
  });

  function triggerShake() {
    var groups = form.querySelectorAll('.pci-input-group.has-error');
    for (var i = 0; i < groups.length; i++) {
      var grp = groups[i];
      grp.classList.remove('is-shaking');
      void grp.offsetWidth;
      grp.classList.add('is-shaking');
    }
  }

  form.addEventListener('submit', function(e) {
    e.preventDefault();

    var isNameValid = validateName(true);
    var isPhoneValid = validatePhone(true);
    var isEmailValid = validateEmail(true);

    if (!isNameValid || !isPhoneValid || !isEmailValid) {
      if (document.activeElement && typeof document.activeElement.blur === 'function') {
        document.activeElement.blur();
      }
      triggerShake();
      return false;
    }

    if (submitBtn) {
      submitBtn.disabled = true;
      submitBtn.innerHTML = '<span>Gönderiliyor...</span> <i class="fas fa-spinner fa-spin"></i>';
    }

    if (window.fetch) {
      var formData = new FormData(form);
      fetch(form.getAttribute('action') || window.location.href, {
        method: 'POST',
        body: formData
      }).then(function(res) {
        return res.json().catch(function() { return { ok: res.ok }; });
      }).then(function(data) {
        if (data && data.ok) {
          form.style.display = 'none';
          if (errorBox) errorBox.classList.remove('is-shown');
          if (successBox) successBox.classList.add('is-shown');
        } else {
          throw new Error(data && data.error ? data.error : 'İşlem başarısız');
        }
      }).catch(function(err) {
        form.style.display = 'none';
        if (errorBox) {
          var msgEl = document.getElementById('pciCtaErrorMsg');
          if (msgEl && err && err.message) {
            msgEl.textContent = err.message;
          }
          errorBox.classList.add('is-shown');
        } else if (successBox) {
          successBox.classList.add('is-shown');
        }
      });
    } else {
      form.submit();
    }
  });

  if (retryBtn) {
    retryBtn.addEventListener('click', function() {
      if (errorBox) errorBox.classList.remove('is-shown');
      form.style.display = 'flex';
      if (submitBtn) {
        submitBtn.disabled = false;
        submitBtn.innerHTML = '<span>Beni Arayın</span> <i class="fas fa-paper-plane" aria-hidden="true"></i>';
      }
    });
  }
})();
{/literal}
</script>
