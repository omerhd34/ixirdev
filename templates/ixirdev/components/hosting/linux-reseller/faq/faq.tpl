<section class="ixir-wh-faq ixir-slide ixir-slide--left is-slide-on" aria-labelledby="ixir-wh-faq-title">
 <div class="container">
  <header class="ixir-wh-plans-head">
   <div class="ixir-badge-pill ixir-ssl-badge-pill">
    <i class="far fa-question-circle" aria-hidden="true"></i> MERAK EDİLENLER
   </div>
   {include file="$template/components/Heading.tpl" title="Sıkça Sorulan Sorular"  id="ixir-wh-faq-title"}
   <p>Linux Hosting paketlerimiz ile ilgili detaylı bilgiye mi ihtiyacınız var?</p>
  </header>
  <div class="ixir-wh-faq-list">
   <div class="ixir-wh-faq-item is-open"> <button type="button" class="ixir-wh-faq-q" aria-expanded="true"><i
      class="fas fa-chevron-down" aria-hidden="true"></i>Linux Hosting paketlerinde sadece PHP mi
     kullanabilirim?</button>
    <div class="ixir-wh-faq-a">
     <p>Tüm linux hosting hizmetlerimizde sadece PHP,HTML ve MySQL kullanabilirsiniz. ASP ve ASP.NET
      yazılım kullanan bir web siteniz var ise windows hosting hizmetlerimizden satın almalısınız.</p>
    </div>
   </div>
   <div class="ixir-wh-faq-item"> <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i
      class="fas fa-chevron-down" aria-hidden="true"></i>Reseller Hosting hizmetimde ne kadar CPU
     kullanabilirim?</button>
    <div class="ixir-wh-faq-a">
     <p>Linux Bayi Hosting paketlerimizde CPU kullanım hakkı %30'dur. CloudLinux CageFS altyapısı
      sayesinde her hesap birbirinden izole çalışır. Daha fazlasına ihtiyaç duyarsanız bizimle
      iletişime geçebilirsiniz. </p>
    </div>
   </div>
   <div class="ixir-wh-faq-item"> <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i
      class="fas fa-chevron-down" aria-hidden="true"></i>E-posta gönderiminde saatlik limit var
     mı?</button>
    <div class="ixir-wh-faq-a">
     <p>Evet, saatlik e-posta gönderim limiti pakete göre değişmektedir. Starter pakette saatte 50,
      Essential'da 100, Advanced ve Premium paketlerde ise 200 adet e-posta gönderilebilir. Spam
      engellemesi amacıyla uygulanan bu limitler aşıldığında bizimle iletişime geçebilirsiniz, size
      yardımcı olacağız.</p>
    </div>
   </div>
   <div class="ixir-wh-faq-item"> <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i
      class="fas fa-chevron-down" aria-hidden="true"></i>Para iade garantisi sunuyor musunuz?</button>
    <div class="ixir-wh-faq-a">
     <p>Evet, tüm hosting hizmetlerimizde olduğu gibi 15 gün boyunca koşulsuz para iade garantisi
      sunuyoruz. Muhasebe servisimize bunu iletmeniz yeterlidir.</p>
    </div>
   </div>
   <div class="ixir-wh-faq-item"> <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i
      class="fas fa-chevron-down" aria-hidden="true"></i>Yeni bir kullanıcıyım ücretsiz deneme
     yapabilir miyim?</button>
    <div class="ixir-wh-faq-a">
     <p>Elbette. Web sitemize üye olup denemek istediğiniz ürünün siparişini verin ve ödeme kısmında
      banka havalesi seçiniz. Sonrasında destek talebi ileterek ya da telefon ile arayarak seçtiğiniz
      ürünü 2 günlük süre içinde deneyebilirsiniz.</p>
    </div>
   </div>
   <div class="ixir-wh-faq-item"> <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i
      class="fas fa-chevron-down" aria-hidden="true"></i>Sipariş verdiğim ürün hemen aktif olacak
     mı?</button>
    <div class="ixir-wh-faq-a">
     <p>Evet, siparişinizi verdiğiniz hizmetin ödemesini gerçekleştirdiğiniz anda aktif olacaktır.</p>
    </div>
   </div>
   <div class="ixir-wh-faq-item"> <button type="button" class="ixir-wh-faq-q" aria-expanded="false"><i
      class="fas fa-chevron-down" aria-hidden="true"></i>Hosting hizmetini yanlış satın aldım
     değiştirebilir miyim?</button>
    <div class="ixir-wh-faq-a">
     <p>Tabii ki. Yanlış hizmeti sipariş verdiğinizi düşünüyorsanız ya da farklı bir Reseller Hosting
      paketine geçmek istiyorsanız bu değişikliği istediğiniz zaman yaptırabilirsiniz. Destek talebi
      oluşturmanız yeterlidir, hemen yapacağız.</p>
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