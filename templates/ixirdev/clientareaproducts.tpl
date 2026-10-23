<link rel="stylesheet" type="text/css" href="{$BASE_PATH_CSS}/dataTables.bootstrap.css">
<script type="text/javascript" charset="utf8" src="{$BASE_PATH_JS}/jquery.dataTables.min.js"></script>
<script type="text/javascript" charset="utf8" src="{$BASE_PATH_JS}/dataTables.bootstrap.min.js"></script>

<div class="ixp ixp-services-page" id="hizmetlerim">
 {include file="$template/components/clientarea/shell.tpl" ixirPanelTab="services"}

 <div class="ixp-main ixp-services">
  <section class="ixp-card" aria-label="Ürün ve hizmetler">
   <div class="ixp-card-head">
    <h2><i class="fas fa-list" aria-hidden="true"></i> Ürün ve Hizmetlerim</h2>
   </div>
   <div class="ixp-svc-table-wrap">
    <table id="tableServicesList" class="ixp-svc-table">
     <thead>
      <tr>
       <th>Ürün / Hizmet</th>
       <th>Tutar</th>
       <th>Sonraki Son Ödeme Tarihi</th>
       <th>Durum</th>
       <th>Yönetim</th>
      </tr>
     </thead>
     <tbody>
      {foreach $services as $service}
       {assign var="ixirSvcGroup" value=""}
       {if $service.groupname}
        {assign var="ixirSvcGroup" value=$service.groupname}
       {elseif $service.group}
        {assign var="ixirSvcGroup" value=$service.group}
       {elseif $service.productgroup}
        {assign var="ixirSvcGroup" value=$service.productgroup}
       {/if}
       <tr>
        <td>
         <div class="ixp-svc">
          <span class="ixp-svc-mark{if $service.isActive === false} is-off{/if}" aria-hidden="true"><i
            class="fas fa-server"></i></span>
          <span class="ixp-svc-copy">
           <strong>{$service.product|escape}</strong>
           {if $ixirSvcGroup}<small>{$ixirSvcGroup|escape}</small>{/if}
           {if $service.domain}<a href="http://{$service.domain|escape:'url'}" target="_blank"
            rel="noopener">{$service.domain|escape}</a>{/if}
          </span>
         </div>
        </td>
        <td data-order="{$service.amountnum}">
         <span class="ixp-svc-amount">{$service.amount}</span>
         <span class="ixp-svc-cycle">{$service.billingcycle|escape}</span>
        </td>
        <td data-order="{if $service.normalisedNextDueDate}{$service.normalisedNextDueDate|escape}{else}0{/if}">
         <span class="ixp-svc-date">
          <i class="far fa-calendar-alt" aria-hidden="true"></i>
          {if $service.nextduedate && $service.nextduedate != '-'}{$service.nextduedate|escape}{else}-{/if}
         </span>
        </td>
        <td>
         <span class="ixp-svc-status is-{$service.status|lower|escape}">{$service.statustext|escape}</span>
        </td>
        <td>
         <a class="ixp-btn ixp-btn--blue ixp-svc-manage"
          href="{$WEB_ROOT}/clientarea.php?action=productdetails&amp;id={$service.id}">
          <i class="fas fa-cog" aria-hidden="true"></i> Yönet
         </a>
        </td>
       </tr>
      {/foreach}
     </tbody>
    </table>
   </div>
  </section>

  <section class="ixp-continuity">
   <div>
    <h2>İş Sürekliliğinizi Garanti Altına Alın</h2>
    <p>Size Özel Sunucu Yönetim, Yedekleme, Felaket Kurtarma ve Yüksek Erişilebilirlik çözümlerimizle işletmenizin
     kesintisiz çalışmasını sağlayın. 7/24 izleme ve destek ile veri kaybı riskini ortadan kaldırın.</p>
   </div>
   <a class="ixp-btn ixp-btn--light" href="{$WEB_ROOT}/server-servisleri">Şimdi Keşfedin</a>
  </section>

  <section class="ixp-upsell" aria-label="Hizmetlerinizi tamamlayabilecek ürünler">
   <h2><i class="fas fa-lightbulb" aria-hidden="true"></i> Hizmetlerinizi Tamamlayabilecek Ürünler</h2>
   <div class="ixp-upsell-track">
    <article class="ixp-upsell-card">
     <span class="ixp-upsell-icon is-teal"><i class="fas fa-shield-alt" aria-hidden="true"></i></span>
     <h3>Positive SSL Sertifikası</h3>
     <p>Web sitenizi güvenle koruyun, müşteri güvenini artırın ve arama motorlarında daha iyi sıralama elde edin.</p>
     <strong class="ixp-upsell-price">249₺ <span>/ yıllık</span></strong>
     <a class="ixp-btn ixp-btn--soft" href="{$WEB_ROOT}/ssl-sertifikalari">Satın Al</a>
    </article>
    <article class="ixp-upsell-card">
     <span class="ixp-upsell-icon is-red"><i class="fas fa-envelope" aria-hidden="true"></i></span>
     <h3>Kurumsal E-posta</h3>
     <p>Profesyonel e-posta adresleriyle kurumsal kimliğinizi güçlendirin. Spam koruması ve mobil erişim dahil.</p>
     <strong class="ixp-upsell-price">577,15₺ <span>/ aylık</span></strong>
     <a class="ixp-btn ixp-btn--soft" href="{$WEB_ROOT}/kurumsal-mail-hosting">Satın Al</a>
    </article>
    <article class="ixp-upsell-card">
     <span class="ixp-upsell-icon is-orange"><i class="fas fa-shield-alt" aria-hidden="true"></i></span>
     <h3>Anti-Spam &amp; Anti-Virüs</h3>
     <p>Yapay zeka destekli anti-spam ve anti-virüs koruması ile maillerinizi risklerden koruyun.</p>
     <strong class="ixp-upsell-price">162,87₺ <span>/ aylık</span></strong>
     <a class="ixp-btn ixp-btn--soft" href="{$WEB_ROOT}/antispam">Satın Al</a>
    </article>
    <article class="ixp-upsell-card">
     <span class="ixp-upsell-icon is-green"><i class="fas fa-paper-plane" aria-hidden="true"></i></span>
     <h3>Outbound &amp; Smarthost</h3>
     <p>Sunucularınızdan gönderdiğiniz maillere değer katalım, yüksek inbox garantisi, yüksek reputasyon ile mail
      trafiğinizi koruyalım.</p>
     <strong class="ixp-upsell-price">814,92₺ <span>/ aylık</span></strong>
     <a class="ixp-btn ixp-btn--soft" href="{$WEB_ROOT}/outbound-mail-gateway">Satın Al</a>
    </article>
    <article class="ixp-upsell-card">
     <span class="ixp-upsell-icon is-purple"><i class="fas fa-globe" aria-hidden="true"></i></span>
     <h3>3 Adımda Sitenizi Yapın</h3>
     <p>Hiçbir tasarım ve kodlama bilgisine gerek olmadan sürükle bırak ile 3 adımda kolayca web sitenizi yapın ve
      yayınlayın!</p>
     <strong class="ixp-upsell-price">65,03₺ <span>/ aylık</span></strong>
     <a class="ixp-btn ixp-btn--soft" href="{$WEB_ROOT}/site-pratik">Satın Al</a>
    </article>
   </div>
   <div class="ixp-upsell-servers">
    <article class="ixp-upsell-card">
     <span class="ixp-upsell-icon is-line"><i class="fas fa-cloud" aria-hidden="true"></i></span>
     <h3>Bulut Sunucu</h3>
     <p>60 saniyede hemen bulut sunucunuzu kullanmaya başlayın, üstelik ücretsiz control paneli seçenekleriyle.</p>
     <strong class="ixp-upsell-price">171₺ <span>/ aylık</span></strong>
     <a class="ixp-btn ixp-btn--soft" href="{$WEB_ROOT}/cloud-server">Satın Al</a>
    </article>
    <article class="ixp-upsell-card">
     <span class="ixp-upsell-icon is-line"><i class="fas fa-server" aria-hidden="true"></i></span>
     <h3>Dedicated Server</h3>
     <p>Güçlü altyapı, yüksek uptime ve geniş sunucu modelleriyle bugün sunucunuzu kiralayın!</p>
     <strong class="ixp-upsell-price">2723₺ <span>/ aylık</span></strong>
     <a class="ixp-btn ixp-btn--soft" href="{$WEB_ROOT}/dedicated-server">Satın Al</a>
    </article>
    <article class="ixp-upsell-card">
     <span class="ixp-upsell-icon is-line"><i class="fas fa-sitemap" aria-hidden="true"></i></span>
     <h3>Co-Location</h3>
     <p>Sunucunuzu barındıralım, operatör yedekli erişim, %99.9'a varan uptime, Tier III tasarım ile kesintisiz kolaylık
      sağlayalım.</p>
     <strong class="ixp-upsell-price">3999₺ <span>/ aylık</span></strong>
     <a class="ixp-btn ixp-btn--soft" href="{$WEB_ROOT}/colocation">Satın Al</a>
    </article>
   </div>
  </section>
 </div>
</div>
</div>
</div>

<script>
 {literal}
 jQuery(function() {
  var table = jQuery('#tableServicesList');
  if (!table.length || !jQuery.fn.DataTable || jQuery.fn.DataTable.isDataTable(table)) return;
  table.DataTable({
   dom: '<"ixp-svc-tools"lf>t<"ixp-svc-foot"ip>',
   responsive: false,
   autoWidth: false,
   stateSave: false,
   pageLength: 10,
   order: [],
   columnDefs: [{ orderable: false, targets: 4 }],
   language: {
    emptyTable: 'Kayıtlı ürün veya hizmet bulunmuyor.',
    info: 'Toplam _TOTAL_ kayıt',
    infoEmpty: 'Toplam 0 kayıt',
    infoFiltered: '(_MAX_ kayıt içinden)',
    lengthMenu: '_MENU_ kayıt göster',
    search: 'Ara:',
    zeroRecords: 'Eşleşen kayıt bulunamadı.',
    paginate: { previous: 'Geri', next: 'İleri' }
    }
   });
  });
 {/literal}
</script>