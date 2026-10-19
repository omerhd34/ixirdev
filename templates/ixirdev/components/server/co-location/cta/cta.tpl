<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/components/server/co-location/cta/cta.css?v={$versionHash}-r4">

<section class="ixir-colo-cta ixir-slide ixir-slide--left is-slide-on" aria-labelledby="ixir-colo-cta-title">
  <div class="container">
    <div class="colo-cta-grid">
      
      <div class="colo-cta-content">
        <div class="ixir-badge-pill ixir-ssl-badge-pill"><i class="fas fa-phone-alt" aria-hidden="true"></i> Uzman Danışman Desteği</div>
        <h2 class="colo-cta-title" id="ixir-colo-cta-title">
          Co-Location
          <span class="colo-cta-title-highlight">Hakkında Daha Fazla Bilgi</span>
        </h2>

        <p class="colo-cta-desc">
          Co-Location (Sunucu Barındırma) Hizmeti hakkında daha fazla bilgi ve firmanıza özel altyapı çözümleri için formumuzu doldurabilirsiniz. Uzman ekibimiz en kısa sürede size ulaşacaktır.
        </p>

        <div class="colo-cta-features">
          <div class="colo-cta-feature-item">
            <i class="fas fa-bolt" aria-hidden="true"></i>
            <span>Ortalama 1 Saat İçinde Hızlı Geri Dönüş</span>
          </div>
          <div class="colo-cta-feature-item">
            <i class="fas fa-user-shield" aria-hidden="true"></i>
            <span>Sertifikalı Sistem ve Veri Merkezi Uzmanları</span>
          </div>
          <div class="colo-cta-feature-item">
            <i class="fas fa-check-double" aria-hidden="true"></i>
            <span>Tier III Standartlarında Yüksek Güvenlik ve Kesintisiz Enerji</span>
          </div>
        </div>

        <div class="colo-cta-direct">
          <span>Hemen aramak ister misiniz?</span>
          <a href="tel:+908503027111" class="colo-cta-phone-link" title="Müşteri Hizmetleri">
            <i class="fas fa-phone-alt" aria-hidden="true"></i>
            <span>0850 302 7 111</span>
          </a>
        </div>
      </div>

      <div class="colo-cta-form-card">
        <div class="colo-form-head">
          <h3>Sizi Arayalım</h3>
          <p>İletişim bilgilerinizi bırakın, uzmanlarımız hemen sizi arasın.</p>
        </div>

        <div class="colo-form-alert" id="coloCtaSuccess">
          <div class="colo-form-alert-icon">
            <i class="fas fa-check"></i>
          </div>
          <h4>Talebiniz Alındı!</h4>
          <p>Müşteri temsilcimiz en kısa sürede sizinle iletişime geçecektir.</p>
        </div>

        <div class="colo-form-alert colo-form-alert--error" id="coloCtaError">
          <div class="colo-form-alert-icon colo-form-alert-icon--error">
            <i class="fas fa-exclamation-triangle"></i>
          </div>
          <h4>Bir Sorun Oluştu</h4>
          <p id="coloCtaErrorMsg">Talebiniz iletilemedi. Lütfen bilgilerinizi kontrol edip tekrar deneyiniz.</p>
          <button type="button" class="colo-alert-retry-btn" id="coloCtaRetryBtn">
            <i class="fas fa-redo-alt"></i>
            <span>Tekrar Dene</span>
          </button>
        </div>

        <form class="colo-cta-form" id="coloCtaForm" method="post" action="{$WEB_ROOT}/ixir-colocation-request.php" novalidate>
          <input type="hidden" name="action" value="send" />
          <input type="hidden" name="subject" value="Co-Location Hizmeti Bilgi Talebi" />
          <input type="hidden" name="country" value="tr" />
          {if $token}<input type="hidden" name="token" value="{$token}" />{/if}

          <div class="colo-input-group" id="coloGroupName">
            <input type="text" name="name" class="colo-form-input" id="coloInputName" placeholder="Ad ve Soyad" data-placeholder="Ad ve Soyad" required autocomplete="name" />
            <span class="colo-input-icon" aria-hidden="true">
              <i class="far fa-user"></i>
            </span>
          </div>

          <div class="colo-input-group colo-input-group--phone" id="coloGroupPhone">
            <input type="tel" name="phone" class="colo-form-input" id="coloInputPhone" placeholder="5XX XXX XX XX" data-placeholder="5XX XXX XX XX" required autocomplete="tel" />
          </div>

          <div class="colo-input-group" id="coloGroupEmail">
            <input type="email" name="email" class="colo-form-input" id="coloInputEmail" placeholder="E-posta" data-placeholder="E-posta" required autocomplete="email" />
            <span class="colo-input-icon" aria-hidden="true">
              <i class="far fa-envelope"></i>
            </span>
          </div>

          <div class="colo-input-group" id="coloGroupMessage">
            <textarea name="message" class="colo-form-input colo-form-textarea" id="coloInputMessage" placeholder="Projeniz hakkında bilgi veriniz" data-placeholder="Projeniz hakkında bilgi veriniz" rows="3" required></textarea>
            <span class="colo-input-icon colo-input-icon--textarea" aria-hidden="true">
              <i class="far fa-comment-alt"></i>
            </span>
          </div>

          <button type="submit" class="colo-submit-btn" id="coloCtaBtn">
            <span>Beni Arayın</span>
            <i class="fas fa-paper-plane" aria-hidden="true"></i>
          </button>

          <div class="colo-form-privacy">
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
  var form = document.getElementById('coloCtaForm');
  var successBox = document.getElementById('coloCtaSuccess');
  var errorBox = document.getElementById('coloCtaError');
  var retryBtn = document.getElementById('coloCtaRetryBtn');
  var submitBtn = document.getElementById('coloCtaBtn');

  // Fix intlTelInput country to Turkey ('tr')
  if (window.jQuery) {
    jQuery(function($) {
      var $phone = $('#coloInputPhone');
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

  var nameInput = document.getElementById('coloInputName');
  var phoneInput = document.getElementById('coloInputPhone');
  var emailInput = document.getElementById('coloInputEmail');
  var messageInput = document.getElementById('coloInputMessage');

  var nameGroup = document.getElementById('coloGroupName') || (nameInput && nameInput.closest('.colo-input-group'));
  var phoneGroup = document.getElementById('coloGroupPhone') || (phoneInput && phoneInput.closest('.colo-input-group'));
  var emailGroup = document.getElementById('coloGroupEmail') || (emailInput && emailInput.closest('.colo-input-group'));
  var messageGroup = document.getElementById('coloGroupMessage') || (messageInput && messageInput.closest('.colo-input-group'));

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

  function validateMessage(showError) {
    if (!messageInput) return true;
    var val = messageInput.value.trim();
    if (!val) {
      if (showError) setError(messageInput, messageGroup, 'Projeniz hakkında bilgi veriniz');
      return false;
    }
    clearError(messageInput, messageGroup);
    return true;
  }

  // Restore placeholder on focus / typing
  [nameInput, phoneInput, emailInput, messageInput].forEach(function(input) {
    if (!input) return;
    var grp = input.closest('.colo-input-group');

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
    var groups = form.querySelectorAll('.colo-input-group.has-error');
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
    var isMessageValid = validateMessage(true);

    if (!isNameValid || !isPhoneValid || !isEmailValid || !isMessageValid) {
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
          var msgEl = document.getElementById('coloCtaErrorMsg');
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
