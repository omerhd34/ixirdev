<section class="ixir-ssl-faq ixir-wh-faq ixir-wh-faq--light bg-light-blue ixir-slide ixir-slide--right is-slide-on" id="ixir-ssl-faq" aria-labelledby="ixir-ssl-faq-title">
 <div class="container">
  <header class="ixir-ssl-plans-head ixir-wh-plans-head">
   <div class="ixir-badge-pill ixir-ssl-badge-pill">
    <i class="far fa-question-circle" aria-hidden="true"></i> MERAK EDİLENLER
   </div>
   {include file="$template/components/Heading.tpl" title="Sıkça Sorulan Sorular" id="ixir-ssl-faq-title" align="center"}
   <p>SSL sertifikaları ve kurulum süreçleri hakkında aklınıza takılan soruların yanıtları.</p>
  </header>

  <div class="ixir-ssl-faq-list ixir-wh-faq-list">
   <div class="ixir-ssl-faq-item ixir-wh-faq-item is-open">
    <button type="button" class="ixir-ssl-faq-q ixir-wh-faq-q" aria-expanded="true">
     <i class="fas fa-chevron-down" aria-hidden="true"></i>E-ticaret sitesi yapıyorum hangi SSL sertifikasını almalıyım?
    </button>
    <div class="ixir-ssl-faq-a ixir-wh-faq-a">
     <p>SSL sertifikalarımızın tümü e-ticaret ve sanal pos için uygundur ve tüm bankalar tarafından kabul görmektedir. Örnek olarak Comodo SSL veya Rapid SSL satın alabilirsiniz. E-ticaret sitelerinde bazı ödeme kuruluşlarının statik ip'de istediğini unutmayın, sipariş esnasında sitenize özel statik ip siparişi de verebilirsiniz.</p>
    </div>
   </div>

   <div class="ixir-ssl-faq-item ixir-wh-faq-item">
    <button type="button" class="ixir-ssl-faq-q ixir-wh-faq-q" aria-expanded="false">
     <i class="fas fa-chevron-down" aria-hidden="true"></i>Sertifikamı nasıl doğrulayabilirim ve ne zaman aktif olur?
    </button>
    <div class="ixir-ssl-faq-a ixir-wh-faq-a">
     <p>Domain doğrulamalı ssl sertifikaları genellikle 1-2 saat içerisinde hızlıca teslim edilmektedir, <strong>admin@alanadiniz</strong> mail adresiniz aktif ve gelen doğrulama mailini onaylamanız yeterlidir <strong>eğer yalnızca DNS veya DOSYA doğrulaması kabul eden bir SSL Siparişi verdiyseniz göndereceğimiz kayıtları dns zone tablonuza veya göndereceğimiz dosyayı web sitenize ftp ile yükleyerek doğrulama yapabilirsiniz.</strong>, bazı ender durumlarda SSL sağlayıcı bazı domainlerde bekletip site içeriğini veya riski manuel olarak yürütebilmektedir, bu noktada bir miktar gecikme olabilir.</p>
    </div>
   </div>

   <div class="ixir-ssl-faq-item ixir-wh-faq-item">
    <button type="button" class="ixir-ssl-faq-q ixir-wh-faq-q" aria-expanded="false">
     <i class="fas fa-chevron-down" aria-hidden="true"></i>SSL sertifikalarındaki garanti ne anlama gelmektedir?
    </button>
    <div class="ixir-ssl-faq-a ixir-wh-faq-a">
     <p>SSL sertifikalarındaki garanti tutarının anlamı kullandığınız SSL sertifikasının SSL ile ilgili veri akışı esnasında sertifikanın kırılması ve bu verilerin açığa çıkması sonucu oluşacak tazminat tutarını belirler. Bu nerdeyse imkansıza yakındır.</p>
    </div>
   </div>

   <div class="ixir-ssl-faq-item ixir-wh-faq-item">
    <button type="button" class="ixir-ssl-faq-q ixir-wh-faq-q" aria-expanded="false">
     <i class="fas fa-chevron-down" aria-hidden="true"></i>Şahsi web sitem için SSL kullanabilirmiyim?
    </button>
    <div class="ixir-ssl-faq-a ixir-wh-faq-a">
     <p>Evet, SSL sertifikaları tüm web siteler için kullanılır belli bir sınır yoktur. Şahsi yada benzeri web siteleriniz içinde kullanabilirsiniz.</p>
    </div>
   </div>

   <div class="ixir-ssl-faq-item ixir-wh-faq-item">
    <button type="button" class="ixir-ssl-faq-q ixir-wh-faq-q" aria-expanded="false">
     <i class="fas fa-chevron-down" aria-hidden="true"></i>SSL Sertifikası siparişi için neler gerekli?
    </button>
    <div class="ixir-ssl-faq-a ixir-wh-faq-a">
     <p>DV yani domain doğrulamalı SSL sertifika siparişi için hosting kontrol panelinde veya sunucunuz üzerinde Türkçe karakter içermeyen 2048 bit ve üzeri CSR yani sertifika isteği oluşturup iletmeli, sipariş esnasında size uygun doğrulama seçeneklerinden birini seçin, mevcut doğrulama türleri örneğin; <strong>DNS ile Doğrulama, TXT Dosyası ile Doğrulama veya E-Posta ile Doğrulama</strong>,<br><br><strong>E-Posta doğrulaması seçtiyseniz</strong> admin@alanadiniz mail adresiniz hazır olmalıdır.<br><br><strong>TXT Dosyası ile doğrulama seçtiyseniz</strong> ekibimiz size bir dosya ve içeriği göndererek ve bir path belirtecek bunu hosting hesabınızda ilgili dizine yüklemeniz gerekecektir.<br><br><strong>DNS ile doğrulama seçtiyseniz</strong> ekibimiz size bir dns zone örneği göndererek, alan adınızın zone tablosuna bu zone kaydını ekleyerek doğrulama yapabilirsiniz.<br><br>Güncel olarak, en hızlı doğrulama E-Posta ile yapılmakta, eğer admin@alanadiniz şeklinde bir e-posta adresi açabiliyorsanız tercih edebilirsiniz, dns ve txt doğrulaması e-posta doğrulamaya göre görece bir miktar gecikmelidir.<br><br><strong>EV SSL</strong> siparişinizde ekibimiz sizden şirket doğrulamanız için gerekli evrakları isteyecek ve süreci başlatacaktır.</p>
    </div>
   </div>

   <div class="ixir-ssl-faq-item ixir-wh-faq-item">
    <button type="button" class="ixir-ssl-faq-q ixir-wh-faq-q" aria-expanded="false">
     <i class="fas fa-chevron-down" aria-hidden="true"></i>SSL Sertifikamı nasıl yükleyebilirim?
    </button>
    <div class="ixir-ssl-faq-a ixir-wh-faq-a">
     <p>Sertifikanızı sipariş ederken dilerseniz kurulum desteğini de seçebilirsiniz, ekibimiz sizin adınıza CSR ve sertifika oluşturup hesabınıza kurulum yapacaktır, kendiniz kurmak isterseniz, kuracağınız sunucu ve panel'e göre bir çok nasıl yaparım makalesi bulunmaktadır, kendinizde kurabilirsiniz.</p>
    </div>
   </div>

   <div class="ixir-ssl-faq-item ixir-wh-faq-item">
    <button type="button" class="ixir-ssl-faq-q ixir-wh-faq-q" aria-expanded="false">
     <i class="fas fa-chevron-down" aria-hidden="true"></i>SSL sertifikasında değişiklik yapabilirmiyim?
    </button>
    <div class="ixir-ssl-faq-a ixir-wh-faq-a">
     <p>Elbette DV (Domain Validated) sertifika satın alındıktan 7 gün içerisinde tekrar sertifika oluşturulabilir. Sonrasında tekrar sertifika oluşturma işlemleri ücrete tabi olup güncel sertifika bedelinin yarısı kadar ücret ile tekrar oluşturulabilir.</p>
    </div>
   </div>

   <div class="ixir-ssl-faq-item ixir-wh-faq-item">
    <button type="button" class="ixir-ssl-faq-q ixir-wh-faq-q" aria-expanded="false">
     <i class="fas fa-chevron-down" aria-hidden="true"></i>SSL Kurulum Hizmeti Kapsamı Nedir?
    </button>
    <div class="ixir-ssl-faq-a ixir-wh-faq-a">
     <p>Hosting hesabınız bizde olsun olmasın, kurulum hizmeti aldığınızda csr oluşturulması, doğrulanması ve ssl kurulması ekibimiz tarafından yapılır, bu işlem bir sefere mahsustur, hosting aktarım, sunucu değişim sertifikanın tüketici tarafından bozulması veya silinmesi, çalışırlığını yitirmesi vb. durumlarda tekrar kurulum desteği verilmemektedir. Yeni bir sertifika ve yeniden kurulum desteği ile sertifika güncellenmelidir.</p>
    </div>
   </div>

   <div class="ixir-ssl-faq-item ixir-wh-faq-item">
    <button type="button" class="ixir-ssl-faq-q ixir-wh-faq-q" aria-expanded="false">
     <i class="fas fa-chevron-down" aria-hidden="true"></i>SSL Sertifikaları 365 Gün yerine 199 gün geçerli görünüyor?
    </button>
    <div class="ixir-ssl-faq-a ixir-wh-faq-a">
     <p>Sertifika geçerlilik süreleri kademeli olarak düşürülmektedir, 24 Şubat 2026 Digicert ile başlayan süreç 12 Mart itibariyle diğer tüm ssl markalarında da SSL geçerlilik süresi 199 güne düşecektir, ssl sertifikalarınızı 199 günde bir yenilemelisiniz, 2029 yılına kadar geçerlilik süresi 47 güne kadar düşecektir.</p>
    </div>
   </div>

   <div class="ixir-ssl-faq-item ixir-wh-faq-item">
    <button type="button" class="ixir-ssl-faq-q ixir-wh-faq-q" aria-expanded="false">
     <i class="fas fa-chevron-down" aria-hidden="true"></i>SSL Sertifikalarında İptal ve İade Mevcut mu?
    </button>
    <div class="ixir-ssl-faq-a ixir-wh-faq-a">
     <p>Maalesef, sertifika üretildikten sonra üretici tarafından da iptal ve iade edilemediğinden bizde de iptal ve iadesi söz konusu değildir.</p>
    </div>
   </div>
  </div>
 </div>
 <script>
  {literal}
   (function() {
    var list = document.querySelector('.ixir-ssl-faq-list, .ixir-wh-faq-list');
    if (!list) return;
    Array.prototype.forEach.call(list.querySelectorAll('.ixir-ssl-faq-q, .ixir-wh-faq-q'), function(btn) {
     btn.addEventListener('click', function() {
      var item = btn.closest('.ixir-ssl-faq-item, .ixir-wh-faq-item') || btn.parentNode;
      var isOpen = item.classList.contains('is-open');
      Array.prototype.forEach.call(list.querySelectorAll('.ixir-ssl-faq-item, .ixir-wh-faq-item'), function(other) {
       if (other !== item) {
        other.classList.remove('is-open');
        var otherBtn = other.querySelector('.ixir-ssl-faq-q, .ixir-wh-faq-q');
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
