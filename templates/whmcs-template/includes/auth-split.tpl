{assign var="ixirAuthMode" value=$ixirAuthMode|default:"login"}
{if $templatefile == "password-reset"}
 {assign var="ixirAuthMode" value="reset"}
{elseif $smarty.get.panel eq "kayit" || $smarty.get.panel eq "register"}
 {assign var="ixirAuthMode" value="register"}
{elseif $smarty.get.panel eq "sifre" || $smarty.get.panel eq "forgot" || $smarty.get.panel eq "reset"}
 {assign var="ixirAuthMode" value="reset"}
{elseif $smarty.get.panel eq "giris" || $smarty.get.panel eq "login"}
 {assign var="ixirAuthMode" value="login"}
{/if}

{assign var="ixirHasRegister" value=false}
{if ($templatefile == "clientregister" || $filename == "register" || $filename == "ixir-hesabim") && !$registrationDisabled}
 {assign var="ixirHasRegister" value=true}
{/if}

{assign var="ixirCaptchaEnabled" value=false}
{if $captcha && $captcha->isEnabled()}
 {assign var="ixirCaptchaEnabled" value=true}
{/if}

<div class="ixir-auth-split{if $ixirAuthMode == 'register'} is-register{/if}{if $ixirAuthMode == 'reset'} is-reset{/if}"
 id="ixirAuthSplit" data-has-register="{if $ixirHasRegister}1{else}0{/if}" data-account-url="{$WEB_ROOT}/hesabim">

 <div class="ixir-auth-split-card">
  <div class="ixir-auth-forms">
   <div class="ixir-auth-panel ixir-auth-panel-login">
    {include file="$template/includes/auth-login-form.tpl"}
   </div>

   <div class="ixir-auth-panel ixir-auth-panel-register">
    {if $ixirHasRegister}
     {include file="$template/includes/auth-register-form.tpl"}
    {else}
     <div class="ixir-split-form ixir-register-placeholder">
      <div class="ixir-split-form-head">
       <h1>Hesap Oluştur</h1>
       <p>Yeni bir müşteri hesabı oluşturmak için devam edin.</p>
      </div>
      <a href="{$WEB_ROOT}/hesabim?panel=kayit" class="btn ixir-split-btn"><i class="fas fa-user-plus"
        aria-hidden="true"></i> Kayıt Ol</a>
     <button type="button" class="ixir-split-switch-link" data-ixir-auth-goto="login">Giriş Yap'a dön</button>
    </div>
    {/if}
   </div>

   <div class="ixir-auth-panel ixir-auth-panel-reset">
    {include file="$template/includes/auth-reset-form.tpl"}
   </div>
  </div>

  <div class="ixir-auth-overlay">
   <div class="ixir-auth-overlay-bg"></div>
   <div class="ixir-auth-overlay-panel ixir-auth-overlay-left">
    <a href="{$WEB_ROOT}/" class="ixir-overlay-logo-link" title="{$companyname}">
     <img src="{$WEB_ROOT}/templates/{$template}/img/footer/logo-color-footer.webp" alt="{$companyname}"
      class="ixir-overlay-logo">
    </a>
    <h2>Zaten hesabınız var mı?</h2>
    <p>Hesabınıza giriş yaparak hizmetlerinizi yönetin, faturalarınızı görüntüleyin ve destek taleplerinizi kolayca
     takip
     edin.</p>
    <button type="button" class="ixir-overlay-btn" data-ixir-auth-goto="login"><i class="fas fa-sign-in-alt"
      aria-hidden="true"></i> GİRİŞ YAP</button>
    <div class="ixir-overlay-forgot">
     <h2>Şifrenizi mi unuttunuz ?</h2>
     <p>E-posta adresinize göndereceğimiz bağlantı ile şifrenizi kolayca sıfırlayın; hesabınıza tekrar giriş yaparak
      hizmetlerinizi yönetmeye devam edin.
     </p>
     <button type="button" class="ixir-overlay-btn" data-ixir-auth-goto="reset"><i class="fas fa-key"
       aria-hidden="true"></i> ŞİFREMİ UNUTTUM</button>
    </div>
   </div>
   <div class="ixir-auth-overlay-panel ixir-auth-overlay-right">
    <a href="{$WEB_ROOT}/" class="ixir-overlay-logo-link" title="{$companyname}">
     <img src="{$WEB_ROOT}/templates/{$template}/img/footer/logo-color-footer.webp" alt="{$companyname}"
      class="ixir-overlay-logo">
    </a>
    <h2>Henüz hesabınız yok mu?</h2>
    <p>Hemen ücretsiz hesap oluşturun; hosting, domain ve e-posta hizmetlerinizi tek panelden yönetmek için
     <strong>ixirhost</strong> ayrıcalıklarından yararlanın.
    </p>
    <button type="button" class="ixir-overlay-btn" data-ixir-auth-goto="register"><i class="fas fa-user-plus"
      aria-hidden="true"></i> KAYIT OL</button>
    <div class="ixir-overlay-forgot">
     <h2>Şifrenizi mi unuttunuz?</h2>
     <p>E-posta adresinize göndereceğimiz bağlantı ile şifrenizi kolayca sıfırlayın; hesabınıza tekrar giriş yaparak
      hizmetlerinizi yönetmeye devam edin.
     </p>
     <button type="button" class="ixir-overlay-btn" data-ixir-auth-goto="reset"><i class="fas fa-key"
       aria-hidden="true"></i> ŞİFREMİ UNUTTUM</button>
    </div>
   </div>
   <div class="ixir-auth-overlay-panel ixir-auth-overlay-reset">
    <a href="{$WEB_ROOT}/" class="ixir-overlay-logo-link" title="{$companyname}">
     <img src="{$WEB_ROOT}/templates/{$template}/img/footer/logo-color-footer.webp" alt="{$companyname}"
      class="ixir-overlay-logo">
    </a>
    <h2>Hesabınız var mı?</h2>
    <p>Şifrenizi hatırlıyorsanız giriş yapın; henüz hesabınız yoksa ücretsiz kayıt olarak hizmetlerinizi tek panelden
     yönetin.</p>
    <div class="ixir-overlay-actions">
     <button type="button" class="ixir-overlay-btn" data-ixir-auth-goto="login"><i class="fas fa-sign-in-alt"
       aria-hidden="true"></i> GİRİŞ YAP</button>
     <button type="button" class="ixir-overlay-btn" data-ixir-auth-goto="register"><i class="fas fa-user-plus"
       aria-hidden="true"></i> KAYIT OL</button>
    </div>
   </div>
  </div>
 </div>
</div>

<script>
 (function() {
  var root = document.getElementById("ixirAuthSplit");
  if (!root) return;

  var hasRegister = root.getAttribute("data-has-register") === "1";
  var accountUrl = root.getAttribute("data-account-url");
  var captchaSource = document.getElementById("ixirCaptchaSource");

  function clearPasswordInput(el) {
   if (!el || el.tagName !== "INPUT" || el.type !== "password") return;
   var start = el.selectionStart;
   var end = el.selectionEnd;
   if (typeof start === "number" && typeof end === "number" && start !== end) {
    el.value = el.value.slice(0, start) + el.value.slice(end);
    if (typeof el.setSelectionRange === "function") {
     el.setSelectionRange(start, start);
    }
   } else {
    el.value = "";
   }
   el.dispatchEvent(new Event("input", { bubbles: true }));
   el.dispatchEvent(new Event("change", { bubbles: true }));
  }

  document.addEventListener("keydown", function(e) {
   if (!(e.ctrlKey || e.metaKey) || String(e.key).toLowerCase() !== "x") return;
   var el = e.target;
   if (!el || !root.contains(el) || el.tagName !== "INPUT" || el.type !== "password") return;
   e.preventDefault();
   clearPasswordInput(el);
  }, true);

  root.addEventListener("cut", function(e) {
   var el = e.target;
   if (!el || el.tagName !== "INPUT" || el.type !== "password") return;
   e.preventDefault();
   clearPasswordInput(el);
  });

  function currentMode() {
   if (root.classList.contains("is-reset")) return "reset";
   if (root.classList.contains("is-register")) return "register";
   return "login";
  }

  function placeCaptcha() {
   if (!captchaSource) return;
   var mode = currentMode();
   var slotName = mode === "register" ? "register" : (mode === "reset" ? "reset" : "login");
   var slot = root.querySelector('[data-ixir-captcha-slot="' + slotName + '"]');
   if (!slot) {
    slot = root.querySelector('[data-ixir-captcha-slot="login"]');
   }
   if (!slot) return;
   if (captchaSource.parentNode !== slot) {
    slot.appendChild(captchaSource);
   }
   captchaSource.hidden = false;
  }

  function renderVisibleRecaptcha() {
   if (typeof window.ixirOnRecaptchaLoad === "function") {
    window.ixirOnRecaptchaLoad();
   }
   if (typeof grecaptcha === "undefined" || typeof grecaptcha.reset !== "function") return;
   var mode = currentMode();
   var panel = root.querySelector(".ixir-auth-panel-" + mode) || root.querySelector(".ixir-auth-panel-login");
   if (!panel) return;
   panel.querySelectorAll(".g-recaptcha").forEach(function(el) {
    var id = el.getAttribute("data-widget-id");
    if (!id && window.jQuery) {
     id = jQuery(el).data("recaptcha-id");
    }
    if (id === undefined || id === null || id === "") return;
    try {
     grecaptcha.reset(parseInt(id, 10));
    } catch (err) {}
   });
  }

  function setMode(mode, updateUrl) {
   root.classList.toggle("is-register", mode === "register");
   root.classList.toggle("is-reset", mode === "reset");
   placeCaptcha();
   setTimeout(renderVisibleRecaptcha, 60);

   if (updateUrl && window.history && window.history.replaceState) {
    var next = accountUrl;
    if (mode === "register") next += "?panel=kayit";
    else if (mode === "reset") next += "?panel=sifre";
    window.history.replaceState(null, "", next);
   }
  }

  root.querySelectorAll("[data-ixir-auth-goto]").forEach(function(el) {
   el.addEventListener("click", function(e) {
    e.preventDefault();
    var mode = el.getAttribute("data-ixir-auth-goto");
    if (mode === "register" && !hasRegister) {
     window.location.href = accountUrl + "?panel=kayit";
     return;
    }
    setMode(mode, true);
   });
  });

  if (window.location.hash === "#kayit" || window.location.hash === "#register") {
   setMode("register", true);
  } else if (window.location.hash === "#sifre" || window.location.hash === "#forgot") {
   setMode("reset", true);
  } else if (window.location.hash === "#giris" || window.location.hash === "#login") {
   setMode("login", true);
  } else {
   placeCaptcha();
   setTimeout(renderVisibleRecaptcha, 60);
  }
 })();
</script>