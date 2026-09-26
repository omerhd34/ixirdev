  <section class="ixir-wh-faq ixir-slide ixir-slide--right is-slide-on" aria-labelledby="ixir-domain-faq-title">
   <div class="container">
    <header class="ixir-wh-plans-head">
     <h2 id="ixir-domain-faq-title">Sıkça Sorulan Sorular</h2>
     <p>Alan adı tescil ile ilgili detaylı bilgiye mi ihtiyacınız var?</p>
    </header>
    <div class="ixir-wh-faq-list">
     <div class="ixir-wh-faq-item">
      <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
        aria-hidden="true"></i>Alan adı tescili hemen gerçekleşiyor mu?</button>
      <div class="ixir-wh-faq-a">
       <p>Alan adınız ödemenizin ardından <strong>anında tescil</strong> edilecektir.</p>
      </div>
     </div>
     <div class="ixir-wh-faq-item">
      <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
        aria-hidden="true"></i>Neden İXİRHOST'dan alan adı almalıyım?</button>
      <div class="ixir-wh-faq-a">
       <p>Birçok <strong>ücretsiz özellik</strong> ve maliyet fiyatına yakın fiyatlar, en önemlisi <strong>17 yıllık
         sektör tecrübemiz</strong> ile
        güvenle bizi tercih edebilirsiniz.</p>
      </div>
     </div>
     <div class="ixir-wh-faq-item">
      <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
        aria-hidden="true"></i>Alt isim sunucu oluşturabilir miyim?</button>
      <div class="ixir-wh-faq-a">
       <p>Evet, <strong>müşteri panelinizden</strong> birkaç tıklama ile yapabilirsiniz.</p>
      </div>
     </div>
     <div class="ixir-wh-faq-item">
      <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
        aria-hidden="true"></i>Alan adıyla birlikte hangi servisler ücretsiz?</button>
      <div class="ixir-wh-faq-a">
       <p><strong>Whois gizleme</strong>, <strong>DNS yönetimi</strong>, <strong>URL yönlendirme</strong> ve
        <strong>e-posta yönlendirme</strong> alan adı alan müşterilerimize
        <strong>ücretsiz</strong> sağlanmaktadır.<br>*Bu servisler yalnızca <strong>.com, .net, .org</strong> gibi alan
        adlarını kapsamaktadır. <strong>.tr
         uzantılarda kullanılamamaktadır</strong>.
       </p>
      </div>
     </div>
     <div class="ixir-wh-faq-item">
      <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
        aria-hidden="true"></i>Hatalı domain (com/net/org) tescil ettim ne yapabilirim?</button>
      <div class="ixir-wh-faq-a">
       <p><strong>Aynı gün</strong> içerisinde <strong>yarı bedel</strong> kesilerek kalan tutar iade edilebilir.
        Yalnızca
        <strong>com/net/org</strong> alan adlarını
        kapsamaktadır.
       </p>
      </div>
     </div>
     <div class="ixir-wh-faq-item">
      <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
        aria-hidden="true"></i>Domanin Tesciline İptal ve İade Mevcut mu?</button>
      <div class="ixir-wh-faq-a">
       <p>Hayır. Alan adı, kayıt kuruluşu tarafından tescil edildiği için tescil edilmiş bir alan adının bizde de
        <strong>iptal ve iadesi mümkün değildir</strong>. Alan adınız tescil dönemi boyunca açık kalır. Tescil
        edilemeyen
        alan adlarının iadesi ise yalnızca <strong>müşteri hesabınıza bakiye</strong> eklenerek yapılır.
       </p>
      </div>
     </div>
    </div>
   </div>
  </section>
  <script>
   {literal}
   (function() {
    var list = document.querySelector('.ixir-wh-faq-list');
    if (!list) return;
    Array.prototype.forEach.call(list.querySelectorAll('.ixir-wh-faq-q'), function(btn) {
     btn.addEventListener('click', function() {
      var item = btn.parentNode;
      var open = item.classList.toggle('is-open');
      btn.setAttribute('aria-expanded', open ? 'true' : 'false');
      });
     });
    })();
   {/literal}
</script>