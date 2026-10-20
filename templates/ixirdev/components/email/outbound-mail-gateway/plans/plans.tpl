<section class="ixir-omg-plans ixir-wh-plans ixir-slide ixir-slide--right is-slide-on" id="ixir-omg-plans" aria-labelledby="ixir-omg-plans-title">
  <script>
    {literal}
      (function() {
        var root = document.getElementById('ixir-omg-plans') || document.getElementById('ixir-wh-plans');
        if (!root || !window.IntersectionObserver) return;
        if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
        if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
        root.classList.add('is-armed');
      })();
    {/literal}
  </script>
  <div class="container">
    <header class="ixir-omg-plans-head ixir-wh-plans-head">
      <div class="ixir-badge-pill ixir-ssl-badge-pill">
       <i class="fas fa-paper-plane" aria-hidden="true"></i> SMARTHOST PAKETLERİ</div>
      {include file="$template/components/Heading.tpl" title="Outbound Mail Gateway (SmartHost) Paketleri" id="ixir-omg-plans-title" align="center"}
      <p>İşletmenizin e-posta gönderim hacmine uygun planı seçin; mailleriniz spam'e düşmeden alıcılarına güvenle ulaşsın.</p>
    </header>
    <div class="ixir-omg-grid ixir-wh-grid ixir-omg-grid--3 ixir-wh-grid--3">
      <article class="ixir-omg-plan ixir-wh-plan">
        <header class="ixir-omg-plan-head ixir-wh-plan-head">
          <h3>Starter</h3>
          <p>Bireysel ve küçük ölçekli gönderimler için ideal outbound çözümü</p>
        </header>
        <div class="ixir-omg-price ixir-wh-price">
          <s>1345,42 TL</s>
          <div class="ixir-omg-amount ixir-wh-amount"><b>1034</b><span>,94</span><small>TL<small>/ay</small></small></div>
          <span class="ixir-omg-save ixir-wh-save">%30 tasarruf</span>
        </div>
        <div class="ixir-omg-billing ixir-wh-billing">
          <button type="button" class="ixir-omg-billing-btn ixir-wh-billing-btn" aria-expanded="false" aria-controls="ixir-wh-bill-starter">Ödeme Planları</button>
          <div class="ixir-omg-billing-pop ixir-wh-billing-pop" id="ixir-wh-bill-starter" role="dialog" aria-label="Starter ödeme planı">
            <div class="ixir-omg-billing-top ixir-wh-billing-top">
              <strong>Starter Planı</strong>
              <button type="button" class="ixir-omg-billing-close ixir-wh-billing-close" aria-label="Kapat">&times;</button>
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
        <a class="ixir-omg-buy ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
        <ul class="ixir-omg-specs ixir-wh-specs">
          <li><span>Aylık Maksimum Mail Çıkışı</span><b>10000</b></li>
          <li><span>Öncelikli Destek</span><b><i class="fas fa-times" aria-label="Yok"></i></b></li>
        </ul>
      </article>

      <article class="ixir-omg-plan ixir-wh-plan ixir-omg-plan--best ixir-wh-plan--best">
        <span class="ixir-omg-badge ixir-wh-badge">En İyi Tercih</span>
        <header class="ixir-omg-plan-head ixir-wh-plan-head">
          <h3>Growth</h3>
          <p>KOBİ'ler ve düzenli kurumsal mail gönderimi yapan şirketler için optimize edilmiş</p>
        </header>
        <div class="ixir-omg-price ixir-wh-price">
          <s>6.277 TL</s>
          <div class="ixir-omg-amount ixir-wh-amount"><b>4829</b><span>,20</span><small>TL<small>/ay</small></small></div>
          <span class="ixir-omg-save ixir-wh-save">%30 tasarruf</span>
        </div>
        <div class="ixir-omg-billing ixir-wh-billing">
          <button type="button" class="ixir-omg-billing-btn ixir-wh-billing-btn" aria-expanded="false" aria-controls="ixir-wh-bill-growth">Ödeme Planları</button>
          <div class="ixir-omg-billing-pop ixir-wh-billing-pop" id="ixir-wh-bill-growth" role="dialog" aria-label="Growth ödeme planı">
            <div class="ixir-omg-billing-top ixir-wh-billing-top">
              <strong>Growth Planı</strong>
              <button type="button" class="ixir-omg-billing-close ixir-wh-billing-close" aria-label="Kapat">&times;</button>
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
        <a class="ixir-omg-buy ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
        <ul class="ixir-omg-specs ixir-wh-specs">
          <li><span>Aylık Maksimum Mail Çıkışı</span><b>50000</b></li>
          <li><span>Öncelikli Destek</span><b><i class="fas fa-check" aria-label="Yok"></i></b></li>
        </ul>
      </article>

      <article class="ixir-omg-plan ixir-wh-plan">
        <header class="ixir-omg-plan-head ixir-wh-plan-head">
          <h3>Advanced</h3>
          <p>Yüksek hacimli kurumsal gönderimler ve e-ticaret altyapıları için</p>
        </header>
        <div class="ixir-omg-price ixir-wh-price">
          <s>11.658 TL</s>
          <div class="ixir-omg-amount ixir-wh-amount"><b>8968</b><span>,38</span><small>TL<small>/ay</small></small></div>
          <span class="ixir-omg-save ixir-wh-save">%30 tasarruf</span>
        </div>
        <div class="ixir-omg-billing ixir-wh-billing">
          <button type="button" class="ixir-omg-billing-btn ixir-wh-billing-btn" aria-expanded="false" aria-controls="ixir-wh-bill-advanced">Ödeme Planları</button>
          <div class="ixir-omg-billing-pop ixir-wh-billing-pop" id="ixir-wh-bill-advanced" role="dialog" aria-label="Advanced ödeme planı">
            <div class="ixir-omg-billing-top ixir-wh-billing-top">
              <strong>Advanced Planı</strong>
              <button type="button" class="ixir-omg-billing-close ixir-wh-billing-close" aria-label="Kapat">&times;</button>
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
        <a class="ixir-omg-buy ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
        <ul class="ixir-omg-specs ixir-wh-specs">
          <li><span>Aylık Maksimum Mail Çıkışı</span><b>100000</b></li>
          <li><span>Öncelikli Destek</span><b><i class="fas fa-check" aria-label="Yok"></i></b></li>
        </ul>
      </article>
    </div>

    <div class="ixir-omg-shared-box ixir-as-shared-box ixir-wh-shared-box">
      <div class="ixir-omg-shared-head ixir-as-shared-head ixir-wh-shared-head">
        <p class="ixir-omg-shared-label ixir-as-shared-label ixir-wh-shared-label">Tüm paketlerde ortak bulunan özellikler</p>
        <span>Hangi paketi seçerseniz seçin, aşağıdaki özelliklerin tamamı dahildir.</span>
      </div>
      <ul class="ixir-omg-shared ixir-as-shared ixir-wh-shared">
        <li><i class="fas fa-server" aria-hidden="true"></i>1 IP/Sunucu SmartHost</li>
        <li><i class="fas fa-brain" aria-hidden="true"></i>Kendi Öğrenen Sistem</li>
        <li><i class="fas fa-mail-bulk" aria-hidden="true"></i>Aylık Birçok Mail Çıkışı</li>
        <li><i class="fas fa-shield-check" aria-hidden="true"></i>%99.8 Filtreleme</li>
        <li><i class="fas fa-paper-plane" aria-hidden="true"></i>Giden E-posta Koruması</li>
        <li><i class="fas fa-shield-alt" aria-hidden="true"></i>Giden Antivirüs Koruması</li>
        <li><i class="fas fa-star" aria-hidden="true"></i>Yüksek Reputation</li>
        <li><i class="fas fa-tachometer-alt" aria-hidden="true"></i>Yüksek SenderScore</li>
      </ul>
    </div>
  </div>

  <script>
    {literal}
      (function() {
        function initBilling() {
          var root = document.getElementById('ixir-omg-plans') || document.getElementById('ixir-wh-plans') || document.querySelector('.ixir-omg-plans, .ixir-wh-plans');
          if (!root) return;
          var items = root.querySelectorAll('.ixir-omg-billing, .ixir-wh-billing');

          function closeAll(except) {
            Array.prototype.forEach.call(items, function(item) {
              if (item === except) return;
              item.classList.remove('is-open');
              var plan = item.closest ? (item.closest('.ixir-omg-plan') || item.closest('.ixir-wh-plan')) : null;
              if (plan) plan.classList.remove('is-billing-open');
              var btn = item.querySelector('.ixir-omg-billing-btn, .ixir-wh-billing-btn');
              if (btn) btn.setAttribute('aria-expanded', 'false');
            });
          }

          Array.prototype.forEach.call(items, function(item) {
            if (item.dataset && item.dataset.billingInit) return;
            if (item.dataset) item.dataset.billingInit = '1';

            var btn = item.querySelector('.ixir-omg-billing-btn, .ixir-wh-billing-btn');
            var closeBtn = item.querySelector('.ixir-omg-billing-close, .ixir-wh-billing-close');
            var pop = item.querySelector('.ixir-omg-billing-pop, .ixir-wh-billing-pop');
            var plan = item.closest ? (item.closest('.ixir-omg-plan') || item.closest('.ixir-wh-plan')) : null;
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