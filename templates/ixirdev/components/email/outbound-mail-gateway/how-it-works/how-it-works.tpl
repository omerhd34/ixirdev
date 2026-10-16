<section class="ixir-omg-workflow ixir-slide ixir-slide--left is-slide-on" id="ixir-omg-workflow" aria-labelledby="ixir-omg-workflow-title">
  <script>
    {literal}
      (function() {
        var root = document.getElementById('ixir-omg-workflow');
        if (!root || !window.IntersectionObserver) return;
        if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
        if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
        root.classList.add('is-armed');
      })();
    {/literal}
  </script>
  <div class="container">
    <header class="ixir-omg-section-head text-center">
      <div class="ixir-omg-workflow-pill">
        <i class="fas fa-project-diagram" aria-hidden="true"></i>
        <span>Uçtan Uca Teslimat Mimarisi</span>
      </div>
      {include file="$template/components/Heading.tpl" title="Outbound Mail Gateway Nasıl Çalışır?" id="ixir-omg-workflow-title"}
      <p>Sunucunuzdan çıkan e-postalar İXİRHOST Mail Gateway güvenlik filtrelerinden geçer ve 16+ yüksek itibarlı dağıtık sunucu kümesiyle alıcının gelen kutusuna (inbox) güvenle iletilir.</p>
    </header>

    <div class="ixir-omg-flow-canvas">
      <div class="ixir-flow-meta-bar">
        <div class="ixir-flow-live-status">
          <span class="ixir-live-pulse-ring" aria-hidden="true">
            <span class="ixir-live-pulse-dot"></span>
          </span>
          <span class="ixir-live-text">SmartHost Aktif Akış Hattı • <strong>16+ Rotasyonel Temiz IP Havuzu</strong></span>
        </div>
        <div class="ixir-flow-meta-chips">
          <span class="ixir-meta-chip is-local"><i class="fas fa-shield-alt" aria-hidden="true"></i> Yerli &amp; KVKK Uyumlu</span>
          <span class="ixir-meta-chip"><i class="fas fa-lock" aria-hidden="true"></i> TLS 1.3 Şifreleme</span>
          <span class="ixir-meta-chip is-success"><i class="fas fa-check-circle" aria-hidden="true"></i> %99.8 Inbox Teslimatı</span>
        </div>
      </div>

      <div class="ixir-flow-track" role="region" aria-label="Mail Gateway Çalışma Akışı">
        
        <div class="ixir-flow-node ixir-flow-node--source">
          <div class="node-step-tag">ADIM 1 • KAYNAK</div>
          <div class="node-icon-wrapper">
            <i class="fas fa-server" aria-hidden="true"></i>
            <span class="node-icon-badge" title="Sunucu Altyapınız"><i class="fas fa-cloud" aria-hidden="true"></i></span>
          </div>
          <h3 class="node-title">Sunucunuz</h3>
          <div class="node-subtitle">Mevcut Mail / Web Sunucunuz</div>
          <p class="node-desc">cPanel, Plesk, Exchange, Postfix, Zimbra veya CRM sisteminizden çıkan e-postalar.</p>
          <div class="node-features">
            <span class="node-spec-tag"><i class="fas fa-bolt" aria-hidden="true"></i> Port 587 / 25</span>
            <span class="node-spec-tag"><i class="fas fa-lock" aria-hidden="true"></i> TLS 1.3</span>
          </div>
          <div class="node-footer-status">
            <span class="status-indicator-dot is-blue"></span>
            <span>E-Posta Çıkışı Aktif</span>
          </div>
        </div>

        <div class="ixir-flow-connector" aria-hidden="true">
          <div class="connector-rail">
            <div class="connector-beam"></div>
          </div>
          <div class="connector-pill">
            <i class="fas fa-shield-alt" aria-hidden="true"></i>
            <span>TLS Güvenli Relay</span>
          </div>
          <div class="connector-arrow">
            <i class="fas fa-chevron-right" aria-hidden="true"></i>
          </div>
        </div>

        <div class="ixir-flow-node ixir-flow-node--gateway is-featured">
          <div class="node-step-tag is-badge-featured">ADIM 2 • AKILLI GÜVENLİK</div>
          <div class="node-icon-wrapper is-gateway-icon">
            <i class="fas fa-shield-alt" aria-hidden="true"></i>
            <span class="node-icon-badge is-spin" title="Otomatik Filtreleme"><i class="fas fa-cog" aria-hidden="true"></i></span>
          </div>
          <h3 class="node-title">İXİRHOST Mail Gateway</h3>
          <div class="node-subtitle">Akıllı Filtreleme &amp; Güvenlik Hub</div>
          <p class="node-desc">Spam, virüs ve zararlı yazılımlar filtrelenir; itibar skorlaması yapılır.</p>
          <div class="node-checklist">
            <div class="node-check-row"><i class="fas fa-check-circle" aria-hidden="true"></i> <span>Yerli &amp; KVKK Uyumlu Altyapı</span></div>
            <div class="node-check-row"><i class="fas fa-check-circle" aria-hidden="true"></i> <span>Zero-Day Antivirüs &amp; Anti-Spam</span></div>
            <div class="node-check-row"><i class="fas fa-check-circle" aria-hidden="true"></i> <span>Makine Öğrenimi &amp; Skorlama</span></div>
          </div>
          <div class="node-footer-status is-gateway-status">
            <span class="status-indicator-dot is-indigo"></span>
            <span>%99.8 Giden Filtreleme</span>
          </div>
        </div>

        <div class="ixir-flow-connector" aria-hidden="true">
          <div class="connector-rail">
            <div class="connector-beam"></div>
          </div>
          <div class="connector-pill">
            <i class="fas fa-random" aria-hidden="true"></i>
            <span>Yük Dengeleme</span>
          </div>
          <div class="connector-arrow">
            <i class="fas fa-chevron-right" aria-hidden="true"></i>
          </div>
        </div>

        <div class="ixir-flow-node ixir-flow-node--cluster">
          <div class="node-step-tag">ADIM 3 • DAĞITIK KÜME</div>
          <div class="node-icon-wrapper is-cluster-icon">
            <i class="fas fa-network-wired" aria-hidden="true"></i>
            <span class="node-icon-badge" title="Çoklu Sunucu Mimarisi"><i class="fas fa-layer-group" aria-hidden="true"></i></span>
          </div>
          <h3 class="node-title">Mail Delivery Cluster</h3>
          <div class="node-subtitle">Yüksek İtibarlı Dağıtık Gönderim Kümesi</div>
          <p class="node-desc">16+ temiz ve saygın IP adresi arasında dinamik kuyruk yönetimi.</p>
          
          <div class="cluster-micro-rack">
            <div class="cluster-micro-node">
              <span class="cluster-node-led online"></span>
              <span class="cluster-node-title"><i class="fas fa-server"></i> MTA Cluster #1</span>
              <span class="cluster-node-tag">16 IP Balans</span>
            </div>
            <div class="cluster-micro-node">
              <span class="cluster-node-led online"></span>
              <span class="cluster-node-title"><i class="fas fa-server"></i> MTA Cluster #2</span>
              <span class="cluster-node-tag">Greylist &amp; İtibar</span>
            </div>
            <div class="cluster-micro-node">
              <span class="cluster-node-led online"></span>
              <span class="cluster-node-title"><i class="fas fa-server"></i> MTA Cluster #3</span>
              <span class="cluster-node-tag">Otomatik Kuyruk</span>
            </div>
          </div>

          <div class="node-footer-status">
            <span class="status-indicator-dot is-cyan"></span>
            <span>16+ IP Rotasyonel İletim</span>
          </div>
        </div>

        <div class="ixir-flow-connector" aria-hidden="true">
          <div class="connector-rail">
            <div class="connector-beam"></div>
          </div>
          <div class="connector-pill is-success-pill">
            <i class="fas fa-paper-plane" aria-hidden="true"></i>
            <span>Doğrudan İletim</span>
          </div>
          <div class="connector-arrow">
            <i class="fas fa-chevron-right" aria-hidden="true"></i>
          </div>
        </div>

        <div class="ixir-flow-node ixir-flow-node--target">
          <div class="node-step-tag is-badge-success">ADIM 4 • TESLİMAT</div>
          <div class="node-icon-wrapper is-inbox-icon">
            <i class="fas fa-envelope-open-text" aria-hidden="true"></i>
            <span class="node-icon-badge is-verified" title="Doğrulanmış Teslimat"><i class="fas fa-check" aria-hidden="true"></i></span>
          </div>
          <h3 class="node-title">Alıcı Gelen Kutusu</h3>
          <div class="node-subtitle">Inbox (Gmail, Outlook, Yahoo vb.)</div>
          <p class="node-desc">Kara listelere takılmadan doğrudan alıcının gelen kutusuna ulaşır.</p>
          <div class="node-results">
            <div class="result-badge is-success">
              <i class="fas fa-inbox" aria-hidden="true"></i>
              <span><strong>%100 Inbox</strong> Teslimatı</span>
            </div>
            <div class="result-badge is-safe">
              <i class="fas fa-shield-alt" aria-hidden="true"></i>
              <span><strong>Spam Klasörünü</strong> Pas Geçer</span>
            </div>
          </div>
          <div class="node-footer-status is-target-status">
            <span class="status-indicator-dot is-green"></span>
            <span>Başarıyla Teslim Edildi</span>
          </div>
        </div>

      </div>
    </div>

    <div class="ixir-omg-workflow-grid">
      <article class="ixir-omg-wf-card">
        <div class="ixir-omg-wf-icon"><i class="fas fa-sliders-h" aria-hidden="true"></i></div>
        <div class="ixir-omg-wf-body">
          <h4>1. Hızlı &amp; Kolay Entegrasyon</h4>
          <p>Sunucunuzda (cPanel, Plesk, Exchange, Postfix) e-posta hesaplarınızı değiştirmeden, sadece SMTP relay smarthost bilgisi girerek 5 dakikada aktif edin.</p>
        </div>
      </article>

      <article class="ixir-omg-wf-card">
        <div class="ixir-omg-wf-icon"><i class="fas fa-brain" aria-hidden="true"></i></div>
        <div class="ixir-omg-wf-body">
          <h4>2. Akıllı Güvenlik Filtresi</h4>
          <p>Giden her e-posta taranır; hesap ele geçirilmesi durumunda spam patlamaları anında durdurularak ana sunucunuzun IP itibarı güvenceye alınır.</p>
        </div>
      </article>

      <article class="ixir-omg-wf-card">
        <div class="ixir-omg-wf-icon"><i class="fas fa-cubes" aria-hidden="true"></i></div>
        <div class="ixir-omg-wf-body">
          <h4>3. Dağıtık Temiz IP Kümesi</h4>
          <p>16+ temiz ve sürekli ısıtılmış kurumsal IP havuzu üzerinden, büyük ISP'lerin gönderim kotalarına uygun şekilde otomatik yük dengeleme yapılır.</p>
        </div>
      </article>

      <article class="ixir-omg-wf-card">
        <div class="ixir-omg-wf-icon"><i class="fas fa-chart-line" aria-hidden="true"></i></div>
        <div class="ixir-omg-wf-body">
          <h4>4. Yüksek Gelen Kutusu Oranı</h4>
          <p>SPF, DKIM ve DMARC kimlik doğrulamalarıyla güçlendirilen e-postalarınız junk/spam klasörlerini atlayarak doğrudan alıcının gelen kutusuna düşer.</p>
        </div>
      </article>
    </div>

  </div>
</section>
