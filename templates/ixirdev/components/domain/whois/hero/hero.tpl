 <section id="home-banner" class="ixir-hero" aria-label="Whois Sorgulama">
  <picture class="ixir-hero-photo">
   <source srcset="{$WEB_ROOT}/templates/{$template}/img/hero-whois.webp?v=r2" type="image/webp">
   <img src="{$WEB_ROOT}/templates/{$template}/img/hero-whois.jpg?v=r2" alt="Whois Sorgulama">
  </picture>
  <div class="container">
   <div class="ixir-hero-main">
    <div class="ixir-hero-copy">
     <div class="ixir-badge-pill ixir-ssl-badge-pill"><i class="fas fa-id-card" aria-hidden="true"></i> WHOIS SORGULAMA</div>
     <h1>Whois Domain Sorgulama</h1>
     <p>Domain'inin sahiplik bilgilerini ücretsiz ve anında sorgulayın.</p>
    </div>
    <form method="post" action="{$WEB_ROOT}/whois-sorgulama"
     class="ixir-whois-form{if $ixirWhoisInvalid} ixir-dc-invalid{/if}" id="frmWhoisChecker" novalidate>
     <input type="hidden" name="token" value="{$token}" />
     <div class="ixir-domain-checker">
      <div class="ixir-dc-input ixir-dc-float">
       <span class="ixir-dc-icon" aria-hidden="true"><i class="fas fa-globe"></i></span>
       <input type="text" id="ixir-whois-domain" class="form-control" name="domain" value="{$ixirWhoisDomain|escape}"
        placeholder=" " data-placeholder="Bir domain yazınız (örn: ixirhost.com)"
        data-placeholder-error="Lütfen bir domain girin." autocapitalize="none" autocomplete="off" spellcheck="false" />
       <label for="ixir-whois-domain" class="ixir-dc-label">Bir <span lang="en">domain</span> yazınız (örn:
        <span class="ixir-dc-domain-sample">ixirhost.com</span>)</label>
      </div>
      <div class="ixir-dc-button">
       <button type="submit" class="btn btn-primary btn-block search">
        <i class="fas fa-search" aria-hidden="true"></i> Sorgula
       </button>
      </div>
     </div>
     <p class="ixir-whois-field-error" id="ixir-whois-field-error" role="alert" {if !$ixirWhoisInvalid} hidden{/if}>
      <i class="fas fa-exclamation-circle" aria-hidden="true"></i>
      <span>Lütfen geçerli bir domain girin. Örneğin: <b>ixirhost.com</b></span>
     </p>
    </form>
    {include file="$template/components/domain/float-label/float-label.tpl"}

    {assign var="otherServices" value=[
       ['label' => 'Domain Sorgulama',       'icon' => 'fas fa-retweet',         'href' => 'domain-sorgu'],
       ['label' => 'Domain Transfer',        'icon' => 'fas fa-retweet fa-fw',   'href' => 'domain-transfer'],
       ['label' => 'SSL Sertifikaları',      'icon' => 'far fa-lock',            'href' => 'ssl-sertifikalari'],
       ['label' => 'Site Pratik',            'icon' => 'fas fa-globe',           'href' => 'site-pratik'],
       ['label' => 'Linux Hosting',          'icon' => 'fas fa-hdd',             'href' => 'linux-hosting'],
       ['label' => 'Windows Hosting',        'icon' => 'fab fa-windows',         'href' => 'windows-hosting'],
       ['label' => 'WordPress Hosting',      'icon' => 'fab fa-wordpress-simple','href' => 'wordpress-hosting'],
       ['label' => 'Linux Reseller Hosting', 'icon' => 'fab fa-linux',           'href' => 'linux-reseller-hosting'],
       ['label' => 'Kurumsal Mail Hosting',  'icon' => 'far fa-envelope',        'href' => 'kurumsal-mail-hosting'],
       ['label' => 'Kurumsal Mail Server',   'icon' => 'fas fa-mail-bulk',       'href' => 'kurumsal-mail-server'],
       ['label' => 'Cloud Server',           'icon' => 'fas fa-cloud',           'href' => 'cloud-server'],
       ['label' => 'Dedicated Server',       'icon' => 'fas fa-server',          'href' => 'dedicated-server']
     ]}
    {include file="$template/components/List.tpl" title="Diğer Hizmetler" items=$otherServices columns=3}


   </div>
  </div>
  {include file="$template/components/domain/shared/hero/tld-ticker.tpl"}
 </section>
</div>