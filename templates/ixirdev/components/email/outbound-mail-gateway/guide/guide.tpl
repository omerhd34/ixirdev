<section class="ixir-omg-guide ixir-wh-guide ixir-slide ixir-slide--right is-slide-on" id="ixir-omg-guide" aria-label="Outbound Mail Gateway Rehberi">
  <script>
    {literal}
      (function() {
        var root = document.getElementById('ixir-omg-guide') || document.querySelector('.ixir-omg-guide, .ixir-wh-guide');
        if (!root || !window.IntersectionObserver) return;
        if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
        if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
        root.classList.add('is-armed');
      })();
    {/literal}
  </script>
  <div class="container">
    <header class="ixir-omg-plans-head ixir-wh-plans-head" style="margin-bottom: 40px; text-align: center;">
      <div class="ixir-badge-pill ixir-ssl-badge-pill"><i class="fas fa-book-open" aria-hidden="true"></i> BİLGİ REHBERİ</div>
      {include file="$template/components/Heading.tpl" title="Outbound Mail Gateway Rehberi" id="ixir-omg-guide-title"}
      <p>SmartHost altyapısı, e-posta teslimat güvenliği ve KVKK uyumluluğu hakkında bilmeniz gerekenler.</p>
    </header>
    <div class="ixir-omg-guide-list ixir-wh-guide-list">
      <article class="ixir-omg-guide-item ixir-wh-guide-item">
        <span class="ixir-omg-guide-icon ixir-wh-guide-icon" aria-hidden="true"><i class="fas fa-paper-plane"></i></span>
        <h3>Outbound Mail Gateway (SmartHost) Neden Kritik Öneme Sahiptir?</h3>
        <p>Kurumsal bir mail sunucusu işletmek ile o sunucudan gönderilen e-postaların alıcıya ulaşmasını garantilemek iki farklı meseledir. Kendi sunucunuzdan gönderdiğiniz mailler; spam filtreleri, IP reputation sistemleri ve gönderici kimlik doğrulama protokolleri tarafından sürekli değerlendirilir. Sunucunuz herhangi bir nedenle kara listeye girdiğinde —bir virüs bulaşması, yanlış yapılandırılmış bir uygulama veya aşırı gönderim— tüm kurumsal mailleriniz sessizce spam'e düşmeye başlar. Bu tür bir sorun çoğunlukla günler, hatta haftalar sonra fark edilir ve ciddi ticari kayıplara yol açar. Bir outbound mail gateway, bu riski sunucu seviyesinde ortadan kaldırır: trafiğinizi yüksek reputation'a sahip, sürekli izlenen ve korunan IP adresleri üzerinden iletir.</p>
      </article>

      <article class="ixir-omg-guide-item ixir-wh-guide-item">
        <span class="ixir-omg-guide-icon ixir-wh-guide-icon" aria-hidden="true"><i class="fas fa-user-shield"></i></span>
        <h3>Yerli SmartHost Çözümünün KVKK Açısından Önemi</h3>
        <p>Piyasadaki pek çok outbound mail gateway hizmeti yurt dışı tabanlı altyapılar üzerinde çalışır; bu da kurumsal e-postalarınızın içeriğinin Türkiye sınırları dışına çıkması anlamına gelir. Kişisel veri içeren bildirimler, sözleşmeler veya müşteri yazışmaları söz konusu olduğunda bu durum KVKK uyumu açısından ciddi bir risk oluşturabilir. İXİRHOST'un SmartHost hizmeti İstanbul'daki kendi veri merkezimizden, yerli altyapımız üzerinde sunulmaktadır. Mail trafiğiniz Türkiye sınırlarını terk etmez, üçüncü taraf bir yurt dışı servise bağımlılık yaratılmaz. Bu yönüyle İXİRHOST SmartHost, KVKK uyumlu SMTP relay arayanlar için Türkiye'deki en doğru tercihlerden biridir.</p>
      </article>
    </div>
  </div>
</section>
