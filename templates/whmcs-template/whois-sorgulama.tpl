<div class="ixir-whois">
 <form method="post" action="{$WEB_ROOT}/whois-sorgulama" class="ixir-whois-form" novalidate>
  <input type="hidden" name="token" value="{$token}" />
  <div class="ixir-whois-checker">
   <div class="ixir-whois-input">
    <span class="ixir-whois-icon" aria-hidden="true"><i class="fas fa-search"></i></span>
    <label for="ixir-whois-domain" class="sr-only">Domain</label>
    <input type="text" id="ixir-whois-domain" class="form-control" name="domain" value="{$ixirWhoisDomain|escape}"
     placeholder="Örneğin ixirhost.com" autocapitalize="none" autocomplete="off" />
   </div>
   <div class="ixir-whois-button">
    <button type="submit" class="btn btn-primary btn-block">
     <i class="far fa-eye" aria-hidden="true"></i> Sorgula
    </button>
   </div>
  </div>
 </form>

 {if $ixirWhoisError}
  <div class="ixir-whois-alert ixir-whois-alert--error" role="alert">{$ixirWhoisError|escape}</div>
 {elseif $ixirWhoisStatus == 'available'}
  <div class="ixir-whois-alert ixir-whois-alert--ok" role="status">
   <strong>{$ixirWhoisDomain|escape}</strong> kayıtlı değil, tescil edilebilir.
   <a href="{$WEB_ROOT}/domain-sorgu">Hemen kaydet</a>
  </div>
 {elseif $ixirWhoisStatus != ''}
  <div class="ixir-whois-alert ixir-whois-alert--taken" role="status">
   <strong>{$ixirWhoisDomain|escape}</strong> kayıtlı bir domain.
  </div>
 {/if}

 {if $ixirWhoisResult}
  <div class="ixir-whois-result">
   <h2>WHOIS sonuçları</h2>
   <pre>{$ixirWhoisResult|escape}</pre>
  </div>
 {/if}

 <div class="ixir-whois-info">
  <div class="ixir-whois-card">
   <h2>Ücretsiz Whois Sorgulama</h2>
   <p>Domainin sahibini merak ediyor veya sahibi ile iletişime geçmek istiyorsanız, hemen bir domain sorgulayabilir
    ve sonuçlara göz atabilirsiniz.</p>
  </div>
  <div class="ixir-whois-card">
   <h3>Whois Sorgulama Neden Yapılır?</h3>
   <p>Kayıt edilen domainlerin sahiplik bilgilerine Whois, bu bilgileri sorgulama işlemine ise whois sorgulama denir.
    Bir domainin kime ait olduğunu öğrenmek, domain sahibi ile iletişime geçmek, domainin kayıt eden registrar
    bilgisini öğrenmek için whois sorgulama yapılır.</p>
  </div>
  <div class="ixir-whois-card">
   <h3>Whois Gizleme Neden Gereklidir?</h3>
   <p>Kayıt ettiğiniz domainin sahiplik bilgilerinin görüntülenmesini istemiyorsanız whois gizlemeyi tercih
    edebilirsiniz. Müşteri panelinizden sahiplik bilgilerini gizleyerek spam ve istenmeyen iletişimleri
    engelleyebilirsiniz.</p>
  </div>
 </div>
</div>