 <section class="ixir-wh-faq ixir-slide ixir-slide--left is-slide-on" aria-labelledby="ixir-wh-faq-title">
  <div class="container">
   <header class="ixir-wh-plans-head">
    <div class="ixir-badge-pill ixir-ssl-badge-pill">
     <i class="far fa-question-circle" aria-hidden="true"></i> MERAK EDİLENLER
    </div>
    {include file="$template/components/Heading.tpl" title="Sıkça Sorulan Sorular"  id="ixir-wh-faq-title"}
    <p>WordPress Hosting Paketlerimiz ile ilgili detaylı bilgiye mi ihtiyacınız var?</p>
   </header>
   <div class="ixir-wh-faq-list">
    <div class="ixir-wh-faq-item is-open">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="true"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>WordPress Hosting'in hiğer hosting paketlerinden farkı nedir?</button>
     <div class="ixir-wh-faq-a">
      <p>WordPress Hosting; LiteSpeed web server'ı, AccelerateWP, PHP X-RAY ve Imunify360 WAF gibi WordPress'e özel
       araçlarla donatılmış, yüksek CPU ve RAM kaynaklarına sahip özelleştirilmiş bir hosting çözümüdür. Klasik web
       hostingden farklı olarak disk, bant genişliği, veritabanı, CPU ve RAM kaynakları WordPress sitelerinin en iyi
       performansı göstereceği seviyede optimize edilmiştir. Bunun yanı sıra tek tıkla WordPress kurulumu ve ücretsiz
       site taşıma hizmeti de sunulmaktadır.
      </p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>WordPress Hosting hizmetimde ne kadar CPU kullanabilirim?</button>
     <div class="ixir-wh-faq-a">
      <p>Paket detaylarında belirtilen core sayısı kadar CPU kullanım hakkınız vardır. Budget WordPress planında 1 Core,
       Economy planında 2 Core, Professional planında ise 3 Core Intel Xeon Gold işlemci kaynağı tahsis edilmektedir.
       Daha fazla kaynağa ihtiyaç duymanız halinde üst pakete geçiş yapabilirsiniz.</p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>E-mail gönderiminde limit varmı? Varsa ne kadar var?</button>
     <div class="ixir-wh-faq-a">
      <p>Limit saatlik 100 adettir. Biliyoruzki E-posta alışverişi günümüzde çok önemlidir bu yüzden bir kişinin
       gönderebileceği maksimum e-mail sayısını hesaplayıp limitlendirdik buda saatte 100 adettir. İnternet üzerindeki
       Spam yani istenmeyen e-mail kuralları çok sıkıdır bizde, toplu veya reklam e-mailinin engellemesi amacı ile
       saatlik e-mail gönderimi limiti gibi kurallar uygulamaktayız. Eğer daha fazla gönderime ihtiyacınız var ise bizim
       ile iletişime geçiniz size yardımcı olacağız.</p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>Para iade garantisi sunuyor musunuz?</button>
     <div class="ixir-wh-faq-a">
      <p>Evet, tüm hosting hizmetlerimizde olduğu gibi 15 gün boyunca koşulsuz para iade garantisi sunuyoruz. Muhasebe
       servisimize bunu iletmeniz yeterlidir.
      </p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>Yeni bir kullanıcıyım, ücretsiz deneme yapabilir miyim?</button>
     <div class="ixir-wh-faq-a">
      <p>Elbette. Web sitemize üye olup denemek istediğiniz WordPress Hosting paketinin siparişini verin ve ödeme
       kısmında banka havalesi seçiniz. Sonrasında destek talebi ileterek ya da telefon ile arayarak seçtiğiniz paketi 2
       günlük süre içinde deneyebilirsiniz. Satın aldıktan sonra da 15 gün boyunca koşulsuz para iade garantimiz
       geçerlidir.</strong>.
      </p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>Sipariş verdiğim ürün hemen aktif olacak mı?</button>
     <div class="ixir-wh-faq-a">
      <p>Evet, siparişinizi verdiğiniz hizmetin ödemesini gerçekleştirdiğiniz anda otomatik aktif olacaktır.</p>
     </div>
    </div>
    <div class="ixir-wh-faq-item">
     <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i class="fas fa-chevron-down"
       aria-hidden="true"></i>Hosting hizmetini yanlış satın aldım, değiştirebilir miyim?</button>
     <div class="ixir-wh-faq-a">
      <p>Evet, yanlış hosting paketi aldıysanız ya da farklı bir WordPress Hosting paketine geçmek istiyorsanız bu
       değişikliği istediğiniz zaman yaptırabilirsiniz. Budget'tan Economy'ye, Economy'den Professional'a geçiş de dahil
       olmak üzere tüm paket değişikliklerinde destek talebi iletmeniz yeterlidir.</p>
     </div>
    </div>
   </div>
  </div>
  <script>
   {literal}
    (function() {
     var list = document.querySelector('.ixir-wh-faq-list');
     if (!list) return;
     Array.prototype.forEach.call(list.querySelectorAll('.ixir-wh-faq-q'), function(btn) {
      btn.addEventListener('click', function() {
       var item = btn.closest('.ixir-wh-faq-item') || btn.parentNode;
       var isOpen = item.classList.contains('is-open');
       Array.prototype.forEach.call(list.querySelectorAll('.ixir-wh-faq-item'), function(other) {
        if (other !== item) {
         other.classList.remove('is-open');
         var otherBtn = other.querySelector('.ixir-wh-faq-q');
         if (otherBtn) otherBtn.setAttribute('aria-expanded', 'false');
        }
       });
       if (isOpen) {
        item.classList.remove('is-open');
        btn.setAttribute('aria-expanded', 'false');
       } else {
        item.classList.add('is-open');
        btn.setAttribute('aria-expanded', 'true');
       }
      });
     });
    })();
   {/literal}
  </script>
</section>