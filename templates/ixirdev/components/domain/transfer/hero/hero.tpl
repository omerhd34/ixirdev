  <section id="home-banner" class="ixir-hero" aria-label="Domain Transfer">
   <picture class="ixir-hero-photo">
    <source srcset="{$WEB_ROOT}/templates/{$template}/img/hero-domain-transfer.webp?v=r1" type="image/webp">
    <img src="{$WEB_ROOT}/templates/{$template}/img/hero-domain-transfer.jpg?v=r1" alt="Domain Transfer">
   </picture>
   <div class="container">
    <div class="ixir-hero-main">
     <div class="ixir-hero-copy">
      <div class="ixir-badge-pill ixir-ssl-badge-pill"><i class="fas fa-exchange-alt" aria-hidden="true"></i> KESİNTİSİZ TRANSFER</div>
      <h1>Domain Transferi</h1>
      <p>Domain'inizi en uygun fiyata transfer edin ve yüksek yenileme maliyetlerinden kurtulun.</p>
     </div>
     <form method="post" action="{$WEB_ROOT}/cart.php" id="frmDomainTransfer">
      <input type="hidden" name="a" value="addDomainTransfer" class="no-icheck">
      <div class="ixir-domain-checker ixir-domain-checker--solo">
       <div class="ixir-dc-input ixir-dc-float">
        <span class="ixir-dc-icon" aria-hidden="true"><i class="fas fa-globe"></i></span>
        <input type="text" name="domain" class="form-control no-icheck ixir-transfer-input" id="inputTransferDomain"
         value="{$lookupTerm}" placeholder=" "
         data-placeholder="Transfer etmek istediğiniz domain'i yazınız. Örneğin: ixirhost.com"
         data-placeholder-error="Lütfen bir domain girin." autocapitalize="none" autocomplete="off" spellcheck="false"
         inputmode="none" readonly>
        <label for="inputTransferDomain" class="ixir-dc-label">Transfer etmek istediğiniz <span
          lang="en">domain</span>'i yazınız. Örneğin: <span class="ixir-dc-domain-sample">ixirhost.com</span></label>
       </div>
      </div>
      <div class="ixir-domain-checker">
       <div class="ixir-dc-input ixir-dc-float">
        <span class="ixir-dc-icon" aria-hidden="true"><i class="fas fa-key"></i></span>
        <input type="text" name="epp" class="form-control no-icheck ixir-transfer-input" id="inputAuthCode"
         placeholder=" " data-placeholder="Epp Code / Auth Code"
         data-placeholder-error="Lütfen EPP / Auth kodunu girin." autocapitalize="none" autocomplete="off"
         spellcheck="false" inputmode="none" readonly>
        <label for="inputAuthCode" class="ixir-dc-label">Epp Code / Auth Code</label>
       </div>
       <div class="ixir-dc-button">
        <button type="submit" id="btnTransferDomain" class="btn btn-primary btn-block">
         <span class="loader w-hidden" id="addTransferLoader">
          <i class="fas fa-fw fa-spinner fa-spin"></i>
         </span>
         <span id="addToCart">Transferi Başlat</span>
        </button>
       </div>
      </div>
      <div id="transferUnavailable" class="ixir-transfer-alert alert alert-warning slim-alert text-center w-hidden">
      </div>
     </form>
     {include file="$template/components/domain/no-autofocus/no-autofocus.tpl"}
     {include file="$template/components/domain/float-label/float-label.tpl"}

      {assign var="otherServices" value=[
       ['label' => 'Domain Sorgulama',       'icon' => 'fas fa-retweet',         'href' => 'domain-sorgu'],
       ['label' => 'Whois Sorgulama',        'icon' => 'far fa-eye',             'href' => 'whois-sorgulama'],
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