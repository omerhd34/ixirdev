<section class="ixir-contact-map" aria-label="Konum haritası">
 <iframe title="ixirhost konum haritası"
  src="https://www.google.com/maps?q=ixirhost+%C4%B0ksir+%C4%B0nternet+Hizmetleri+A.%C5%9E.+Bayrak+Cd.+Bilim+Tower+%C3%9Cmraniye+%C4%B0stanbul&hl=tr&z=16&output=embed"
  loading="lazy" referrerpolicy="no-referrer-when-downgrade" allowfullscreen></iframe>
</section>

<section class="ixir-contact-page">
 <div class="container">
  <div class="ixir-contact-grid">
   <div class="ixir-contact-info">
    <h2>İletişim Adresi</h2>
    <div class="ixir-contact-meta">
     <div class="ixir-contact-address">
      <h3>İksir İnternet Hizmetleri A.Ş.</h3>
      <p>Bayrak Cd. Bilim Tower<br>N:30 K:16/126<br>Ümraniye / İstanbul</p>
      <div class="ixir-contact-item">
       <h6>Çalışma Saatleri</h6>
       <p>
        <strong>Çağrı Merkezi:</strong> Pazartesi-Cumartesi: 8:30 - 18:00<br>
        <strong>Yardım Masası:</strong> E-posta / Ticket Destek 7x24x365
       </p>
      </div>
     </div>
     <div class="ixir-contact-details">
      <div class="ixir-contact-item">
       <h6>Telefon</h6>
       <p>
        <a href="tel:+908503027111">+90 850 302 7 111</a><br>
        <a href="tel:+902164994947">+90 216 499 49 47</a>
       </p>
      </div>
      <div class="ixir-contact-item">
       <h6>E-posta</h6>
       <p><a href="mailto:destek@ixirhost.com">destek@ixirhost.com</a></p>
      </div>
      <div class="ixir-contact-item">
       <h6>Sosyal Medya</h6>
       <nav class="ixir-contact-social" aria-label="Sosyal medya">
        <a href="https://www.facebook.com/ixirhost" title="ixirhost Facebook" target="_blank" rel="nofollow noopener"><i
          class="fab fa-facebook-f" aria-hidden="true"></i><span class="sr-only">Facebook</span></a>
        <a href="https://www.twitter.com/ixirhost" title="ixirhost Twitter" target="_blank" rel="nofollow noopener"><i
          class="fab fa-twitter" aria-hidden="true"></i><span class="sr-only">Twitter</span></a>
        <a href="https://www.instagram.com/ixirhost" title="ixirhost Instagram" target="_blank"
         rel="nofollow noopener"><i class="fab fa-instagram" aria-hidden="true"></i><span
          class="sr-only">Instagram</span></a>
        <a href="https://www.linkedin.com/company/iksir-internet-hizmetleri-a-%C5%9F-" title="ixirhost LinkedIn"
         target="_blank" rel="nofollow noopener"><i class="fab fa-linkedin-in" aria-hidden="true"></i><span
          class="sr-only">LinkedIn</span></a>
        <a href="https://www.youtube.com/ixirhostcom" title="ixirhost Youtube" target="_blank"
         rel="nofollow noopener"><i class="fab fa-youtube" aria-hidden="true"></i><span
          class="sr-only">YouTube</span></a>
       </nav>
      </div>
     </div>
    </div>
   </div>

   <div class="ixir-contact-form-wrap">
    <h2>İletişim Formu</h2>

    {if $sent}
     <div class="ixir-contact-alert ixir-contact-alert--success" role="status">
      <span class="ixir-contact-alert-icon" aria-hidden="true">
       <i class="fas fa-check"></i>
      </span>
      <div>
       <strong>Mesajınız gönderildi</strong>
       <p>{$LANG.contactsent}</p>
      </div>
     </div>
    {/if}

    {if $errormessage}
     <div class="ixir-contact-alert ixir-contact-alert--error" role="alert">
      <span class="ixir-contact-alert-icon" aria-hidden="true">
       <i class="fas fa-exclamation-circle"></i>
      </span>
      <div>
       <strong>Form gönderilemedi</strong>
       <ul>{$errormessage}</ul>
      </div>
     </div>
    {/if}

    {if !$sent}
     <form method="post" action="{$WEB_ROOT}/iletisim" class="ixir-contact-form" id="ixirContactForm" role="form"
      novalidate>
      <input type="hidden" name="token" value="{$token}" />
      <input type="hidden" name="action" value="send" />

      <div class="ixir-grid-2">
       <div class="ixir-contact-field">
        <label class="sr-only" for="inputName">{$LANG.supportticketsclientname}</label>
        <input type="text" name="name" value="{$name}" class="form-control" id="inputName" placeholder="Adınız Soyadınız"
         autocomplete="name" data-ixir-validate="1" data-ixir-required="Adınızı ve soyadınızı yazın.">
        <span class="ixir-contact-field-error" hidden></span>
       </div>
       <div class="ixir-contact-field">
        <label class="sr-only" for="inputEmail">{$LANG.supportticketsclientemail}</label>
        <input type="email" name="email" value="{$email}" class="form-control" id="inputEmail"
         placeholder="E-posta Adresiniz" autocomplete="email" data-ixir-validate="1" data-ixir-type="email"
         data-ixir-required="Geçerli bir e-posta adresi yazın.">
        <span class="ixir-contact-field-error" hidden></span>
       </div>
      </div>

      <div class="ixir-contact-field">
       <label class="sr-only" for="inputSubject">{$LANG.supportticketsticketsubject}</label>
       <input type="text" name="subject" value="{$subject}" class="form-control" id="inputSubject" placeholder="Konu"
        data-ixir-validate="1" data-ixir-required="Konu alanını doldurun.">
       <span class="ixir-contact-field-error" hidden></span>
      </div>

      <div class="ixir-contact-field">
       <label class="sr-only" for="inputMessage">{$LANG.contactmessage}</label>
       <textarea name="message" rows="7" class="form-control" id="inputMessage" placeholder="Mesajınız"
        data-ixir-validate="1" data-ixir-required="Mesajınızı yazın.">{$message}</textarea>
       <span class="ixir-contact-field-error" hidden></span>
      </div>

      {if $captcha && $captcha->isEnabled() && $captcha->isEnabledForForm($captchaForm)}
       <div class="ixir-contact-captcha" id="ixirContactCaptcha">
        {if $captcha->recaptcha->isEnabled() && !$captcha->recaptcha->isInvisible() && $ixirRecaptchaSiteKey}
         <div class="ixir-captcha-wrap" data-ixir-captcha="recaptcha">
          <div class="ixir-recaptcha-box">
           <div class="g-recaptcha ixir-g-recaptcha" data-theme="light"
            data-sitekey="{$ixirRecaptchaSiteKey|escape:'html'}"></div>
          </div>
          <span class="ixir-contact-field-error ixir-captcha-error" hidden>Lütfen robot olmadığınızı doğrulayın.</span>
         </div>
        {elseif !$captcha->recaptcha->isEnabled()}
         <div class="ixir-captcha-wrap" data-ixir-captcha="image">
          <div class="ixir-contact-image-captcha">
           <p>Güvenlik kodunu girin</p>
           <div class="ixir-contact-image-captcha-row">
            <img id="inputCaptchaImage" data-src="{$systemurl}includes/verifyimage.php"
             src="{$systemurl}includes/verifyimage.php" alt="Güvenlik kodu">
            <input id="inputCaptcha" type="text" name="code" maxlength="6" class="form-control" placeholder="Kod"
             autocomplete="off" data-ixir-validate="1" data-ixir-required="Güvenlik kodunu girin.">
           </div>
           <span class="ixir-contact-field-error" hidden></span>
          </div>
         </div>
        {/if}
       </div>
      {/if}

      <button type="submit"
       class="ixir-contact-submit{if $captcha && $captcha->recaptcha->isEnabled() && $captcha->recaptcha->isInvisible()}{$captcha->getButtonClass($captchaForm)}{/if}">Gönder</button>
     </form>

     <script>
      (function() {
       var form = document.getElementById("ixirContactForm");
       if (!form) return;

       function isEmail(value) {
        return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value);
       }

       function clearError(field) {
        var input = field.querySelector(".form-control, [data-ixir-validate]");
        var msg = field.querySelector(".ixir-contact-field-error");
        field.classList.remove("has-error");
        if (input) input.classList.remove("is-invalid");
        if (msg) {
         msg.hidden = true;
         msg.textContent = "";
        }
       }

       function setError(field, text) {
        var input = field.querySelector(".form-control, [data-ixir-validate]");
        var msg = field.querySelector(".ixir-contact-field-error");
        field.classList.add("has-error");
        if (input) input.classList.add("is-invalid");
        if (msg) {
         msg.textContent = text;
         msg.hidden = false;
        }
       }

       function captchaOk() {
        var wrap = form.querySelector('[data-ixir-captcha="recaptcha"]');
        if (!wrap || wrap.classList.contains("is-broken")) return true;
        if (!wrap.querySelector(".g-recaptcha")) return true;
        var token = "";
        var hidden = form.querySelector("[name='g-recaptcha-response']");
        if (hidden) token = (hidden.value || "").trim();
        if (token) return true;
        var widget = wrap.querySelector(".ixir-g-recaptcha, .g-recaptcha");
        var widgetId = widget && widget.getAttribute("data-widget-id");
        if (window.grecaptcha && typeof grecaptcha.getResponse === "function") {
         try {
          token = widgetId ? grecaptcha.getResponse(widgetId) : grecaptcha.getResponse();
         } catch (err) {
          token = "";
         }
        }
        return String(token || "").trim() !== "";
       }

       form.addEventListener("input", function(e) {
        var el = e.target;
        if (!el.matches("[data-ixir-validate]")) return;
        var field = el.closest(".ixir-contact-field, .ixir-contact-image-captcha");
        if (field && String(el.value || "").trim() !== "") clearError(field);
       });

       form.addEventListener("submit", function(e) {
        var firstInvalid = null;
        form.querySelectorAll("[data-ixir-validate]").forEach(function(el) {
         var field = el.closest(".ixir-contact-field, .ixir-contact-image-captcha");
         if (!field) return;
         var value = String(el.value || "").trim();
         var ok = value !== "";
         var message = el.getAttribute("data-ixir-required") || "Bu alanı doldurun.";
         if (ok && el.getAttribute("data-ixir-type") === "email" && !isEmail(value)) {
          ok = false;
          message = "Geçerli bir e-posta adresi yazın.";
         }
         if (!ok) {
          setError(field, message);
          if (!firstInvalid) firstInvalid = el;
         } else {
          clearError(field);
         }
        });

        var captchaWrap = form.querySelector('[data-ixir-captcha="recaptcha"]');
        var captchaError = form.querySelector(".ixir-captcha-error");
        if (captchaWrap && !captchaWrap.classList.contains("is-broken") && !captchaOk()) {
         e.preventDefault();
         captchaWrap.classList.add("is-invalid");
         if (captchaError) captchaError.hidden = false;
         if (!firstInvalid) {
          captchaWrap.scrollIntoView({ behavior: "smooth", block: "center" });
         }
         if (firstInvalid) firstInvalid.focus();
         return;
        }
        if (captchaWrap) {
         captchaWrap.classList.remove("is-invalid");
         if (captchaError) captchaError.hidden = true;
        }

        if (firstInvalid) {
         e.preventDefault();
         firstInvalid.focus();
         firstInvalid.scrollIntoView({ behavior: "smooth", block: "center" });
        }
       });
      })();
     </script>
    {/if}
   </div>
  </div>

  <div class="ixir-contact-legal">
   <div><b>Ünvan</b>İksir İnternet Hizmetleri A.Ş.</div>
   <div><b>Ticaret Sicil No</b>İ.T.O. - 590363</div>
   <div><b>UETS</b>25939-92589-18899</div>
   <div><b>KEP</b>iksirinternet@hs03.kep.tr</div>
  </div>
 </div>
</section>