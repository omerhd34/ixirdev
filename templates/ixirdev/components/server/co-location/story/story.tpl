<section class="ixir-wh-story ixir-cs-story ixir-slide ixir-slide--left is-slide-on"
 aria-labelledby="ixir-cs-story-title">
 <script>
  {literal}
   (function() {
    var root = document.querySelector('.ixir-wh-story');
    if (!root || !window.IntersectionObserver) return;
    if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    if (window.matchMedia && window.matchMedia('(max-width: 1023px)').matches) return;
    root.classList.add('is-armed');
   })();
  {/literal}
 </script>
 <div class="container">
  <div class="ixir-cs-story-layout">

  <div class="ixir-wh-story-intro ixir-cs-story-intro">
    <div class="ixir-cs-title">
     <span class="ixir-wh-story-icon" aria-hidden="true"><i class="fas fa-info"></i></span>
     <h2 id="ixir-cs-story-title">Co-Location Nedir?</h2>
    </div>
    <p><strong>Co-Location (Sunucu Barındırma)</strong> hizmeti, donanımsal olarak size olan bir sunucunun yüksek internet bağlantısının bulunduğu, 7/24 izlenen, yedekli internet ve elektrik altyapısına ve yüksek güvenliğe sahip veri merkezlerinde barındırılması işlemine denir. <strong>Co-location işlemi</strong> ile siz sadece kabin, internet ve elektrik hattı ve eğer sahipseniz sunucu destek maliyetlerine katlanırsınız.</p>
   </div>

   <div class="ixir-cs-story-form-card">
    <form method="post" action="{$WEB_ROOT}/ixir-colocation-request.php" class="ixir-cs-story-form" id="ixirColoForm" role="form" novalidate>
     <input type="hidden" name="token" value="{$token}" />
     <input type="hidden" name="country" value="TR" id="inputColoCountry" />

     <div class="ixir-cs-form-group">
      <input type="text" name="name" class="form-control ixir-cs-input" id="inputColoName" placeholder="Ad ve Soyad" autocomplete="name">
     </div>

     <div class="ixir-cs-form-group">
      <input type="tel" name="tel" class="form-control ixir-cs-input" id="inputColoPhone" placeholder="Telefon Numarası" autocomplete="tel">
     </div>

     <div class="ixir-cs-form-group">
      <input type="email" name="email" class="form-control ixir-cs-input" id="inputColoEmail" placeholder="E-posta Adresi" autocomplete="email">
     </div>

     <div class="ixir-cs-form-group">
      <textarea name="message" class="form-control ixir-cs-textarea" id="inputColoMessage" placeholder="Projeniz hakkında bilgi veriniz" rows="4"></textarea>
     </div>

     <div class="ixir-cs-form-group">
      <div class="ixir-cs-captcha-row">
       <span class="ixir-cs-captcha-math" id="ixirColoCaptchaMath">14 - 13 = ?</span>
       <input type="text" name="captcha" class="form-control ixir-cs-captcha-input" id="inputColoCaptcha" placeholder="?" maxlength="4" autocomplete="off">
      </div>
     </div>

     <button type="submit" class="btn ixir-cs-submit-btn" id="btnColoSubmit">Gönder</button>
    </form>

    <div class="ixir-cs-success-card" id="ixirColoSuccess">
     <div class="ixir-cs-success-icon"><i class="fas fa-check" aria-hidden="true"></i></div>
     <h3>Talebiniz Alındı!</h3>
     <p>Teşekkürler, en kısa sürede sizinle iletişime geçeceğiz.</p>
    </div>
   </div>
  </div>
 </div>

 <script>
  {literal}
   (function() {
    var defaultPlaceholders = {
     inputColoName: 'Ad ve Soyad',
     inputColoPhone: 'Telefon Numarası',
     inputColoEmail: 'E-posta Adresi',
     inputColoMessage: 'Projeniz hakkında bilgi veriniz',
     inputColoCaptcha: '?'
    };

    function syncPhonePadding() {
     var phoneInput = document.getElementById('inputColoPhone');
     if (!phoneInput) return;
     var flagEl = phoneInput.parentElement ? phoneInput.parentElement.querySelector('.selected-flag') : null;
     if (flagEl) {
      var w = flagEl.offsetWidth;
      if (w > 0) {
       phoneInput.style.setProperty('padding-left', (w + 12) + 'px', 'important');
      }
     }
    }

    function initPhoneInput() {
     var $phone = window.jQuery && window.jQuery('#inputColoPhone');
     if (!$phone || !$phone.length || typeof $phone.intlTelInput !== 'function') return;

     try {
      $phone.intlTelInput('destroy');
     } catch (e) {}

     $phone.parent().find('[id^="populatedCountryCode"]').remove();
     var $parentWrap = $phone.parent('.intl-tel-input');
     if ($parentWrap.length) {
      $parentWrap.find('.flag-container, .country-list').remove();
      $phone.unwrap();
     }

     $phone.intlTelInput({
      preferredCountries: ['tr'],
      initialCountry: 'tr',
      separateDialCode: true,
      autoPlaceholder: 'off'
     });

     $phone.intlTelInput('setCountry', 'tr');
     syncPhonePadding();

     $phone.off('countrychange.ixirColo').on('countrychange.ixirColo', function() {
      setTimeout(syncPhonePadding, 20);
     });
    }

    if (window.jQuery) {
     window.jQuery(function() {
      initPhoneInput();
      setTimeout(initPhoneInput, 100);
      setTimeout(syncPhonePadding, 250);
     });
    } else {
     document.addEventListener('DOMContentLoaded', function() {
      initPhoneInput();
      setTimeout(syncPhonePadding, 250);
     });
    }

    window.addEventListener('resize', syncPhonePadding);

    var mathEl = document.getElementById('ixirColoCaptchaMath');
    var inputEl = document.getElementById('inputColoCaptcha');
    var formEl = document.getElementById('ixirColoForm');
    var successEl = document.getElementById('ixirColoSuccess');
    var submitBtn = document.getElementById('btnColoSubmit');
    if (!mathEl || !inputEl || !formEl) return;

    var num1 = Math.floor(Math.random() * 10) + 11;
    var num2 = Math.floor(Math.random() * 9) + 1;
    var expected = num1 - num2;
    mathEl.textContent = num1 + ' - ' + num2 + ' = ?';

    function isEmail(val) {
     return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(val);
    }

    function setFieldError(el, message) {
     el.classList.add('is-invalid');
     if (el.id !== 'inputColoCaptcha') {
      el.value = '';
      el.setAttribute('placeholder', message);
     }
    }

    function clearFieldError(el) {
     el.classList.remove('is-invalid');
     var orig = defaultPlaceholders[el.id];
     if (orig) {
      el.setAttribute('placeholder', orig);
     }
    }

    var allInputs = formEl.querySelectorAll('input, textarea');
    Array.prototype.forEach.call(allInputs, function(inp) {
     inp.addEventListener('input', function() {
      clearFieldError(inp);
     });
    });

    formEl.addEventListener('submit', function(e) {
     e.preventDefault();

     var nameInput = document.getElementById('inputColoName');
     var phoneInput = document.getElementById('inputColoPhone');
     var emailInput = document.getElementById('inputColoEmail');
     var msgInput = document.getElementById('inputColoMessage');

     var nameVal = (nameInput.value || '').trim();
     var phoneVal = (phoneInput.value || '').trim();
     var emailVal = (emailInput.value || '').trim();
     var msgVal = (msgInput.value || '').trim();
     var captchaVal = parseInt((inputEl.value || '').trim(), 10);

     var firstInvalid = null;

     if (!nameVal) {
      setFieldError(nameInput, 'Lütfen adınızı ve soyadınızı girin.');
      if (!firstInvalid) firstInvalid = nameInput;
     } else {
      clearFieldError(nameInput);
     }

     if (!phoneVal) {
      setFieldError(phoneInput, 'Lütfen telefon numaranızı girin.');
      if (!firstInvalid) firstInvalid = phoneInput;
     } else {
      clearFieldError(phoneInput);
     }

     if (!emailVal || !isEmail(emailVal)) {
      setFieldError(emailInput, 'Lütfen geçerli bir e-posta adresi girin.');
      if (!firstInvalid) firstInvalid = emailInput;
     } else {
      clearFieldError(emailInput);
     }

     if (!msgVal) {
      setFieldError(msgInput, 'Lütfen projeniz hakkında bilgi veriniz.');
      if (!firstInvalid) firstInvalid = msgInput;
     } else {
      clearFieldError(msgInput);
     }

     if (isNaN(captchaVal) || captchaVal !== expected) {
      setFieldError(inputEl, '');
      if (!firstInvalid) firstInvalid = inputEl;
     } else {
      clearFieldError(inputEl);
     }

     if (firstInvalid) {
      firstInvalid.focus();
      return false;
     }

     var fullPhone = phoneVal;
     if (window.jQuery && typeof jQuery('#inputColoPhone').intlTelInput === 'function') {
      try {
       var intlData = jQuery('#inputColoPhone').intlTelInput('getSelectedCountryData');
       if (intlData && intlData.dialCode) {
        if (fullPhone.indexOf('+' + intlData.dialCode) !== 0 && fullPhone.indexOf(intlData.dialCode) !== 0) {
         fullPhone = '+' + intlData.dialCode + ' ' + fullPhone;
        }
       }
      } catch (err) {}
     }

     submitBtn.disabled = true;
     submitBtn.textContent = 'Gönderiliyor...';

     var postData = new FormData();
     postData.append('name', nameVal);
     postData.append('phone', fullPhone);
     postData.append('email', emailVal);
     postData.append('message', msgVal);

     var reqUrl = formEl.getAttribute('action') || '/ixir-colocation-request.php';

     fetch(reqUrl, {
      method: 'POST',
      body: postData
     })
     .then(function(res) {
      return res.json();
     })
     .then(function(data) {
      if (data && data.ok) {
       formEl.style.display = 'none';
       successEl.style.display = 'block';
      } else {
       submitBtn.disabled = false;
       submitBtn.textContent = 'Gönder';
       if (data && data.field) {
        var errTarget = formEl.querySelector('[name="' + data.field + '"]');
        if (errTarget) {
         setFieldError(errTarget, data.error || 'Lütfen bu alanı doldurun.');
         errTarget.focus();
        }
       } else {
        alert(data.error || 'Bir hata oluştu. Lütfen tekrar deneyin.');
       }
      }
     })
     .catch(function(err) {
      formEl.style.display = 'none';
      successEl.style.display = 'block';
     });
    });
   })();
  {/literal}
 </script>
</section>