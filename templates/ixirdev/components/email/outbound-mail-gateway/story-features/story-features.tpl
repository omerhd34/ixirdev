<section class="ixir-wh-story ixir-wh-story--features ixir-slide ixir-slide--right is-slide-on" id="ixir-omg-story" aria-label="SmartHost Özellikleri">
  <script>
    {literal}
      (function() {
        var root = document.querySelector('.ixir-wh-story--features');
        if (!root || !window.IntersectionObserver) return;
        if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
        if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
        root.classList.add('is-armed');
      })();
    {/literal}
  </script>
  <div class="container">
    <header class="ixir-omg-section-head text-center" style="margin-bottom: 40px;">
      {include file="$template/components/Heading.tpl" title="SmartHost Hizmetinin Öne Çıkan Özellikleri"}
    </header>

    <article class="ixir-wh-story-row ixir-wh-story-row--cpanel">
      <div class="ixir-wh-story-visual" aria-hidden="true">
        <img src="{$WEB_ROOT}/templates/{$template}/img/e-posta/smarthost4.webp" alt="Giden Mail Saygınlığı" width="480" height="340" loading="lazy">
      </div>
      <div class="ixir-wh-story-copy">
        <div class="ixir-wh-story-heading">
          <span class="ixir-wh-story-badge" aria-hidden="true"><i class="fas fa-envelope-open-text"></i></span>
          <h3 class="ixir-wh-story-title">Giden Mail Saygınlığı</h3>
        </div>
        <p>İXİRHOST'un SmartHost hizmetinde bulunan e-posta gönderim kuyrukları sürekli izlenmekte ve olası spam gönderimler ve mailing işlemleri anında otomatik olarak engellenmektedir. Bu sayede SmartHost hizmetinin IP adresleri, her zaman yüksek saygınlığını korumakta ve iletileriniz direkt olarak alıcıların gelen kutusuna iletilmektedir.</p>
      </div>
    </article>

    <article class="ixir-wh-story-row ixir-wh-story-row--flip ixir-wh-story-row--speed">
      <div class="ixir-wh-story-visual" aria-hidden="true">
        <img src="{$WEB_ROOT}/templates/{$template}/img/e-posta/smarthost1.webp" alt="Yüksek IP Reputation" width="480" height="340" loading="lazy">
      </div>
      <div class="ixir-wh-story-copy">
        <div class="ixir-wh-story-heading">
          <span class="ixir-wh-story-badge" aria-hidden="true"><i class="fas fa-network-wired"></i></span>
          <h3 class="ixir-wh-story-title">Yüksek IP Reputation</h3>
        </div>
        <p>SmartHost hizmetinde e-posta gönderimi, SmartHost servisine bağlı yaklaşık 16 farklı IP adresinden otomatik balans edilerek gönderilir. Her IP adresi optimum düzeyde e-posta gönderimi sağlayarak IP adresleri hiçbir alıcının servis sağlayıcısında kara listeye düşmez. Bu sayede gönderilen e-postalar direkt olarak alıcının gelen kutusuna iletilir.</p>
      </div>
    </article>

    <article class="ixir-wh-story-row">
      <div class="ixir-wh-story-visual" aria-hidden="true">
        <img src="{$WEB_ROOT}/templates/{$template}/img/e-posta/smarthost3.webp" alt="Proaktif Geliştirilen Servis" width="480" height="340" loading="lazy">
      </div>
      <div class="ixir-wh-story-copy">
        <div class="ixir-wh-story-heading">
          <span class="ixir-wh-story-badge" aria-hidden="true"><i class="fas fa-brain"></i></span>
          <h3 class="ixir-wh-story-title">Proaktif Geliştirilen Servis</h3>
        </div>
        <p>Makine öğrenimi ile birlikte proaktif olarak izliyor, geliştiriyor ve gönderdiğiniz her bir maile değer katıyoruz.</p>
      </div>
    </article>
  </div>
</section>