<section class="ixir-as-details ixir-ss-details bg-light-blue ixir-slide ixir-slide--right is-slide-on" aria-labelledby="ixir-as-details-title">
 <div class="container">
  <header class="ixir-as-details-head ixir-ss-details-head">
   {include file="$template/components/Heading.tpl" title="AntiSpam Hizmeti Kimler Kullanmalıdır?" id="ixir-as-details-title"}
  </header>

  <div class="ixir-as-tab-container ixir-ss-tab-container">
   <div class="ixir-as-tab-nav-wrapper ixir-ss-tab-nav-wrapper">
    <div class="ixir-as-tab-nav ixir-ss-tab-nav" role="tablist" aria-label="AntiSpam Hedef Kitle">
     <button type="button" class="ixir-as-tab-btn ixir-ss-tab-btn is-active" role="tab" aria-selected="true" aria-controls="ixir-as-pane-1" id="ixir-as-tab-1" data-tab-target="1">
      <i class="fas fa-shopping-cart" aria-hidden="true"></i>
      <span>KOBİ ve E-Ticaret Şirketleri</span>
     </button>
     <button type="button" class="ixir-as-tab-btn ixir-ss-tab-btn" role="tab" aria-selected="false" aria-controls="ixir-as-pane-2" id="ixir-as-tab-2" data-tab-target="2">
      <i class="fas fa-balance-scale" aria-hidden="true"></i>
      <span>Finans, Muhasebe ve Hukuk Büroları</span>
     </button>
     <button type="button" class="ixir-as-tab-btn ixir-ss-tab-btn" role="tab" aria-selected="false" aria-controls="ixir-as-pane-3" id="ixir-as-tab-3" data-tab-target="3">
      <i class="fas fa-building" aria-hidden="true"></i>
      <span>Kurumsal Şirketler ve Holdingler</span>
     </button>
    </div>
   </div>
   <div class="ixir-as-tab-content ixir-ss-tab-content">
    <div class="ixir-as-pane ixir-ss-pane is-active" role="tabpanel" id="ixir-as-pane-1" aria-labelledby="ixir-as-tab-1">
     <div class="ixir-as-pane-card ixir-ss-pane-card">
      <div class="ixir-as-pane-icon ixir-ss-pane-icon">
       <i class="fas fa-shopping-cart" aria-hidden="true"></i>
      </div>
      <h3 class="ixir-as-pane-title ixir-ss-pane-title">KOBİ ve E-Ticaret Şirketleri</h3>
      <p class="ixir-as-pane-desc ixir-ss-pane-desc">Müşteri talepleri, sipariş bildirimleri ve tedarikçi yazışmaları kritik iş akışlarının parçasıdır. AntiSpam hizmeti, bu e-postaları spam gürültüsünden arındırır; önemli bir maili kaçırma riskini ortadan kaldırır ve çalışan verimliliğini doğrudan artırır.</p>
     </div>
    </div>
    <div class="ixir-as-pane ixir-ss-pane" role="tabpanel" id="ixir-as-pane-2" aria-labelledby="ixir-as-tab-2" hidden>
     <div class="ixir-as-pane-card ixir-ss-pane-card">
      <div class="ixir-as-pane-icon ixir-ss-pane-icon">
       <i class="fas fa-balance-scale" aria-hidden="true"></i>
      </div>
      <h3 class="ixir-as-pane-title ixir-ss-pane-title">Finans, Muhasebe ve Hukuk Büroları</h3>
      <p class="ixir-as-pane-desc ixir-ss-pane-desc">Hassas finansal belgeler ve gizli müvekkil yazışmaları, phishing ve sosyal mühendislik saldırılarının birincil hedefidir. İXİRHOST AntiSpam, sahte fatura, banka kimlik avı ve hedefli saldırıları %99.8 oranında engeller; kurumsal itibarınızı ve veri güvenliğinizi korur.</p>
     </div>
    </div>
    <div class="ixir-as-pane ixir-ss-pane" role="tabpanel" id="ixir-as-pane-3" aria-labelledby="ixir-as-tab-3" hidden>
     <div class="ixir-as-pane-card ixir-ss-pane-card">
      <div class="ixir-as-pane-icon ixir-ss-pane-icon">
       <i class="fas fa-building" aria-hidden="true"></i>
      </div>
      <h3 class="ixir-as-pane-title ixir-ss-pane-title">Kurumsal Şirketler ve Holdingler</h3>
      <p class="ixir-as-pane-desc ixir-ss-pane-desc">Yüzlerce çalışana sahip büyük yapılarda tek bir tehdit yüklü e-posta tüm ağı etkileyebilir. İXİRHOST AntiSpam, mevcut mail altyapınızın önüne MX kaydıyla kolayca entegre olur; kurumsal mail sunucunuzu değiştirmenize gerek kalmadan tüm gelen trafiği filtreler ve KVKK uyumluluğunu sağlar.</p>
     </div>
    </div>
   </div>
  </div>

 {literal}
 <script>
  (function() {
    var section = document.querySelector('.ixir-as-details, .ixir-ss-details');
    if (!section) return;

    var tabs = section.querySelectorAll('.ixir-as-tab-btn, .ixir-ss-tab-btn');
    var panes = section.querySelectorAll('.ixir-as-pane, .ixir-ss-pane');

    tabs.forEach(function(btn) {
      btn.addEventListener('click', function() {
        var targetId = btn.getAttribute('data-tab-target');
        if (!targetId) return;

        tabs.forEach(function(t) {
          t.classList.remove('is-active');
          t.setAttribute('aria-selected', 'false');
        });

        panes.forEach(function(p) {
          p.classList.remove('is-active');
          p.setAttribute('hidden', '');
        });

        btn.classList.add('is-active');
        btn.setAttribute('aria-selected', 'true');

        var activePane = section.querySelector('#ixir-as-pane-' + targetId) || section.querySelector('#ixir-ss-pane-' + targetId);
        if (activePane) {
          activePane.removeAttribute('hidden');
          void activePane.offsetWidth;
          activePane.classList.add('is-active');
        }
      });
    });
  })();
 </script>
 {/literal}
</section>
