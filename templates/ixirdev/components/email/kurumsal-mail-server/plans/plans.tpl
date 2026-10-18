<section class="ixir-kms-plans ixir-wh-plans ixir-mail-plans ixir-slide ixir-slide--right is-slide-on" id="ixir-mail-plans"
 aria-labelledby="ixir-mail-plans-title">
 <script>
  {literal}
   (function() {
    var root = document.getElementById('ixir-kms-plans') || document.getElementById('ixir-mail-plans') || document.getElementById('ixir-wh-plans') || document.querySelector('.ixir-kms-plans, .ixir-mail-plans, .ixir-wh-plans');
    if (!root || !window.IntersectionObserver) return;
    if (window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;
    if (window.matchMedia && window.matchMedia('(max-width: 1024px)').matches) return;
    root.classList.add('is-armed');
   })();
  {/literal}
 </script>
 <div class="container">
  <header class="ixir-kms-plans-head ixir-wh-plans-head ixir-mail-plans-head">
   <div class="ixir-badge-pill ixir-ssl-badge-pill">
    <i class="fas fa-mail-bulk" aria-hidden="true"></i> SUNUCU PAKETLERİ</div>
   {include file="$template/components/Heading.tpl" title="Kurumsal Mail Server Paketleri" id="ixir-mail-plans-title" align="center"}
   <p>İhtiyacınıza uygun paketi seçin.</p>
  </header>
  <div class="ixir-kms-grid ixir-wh-grid">
   <article class="ixir-kms-plan ixir-wh-plan">
    <header class="ixir-kms-plan-head ixir-wh-plan-head">
     <h3>Budget MailServer</h3>
    </header>
    <div class="ixir-kms-price ixir-wh-price">
     <s>2541 TL</s>
     <div class="ixir-kms-amount ixir-wh-amount"><b>1777</b><span>,98</span><small>TL<small>/ay</small></small></div>
     <span class="ixir-kms-save ixir-wh-save">%30 tasarruf</span>
    </div>
    <div class="ixir-kms-billing ixir-wh-billing">
     <button type="button" class="ixir-kms-billing-btn ixir-wh-billing-btn" aria-expanded="false" aria-controls="ixir-wh-bill-budget">Ödeme
      Planları</button>
     <div class="ixir-kms-billing-pop ixir-wh-billing-pop" id="ixir-wh-bill-budget" role="dialog" aria-label="Budget Plan ödeme planı">
      <div class="ixir-kms-billing-top ixir-wh-billing-top">
       <strong>Budget MailServer</strong>
       <button type="button" class="ixir-kms-billing-close ixir-wh-billing-close" aria-label="Kapat">&times;</button>
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
         <td>1 Aylık</td>
         <td>2310,10 TL</td>
         <td>27721,20 TL</td>
        </tr>
        <tr class="is-best">
         <td>1 Yıllık</td>
         <td>1777,98 TL</td>
         <td>21335,80 TL</td>
        </tr>
       </tbody>
      </table>
      <p>* En avantajlı fiyat</p>
     </div>
    </div>
    <a class="ixir-kms-buy ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
    <div class="ixir-kms-quota ixir-wh-quota">
     <div><i class="fas fa-microchip" aria-hidden="true"></i><span>CPU</span><b>2 Core</b></div>
     <div><i class="fas fa-memory" aria-hidden="true"></i><span>RAM(GB)</span><b>4</b></div>
     <div><i class="fas fa-hdd" aria-hidden="true"></i><span>Disk Alanı(GB)</span><b>200</b></div>
     <div><i class="fas fa-users" aria-hidden="true"></i><span>İdeal Kullanım</span><b>~50 Hesap</b></div>
    </div>
   </article>
   <article class="ixir-kms-plan ixir-wh-plan ixir-kms-plan--best ixir-wh-plan--best">
    <span class="ixir-kms-badge ixir-wh-badge">En İyi Tercih</span>
    <header class="ixir-kms-plan-head ixir-wh-plan-head">
     <h3>Economy MailServer</h3>
    </header>
    <div class="ixir-kms-price ixir-wh-price">
     <s>3085 TL</s>
     <div class="ixir-kms-amount ixir-wh-amount"><b>2158</b><span>,98</span><small>TL<small>/ay</small></small></div>
     <span class="ixir-kms-save ixir-wh-save">%30 tasarruf</span>
    </div>
    <div class="ixir-kms-billing ixir-wh-billing">
     <button type="button" class="ixir-kms-billing-btn ixir-wh-billing-btn" aria-expanded="false"
      aria-controls="ixir-wh-bill-essential">Ödeme
      Planları</button>
     <div class="ixir-kms-billing-pop ixir-wh-billing-pop" id="ixir-wh-bill-essential" role="dialog" aria-label="Economy MailServer ödeme planı">
      <div class="ixir-kms-billing-top ixir-wh-billing-top">
       <strong>Economy MailServer</strong>
       <button type="button" class="ixir-kms-billing-close ixir-wh-billing-close" aria-label="Kapat">&times;</button>
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
         <td>1 Aylık</td>
         <td>2508,40 TL</td>
         <td>33664,80 TL</td>
        </tr>
        <tr class="is-best">
         <td>1 Yıllık</td>
         <td>2158,98 TL</td>
         <td>25907,80 TL</td>
        </tr>
       </tbody>
      </table>
      <p>* En avantajlı fiyat</p>
     </div>
    </div>
    <a class="ixir-kms-buy ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
    <div class="ixir-kms-quota ixir-wh-quota">
     <div><i class="fas fa-microchip" aria-hidden="true"></i><span>CPU</span><b>4 Core</b></div>
     <div><i class="fas fa-memory" aria-hidden="true"></i><span>RAM(GB)</span><b>6</b></div>
     <div><i class="fas fa-hdd" aria-hidden="true"></i><span>Disk Alanı(GB)</span><b>400</b></div>
     <div><i class="fas fa-users" aria-hidden="true"></i><span>İdeal Kullanım</span><b>~150 Hesap</b></div>
    </div>
   </article>
   <article class="ixir-kms-plan ixir-wh-plan">
    <header class="ixir-kms-plan-head ixir-wh-plan-head">
     <h3>Professional MailServer</h3>
    </header>
    <div class="ixir-kms-price ixir-wh-price">
     <s>4902 TL</s>
     <div class="ixir-kms-amount ixir-wh-amount"><b>3428</b><span>,98</span><small>TL<small>/ay</small></small></div>
     <span class="ixir-kms-save ixir-wh-save">%30 tasarruf</span>
    </div>
    <div class="ixir-kms-billing ixir-wh-billing">
     <button type="button" class="ixir-kms-billing-btn ixir-wh-billing-btn" aria-expanded="false" aria-controls="ixir-wh-bill-economy">Ödeme
      Planları</button>
     <div class="ixir-kms-billing-pop ixir-wh-billing-pop" id="ixir-wh-bill-economy" role="dialog" aria-label="Professional MailServer ödeme planı">
      <div class="ixir-kms-billing-top ixir-wh-billing-top">
       <strong>Professional MailServer</strong>
       <button type="button" class="ixir-kms-billing-close ixir-wh-billing-close" aria-label="Kapat">&times;</button>
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
         <td>1 Aylık</td>
         <td>4456,40 TL</td>
         <td>53476,80 TL</td>
        </tr>
        <tr class="is-best">
         <td>1 Yıllık</td>
         <td>3428,98 TL</td>
         <td>41147,80 TL</td>
        </tr>
       </tbody>
      </table>
      <p>* En avantajlı fiyat</p>
     </div>
    </div>
    <a class="ixir-kms-buy ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
    <div class="ixir-kms-quota ixir-wh-quota">
     <div><i class="fas fa-microchip" aria-hidden="true"></i><span>CPU</span><b>6 Core</b></div>
     <div><i class="fas fa-memory" aria-hidden="true"></i><span>RAM(GB)</span><b>8</b></div>
     <div><i class="fas fa-hdd" aria-hidden="true"></i><span>Disk Alanı(GB)</span><b>600</b></div>
     <div><i class="fas fa-users" aria-hidden="true"></i><span>İdeal Kullanım</span><b>~300 Hesap</b></div>
    </div>
   </article>
   <article class="ixir-kms-plan ixir-wh-plan">
    <header class="ixir-kms-plan-head ixir-wh-plan-head">
     <h3>Expert MailServer</h3>
    </header>
    <div class="ixir-kms-price ixir-wh-price">
     <s>9079,07 TL</s>
     <div class="ixir-kms-amount ixir-wh-amount"><b>6349</b><span>,98</span><small>TL<small>/ay</small></small></div>
     <span class="ixir-kms-save ixir-wh-save">%30 tasarruf</span>
    </div>
    <div class="ixir-kms-billing ixir-wh-billing">
     <button type="button" class="ixir-kms-billing-btn ixir-wh-billing-btn" aria-expanded="false"
      aria-controls="ixir-wh-bill-professional">Ödeme
      Planları</button>
     <div class="ixir-kms-billing-pop ixir-wh-billing-pop" id="ixir-wh-bill-professional" role="dialog"
      aria-label="Expert MailServer ödeme planı">
      <div class="ixir-kms-billing-top ixir-wh-billing-top">
       <strong>Expert MailServer</strong>
       <button type="button" class="ixir-kms-billing-close ixir-wh-billing-close" aria-label="Kapat">&times;</button>
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
         <td>1 Aylık</td>
         <td>8253,70 TL</td>
         <td>99044,40 TL</td>
        </tr>
        <tr class="is-best">
         <td>1 Yıllık</td>
         <td>6349,98 TL</td>
         <td>76199,80 TL</td>
        </tr>
       </tbody>
      </table>
      <p>* En avantajlı fiyat</p>
     </div>
    </div>
    <a class="ixir-kms-buy ixir-wh-buy" href="{$WEB_ROOT}/sepet">Satın Al</a>
    <div class="ixir-kms-quota ixir-wh-quota">
     <div><i class="fas fa-microchip" aria-hidden="true"></i><span>CPU</span><b>8 Core</b></div>
     <div><i class="fas fa-memory" aria-hidden="true"></i><span>RAM(GB)</span><b>16</b></div>
     <div><i class="fas fa-hdd" aria-hidden="true"></i><span>Disk Alanı(GB)</span><b>1000</b></div>
     <div><i class="fas fa-users" aria-hidden="true"></i><span>İdeal Kullanım</span><b>~600 Hesap</b></div>
    </div>
   </article>
  </div>
  <div class="ixir-kms-shared-box ixir-wh-shared-box">
   <div class="ixir-kms-shared-head ixir-wh-shared-head">
    <p class="ixir-kms-shared-label ixir-wh-shared-label">Tüm paketlerde ortak bulunan özellikler</p>
    <span>Hangi paketi seçerseniz seçin, aşağıdaki özelliklerin tamamı dahildir.</span>
   </div>
   <ul class="ixir-kms-shared ixir-wh-shared ixir-kms-shared--5 ixir-wh-shared--5 ixir-kms-shared--click ixir-wh-shared--click" id="ixir-km-shared" data-visible="10">
    <li><i class="fas fa-globe" aria-hidden="true"></i>Sınırsız Domain Barındırma<span class="ixir-kms-tip ixir-wh-tip"><button
       type="button" class="ixir-kms-tip-btn ixir-wh-tip-btn" aria-label="Sınırsız Domain Barındırma açıklaması"><i class="fas fa-info-circle"
        aria-hidden="true"></i></button><span class="ixir-kms-tip-box ixir-wh-tip-box" role="tooltip">İstediğiniz kadar domain ile mail oluşturun.</span></span></li>
    <li><i class="fas fa-shield-alt" aria-hidden="true"></i>%100 KVKK Uyumlu<span class="ixir-kms-tip ixir-wh-tip"><button
       type="button" class="ixir-kms-tip-btn ixir-wh-tip-btn" aria-label="%100 KVKK Uyumlu açıklaması"><i class="fas fa-info-circle"
        aria-hidden="true"></i></button><span class="ixir-kms-tip-box ixir-wh-tip-box" role="tooltip">Tüm yasal mevzuata tam uyumluluk</span></span></li>
    <li><i class="fas fa-calendar-alt" aria-hidden="true"></i>Paylaşımlı Takvim<span class="ixir-kms-tip ixir-wh-tip"><button
       type="button" class="ixir-kms-tip-btn ixir-wh-tip-btn" aria-label="Paylaşımlı Takvim açıklaması"><i class="fas fa-info-circle"
        aria-hidden="true"></i></button><span class="ixir-kms-tip-box ixir-wh-tip-box" role="tooltip">Ekip iş birliği ve randevu yönetimi</span></span></li>
    <li><i class="fas fa-user-shield" aria-hidden="true"></i>Gelişmiş Güvenlik<span class="ixir-kms-tip ixir-wh-tip"><button
       type="button" class="ixir-kms-tip-btn ixir-wh-tip-btn" aria-label="Gelişmiş Güvenlik açıklaması"><i class="fas fa-info-circle"
        aria-hidden="true"></i></button><span class="ixir-kms-tip-box ixir-wh-tip-box" role="tooltip">Anti-Spam ve Anti-Virüs koruması</span></span></li>
    <li><i class="fas fa-network-wired" aria-hidden="true"></i>Dedicated IP<span class="ixir-kms-tip ixir-wh-tip"><button
       type="button" class="ixir-kms-tip-btn ixir-wh-tip-btn" aria-label="Dedicated IP açıklaması"><i class="fas fa-info-circle"
        aria-hidden="true"></i></button><span class="ixir-kms-tip-box ixir-wh-tip-box" role="tooltip">Size özel IP — mail itibarınız güvende</span></span></li>
    <li><i class="fas fa-certificate" aria-hidden="true"></i>DKIM / SPF / DMARC<span class="ixir-kms-tip ixir-wh-tip"><button
       type="button" class="ixir-kms-tip-btn ixir-wh-tip-btn" aria-label="DKIM / SPF / DMARC açıklaması"><i
        class="fas fa-info-circle" aria-hidden="true"></i></button><span class="ixir-kms-tip-box ixir-wh-tip-box" role="tooltip">E-posta kimlik doğrulama kurulum dahil</span></span></li>
    <li><i class="fas fa-envelope-open-text" aria-hidden="true"></i>Sınırsız E-Posta Hesabı</li>
    <li><i class="fas fa-paper-plane" aria-hidden="true"></i>Sınırsız Gönderim Kotası</li>
    <li><i class="fas fa-sync-alt" aria-hidden="true"></i>POP/IMAP/SMTP</li>
    <li><i class="fas fa-lock" aria-hidden="true"></i>Ücretsiz SSL Sertifikası</li>
   </ul>
  </div>
 </div>
</section>