 <section class="ixir-wh-plans ixir-slide ixir-slide--right is-slide-on" id="ixir-wh-plans"
  aria-labelledby="ixir-wh-plans-title">
  <script>
   {literal}
    (function() {
     var root = document.getElementById('ixir-wh-plans');
     if (!root || !window.IntersectionObserver) return;
     if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
     if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
     root.classList.add('is-armed');
    })();
   {/literal}
  </script>
  <div class="container">
   <header class="ixir-wh-plans-head">
    <div class="ixir-badge-pill ixir-ssl-badge-pill">
     <i class="fas fa-bolt" aria-hidden="true"></i> LINUX PAKETLERİ
    </div>
    {include file="$template/components/Heading.tpl" title="Linux Hosting Paketleri" id="ixir-wh-plans-title" align="center"}
    <p>İhtiyacınıza uygun paketi seçin, sitenizi hemen yayına alın.</p>
   </header>
   <div class="ixir-wh-grid">
    <article class="ixir-wh-plan">
     <header class="ixir-wh-plan-head">
      <h3>Starter</h3>
      <p>Web dünyasında yeni olan ve yeni başlayanlar için</p>
     </header>
     <div class="ixir-wh-price">
      <s>111,24 TL</s>
      <div class="ixir-wh-amount"><b>70</b><span>,47</span><small>TL<small>/ay</small></small></div>
      <span class="ixir-wh-save">%50 tasarruf</span>
     </div>
     <div class="ixir-wh-billing">
      <button type="button" class="ixir-wh-billing-btn" aria-expanded="false" aria-controls="ixir-wh-bill-starter">Ödeme
       Planları</button>
      <div class="ixir-wh-billing-pop" id="ixir-wh-bill-starter" role="dialog" aria-label="Starter ödeme planı">
       <div class="ixir-wh-billing-top">
        <strong>Starter Planı</strong>
        <button type="button" class="ixir-wh-billing-close" aria-label="Kapat">&times;</button>
       </div>
       <table>
        <thead>
         <tr>
          <th>Periyot</th>
          <th>Aylık</th>
          <th>Toplam</th>
         </tr>
        </thead>
        <tbody>
         <tr>
          <td>1 Yıllık</td>
          <td>85,57 TL</td>
          <td>1026,80 TL</td>
         </tr>
         <tr>
          <td>2 Yıllık</td>
          <td>77,25 TL</td>
          <td>1853 TL</td>
         </tr>
         <tr class="is-best">
          <td>3 Yıllık</td>
          <td>70,47 TL</td>
          <td>2537 TL</td>
         </tr>
        </tbody>
       </table>
       <p>* En avantajlı fiyat</p>
      </div>
     </div>
     <a class="ixir-wh-buy" data-pid="211" data-name="Starter" data-product="Linux Hosting"
      data-billingcycle="triennially" href="#">Satın Al</a>
     <ul class="ixir-wh-specs">
      <li><span>Web sitesi adeti</span><b>1<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="Web sitesi açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Starter planında yalnızca 1 domain
          barındırabilirsiniz.</span></span></b></li>
      <li><span>NVMe disk boyutu(GB)</span><b>1<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="NVMe açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Enterprise NVMe ile geleneksel depolama birimlerine göre 40 kat daha
          fazla hız, daha fazla I/O sağlıyoruz.</span></span></b></li>
      <li><span>Trafik boyutu(GB)</span><b>10</b></li>
      <li><span>E-posta adeti</span><b>10</b></li>
      <li><span>İşlemci</span><b>1 Core Intel Gold CPU<span class="ixir-wh-tip"><button type="button"
          class="ixir-wh-tip-btn" aria-label="İşlemci açıklaması"><i class="fas fa-info-circle"
           aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">En yeni nesil Intel Xeon Gold
          işlemcilerle 5 kata kadar daha fazla
          performans.</span></span></b></li>
      <li><span>RAM boyutu(MB)</span><b>512</b></li>
     </ul>
     <a class="ixir-wh-more" href="#ixir-wh-compare">Diğer Özellikleri Gör <i class="fas fa-chevron-down"
       aria-hidden="true"></i></a>
    </article>
    <article class="ixir-wh-plan">
     <header class="ixir-wh-plan-head">
      <h3>Essential</h3>
      <p>Çoklu web sitesi barındırmak isteyenler için</p>
     </header>
     <div class="ixir-wh-price">
      <s>191,21 TL</s>
      <div class="ixir-wh-amount"><b>122</b><span>,00</span><small>TL<small>/ay</small></small></div>
      <span class="ixir-wh-save">%50 tasarruf</span>
     </div>
     <div class="ixir-wh-billing">
      <button type="button" class="ixir-wh-billing-btn" aria-expanded="false"
       aria-controls="ixir-wh-bill-essential">Ödeme
       Planları</button>
      <div class="ixir-wh-billing-pop" id="ixir-wh-bill-essential" role="dialog" aria-label="Essential ödeme planı">
       <div class="ixir-wh-billing-top">
        <strong>Essential Planı</strong>
        <button type="button" class="ixir-wh-billing-close" aria-label="Kapat">&times;</button>
       </div>
       <table>
        <thead>
         <tr>
          <th>Periyot</th>
          <th>Aylık</th>
          <th>Toplam</th>
         </tr>
        </thead>
        <tbody>
         <tr>
          <td>1 Yıllık</td>
          <td>147,17 TL</td>
          <td>1765 TL</td>
         </tr>
         <tr>
          <td>2 Yıllık</td>
          <td>132,99 TL</td>
          <td>3192 TL</td>
         </tr>
         <tr class="is-best">
          <td>3 Yıllık</td>
          <td>122,00 TL</td>
          <td>4392 TL</td>
         </tr>
        </tbody>
       </table>
       <p>* En avantajlı fiyat</p>
      </div>
     </div>
     <a class="ixir-wh-buy" data-pid="212" data-name="Essential" data-product="Linux Hosting"
      data-billingcycle="triennially" href="#">Satın Al</a>
     <ul class="ixir-wh-specs">
      <li><span>Web sitesi adeti</span><b>3<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="Web sitesi açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">3 adet web sitesi, hosting planınızda ana
          domain ile birlikte toplamda
          3
          adet domain barındırabilmenizi sağlar.</span></span></b></li>
      <li><span>NVMe disk boyutu</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button"
          class="ixir-wh-tip-btn" aria-label="NVMe açıklaması"><i class="fas fa-info-circle"
           aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Enterprise NVMe ile geleneksel
          depolama birimlerine göre 40 kat daha
          fazla hız, daha fazla I/O sağlıyoruz. Hosting planınızda limitlendirilmemiş
          depolama alanı sunuyoruz. Ancak
          adil kullanım politikaları geçerlidir.</span></span></b></li>
      <li><span>Trafik boyutu</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="Trafik açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Limitsiz trafik, hosting planınızda
          limitlendirilmemiş trafik sağlar.
          Ancak adil kullanım politikaları geçerlidir.</span></span></b></li>
      <li><span>E-posta adeti</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="E-posta açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Limitsiz e-posta, hosting planınızda
          limitlendirilmemiş posta kutusu
          sayısını ifade eder. Ancak adil kullanım politikaları geçerlidir.</span></span></b>
      </li>
      <li><span>İşlemci</span><b>1 Core Intel Gold CPU<span class="ixir-wh-tip"><button type="button"
          class="ixir-wh-tip-btn" aria-label="İşlemci açıklaması"><i class="fas fa-info-circle"
           aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">En yeni nesil Intel Xeon Gold
          işlemcilerle 5 kata kadar daha fazla
          performans.</span></span></b></li>
      <li><span>RAM boyutu(MB)</span><b>1024</b></li>
     </ul>
     <a class="ixir-wh-more" href="#ixir-wh-compare">Diğer Özellikleri Gör <i class="fas fa-chevron-down"
       aria-hidden="true"></i></a>
    </article>
    <article class="ixir-wh-plan ixir-wh-plan--best">
     <span class="ixir-wh-badge">En İyi Tercih</span>
     <header class="ixir-wh-plan-head">
      <h3>Advanced</h3>
      <p>Çoklu web sitesi ve yüksek performans isteyenler için</p>
     </header>
     <div class="ixir-wh-price">
      <s>268,45 TL</s>
      <div class="ixir-wh-amount"><b>173</b><span>,42</span><small>TL<small>/ay</small></small></div>
      <span class="ixir-wh-save">%50 tasarruf</span>
     </div>
     <div class="ixir-wh-billing">
      <button type="button" class="ixir-wh-billing-btn" aria-expanded="false"
       aria-controls="ixir-wh-bill-advanced">Ödeme Planları</button>
      <div class="ixir-wh-billing-pop" id="ixir-wh-bill-advanced" role="dialog" aria-label="Advanced ödeme planı">
       <div class="ixir-wh-billing-top">
        <strong>Advanced Planı</strong>
        <button type="button" class="ixir-wh-billing-close" aria-label="Kapat">&times;</button>
       </div>
       <table>
        <thead>
         <tr>
          <th>Periyot</th>
          <th>Aylık</th>
          <th>Toplam</th>
         </tr>
        </thead>
        <tbody>
         <tr>
          <td>1 Yıllık</td>
          <td>206,58 TL</td>
          <td>2478 TL</td>
         </tr>
         <tr>
          <td>2 Yıllık</td>
          <td>188,86 TL</td>
          <td>4531 TL</td>
         </tr>
         <tr class="is-best">
          <td>3 Yıllık</td>
          <td>173,42 TL</td>
          <td>6244 TL</td>
         </tr>
        </tbody>
       </table>
       <p>* En avantajlı fiyat</p>
      </div>
     </div>
     <a class="ixir-wh-buy" data-pid="213" data-name="Advanced" data-product="Linux Hosting"
      data-billingcycle="triennially" href="#">Satın Al</a>
     <ul class="ixir-wh-specs">
      <li><span>Web sitesi adeti</span><b>10<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="Web sitesi açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">10 adet web sitesi, hosting planınızda ana
          domain ile birlikte toplamda
          10 adet alt domain barındırabilmenizi sağlar.</span></span></b></li>
      <li><span>NVMe disk boyutu</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button"
          class="ixir-wh-tip-btn" aria-label="NVMe açıklaması"><i class="fas fa-info-circle"
           aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Enterprise NVMe ile geleneksel
          depolama birimlerine göre 40 kat daha
          fazla hız, daha fazla I/O sağlıyoruz. Hosting planınızda limitlendirilmemiş
          depolama alanı sunuyoruz. Ancak
          adil kullanım politikaları geçerlidir.</span></span></b></li>
      <li><span>Trafik boyutu</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="Trafik açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Limitsiz trafik, hosting planınızda
          limitlendirilmemiş trafik sağlar.
          Ancak adil kullanım politikaları geçerlidir.</span></span></b></li>
      <li><span>E-posta adeti</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="E-posta açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Limitsiz e-posta, hosting planınızda
          limitlendirilmemiş posta kutusu
          sayısını ifade eder. Ancak adil kullanım politikaları geçerlidir.</span></span></b>
      </li>
      <li><span>İşlemci</span><b>2 Core Intel Gold CPU<span class="ixir-wh-tip"><button type="button"
          class="ixir-wh-tip-btn" aria-label="İşlemci açıklaması"><i class="fas fa-info-circle"
           aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">En yeni nesil Intel Xeon Gold
          işlemcilerle 5 kata kadar daha fazla
          performans.</span></span></b></li>
      <li><span>RAM boyutu(MB)</span><b>2048</b></li>
     </ul>
     <a class="ixir-wh-more" href="#ixir-wh-compare">Diğer Özellikleri Gör <i class="fas fa-chevron-down"
       aria-hidden="true"></i></a>
    </article>
    <article class="ixir-wh-plan">
     <header class="ixir-wh-plan-head">
      <h3>Premium</h3>
      <p>Sınırsız web sitesi ve yüksek performans isteyenler için</p>
     </header>
     <div class="ixir-wh-price">
      <s>389,24 TL</s>
      <div class="ixir-wh-amount"><b>250</b><span>,33</span><small>TL<small>/ay</small></small></div>
      <span class="ixir-wh-save">%50 tasarruf</span>
     </div>
     <div class="ixir-wh-billing">
      <button type="button" class="ixir-wh-billing-btn" aria-expanded="false" aria-controls="ixir-wh-bill-premium">Ödeme
       Planları</button>
      <div class="ixir-wh-billing-pop" id="ixir-wh-bill-premium" role="dialog" aria-label="Premium ödeme planı">
       <div class="ixir-wh-billing-top">
        <strong>Premium Planı</strong>
        <button type="button" class="ixir-wh-billing-close" aria-label="Kapat">&times;</button>
       </div>
       <table>
        <thead>
         <tr>
          <th>Periyot</th>
          <th>Aylık</th>
          <th>Toplam</th>
         </tr>
        </thead>
        <tbody>
         <tr>
          <td>1 Yıllık</td>
          <td>299,40 TL</td>
          <td>3593 TL</td>
         </tr>
         <tr>
          <td>2 Yıllık</td>
          <td>273,33 TL</td>
          <td>6560 TL</td>
         </tr>
         <tr class="is-best">
          <td>3 Yıllık</td>
          <td>250,33 TL</td>
          <td>9012 TL</td>
         </tr>
        </tbody>
       </table>
       <p>* En avantajlı fiyat</p>
      </div>
     </div>
     <a class="ixir-wh-buy" data-pid="324" data-name="Premium" data-product="Linux Hosting"
      data-billingcycle="triennially" href="#">Satın Al</a>
     <ul class="ixir-wh-specs">
      <li><span>Web sitesi adeti</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button"
          class="ixir-wh-tip-btn" aria-label="Web sitesi açıklaması"><i class="fas fa-info-circle"
           aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Limitsiz web sitesi, hosting
          planınızda limitlendirilmemiş
          barındırabileceğiniz alt domain sayısını ifade eder. Ancak adil kullanım
          politikaları
          geçerlidir.</span></span></b></li>
      <li><span>NVMe disk boyutu</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button"
          class="ixir-wh-tip-btn" aria-label="NVMe açıklaması"><i class="fas fa-info-circle"
           aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Enterprise NVMe ile geleneksel
          depolama birimlerine göre 40 kat daha
          fazla hız, daha fazla I/O sağlıyoruz. Hosting planınızda limitlendirilmemiş
          depolama alanı sunuyoruz. Ancak
          adil kullanım politikaları geçerlidir.</span></span></b></li>
      <li><span>Trafik boyutu</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="Trafik açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Limitsiz trafik, hosting planınızda
          limitlendirilmemiş trafik sağlar.
          Ancak adil kullanım politikaları geçerlidir.</span></span></b></li>
      <li><span>E-posta adeti</span><b>Limitsiz<span class="ixir-wh-tip"><button type="button" class="ixir-wh-tip-btn"
          aria-label="E-posta açıklaması"><i class="fas fa-info-circle" aria-hidden="true"></i></button><span
          class="ixir-wh-tip-box" role="tooltip">Limitsiz e-posta, hosting planınızda
          limitlendirilmemiş posta kutusu
          sayısını ifade eder. Ancak adil kullanım politikaları geçerlidir.</span></span></b>
      </li>
      <li><span>İşlemci</span><b>2 Core Intel Gold CPU<span class="ixir-wh-tip"><button type="button"
          class="ixir-wh-tip-btn" aria-label="İşlemci açıklaması"><i class="fas fa-info-circle"
           aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">En yeni nesil Intel Xeon Gold
          işlemcilerle 5 kata kadar daha fazla
          performans.</span></span></b></li>
      <li><span>RAM boyutu(MB)</span><b>4096</b></li>
     </ul>
     <a class="ixir-wh-more" href="#ixir-wh-compare">Diğer Özellikleri Gör <i class="fas fa-chevron-down"
       aria-hidden="true"></i></a>
    </article>
   </div>
   <div class="ixir-wh-shared-box">
    <div class="ixir-wh-shared-head">
     <p class="ixir-wh-shared-label">Tüm paketlerde ortak bulunan özellikler</p>
     <span>Hangi paketi seçerseniz seçin, aşağıdaki özelliklerin tamamı dahildir.</span>
    </div>
    <ul class="ixir-wh-shared ixir-wh-shared--click ixir-wh-shared--5" id="ixir-wh-linux-shared" data-visible="10">
     <li><i class="fas fa-globe" aria-hidden="true"></i>Ücretsiz COM.TR domain<span class="ixir-wh-tip"><button
        type="button" class="ixir-wh-tip-btn" aria-label="COM.TR domain açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Yalnızca
        yeni siparişte ve 1 yıl
        geçerlidir, yeni sipariş verirken sepete ekleyebilirsiniz, sonradan bu hak
        kullanılamaz.</span></span></li>
     <li><i class="fas fa-rocket" aria-hidden="true"></i>LiteSpeed Web Server<span class="ixir-wh-tip"><button
        type="button" class="ixir-wh-tip-btn" aria-label="LiteSpeed açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Geleneksel
        Apache web server'ına
        göre 10 kat daha fazla performans sağlar.</span></span></li>
     <li><i class="fas fa-bolt" aria-hidden="true"></i>LiteSpeed Cache<span class="ixir-wh-tip"><button type="button"
        class="ixir-wh-tip-btn" aria-label="LiteSpeed Cache açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">LiteSpeed Cache önbellekleme ile
        web
        sitenizin performansını artırabilirsiniz, özellikle WordPress siteler ile
        uyumludur.</span></span></li>
     <li><i class="fas fa-search" aria-hidden="true"></i>PHP X-RAY<span class="ixir-wh-tip"><button type="button"
        class="ixir-wh-tip-btn" aria-label="PHP X-RAY açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">PHP X-Ray ile web sitenizin hız ve
        performansını analiz edebilir ve iyileştirmeler yapabilirsiniz.</span></span></li>
     <li><i class="fas fa-tachometer-alt" aria-hidden="true"></i>Accelerate WP<span class="ixir-wh-tip"><button
        type="button" class="ixir-wh-tip-btn" aria-label="Accelerate WP açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">AccelerateWP, LiteSpeed Cache
        yerine
        kullanabileceğiniz WordPress hızlandırma platformudur, sayfa yükleme sürelerini optimize
        eder.</span></span>
     </li>
     <li><i class="fas fa-shield-alt" aria-hidden="true"></i>Imunify360 WAF<span class="ixir-wh-tip"><button
        type="button" class="ixir-wh-tip-btn" aria-label="Imunify360 açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Web sitelerinizi malware, virüs ve
        DDoS saldırılarından koruyan gelişmiş bir çözümdür.</span></span></li>
     <li><i class="fas fa-shield-alt" aria-hidden="true"></i>CageFS</li>
     <li><i class="fas fa-compress-alt" aria-hidden="true"></i>Gzip / Brotli İçerik Sıkıştırma</li>
     <li><i class="fas fa-history" aria-hidden="true"></i>JetBackup yedekleme<span class="ixir-wh-tip"><button
        type="button" class="ixir-wh-tip-btn" aria-label="JetBackup açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">Adil
        kullanım politikasına uygun
        hesabınız haftalık olarak ücretsiz yedeklenir. Panelinizden isterseniz tüm yedeği,
        isterseniz dosya, mail veya
        veritabanı bazlı yedeklerden geri dönebilirsiniz.</span></span></li>
     <li><i class="fas fa-lock" aria-hidden="true"></i>Ücretsiz SSL<span class="ixir-wh-tip"><button type="button"
        class="ixir-wh-tip-btn" aria-label="SSL açıklaması"><i class="fas fa-info-circle"
         aria-hidden="true"></i></button><span class="ixir-wh-tip-box" role="tooltip">SSL sertifikanız otomatik kurulur
        ve
        ömür boyu ücretsizdir.</span></span></li>
     <li><i class="fab fa-linux" aria-hidden="true"></i>Cloud Linux OS</li>
     <li><i class="fas fa-th-large" aria-hidden="true"></i>cPanel kontrol paneli</li>
    </ul>
    <div class="ixir-wh-shared-more">
     <button type="button" class="ixir-wh-shared-more-btn" aria-controls="ixir-wh-linux-shared" aria-expanded="false">
      <span class="ixir-wh-shared-more-text">Diğer Özellikler</span>
      <span class="ixir-wh-shared-more-count">+2</span>
      <i class="fas fa-chevron-down" aria-hidden="true"></i>
     </button>
    </div>
   </div>
  </div>
</section>