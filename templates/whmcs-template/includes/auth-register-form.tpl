{if in_array('state', $optionalFields)}
 <script>
  var statesTab = 10;
  var stateNotRequired = true;
 </script>
{/if}

<script type="text/javascript" src="{$BASE_PATH_JS}/StatesDropdown.js"></script>
<script>
 jQuery(document).ready(function() {
  var $pass = jQuery("#inputNewPassword1");
  var $pass2 = jQuery("#inputNewPassword2");
  var $box = jQuery("#ixirPwHints");
  var $label = jQuery("#ixirPwStrengthLabel");
  var $bar = jQuery("#ixirPwStrengthBar");
  var $form = jQuery("#frmCheckout");
  var submitAttempted = false;

  function evaluatePassword(value) {
   var rules = {
    length: value.length >= 6,
    number: /\d/.test(value),
    case: /[a-z]/.test(value) && /[A-Z]/.test(value)
   };
   var score = (rules.length ? 1 : 0) + (rules.number ? 1 : 0) + (rules.case ? 1 : 0);
   var strength = "empty";
   var label = "";
   var width = "0%";

   if (value.length > 0) {
    if (score <= 1) {
     strength = "weak";
     label = "Zayıf";
     width = "33%";
    } else if (score === 2) {
     strength = "good";
     label = "İyi";
     width = "66%";
    } else {
     strength = "strong";
     label = "Güçlü";
     width = "100%";
    }
   }

   return { rules: rules, score: score, strength: strength, label: label, width: width };
  }

  function getMatchState() {
   var pass = $pass.val() || "";
   var pass2 = $pass2.val() || "";
   if (!pass2.length) {
    return { status: "empty", ok: false };
   }
   if (pass !== pass2) {
    return { status: "mismatch", ok: false };
   }
   return { status: "match", ok: true };
  }

  function renderPasswordUI() {
   var value = $pass.val() || "";
   var result = evaluatePassword(value);
   var match = getMatchState();
   var showMeter = value.length > 0 || submitAttempted;

   $box.toggleClass("is-visible", showMeter);
   var bothMatch = match.status === "match";
   var strengthClass = "";
   if (bothMatch) {
    if (result.strength === "weak") strengthClass = "is-strength-weak";
    else if (result.strength === "good") strengthClass = "is-strength-good";
    else if (result.strength === "strong") strengthClass = "is-strength-strong";
   }

   $pass
    .removeClass("is-match is-mismatch is-strength-weak is-strength-good is-strength-strong")
    .toggleClass("is-mismatch", false);
   $pass2
    .removeClass("is-match is-mismatch is-strength-weak is-strength-good is-strength-strong");

   if (bothMatch && strengthClass) {
    $pass.addClass(strengthClass);
    $pass2.addClass(strengthClass);
   } else if (match.status === "mismatch" || (submitAttempted && match.status === "empty")) {
    $pass2.addClass("is-mismatch");
   }

   if (value.length > 0) {
    clearFieldError($pass);
   }
   if (bothMatch) {
    clearFieldError($pass2);
   } else if (match.status === "mismatch" || (submitAttempted && match.status === "empty")) {
    setFieldError($pass2);
   }

   if (value.length > 0 && match.status === "empty") {
    $box.attr("data-strength", "warn");
    $label.text("Şifre tekrarını girin.");
    $bar.css("width", result.width || "100%");
    $box.addClass("is-warn").removeClass("is-invalid");
   } else if (match.status === "mismatch") {
    $box.attr("data-strength", "warn");
    $label.text("Şifreler eşleşmiyor.");
    $bar.css("width", "100%");
    $box.addClass("is-warn").removeClass("is-invalid");
   } else {
    $box.attr("data-strength", result.strength);
    $label.text(result.label);
    $bar.css("width", result.width);
    $box.removeClass("is-warn");
   }

   return { result: result, match: match };
  }

  function clearFieldError($el) {
   var $field = $el.closest(".ixir-field, .ixir-check, .ixir-agreements");
   if ($el.hasClass("ixir-select-native")) {
    $field = $el.closest(".ixir-select-field");
    $el.closest(".ixir-select").removeClass("has-error");
   }
   $el.removeClass("is-invalid");
   if ($el.is(':checkbox')) {
    $el.closest(".ixir-check").removeClass("has-error");
    return;
   }
   $field.removeClass("has-error");
  }

  function setFieldError($el) {
   clearFieldError($el);
   $el.addClass("is-invalid");

   if ($el.is(':checkbox')) {
    $el.closest(".ixir-check").addClass("has-error");
    return;
   }

   var $field = $el.closest(".ixir-field");
   if ($el.hasClass("ixir-select-native")) {
    $field = $el.closest(".ixir-select-field");
    $el.closest(".ixir-select").addClass("has-error");
   }
   $field.addClass("has-error");
  }

  function isEmail(value) {
   return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value);
  }

  function validateRegisterFields() {
   var firstInvalid = null;

   $form.find("[data-ixir-validate]").each(function() {
    var $el = jQuery(this);
    var ok = true;

    if ($el.is(':checkbox')) {
     ok = $el.is(":checked");
    } else if ($el.attr("data-ixir-type") === "email") {
     var email = jQuery.trim($el.val() || "");
     ok = email !== "" && isEmail(email);
    } else {
     ok = jQuery.trim($el.val() || "") !== "";
    }

    if (!ok) {
     setFieldError($el);
     if (!firstInvalid) {
      firstInvalid = $el;
     }
    } else {
     clearFieldError($el);
    }
   });

   return firstInvalid;
  }

  $form.on("input change", "[data-ixir-validate]", function() {
   var $el = jQuery(this);
   if ($el.is(':checkbox')) {
    if ($el.is(":checked")) {
     clearFieldError($el);
    }
    return;
   }
   if (jQuery.trim($el.val() || "") !== "") {
    clearFieldError($el);
   }
  });

  $pass.on("input keyup", renderPasswordUI);
  $pass2.on("input keyup", renderPasswordUI);

  $form.on("submit", function(e) {
   submitAttempted = true;
   var state = renderPasswordUI();
   var firstInvalid = validateRegisterFields();

   if (!$pass.val() || state.result.score < 3) {
    e.preventDefault();
    $box.addClass("is-visible is-invalid is-warn");
    if (!$pass.val()) {
     setFieldError($pass);
    } else {
     $label.text("Daha güçlü bir şifre girin.");
     $box.attr("data-strength", "warn");
    }
    if (!firstInvalid) {
     $pass.focus();
    }
    return false;
   }

   if (!state.match.ok) {
    e.preventDefault();
    $box.addClass("is-visible is-warn");
    if (!firstInvalid) {
     $pass2.focus();
    }
    return false;
   }

   if (firstInvalid) {
    e.preventDefault();
    if (firstInvalid.hasClass("ixir-select-native")) {
     firstInvalid.closest(".ixir-select").find(".ixir-select-trigger").focus();
    } else {
     firstInvalid.focus();
    }
    return false;
   }

   var recaptchaToken = jQuery.trim($form.find("[name='g-recaptcha-response']").val() || "");
   if ($form.find(".g-recaptcha, .recaptcha-container").length && !recaptchaToken) {
    var widgetId = $form.find(".ixir-g-recaptcha, .g-recaptcha").attr("data-widget-id");
    if (window.grecaptcha && typeof grecaptcha.getResponse === "function") {
     try {
      recaptchaToken = widgetId ? grecaptcha.getResponse(widgetId) : grecaptcha.getResponse();
     } catch (err) {
      recaptchaToken = "";
     }
    }
    if (!jQuery.trim(recaptchaToken || "")) {
     e.preventDefault();
     $form.find(".ixir-captcha-wrap").addClass("is-invalid");
     return false;
    }
   }
   $form.find(".ixir-captcha-wrap").removeClass("is-invalid");

   $box.removeClass("is-invalid is-warn");
  });

  jQuery('input[name="ixir_member_type"]').on("change", function() {
   var isCorp = jQuery(this).val() === "kurumsal";
   jQuery(".ixir-company-field").toggleClass("is-visible", isCorp);
   if (!isCorp) {
    jQuery("#inputCompanyName").val("");
   }
  });

  var $phone = jQuery("#inputPhone.ixir-plain-phone");
  if ($phone.length) {
   try {
    if ($phone.data("plugin_intlTelInput") || $phone.closest(".intl-tel-input").length) {
     $phone.intlTelInput("destroy");
    }
   } catch (e) {}
   var $wrap = $phone.closest(".intl-tel-input");
   if ($wrap.length) {
    $wrap.replaceWith($phone);
   }
   jQuery("#populatedCountryCodephonenumber").remove();
   $phone.show().css({ paddingLeft: "", width: "100%" });
  }

  jQuery("[data-ixir-select]").each(function() {
   var $root = jQuery(this);
   var $native = $root.find(".ixir-select-native");
   var $trigger = $root.find(".ixir-select-trigger");
   var $label = $root.find(".ixir-select-label");
   var $menu = $root.find(".ixir-select-menu");
   var placeholder = $native.find("option[value='']").first().text() || $label.text();

   function syncFromNative() {
    var val = $native.val() || "";
    $menu.find(".ixir-select-option").removeClass("is-selected");
    if (!val) {
     $label.text(placeholder);
     $root.removeClass("has-value");
     return;
    }
    var $opt = $menu.find('.ixir-select-option[data-value="' + val + '"]').first();
    if ($opt.length) {
     $opt.addClass("is-selected");
     $label.text($opt.text());
    } else {
     $label.text(placeholder);
    }
    $root.toggleClass("has-value", val !== "");
   }

   function closeMenu() {
    $root.removeClass("is-open");
    $trigger.attr("aria-expanded", "false");
    $menu.attr("hidden", true);
   }

   function openMenu() {
    $root.addClass("is-open");
    $trigger.attr("aria-expanded", "true");
    $menu.removeAttr("hidden");
   }

   syncFromNative();

   $trigger.on("click", function(e) {
    e.preventDefault();
    if ($root.hasClass("is-open")) {
     closeMenu();
    } else {
     openMenu();
    }
   });

   $menu.on("click", ".ixir-select-option", function(e) {
    e.preventDefault();
    var value = jQuery(this).attr("data-value");
    $native.val(value).trigger("change");
    syncFromNative();
    clearFieldError($native);
    closeMenu();
   });

   jQuery(document).on("click.ixirSelect", function(e) {
    if (!$root.is(e.target) && $root.has(e.target).length === 0) {
     closeMenu();
    }
   });

   jQuery(document).on("keydown.ixirSelect", function(e) {
    if (e.key === "Escape") {
     closeMenu();
    }
   });
  });
 });
</script>

{if $registrationDisabled}
 {include file="$template/includes/alert.tpl" type="error" msg=$LANG.registerCreateAccount|cat:' <strong><a href="'|cat:"$WEB_ROOT"|cat:'/sepet" class="alert-link">'|cat:$LANG.registerCreateAccountOrder|cat:'</a></strong>'}
{else}
 <form method="post" class="ixir-split-form ixir-register-form using-password-strength" action="{$WEB_ROOT}/hesabim"
  role="form" name="orderfrm" id="frmCheckout" novalidate>
  <input type="hidden" name="register" value="true" />
  <input type="hidden" name="address1" value="{if $clientaddress1}{$clientaddress1}{else}-{/if}" />
  <input type="hidden" name="city" value="{if $clientcity}{$clientcity}{else}İstanbul{/if}" />
  <input type="hidden" name="state" value="{if $clientstate}{$clientstate}{else}İstanbul{/if}" />
  <input type="hidden" name="postcode" value="{if $clientpostcode}{$clientpostcode}{else}34000{/if}" />
  <input type="hidden" name="country"
   value="{if $clientcountry}{$clientcountry}{elseif $defaultCountry}{$defaultCountry}{else}TR{/if}" />

  <div class="ixir-split-form-head">
   <h1>Hesap Oluştur</h1>
  </div>

  {include file="$template/includes/linkedaccounts.tpl" linkContext="registration"}

  <div class="ixir-field">
   <label>Üyelik Tipi Seçiniz:</label>
   <div class="ixir-member-type" role="radiogroup" aria-label="Üyelik Tipi">
    <label class="ixir-member-option">
     <input type="radio" name="ixir_member_type" value="bireysel" checked>
     <span class="ixir-member-card">
      <span class="ixir-member-icon" aria-hidden="true"><i class="far fa-user"></i></span>
      <span class="ixir-member-title">Bireysel</span>
      <span class="ixir-member-dot" aria-hidden="true"></span>
     </span>
    </label>
    <label class="ixir-member-option">
     <input type="radio" name="ixir_member_type" value="kurumsal">
     <span class="ixir-member-card">
      <span class="ixir-member-icon" aria-hidden="true"><i class="far fa-building"></i></span>
      <span class="ixir-member-title">Kurumsal</span>
      <span class="ixir-member-dot" aria-hidden="true"></span>
     </span>
    </label>
   </div>
  </div>

  <div class="ixir-field ixir-company-field">
   <label for="inputCompanyName">Firma Adı(Opsiyonel):<span class="ixir-optional"></span></label>
   <input type="text" name="companyname" id="inputCompanyName" class="form-control" placeholder="Firma Adı"
    value="{$clientcompanyname}">
  </div>

  <div class="ixir-field-row">
   <div class="ixir-field">
    <label for="inputFirstName">İsim:</label>
    <input type="text" name="firstname" id="inputFirstName" class="form-control" placeholder="İsim"
     value="{$clientfirstname}" data-ixir-required="İsim gerekli."
     {if !in_array('firstname', $optionalFields)}data-ixir-validate="1" {/if}>
   </div>
   <div class="ixir-field">
    <label for="inputLastName">Soyisim:</label>
    <input type="text" name="lastname" id="inputLastName" class="form-control" placeholder="Soyisim"
     value="{$clientlastname}" data-ixir-required="Soyisim gerekli."
     {if !in_array('lastname', $optionalFields)}data-ixir-validate="1" {/if}>
   </div>
  </div>

  <div class="ixir-field-row">
   <div class="ixir-field">
    <label for="inputPhone">Telefon Numarası:</label>
    <input type="tel" name="phonenumber" id="inputPhone" class="form-control ixir-plain-phone"
     placeholder="Telefon Numarası" value="{$clientphonenumber}" autocomplete="tel" data-no-country-code="1"
     data-ixir-validate="1" data-ixir-required="Telefon numarası gerekli.">
   </div>
   <div class="ixir-field">
    <label for="inputEmailReg">E-Posta Adresi:</label>
    <input type="email" name="email" id="inputEmailReg" class="form-control" placeholder="E-Posta Adresi"
     value="{$clientemail}" data-ixir-validate="1" data-ixir-required="E-posta adresi gerekli." data-ixir-type="email">
   </div>
  </div>

  <div class="ixir-field-row ixir-pw-row">
   <div class="ixir-field ixir-pw-field">
    <label for="inputNewPassword1">Şifre:</label>
    <input type="password" name="password" id="inputNewPassword1" class="form-control" placeholder="Şifre"
     autocomplete="new-password" minlength="6" {if $remote_auth_prelinked} value="{$password}" {/if}>
    <div class="ixir-pw-meter" id="ixirPwHints" data-strength="empty" aria-live="polite">
     <div class="ixir-pw-meter-top">
      <span class="ixir-pw-strength-label" id="ixirPwStrengthLabel"></span>
      <div class="ixir-pw-strength-track">
       <div class="ixir-pw-strength-bar" id="ixirPwStrengthBar"></div>
      </div>
     </div>
    </div>
   </div>
   <div class="ixir-field ixir-pw-confirm-field">
    <label for="inputNewPassword2">Şifre Tekrarı:</label>
    <input type="password" name="password2" id="inputNewPassword2" class="form-control" placeholder="Şifre Tekrarı"
     autocomplete="new-password" minlength="6">
   </div>
  </div>

  <div class="ixir-field-row">
   <div class="ixir-field ixir-select-field">
    <label for="inputSecurityQId">Güvenlik Sorusu:</label>
    <div class="ixir-select" data-ixir-select>
     <select name="securityqid" id="inputSecurityQId" class="ixir-select-native" data-ixir-validate="1"
      data-ixir-required="Güvenlik sorusu seçin." data-ixir-silent="1">
      <option value="">Bir güvenlik sorusu seçin.</option>
      {foreach $securityquestions as $question}
       <option value="{$question.id}" {if $question.id eq $securityqid} selected{/if}>{$question.question}</option>
      {/foreach}
     </select>
     <button type="button" class="ixir-select-trigger" aria-haspopup="listbox" aria-expanded="false">
      <span class="ixir-select-label">Bir güvenlik sorusu seçin.</span>
      <i class="fas fa-chevron-down ixir-select-caret" aria-hidden="true"></i>
     </button>
     <ul class="ixir-select-menu" role="listbox" hidden>
      {foreach $securityquestions as $question}
       <li class="ixir-select-option{if $question.id eq $securityqid} is-selected{/if}" role="option"
        data-value="{$question.id}" tabindex="-1">{$question.question}</li>
      {/foreach}
     </ul>
    </div>
   </div>
   <div class="ixir-field">
    <label for="inputSecurityQAns">Güvenlik Sorunuzun Cevabı:</label>
    <input type="text" name="securityqans" id="inputSecurityQAns" class="form-control"
     placeholder="Lütfen bir yanıt girin." autocomplete="off" data-ixir-validate="1"
     data-ixir-required="Güvenlik cevabı gerekli." data-ixir-silent="1">
   </div>
  </div>

  {if $customfields}
   {foreach $customfields as $customfield}
    <div class="ixir-field">
     <label for="customfield{$customfield.id}">{$customfield.name} {$customfield.required}</label>
     <div class="ixir-custom-control">{$customfield.input}</div>
     {if $customfield.description}
      <span class="field-help-text">{$customfield.description}</span>
     {/if}
    </div>
   {/foreach}
  {/if}

  {if $currencies}
   {assign var="ixirTryCurrencyId" value=""}
   {foreach from=$currencies item=curr}
    {if $curr.code eq "TRY" || $curr.code eq "TL"}
     {assign var="ixirTryCurrencyId" value=$curr.id}
    {/if}
   {/foreach}
   {if !$ixirTryCurrencyId}
    {foreach from=$currencies item=curr}
     {if $curr.default}
      {assign var="ixirTryCurrencyId" value=$curr.id}
     {/if}
    {/foreach}
   {/if}
   {if $ixirTryCurrencyId}
    <input type="hidden" name="currency" id="inputCurrency" value="{$ixirTryCurrencyId}" />
   {/if}
  {/if}

  <div class="ixir-agreements">
   <label class="ixir-check">
    <input type="checkbox" name="ixir_confirm_accuracy" value="1" data-ixir-validate="1"
     data-ixir-required="Bilgilerin doğruluğunu onaylayın.">
    <span>Girdiğim bilgilerin doğruluğunu onaylıyorum.</span>
   </label>
   {if $accepttos}
    <label class="ixir-check">
     <input type="checkbox" name="accepttos" class="accepttos" data-ixir-validate="1"
      data-ixir-required="Sözleşmeyi onaylamanız gerekli.">
     <span><a href="{if $tosurl}{$tosurl}{else}{$WEB_ROOT}/hizmetsozlesmesi{/if}" target="_blank" rel="noopener">Hizmet
       Sözleşmesi</a>'ni ve <a href="{$WEB_ROOT}/kvkkaydinlatmametni" target="_blank" rel="noopener">KVKK Metni</a>'ni
      okudum, onaylıyorum.</span>
    </label>
   {else}
    <label class="ixir-check">
     <input type="checkbox" name="ixir_accept_terms" value="1" data-ixir-validate="1"
      data-ixir-required="Sözleşmeyi onaylamanız gerekli.">
     <span><a href="{$WEB_ROOT}/hizmetsozlesmesi" target="_blank" rel="noopener">Hizmet Sözleşmesi</a>'ni ve <a
     href="{$WEB_ROOT}/kvkkaydinlatmametni" target="_blank" rel="noopener">KVKK Metni</a>'ni okudum, onaylıyorum.</span>
    </label>
   {/if}
   <label class="ixir-check">
    <input type="checkbox" name="marketingoptin" value="1" {if $marketingEmailOptIn} checked{/if}>
    <span>İndirim ve kampanyalardan haberdar olmak istiyorum.</span>
   </label>
  </div>

  <div class="ixir-split-captcha">
   {include file="$template/includes/auth-captcha.tpl"}
  </div>

  <button type="submit"
   class="btn ixir-split-btn{if $captcha && $captcha->recaptcha->isEnabled() && $captcha->recaptcha->isInvisible()}{$captcha->getButtonClass($captchaForm)}{/if}">
   <i class="fas fa-user-plus" aria-hidden="true"></i>
   Hesap Oluştur
  </button>
 </form>
{/if}