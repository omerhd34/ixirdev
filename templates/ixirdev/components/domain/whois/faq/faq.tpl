<section class="ixir-domain-faq ixir-dom-faq ixir-wh-faq ixir-slide ixir-slide--left is-slide-on is-slide-in"
 aria-labelledby="ixir-whois-faq-title">
 <div class="container">
  <header class="ixir-domain-plans-head ixir-wh-plans-head">
   <div class="ixir-badge-pill ixir-ssl-badge-pill">
    <i class="far fa-question-circle" aria-hidden="true"></i> MERAK EDİLENLER
   </div>
   {include file="$template/components/Heading.tpl" title="Sıkça Sorulan Sorular" id="ixir-whois-faq-title"}
   <p>Whois sorgulama hakkında merak ettikleriniz.</p>
  </header>
  <div class="ixir-domain-faq-list ixir-wh-faq-list">
   <div class="ixir-domain-faq-item ixir-wh-faq-item is-open">
    <button type="button" class="ixir-domain-faq-q ixir-wh-faq-q" aria-expanded="true">
     <i class="fas fa-chevron-down" aria-hidden="true"></i> WHOIS sorgulama nedir?
    </button>
    <div class="ixir-domain-faq-a ixir-wh-faq-a">
     <p>WHOIS, bir domain'in kayıt bilgilerini sorgulamanızı sağlar. Kayıt kuruluşu, kayıt ve bitiş tarihi,
      domain durumu ve ad sunucuları gibi bilgiler uzantıya göre görüntülenebilir.</p>
    </div>
   </div>
   <div class="ixir-domain-faq-item ixir-wh-faq-item">
    <button type="button" class="ixir-domain-faq-q ixir-wh-faq-q" aria-expanded="false">
     <i class="fas fa-chevron-down" aria-hidden="true"></i> WHOIS sorgulaması nasıl yapılır?
    </button>
    <div class="ixir-domain-faq-a ixir-wh-faq-a">
     <p>Sayfanın üst kısmındaki alana uzantısı dahil domain'i (ör. <strong>ixirhost.com</strong>) yazıp
      <strong>Sorgula</strong> butonuna tıklayın. Sorgulama ücretsizdir.</p>
    </div>
   </div>
   <div class="ixir-domain-faq-item ixir-wh-faq-item">
    <button type="button" class="ixir-domain-faq-q ixir-wh-faq-q" aria-expanded="false">
     <i class="fas fa-chevron-down" aria-hidden="true"></i> Domain sahibinin kişisel bilgileri görünür mü?
    </button>
    <div class="ixir-domain-faq-a ixir-wh-faq-a">
     <p>Her zaman görünmeyebilir. Kayıt kuruluşunun politikalarına ve gizlilik kurallarına bağlı olarak kişisel
      bilgiler gizlenebilir veya maskelenebilir.</p>
    </div>
   </div>
   <div class="ixir-domain-faq-item ixir-wh-faq-item">
    <button type="button" class="ixir-domain-faq-q ixir-wh-faq-q" aria-expanded="false">
     <i class="fas fa-chevron-down" aria-hidden="true"></i> WHOIS sorgusunda bilgi görünmüyorsa ne anlama gelir?
    </button>
    <div class="ixir-domain-faq-a ixir-wh-faq-a">
     <p>Bilgiler gizlilik nedeniyle maskelenmiş, ilgili uzantı için sınırlı tutulmuş veya sorgu anında kayıt
      sunucusundan alınamamış olabilir. Bu durum tek başına domain'in boşta olduğu anlamına gelmez.</p>
    </div>
   </div>
   <div class="ixir-domain-faq-item ixir-wh-faq-item">
    <button type="button" class="ixir-domain-faq-q ixir-wh-faq-q" aria-expanded="false">
     <i class="fas fa-chevron-down" aria-hidden="true"></i> WHOIS sorgusu ile domain'in boşta olup olmadığını öğrenebilir miyim?
    </button>
    <div class="ixir-domain-faq-a ixir-wh-faq-a">
     <p>WHOIS kayıt bilgilerini gösterir; domain'in tescile açık olup olmadığını kesinleştirmek için
      <a href="{$WEB_ROOT}/domain-sorgu">Domain Sorgulama</a> sayfamızdan kullanılabilirlik kontrolü yapın.</p>
    </div>
   </div>
  </div>
 </div>
</section>
<script>
 {literal}
  (function() {
   var section = document.querySelector('[aria-labelledby="ixir-whois-faq-title"]');
   if (!section) return;
   var list = section.querySelector('.ixir-wh-faq-list');
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