  <section id="home-banner" class="ixir-hero" aria-label="Domain Sorgulama">
   <picture class="ixir-hero-photo">
    <source srcset="{$WEB_ROOT}/templates/{$template}/img/hero-domain-sorgu.webp?v=r1" type="image/webp">
    <img src="{$WEB_ROOT}/templates/{$template}/img/hero-domain-sorgu.jpg?v=r1" alt="Domain Sorgulama">
   </picture>
   <div class="container">
    <div class="ixir-hero-main">
     <div class="ixir-hero-copy">
      <div class="ixir-badge-pill ixir-ssl-badge-pill"><i class="fas fa-search" aria-hidden="true"></i> DOMAIN SORGULA</div>
      <h1>Mükemmel Bir Domain İle Başlayın!</h1>
      <p>{if $ixirDomainFromPrice}{$ixirDomainFromPrice}'den başlayan fiyatlarla mükemmel bir domain'e sahip olun!{else}Mükemmel bir domain'e sahip olun!{/if}</p>
     </div>
     <form method="post" action="{$WEB_ROOT}/cart.php" id="frmDomainChecker" novalidate>
      <input type="hidden" name="a" value="checkDomain" class="no-icheck">
      <input type="hidden" name="token" value="{$token}" class="no-icheck">
      <div class="ixir-domain-checker">
       <div class="ixir-dc-input ixir-dc-float">
        <span class="ixir-dc-icon" aria-hidden="true"><i class="fas fa-globe"></i></span>
        <input type="text" name="domain" class="form-control no-icheck" placeholder=" " value="{$lookupTerm}"
         id="inputDomain" data-placeholder="Sorgulamak istediğiniz domain'i yazınız. Örneğin: ixirhost.com"
         data-placeholder-sm="Sorgulamak istediğiniz domain'i yazınız."
         data-placeholder-error="Lütfen bir domain girin." autocapitalize="none" autocomplete="off" inputmode="none"
         readonly />
        <label for="inputDomain" class="ixir-dc-label">Sorgulamak istediğiniz <span lang="en">domain</span>'i
         yazınız. Örneğin: <span class="ixir-dc-domain-sample">ixirhost.com</span></label>
        <script>
         (function() {
          var input = document.getElementById('inputDomain');
          if (!input) {
           return;
          }
          var phone = window.matchMedia('(max-width: 992px)').matches ||
           window.matchMedia('(pointer: coarse)').matches ||
           window.matchMedia('(hover: none)').matches;
          if (!phone) {
           input.removeAttribute('readonly');
           input.removeAttribute('inputmode');
           return;
          }
          var nativeFocus = HTMLElement.prototype.focus;
          input.focus = function() {};
          window.ixirArmDomainInput = function() {
           input.removeAttribute('readonly');
           input.removeAttribute('inputmode');
           input.focus = function() {
            nativeFocus.call(input);
           };
          };

          function openFromTouch() {
           window.ixirArmDomainInput();
           nativeFocus.call(input);
          }
          input.addEventListener('touchend', openFromTouch);
          input.addEventListener('pointerup', function(e) {
           if (!e.pointerType || e.pointerType === 'touch' || e.pointerType === 'pen') {
            openFromTouch();
           }
          });
         })();
        </script>
       </div>
       <div class="ixir-dc-button">
        <button type="submit" id="btnCheckAvailability" class="btn btn-primary btn-block search">
         <i class="fas fa-search" aria-hidden="true"></i> Sorgula
        </button>
       </div>
      </div>
     </form>
     {include file="$template/components/domain/no-autofocus/no-autofocus.tpl"}
     {include file="$template/components/domain/float-label/float-label.tpl"}
     {assign var="otherServices" value=[
       ['label' => 'Domain Transfer',        'icon' => 'fas fa-retweet',         'href' => 'domain-transfer'],
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