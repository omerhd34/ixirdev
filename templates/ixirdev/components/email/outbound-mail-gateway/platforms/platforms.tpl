<section class="ixir-omg-platforms ixir-slide ixir-slide--left is-slide-on" id="ixir-omg-platforms" aria-labelledby="ixir-omg-platforms-title">
  <script>
    {literal}
      (function() {
        var root = document.getElementById('ixir-omg-platforms');
        if (!root || !window.IntersectionObserver) return;
        if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
        if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
        root.classList.add('is-armed');
      })();
    {/literal}
  </script>
  <div class="container">
    <header class="ixir-omg-section-head text-center">
      <div class="ixir-omg-eyebrow">
        <i class="fas fa-network-wired" aria-hidden="true"></i>
        <span>Geniş Platform Uyumluluğu</span>
      </div>
      {include file="$template/components/Heading.tpl" title="Hangi Mail Sunucuları ile Uyumludur?" id="ixir-omg-platforms-title"}
      <p class="ixir-omg-platforms-subtitle">Smarthost özelliğini destekleyen tüm mail sunucuları ile çalışır. Sunucu değiştirmenize gerek yoktur.</p>
    </header>

    <div class="ixir-omg-platforms-grid">
      <article class="ixir-omg-platform-card ixir-omg-platform-badge">
        <div class="ixir-omg-platform-header">
          <div class="ixir-omg-platform-icon ixir-omg-platform-icon--linux" aria-hidden="true">
            <i class="fab fa-linux"></i>
          </div>
          <span class="ixir-omg-platform-status">
            <i class="fas fa-check" aria-hidden="true"></i> Tam Uyumlu
          </span>
        </div>
        <div class="ixir-omg-platform-meta">
          <h3 class="ixir-omg-platform-name">Postfix</h3>
          <span class="ixir-omg-platform-os"><i class="fas fa-terminal" aria-hidden="true"></i> Linux</span>
        </div>
        <p class="ixir-omg-platform-desc">Relayhost parametresi ile saniyeler içinde yönlendirilir; Debian, Ubuntu, CentOS ve RHEL ile tam uyumludur.</p>
        <div class="ixir-omg-platform-chips">
          <span class="ixir-omg-platform-chip"><i class="fas fa-check" aria-hidden="true"></i> Smarthost Relay</span>
          <span class="ixir-omg-platform-chip"><i class="fas fa-bolt" aria-hidden="true"></i> Kolay Kurulum</span>
        </div>
      </article>

      <article class="ixir-omg-platform-card ixir-omg-platform-badge">
        <div class="ixir-omg-platform-header">
          <div class="ixir-omg-platform-icon ixir-omg-platform-icon--cpanel" aria-hidden="true">
            <i class="fab fa-cpanel"></i>
          </div>
          <span class="ixir-omg-platform-status">
            <i class="fas fa-check" aria-hidden="true"></i> Tam Uyumlu
          </span>
        </div>
        <div class="ixir-omg-platform-meta">
          <h3 class="ixir-omg-platform-name">Exim</h3>
          <span class="ixir-omg-platform-os"><i class="fas fa-cog" aria-hidden="true"></i> cPanel / WHM</span>
        </div>
        <p class="ixir-omg-platform-desc">cPanel &amp; WHM Smarthost yönlendirmesi ile tek tıkla giden posta gateway'ine güvenle bağlanır.</p>
        <div class="ixir-omg-platform-chips">
          <span class="ixir-omg-platform-chip"><i class="fas fa-check" aria-hidden="true"></i> cPanel &amp; WHM</span>
          <span class="ixir-omg-platform-chip"><i class="fas fa-bolt" aria-hidden="true"></i> Anında Aktif</span>
        </div>
      </article>

      <article class="ixir-omg-platform-card ixir-omg-platform-badge">
        <div class="ixir-omg-platform-header">
          <div class="ixir-omg-platform-icon ixir-omg-platform-icon--exchange" aria-hidden="true">
            <i class="fab fa-microsoft"></i>
          </div>
          <span class="ixir-omg-platform-status">
            <i class="fas fa-check" aria-hidden="true"></i> Tam Uyumlu
          </span>
        </div>
        <div class="ixir-omg-platform-meta">
          <h3 class="ixir-omg-platform-name">MS Exchange</h3>
          <span class="ixir-omg-platform-os"><i class="fab fa-windows" aria-hidden="true"></i> Windows</span>
        </div>
        <p class="ixir-omg-platform-desc">Send Connector üzerinden şirket içi tüm giden kurumsal trafiği TLS ile şifreleyerek güvenle iletir.</p>
        <div class="ixir-omg-platform-chips">
          <span class="ixir-omg-platform-chip"><i class="fas fa-check" aria-hidden="true"></i> Send Connector</span>
          <span class="ixir-omg-platform-chip"><i class="fas fa-shield-alt" aria-hidden="true"></i> TLS Şifreleme</span>
        </div>
      </article>

      <article class="ixir-omg-platform-card ixir-omg-platform-badge">
        <div class="ixir-omg-platform-header">
          <div class="ixir-omg-platform-icon ixir-omg-platform-icon--zimbra" aria-hidden="true">
            <i class="fas fa-envelope-open-text"></i>
          </div>
          <span class="ixir-omg-platform-status">
            <i class="fas fa-check" aria-hidden="true"></i> Tam Uyumlu
          </span>
        </div>
        <div class="ixir-omg-platform-meta">
          <h3 class="ixir-omg-platform-name">Zimbra</h3>
          <span class="ixir-omg-platform-os"><i class="fas fa-server" aria-hidden="true"></i> Linux / Windows</span>
        </div>
        <p class="ixir-omg-platform-desc">Relay MTA ayarlarından zahmetsizce tanımlanır; kurum içi posta akışını kesintiye uğratmadan devreye alınır.</p>
        <div class="ixir-omg-platform-chips">
          <span class="ixir-omg-platform-chip"><i class="fas fa-check" aria-hidden="true"></i> Relay MTA</span>
          <span class="ixir-omg-platform-chip"><i class="fas fa-sync" aria-hidden="true"></i> Sıfır Kesinti</span>
        </div>
      </article>

      <article class="ixir-omg-platform-card ixir-omg-platform-badge">
        <div class="ixir-omg-platform-header">
          <div class="ixir-omg-platform-icon ixir-omg-platform-icon--plesk" aria-hidden="true">
            <i class="fas fa-layer-group"></i>
          </div>
          <span class="ixir-omg-platform-status">
            <i class="fas fa-check" aria-hidden="true"></i> Tam Uyumlu
          </span>
        </div>
        <div class="ixir-omg-platform-meta">
          <h3 class="ixir-omg-platform-name">Plesk Mail</h3>
          <span class="ixir-omg-platform-os"><i class="fas fa-sliders-h" aria-hidden="true"></i> Plesk Panel</span>
        </div>
        <p class="ixir-omg-platform-desc">Plesk Panel arayüzünden SMTP Relay olarak tanımlanır; Qmail ve Postfix altyapılarıyla sorunsuz çalışır.</p>
        <div class="ixir-omg-platform-chips">
          <span class="ixir-omg-platform-chip"><i class="fas fa-check" aria-hidden="true"></i> Onyx &amp; Obsidian</span>
          <span class="ixir-omg-platform-chip"><i class="fas fa-bolt" aria-hidden="true"></i> Kolay Kurulum</span>
        </div>
      </article>

      <article class="ixir-omg-platform-card ixir-omg-platform-badge">
        <div class="ixir-omg-platform-header">
          <div class="ixir-omg-platform-icon ixir-omg-platform-icon--hmail" aria-hidden="true">
            <i class="fab fa-windows"></i>
          </div>
          <span class="ixir-omg-platform-status">
            <i class="fas fa-check" aria-hidden="true"></i> Tam Uyumlu
          </span>
        </div>
        <div class="ixir-omg-platform-meta">
          <h3 class="ixir-omg-platform-name">hMailServer</h3>
          <span class="ixir-omg-platform-os"><i class="fab fa-windows" aria-hidden="true"></i> Windows</span>
        </div>
        <p class="ixir-omg-platform-desc">SMTP Delivery of e-mail sekmesinden SmartHost IP adresi girilerek Windows sunucularda anında aktifleşir.</p>
        <div class="ixir-omg-platform-chips">
          <span class="ixir-omg-platform-chip"><i class="fas fa-check" aria-hidden="true"></i> Windows SMTP</span>
          <span class="ixir-omg-platform-chip"><i class="fas fa-shield-alt" aria-hidden="true"></i> Güvenli Çıkış</span>
        </div>
      </article>

      <article class="ixir-omg-platform-card ixir-omg-platform-badge">
        <div class="ixir-omg-platform-header">
          <div class="ixir-omg-platform-icon ixir-omg-platform-icon--sendmail" aria-hidden="true">
            <i class="fas fa-terminal"></i>
          </div>
          <span class="ixir-omg-platform-status">
            <i class="fas fa-check" aria-hidden="true"></i> Tam Uyumlu
          </span>
        </div>
        <div class="ixir-omg-platform-meta">
          <h3 class="ixir-omg-platform-name">Sendmail</h3>
          <span class="ixir-omg-platform-os"><i class="fas fa-terminal" aria-hidden="true"></i> Linux</span>
        </div>
        <p class="ixir-omg-platform-desc">sendmail.mc içindeki SMART_HOST makrosu ile klasik Unix ve Linux dağıtımlarında kararlı relay sağlar.</p>
        <div class="ixir-omg-platform-chips">
          <span class="ixir-omg-platform-chip"><i class="fas fa-check" aria-hidden="true"></i> SMART_HOST</span>
          <span class="ixir-omg-platform-chip"><i class="fas fa-server" aria-hidden="true"></i> Kararlı Altyapı</span>
        </div>
      </article>

      <article class="ixir-omg-platform-card ixir-omg-platform-badge">
        <div class="ixir-omg-platform-header">
          <div class="ixir-omg-platform-icon ixir-omg-platform-icon--directadmin" aria-hidden="true">
            <i class="fas fa-sliders-h"></i>
          </div>
          <span class="ixir-omg-platform-status">
            <i class="fas fa-check" aria-hidden="true"></i> Tam Uyumlu
          </span>
        </div>
        <div class="ixir-omg-platform-meta">
          <h3 class="ixir-omg-platform-name">DirectAdmin</h3>
          <span class="ixir-omg-platform-os"><i class="fas fa-cogs" aria-hidden="true"></i> Exim tabanlı</span>
        </div>
        <p class="ixir-omg-platform-desc">DirectAdmin Exim ayarları üzerinden tüm alan adlarının giden posta trafiğini sıfır kesintiyle yönlendirir.</p>
        <div class="ixir-omg-platform-chips">
          <span class="ixir-omg-platform-chip"><i class="fas fa-check" aria-hidden="true"></i> Exim Altyapısı</span>
          <span class="ixir-omg-platform-chip"><i class="fas fa-bolt" aria-hidden="true"></i> Hızlı Kurulum</span>
        </div>
      </article>

      <article class="ixir-omg-platform-card ixir-omg-platform-badge">
        <div class="ixir-omg-platform-header">
          <div class="ixir-omg-platform-icon ixir-omg-platform-icon--mailenable" aria-hidden="true">
            <i class="fas fa-paper-plane"></i>
          </div>
          <span class="ixir-omg-platform-status">
            <i class="fas fa-check" aria-hidden="true"></i> Tam Uyumlu
          </span>
        </div>
        <div class="ixir-omg-platform-meta">
          <h3 class="ixir-omg-platform-name">MailEnable</h3>
          <span class="ixir-omg-platform-os"><i class="fab fa-windows" aria-hidden="true"></i> Windows</span>
        </div>
        <p class="ixir-omg-platform-desc">SMTP Routing sekmesinden Smart Host olarak yapılandırılır; Standard, Pro ve Enterprise sürümlerini destekler.</p>
        <div class="ixir-omg-platform-chips">
          <span class="ixir-omg-platform-chip"><i class="fas fa-check" aria-hidden="true"></i> Windows Server</span>
          <span class="ixir-omg-platform-chip"><i class="fas fa-lock" aria-hidden="true"></i> Şifreli İletim</span>
        </div>
      </article>
    </div>

    <div class="ixir-omg-platforms-support">
      <div class="ixir-omg-platforms-support-left">
        <div class="ixir-omg-platforms-support-icon" aria-hidden="true">
          <i class="fas fa-headset"></i>
        </div>
        <div class="ixir-omg-platforms-support-content">
          <h4>Farklı bir mail sunucusu veya özel bir altyapı mı kullanıyorsunuz?</h4>
          <p>Smarthost özelliğini destekleyen tüm diğer mail sunucuları da desteklenmektedir. Kullandığınız sunucu hakkında <a href="{$WEB_ROOT}/iletisim">destek ekibimizle iletişime geçebilirsiniz.</a></p>
        </div>
      </div>
      <a href="{$WEB_ROOT}/iletisim" class="ixir-omg-platforms-support-btn" title="Destek Ekibi ile İletişime Geç">
        <i class="fas fa-comments" aria-hidden="true"></i>
        <span>Destek Ekibine Danışın</span>
      </a>
    </div>
  </div>
</section>
