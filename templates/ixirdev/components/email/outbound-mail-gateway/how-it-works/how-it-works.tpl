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
      {include file="$template/components/Heading.tpl" title="SmartHost Hizmetimiz Nasıl Çalışıyor?" id="ixir-omg-workflow-title"}
      <p>Sunucunuzdan çıkan e-postalar İXİRHOST Mail Gateway güvenlik filtrelerinden geçer ve yüksek itibarlı dağıtık sunucu kümesiyle alıcının gelen kutusuna (inbox) güvenle iletilir.</p>
    </header>

    <div class="ixir-omg-flow-diagram">
      <div class="flow-track">

        <div class="flow-step flow-step--server">
          <div class="flow-icon-wrap">
            <i class="fas fa-server flow-main-icon" aria-hidden="true"></i>
            <span class="flow-sub-badge"><i class="fas fa-cloud" aria-hidden="true"></i></span>
          </div>
          <h3 class="flow-label">Sunucunuz</h3>
        </div>

        <div class="flow-arrow-wrap" aria-hidden="true">
          <div class="flow-line"></div>
          <div class="flow-arrow-badge">
            <i class="fas fa-arrows-alt-h flow-arrow-h"></i>
            <i class="fas fa-arrows-alt-v flow-arrow-v"></i>
          </div>
        </div>

        <div class="flow-step flow-step--gateway is-featured">
          <div class="flow-icon-wrap is-gateway">
            <div class="gateway-rack-device">
              <span class="device-grill"></span>
              <span class="device-lights">
                <span class="device-led is-blue"></span>
                <span class="device-led is-green"></span>
              </span>
            </div>
            <span class="flow-sub-badge is-shield"><i class="fas fa-shield-alt" aria-hidden="true"></i></span>
          </div>
          <h3 class="flow-label">İXİRHOST Mail Gateway</h3>
        </div>

        <div class="flow-arrow-wrap" aria-hidden="true">
          <div class="flow-line"></div>
          <div class="flow-arrow-badge">
            <i class="fas fa-arrows-alt-h flow-arrow-h"></i>
            <i class="fas fa-arrows-alt-v flow-arrow-v"></i>
          </div>
        </div>

        <div class="flow-step flow-step--cluster">
          <span class="cluster-heading">Mail Delivery Cluster</span>
          <div class="cluster-rack-stack">
            <div class="cluster-rack-node">
              <span class="rack-led"></span>
              <i class="fas fa-server rack-icon"></i>
              <span class="rack-vents"><span></span><span></span><span></span></span>
            </div>
            <div class="cluster-rack-node">
              <span class="rack-led"></span>
              <i class="fas fa-server rack-icon"></i>
              <span class="rack-vents"><span></span><span></span><span></span></span>
            </div>
            <div class="cluster-rack-node">
              <span class="rack-led"></span>
              <i class="fas fa-server rack-icon"></i>
              <span class="rack-vents"><span></span><span></span><span></span></span>
            </div>
          </div>
        </div>

        <div class="flow-arrow-wrap" aria-hidden="true">
          <div class="flow-line"></div>
          <div class="flow-arrow-badge">
            <i class="fas fa-arrows-alt-h flow-arrow-h"></i>
            <i class="fas fa-arrows-alt-v flow-arrow-v"></i>
          </div>
        </div>

        <div class="flow-step flow-step--receiver">
          <div class="flow-icon-wrap is-receiver">
            <i class="fas fa-envelope-open-text flow-main-icon" aria-hidden="true"></i>
            <span class="flow-sub-badge is-verified"><i class="fas fa-shield-alt" aria-hidden="true"></i></span>
          </div>
          <h3 class="flow-label">Alıcı</h3>
        </div>

      </div>
    </div>
  </div>
</section>
