{assign var="ixirPanelName" value=$clientsdetails.firstname|cat:" "|cat:$clientsdetails.lastname|trim}
{if $ixirPanelName == ""}
 {assign var="ixirPanelName" value=$ixirFirstName|cat:" "|cat:$ixirLastName|trim}
{/if}
{if $ixirPanelName == ""}
 {assign var="ixirPanelName" value="Müşteri"}
{/if}
{if !$ixirPanelTab}
 {assign var="ixirPanelTab" value="overview"}
{/if}
{assign var="ixpHome" value="{$WEB_ROOT}/musteri-paneli#genel-bakis"}
{assign var="ixpServices" value="{$WEB_ROOT}/clientarea.php?action=services"}
{assign var="ixpDomains" value="{$WEB_ROOT}/clientarea.php?action=domains"}
{assign var="ixpInvoices" value="{$WEB_ROOT}/clientarea.php?action=invoices"}
{assign var="ixpTickets" value="{$WEB_ROOT}/supporttickets.php"}
{assign var="ixpKnowledge" value="{$WEB_ROOT}/knowledgebase.php"}
{assign var="ixpAffiliates" value="{$WEB_ROOT}/affiliates.php"}

<section class="ixp-hero" style="--ixp-hero-image: url('{$WEB_ROOT}/templates/{$template}/img/hero-bg.jpg');">
 <div class="ixp-hero-art" aria-hidden="true">
  <svg viewBox="0 0 520 320" fill="none">
   <path d="M40 20c70 30 90 90 40 150s-20 110 70 140" stroke="rgba(255,255,255,.22)" stroke-width="1.4" />
   <path d="M90 10c80 40 100 100 30 160s10 100 80 130" stroke="rgba(158,192,255,.35)" stroke-width="1.4" />
   <path d="M150 30c60 36 70 86 20 140s20 80 90 110" stroke="rgba(255,255,255,.14)" stroke-width="1.2" />
   <circle cx="168" cy="168" r="46" stroke="rgba(255,255,255,.12)" stroke-width="1.2" />
   <circle cx="168" cy="168" r="78" stroke="rgba(125,168,255,.16)" stroke-width="1.2" />
  </svg>
 </div>
 <div class="ixp-wrap ixp-hero-copy">
  <p class="ixp-kicker">Merhaba,</p>
  <h1>{$ixirPanelName|escape}</h1>
  <div class="ixp-hello-links">
   <a href="{$WEB_ROOT}/hesap/profil">
    <i class="fas fa-user" aria-hidden="true"></i>
    Üyelik Bilgilerim
   </a>
   <a href="{$WEB_ROOT}/hesap/sifre">
    <i class="fas fa-key" aria-hidden="true"></i>
    Şifre Değiştir
   </a>
   <a href="{$WEB_ROOT}/cikis">
    <i class="fas fa-sign-out-alt" aria-hidden="true"></i>
    Çıkış
   </a>
  </div>
 </div>
</section>

<div class="ixp-sheet">
 <div class="ixp-wrap">
  <div class="ixp-stats">
   <a class="ixp-stat" href="{$ixpServices}">
    <span class="ixp-stat-top">
     <span class="ixp-stat-label">Hizmetler</span>
     <span class="ixp-stat-icon is-blue"><i class="fas fa-cube" aria-hidden="true"></i></span>
    </span>
    <strong>{if $clientsstats.productsnumactive != ""}{$clientsstats.productsnumactive}{else}0{/if}</strong>
   </a>
   <a class="ixp-stat" href="{$ixpDomains}">
    <span class="ixp-stat-top">
     <span class="ixp-stat-label">Alan Adı</span>
     <span class="ixp-stat-icon is-sky"><i class="fas fa-globe" aria-hidden="true"></i></span>
    </span>
    <strong>{if $clientsstats.numactivedomains != ""}{$clientsstats.numactivedomains}{else}0{/if}</strong>
   </a>
   <a class="ixp-stat" href="{$ixpTickets}">
    <span class="ixp-stat-top">
     <span class="ixp-stat-label">Destek Bildirimleri</span>
     <span class="ixp-stat-icon is-rose"><i class="fas fa-comments" aria-hidden="true"></i></span>
    </span>
    <strong>{if $clientsstats.numactivetickets != ""}{$clientsstats.numactivetickets}{else}0{/if}</strong>
   </a>
   <a class="ixp-stat" href="{$ixpInvoices}">
    <span class="ixp-stat-top">
     <span class="ixp-stat-label">Faturalar</span>
     <span class="ixp-stat-icon is-amber"><i class="fas fa-credit-card" aria-hidden="true"></i></span>
    </span>
    <strong>{if $clientsstats.numdueinvoices != ""}{$clientsstats.numdueinvoices}{elseif $clientsstats.numunpaidinvoices != ""}{$clientsstats.numunpaidinvoices}{else}0{/if}</strong>
   </a>
  </div>

  <nav class="ixp-tabs" aria-label="Müşteri paneli">
   <a class="ixp-tab{if $ixirPanelTab == 'overview'} is-active{/if}" href="{$ixpHome}" {if $ixirPanelTab == 'overview'}
    aria-current="page" {/if}>
    <i class="fas fa-th-large" aria-hidden="true"></i>
    <span>Genel Bakış</span>
   </a>
   <a class="ixp-tab{if $ixirPanelTab == 'services'} is-active{/if}" href="{$ixpServices}"
    {if $ixirPanelTab == 'services'} aria-current="page" {/if}>
    <i class="fas fa-server" aria-hidden="true"></i>
    <span>Hizmetlerim</span>
   </a>
   <div class="ixp-tab-drop{if $ixirPanelTab == 'domains'} is-active{/if}">
    <a class="ixp-tab{if $ixirPanelTab == 'domains'} is-active{/if}" href="{$ixpDomains}"
     {if $ixirPanelTab == 'domains'} aria-current="page" {/if} aria-haspopup="true">
     <i class="fas fa-globe" aria-hidden="true"></i>
     <span>Alan Adlarım</span>
    </a>
    <div class="ixp-tab-menu" role="menu">
     <a href="{$ixpDomains}" {if $ixirPanelTab == 'domains'} class="is-current" {/if}>Alan Adlarım</a>
     <a href="{$WEB_ROOT}/sepet/domain/renew">Alan Adı Yenileme</a>
     <a href="{$WEB_ROOT}/domain-sorgu">Yeni Alan Adı Kayıt</a>
     <a href="{$WEB_ROOT}/domain-transfer">Alan Adı Transfer</a>
     <a href="{$WEB_ROOT}/whois-sorgulama">Whois Sorgulama</a>
    </div>
   </div>
   <a class="ixp-tab{if $ixirPanelTab == 'billing'} is-active{/if}" href="{$ixpInvoices}"
    {if $ixirPanelTab == 'billing'} aria-current="page" {/if}>
    <i class="fas fa-file-invoice" aria-hidden="true"></i>
    <span>Muhasebe</span>
   </a>
   <a class="ixp-tab{if $ixirPanelTab == 'support'} is-active{/if}" href="{$ixpTickets}" {if $ixirPanelTab == 'support'}
    aria-current="page" {/if}>
    <i class="fas fa-headset" aria-hidden="true"></i>
    <span>Destek</span>
   </a>
   <a class="ixp-tab{if $ixirPanelTab == 'knowledge'} is-active{/if}" href="{$ixpKnowledge}"
    {if $ixirPanelTab == 'knowledge'} aria-current="page" {/if}>
    <i class="fas fa-bell" aria-hidden="true"></i>
    <span>Bilgi Merkezi</span>
   </a>
   <a class="ixp-tab{if $ixirPanelTab == 'affiliates'} is-active{/if}" href="{$ixpAffiliates}"
    {if $ixirPanelTab == 'affiliates'} aria-current="page" {/if}>
    <i class="fas fa-chart-bar" aria-hidden="true"></i>
    <span>Satış Ortaklığı</span>
   </a>
  </nav>
  <script>
   {literal}
    (function() {
     var drops = document.querySelectorAll('.ixp-tab-drop');
     drops.forEach(function(drop) {
      var link = drop.querySelector('.ixp-tab');
      if (!link) return;
      link.addEventListener('click', function(e) {
       if (!window.matchMedia('(hover: none)').matches) return;
       if (drop.classList.contains('is-open')) return;
       e.preventDefault();
       drops.forEach(function(other) { other.classList.remove('is-open'); });
       drop.classList.add('is-open');
      });
     });
     document.addEventListener('click', function(e) {
      if (e.target.closest && e.target.closest('.ixp-tab-drop')) return;
      drops.forEach(function(drop) { drop.classList.remove('is-open'); });
     });
    })();
   {/literal}
</script>