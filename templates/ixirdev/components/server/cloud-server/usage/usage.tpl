<section class="ixir-cs-diff ixir-cs-diff--2col ixir-cs-diff--dark ixir-wh-diff ixir-wh-diff--2col ixir-cs-usage ixir-wh-diff--dark bg-dark-blue ixir-slide ixir-slide--left is-slide-on"
 id="ixir-cs-usage" aria-labelledby="ixir-cs-usage-title">
 <script>
  {literal}
   (function() {
    var root = document.getElementById('ixir-cs-usage');
    if (!root || !window.IntersectionObserver) return;
    if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
    root.classList.add('is-armed');
   })();
  {/literal}
 </script>
 <div class="container">
  <header class="ixir-cs-usage-head ixir-cs-diff-head ixir-wh-diff-head">
   <div class="ixir-badge-pill ixir-ssl-badge-pill"><i class="fas fa-project-diagram" aria-hidden="true"></i> KULLANIM ALANLARI</div>
   {include file="$template/components/Heading.tpl" title="Cloud Server Kullanım Alanları" id="ixir-cs-usage-title" class="text-white"}
  </header>
  <ul class="ixir-cs-usage-grid ixir-cs-diff-grid ixir-wh-diff-grid">
   <li>
    <span class="ixir-cs-usage-icon ixir-cs-diff-icon ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-globe"></i></span>
    <div>
     <h3>Web Sitesi Barındırma</h3>
     <p>Paylaşımlı sunucu, internet siteniz için yetersiz geliyorsa yüksek performanslı ve ekonomik bir çözüm
      arıyorsanız Cloud Server hizmeti tam size göre olabilir.</p>
    </div>
   </li>
   <li>
    <span class="ixir-cs-usage-icon ixir-cs-diff-icon ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-shopping-cart"></i></span>
    <div>
     <h3>E-ticaret Sitesi</h3>
     <p>İnternet üzerinden satış yapan bir e-ticaret siteniz var ise yüksek performanslı ve ekonomik Cloud Server
      hizmeti online mağazanız için en uygun seçenek olabilir.</p>
    </div>
   </li>
   <li>
    <span class="ixir-cs-usage-icon ixir-cs-diff-icon ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-flask"></i></span>
    <div>
     <h3>Uygulama Test Sunucusu</h3>
     <p>Henüz hayata geçmemiş projenizi test etmek için bir sunucu arıyor ve çok fazla ücret ödemek istemiyorsanız
      Cloud Server hizmeti sizin için en uygun seçenek olabilir.</p>
    </div>
   </li>
   <li>
    <span class="ixir-cs-usage-icon ixir-cs-diff-icon ixir-wh-diff-icon" aria-hidden="true"><i class="fas fa-cloud"></i></span>
    <div>
     <h3>Uygulama Barındırma</h3>
     <p>Cloud Server hizmetinde tüm uygulamalarınızı güvenle barındırın. İster web ister mobil tabanlı tüm
      uygulamalarınız için Cloud Server sunucu hizmeti en iyi seçenek olabilir.</p>
    </div>
   </li>
  </ul>
 </div>
</section>