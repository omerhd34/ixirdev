<section class="ixir-wh-faq ixir-slide ixir-slide--left is-slide-on" id="ixir-wh-faq" aria-labelledby="ixir-wh-faq-title">
  <div class="container">
    <header class="ixir-wh-plans-head text-center">
      {include file="$template/components/Heading.tpl" title="Sıkça Sorulan Sorular" id="ixir-wh-faq-title"}
      <p>Outbound Mail Gateway (SmartHost) paketlerimiz ile ilgili detaylı bilgiye mi ihtiyacınız var?</p>
    </header>
    <div class="ixir-wh-faq-list">
      <div class="ixir-wh-faq-item is-open">
        <button type="button" class="ixir-wh-faq-q" aria-expanded="true">
          <i class="fas fa-chevron-down" aria-hidden="true"></i>Sistem Nasıl Çalışıyor?
        </button>
        <div class="ixir-wh-faq-a">
          <p>Hali hazırda kullandığınız mail sunucunuzu smarthost özelliğiyle size vereceğimiz IP ve Porta yönlendirmeniz yeterli olacak, sunucunuzdan çıkan mailler bizim gateway ve delivery clusterlarımızdan geçerek alıcısına güvenle teslim edilmektedir.</p>
        </div>
      </div>
      <div class="ixir-wh-faq-item">
        <button type="button" class="ixir-wh-faq-q" aria-expanded="false">
          <i class="fas fa-chevron-down" aria-hidden="true"></i>Smarthost hizmeti KVKK Uyumlu mu?
        </button>
        <div class="ixir-wh-faq-a">
          <p>Kişisel verilerinizi önemsiyoruz, bu sebeple bu servisimiz de Türkiye/İstanbul lokasyonlu kendi geliştirdiğimiz altyapımızdan sunulmaktadır, outbound servisimizde yurtdışı tabanlı servisler vermiyor ve bu servislere aracılık etmiyoruz ayrıca mail trafiğinizi yurtdışından döndürmüyoruz.</p>
        </div>
      </div>
      <div class="ixir-wh-faq-item">
        <button type="button" class="ixir-wh-faq-q" aria-expanded="false">
          <i class="fas fa-chevron-down" aria-hidden="true"></i>Hangi paketi seçmeliyim?
        </button>
        <div class="ixir-wh-faq-a">
          <p>Bu tamamen mail çıkış yoğunluğunuza bağlıdır, 1 IP üzerinden aylık 10.000 adet mail gönderiyorsanız budget outbound paketini önerebiliriz, 1 sunucudan 50 veya 100.000 adet mail gönderiyorsanız veya bir kaç farklı IP adresinden relay yapıp toplamda 50-100.000 adet mail gönderiyorsa economy veya profesional planları tercih edebilirsiniz.</p>
        </div>
      </div>
      <div class="ixir-wh-faq-item">
        <button type="button" class="ixir-wh-faq-q" aria-expanded="false">
          <i class="fas fa-chevron-down" aria-hidden="true"></i>İletilmeyen mailler de nasıl aksiyon alıyorsunuz?
        </button>
        <div class="ixir-wh-faq-a">
          <p>Şüpheli mailler greylistimizde bekler, skorlar uzman tarafından incelenir, analiz edilir gerçekten çıkşması gereken bir mail ise mail alıcısına ulaştırılır, blacklist mail ise ve sık gönderiliyorsa mail kesilir ve size bilgi verilir sunucu tarafında çıkışlarınızı ve güvenlik önlemlerinizi almanız istenir.</p>
        </div>
      </div>
      <div class="ixir-wh-faq-item">
        <button type="button" class="ixir-wh-faq-q" aria-expanded="false">
          <i class="fas fa-chevron-down" aria-hidden="true"></i>Yeni bir kullanıcıyım ücretsiz deneme yapabilir miyim?
        </button>
        <div class="ixir-wh-faq-a">
          <p>Elbette Web sitemize üye olup denemek istediğiniz paketin siparişini verin ve ödeme kısmında banka havalesi seçiniz. Sonrasında Destek talebi ileterek yada telefon ile arayarak seçmiş olduğunuz ürünü 2 günlük bir süre içersinde deneyebilirsiniz.</p>
        </div>
      </div>
      <div class="ixir-wh-faq-item">
        <button type="button" class="ixir-wh-faq-q" aria-expanded="false">
          <i class="fas fa-chevron-down" aria-hidden="true"></i>Sipariş verdiğim ürün hemen aktif olacak mı?
        </button>
        <div class="ixir-wh-faq-a">
          <p>Evet, siparişinizi verdiğiniz hizmetin ödemesini gerçekleştirdikten ve smarthost yönlendirmesini yaptıktan sonra tüm mailleriniz bizim delivery sunucularımızdan çıkacaktır, tabi burada da ilk defa bizim IP'lerimizden çıkış yapacağınız için bir kaç gün reputation oluşması için gerekecektir.</p>
        </div>
      </div>
      <div class="ixir-wh-faq-item">
        <button type="button" class="ixir-wh-faq-q" aria-expanded="false">
          <i class="fas fa-chevron-down" aria-hidden="true"></i>Toplu Mail, Mail Marketing İçin Kullanabilir miyim?
        </button>
        <div class="ixir-wh-faq-a">
          <p>Hayır, bu hizmetimiz e-posta mesajlaşması maksadıysa verilmekte olup, toplu mail çıkışları anında engellenecektir, şirketinizin veya kurumunuzun sağlıklı mail göndermesi için bu yapıyı kuruyor ve işletiyoruz, haricinde kötü niyetli veya spam mail gönderimine kati suretle izin vermemekteyiz.</p>
        </div>
      </div>
    </div>
  </div>
</section>