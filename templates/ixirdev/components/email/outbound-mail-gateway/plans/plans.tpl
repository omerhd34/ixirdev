<section class="ixir-wh-plans ixir-slide ixir-slide--right is-slide-on" id="ixir-wh-plans" aria-labelledby="ixir-wh-plans-title">
  <script>
    {literal}
      (function() {
        var root = document.getElementById('ixir-wh-plans');
        if (!root || !window.IntersectionObserver) return;
        if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
        if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
        root.classList.add('is-armed');
      })();
    {/literal}
  </script>
  <div class="container">
    <header class="ixir-wh-plans-head">
      {include file="$template/components/Heading.tpl" title="Outbound Mail Gateway (SmartHost) Paketleri" id="ixir-wh-plans-title"}
      <p>İşletmenizin e-posta gönderim hacmine uygun planı seçin; mailleriniz spam'e düşmeden alıcılarına güvenle ulaşsın.</p>
    </header>
    <div class="ixir-wh-grid ixir-wh-grid--3">
      <article class="ixir-wh-plan">
        <header class="ixir-wh-plan-head">
          <h3>BUDGET</h3>
          <p>Bireysel ve küçük ölçekli gönderimler için ideal outbound çözümü</p>
        </header>
        <div class="ixir-wh-price">
          <s>1345,42 TL</s>
          <div class="ixir-wh-amount"><b>1034</b><span>,94</span><small>TL<small>/ay</small></small></div>
          <span class="ixir-wh-save">%30 tasarruf</span>
        </div>
        <div class="ixir-wh-billing">
          <button type="button" class="ixir-wh-billing-btn" aria-expanded="false" aria-controls="ixir-wh-bill-budget">Ödeme Planları</button>
          <div class="ixir-wh-billing-pop" id="ixir-wh-bill-budget" role="dialog" aria-label="Budget ödeme planı">
            <div class="ixir-wh-billing-top">
              <strong>Budget Plan</strong>
              <button type="button" class="ixir-wh-billing-close" aria-label="Kapat">&times;</button>
            </div>
            <table>
              <thead>
                <tr>
                  <th>Periyot</th>
                  <th>Aylık</th>
                  <th>Toplam</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1 Aylık</td>
                  <td>1129 TL</td>
                  <td>13.548 TL</td>
                </tr>
                <tr class="is-best">
                  <td>1 Yıllık</td>
                  <td>1034,94 TL</td>
                  <td>12.419,30 TL</td>
                </tr>
              </tbody>
            </table>
            <p>* En avantajlı fiyat</p>
          </div>
        </div>
        <a class="ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
        <ul class="ixir-wh-specs">
          <li><span>Aylık Maksimum Mail Çıkışı</span><b>10.000</b></li>
          <li><span>Öncelikli Destek</span><b>Yok</b></li>
        </ul>
      </article>

      <article class="ixir-wh-plan ixir-wh-plan--best">
        <span class="ixir-wh-badge">En İyi Tercih</span>
        <header class="ixir-wh-plan-head">
          <h3>ECONOMY</h3>
          <p>KOBİ'ler ve düzenli kurumsal mail gönderimi yapan şirketler için optimize edilmiş paket</p>
        </header>
        <div class="ixir-wh-price">
          <s>6.277 TL</s>
          <div class="ixir-wh-amount"><b>4829</b><span>,20</span><small>TL<small>/ay</small></small></div>
          <span class="ixir-wh-save">%30 tasarruf</span>
        </div>
        <div class="ixir-wh-billing">
          <button type="button" class="ixir-wh-billing-btn" aria-expanded="false" aria-controls="ixir-wh-bill-economy">Ödeme Planları</button>
          <div class="ixir-wh-billing-pop" id="ixir-wh-bill-economy" role="dialog" aria-label="Economy ödeme planı">
            <div class="ixir-wh-billing-top">
              <strong>Economy Plan</strong>
              <button type="button" class="ixir-wh-billing-close" aria-label="Kapat">&times;</button>
            </div>
            <table>
              <thead>
                <tr>
                  <th>Periyot</th>
                  <th>Aylık</th>
                  <th>Toplam</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1 Aylık</td>
                  <td>5268,20 TL</td>
                  <td>63.218,40 TL</td>
                </tr>
                <tr class="is-best">
                  <td>1 Yıllık</td>
                  <td>4829,20 TL</td>
                  <td>57.950,40 TL</td>
                </tr>
              </tbody>
            </table>
            <p>* En avantajlı fiyat</p>
          </div>
        </div>
        <a class="ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
        <ul class="ixir-wh-specs">
          <li><span>Aylık Maksimum Mail Çıkışı</span><b>50000</b></li>
          <li><span>Öncelikli Destek</span><b>Var</b></li>
        </ul>
      </article>

      <article class="ixir-wh-plan">
        <header class="ixir-wh-plan-head">
          <h3>PROFESSIONAL</h3>
          <p>Yüksek hacimli kurumsal gönderimler ve e-ticaret altyapıları için</p>
        </header>
        <div class="ixir-wh-price">
          <s>11.658 TL</s>
          <div class="ixir-wh-amount"><b>8968</b><span>,38</span><small>TL<small>/ay</small></small></div>
          <span class="ixir-wh-save">%30 tasarruf</span>
        </div>
        <div class="ixir-wh-billing">
          <button type="button" class="ixir-wh-billing-btn" aria-expanded="false" aria-controls="ixir-wh-bill-professional">Ödeme Planları</button>
          <div class="ixir-wh-billing-pop" id="ixir-wh-bill-professional" role="dialog" aria-label="Professional ödeme planı">
            <div class="ixir-wh-billing-top">
              <strong>Professional Plan</strong>
              <button type="button" class="ixir-wh-billing-close" aria-label="Kapat">&times;</button>
            </div>
            <table>
              <thead>
                <tr>
                  <th>Periyot</th>
                  <th>Aylık</th>
                  <th>Toplam</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1 Aylık</td>
                  <td>9811 TL</td>
                  <td>117.732 TL</td>
                </tr>
                <tr class="is-best">
                  <td>1 Yıllık</td>
                  <td>8968,38 TL</td>
                  <td>107.620,60 TL</td>
                </tr>
              </tbody>
            </table>
            <p>* En avantajlı fiyat</p>
          </div>
        </div>
        <a class="ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
        <ul class="ixir-wh-specs">
          <li><span>Aylık Maksimum Mail Çıkışı</span><b>100000</b></li>
          <li><span>Öncelikli Destek</span><b>Var</b></li>
        </ul>
      </article>
    </div>

    <div class="ixir-as-shared-box ixir-wh-shared-box">
      <div class="ixir-as-shared-head ixir-wh-shared-head">
        <p class="ixir-as-shared-label ixir-wh-shared-label">Tüm paketlerde ortak bulunan özellikler</p>
        <span>Hangi paketi seçerseniz seçin, aşağıdaki özelliklerin tamamı dahildir.</span>
      </div>
      <ul class="ixir-as-shared ixir-wh-shared">
        <li><i class="fas fa-server" aria-hidden="true"></i>1 IP/Sunucu SmartHost</li>
        <li><i class="fas fa-brain" aria-hidden="true"></i>Kendi Öğrenen Sistem</li>
        <li><i class="fas fa-mail-bulk" aria-hidden="true"></i>Aylık Birçok Mail Çıkışı</li>
        <li><i class="fas fa-filter" aria-hidden="true"></i>%99.8 Filtreleme</li>
        <li><i class="fas fa-paper-plane" aria-hidden="true"></i>Giden E-posta Koruması</li>
        <li><i class="fas fa-shield-alt" aria-hidden="true"></i>Giden Antivirüs Koruması</li>
        <li><i class="fas fa-award" aria-hidden="true"></i>Yüksek Reputation</li>
        <li><i class="fas fa-tachometer-alt" aria-hidden="true"></i>Yüksek SenderScore</li>
      </ul>
    </div>
  </div>

  <script>
    {literal}
      (function() {
        function initBilling() {
          var root = document.getElementById('ixir-wh-plans') || document.querySelector('.ixir-wh-plans');
          if (!root) return;
          var items = root.querySelectorAll('.ixir-wh-billing');

          function closeAll(except) {
            Array.prototype.forEach.call(items, function(item) {
              if (item === except) return;
              item.classList.remove('is-open');
              var plan = item.closest ? item.closest('.ixir-wh-plan') : null;
              if (plan) plan.classList.remove('is-billing-open');
              var btn = item.querySelector('.ixir-wh-billing-btn');
              if (btn) btn.setAttribute('aria-expanded', 'false');
            });
          }

          Array.prototype.forEach.call(items, function(item) {
            if (item.dataset && item.dataset.billingInit) return;
            if (item.dataset) item.dataset.billingInit = '1';

            var btn = item.querySelector('.ixir-wh-billing-btn');
            var closeBtn = item.querySelector('.ixir-wh-billing-close');
            var pop = item.querySelector('.ixir-wh-billing-pop');
            var plan = item.closest ? item.closest('.ixir-wh-plan') : null;
            if (!btn) return;

            btn.addEventListener('click', function(event) {
              event.stopPropagation();
              var open = item.classList.contains('is-open');
              closeAll(open ? null : item);
              var willOpen = !open;
              item.classList.toggle('is-open', willOpen);
              if (plan) plan.classList.toggle('is-billing-open', willOpen);
              btn.setAttribute('aria-expanded', willOpen ? 'true' : 'false');
            });

            if (closeBtn) {
              closeBtn.addEventListener('click', function(event) {
                event.stopPropagation();
                item.classList.remove('is-open');
                if (plan) plan.classList.remove('is-billing-open');
                btn.setAttribute('aria-expanded', 'false');
                btn.focus();
              });
            }

            if (pop) {
              pop.addEventListener('click', function(event) {
                event.stopPropagation();
              });
            }
          });

          if (!window._ixirBillingGlobalInit) {
            window._ixirBillingGlobalInit = true;
            document.addEventListener('click', function() {
              closeAll(null);
            });

            document.addEventListener('keydown', function(event) {
              if (event.key === 'Escape') closeAll(null);
            });
          }
        }

        if (document.readyState === 'loading') {
          document.addEventListener('DOMContentLoaded', initBilling);
        } else {
          initBilling();
        }
      })();
    {/literal}
  </script>
</section>