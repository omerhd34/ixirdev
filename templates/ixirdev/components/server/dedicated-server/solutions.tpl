<section class="ds-solutions-section ixir-slide ixir-slide--left is-slide-on">
 <div class="container text-center">
  <header class="ixir-wh-plans-head ixir-ds-head ds-solutions-title-wrapper" style="max-width: 1000px;">
   <h2>Farklı Altyapı Çözümleri</h2>
   <p>Dedicated server servislerinize ek olarak altyapımızda yedekli olarak bulunan <b>Citrix® Netscaler®</b> cihazları
    ile Web Sitelerinize güç katıyoruz. Dedicated Server, Kiralık Sunucu'da yalnızca hizmet sağlamıyor, tam kapsamlı
    sunucu kiralama çözümleri üretiyoruz. Saldırılardan koruyabiliyor, yük dengeleme yapabiliyor, içeriğinizi
    önbellekleme yapabiliyor, sunucu yükünüzü
    <b>%80'e varan oranlarla</b> azaltabiliyoruz.
   </p>
  </header>

  <div class="ds-solutions-device">
   <img src="{$WEB_ROOT}/templates/{$template}/img/server/citrix.webp" alt="Citrix Netscaler" loading="lazy">
  </div>

  <div class="ds-solutions-features">
   <div class="ds-sol-feat">
    <div class="ds-sol-icon">
     <i class="fas fa-shield-alt"></i>
    </div>
    <span>FIREWALL<br>SERVICES</span>
   </div>
   <div class="ds-sol-feat">
    <div class="ds-sol-icon">
     <i class="fas fa-rocket"></i>
    </div>
    <span>APPLICATION<br>FIREWALL</span>
   </div>
   <div class="ds-sol-feat">
    <div class="ds-sol-icon">
     <i class="fas fa-balance-scale"></i>
    </div>
    <span>LOAD<br>BALANCER</span>
   </div>
   <div class="ds-sol-feat">
    <div class="ds-sol-icon">
     <i class="fas fa-sitemap"></i>
    </div>
    <span>CACHING<br>SERVICES</span>
   </div>
   <div class="ds-sol-feat">
    <div class="ds-sol-icon">
     <i class="fas fa-hourglass-half"></i>
    </div>
    <span>TCP<br>OFFLOAD</span>
   </div>
   <div class="ds-sol-feat">
    <div class="ds-sol-icon">
     <i class="fas fa-file-archive"></i>
    </div>
    <span>HTTP<br>COMPRESSION</span>
   </div>
  </div>
 </div>

 <style>
  {literal}
   .ds-solutions-section {
    padding: 7rem 0;
    position: relative;
    color: #fff;
    overflow: hidden;
   }

   .ds-solutions-section::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(15, 23, 42, 0.85);
    z-index: 1;
   }

   .ds-solutions-section .container {
    position: relative;
    z-index: 2;
   }

   .ds-solutions-title-wrapper {
    margin-bottom: 3rem;
   }

   .ds-solutions-title-wrapper h2 {
    color: #fff !important;
   }

   .ds-solutions-title-wrapper p {
    color: #cbd5e1 !important;
   }

   .ds-solutions-title-wrapper p b {
    color: #f8fafc !important;
   }

   .ds-solutions-device {
    margin: 4rem 0 2rem 0;
    position: relative;
   }

   .ds-solutions-device::after {
    content: '';
    position: absolute;
    top: 100%;
    left: 50%;
    width: 1px;
    height: 2.1rem;
    background: rgba(255, 255, 255, 0.25);
    transform: translateX(-50%);
   }

   .ds-solutions-device img {
    max-width: 100%;
    width: 600px;
    height: auto;
    filter: drop-shadow(0 25px 40px rgba(0, 0, 0, 0.8));
    transition: transform 0.4s ease;
   }

   .ds-solutions-device:hover img {
    transform: scale(1.03);
   }

   .ds-solutions-features {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 2rem;
    max-width: 1100px;
    margin: 0 auto;
    position: relative;
    padding-top: 2rem;
   }

   .ds-solutions-features::before {
    content: '';
    position: absolute;
    top: 0;
    left: calc(8.3333% - 0.8333rem);
    right: calc(8.3333% - 0.8333rem);
    height: 1px;
    background: rgba(255, 255, 255, 0.25);
   }

   .ds-sol-feat {
    flex: 1;
    min-width: 130px;
    text-align: center;
    position: relative;
   }

   .ds-sol-feat::before {
    content: '';
    position: absolute;
    top: -2rem;
    left: 50%;
    width: 1px;
    height: 4.1rem;
    background: rgba(255, 255, 255, 0.25);
    transform: translateX(-50%);
   }

   .ds-sol-icon {
    width: 70px;
    height: 70px;
    margin: 2rem auto 1.5rem auto;
    border-radius: 50%;
    background: rgba(15, 23, 42, 0.6);
    border: 1px solid rgba(255, 255, 255, 0.1);
    display: flex;
    align-items: center;
    justify-content: center;
    transition: all 0.3s ease;
    box-shadow: inset 0 2px 10px rgba(255, 255, 255, 0.05);
   }

   .ds-sol-feat i {
    font-size: 1.75rem;
    color: #e2e8f0;
    transition: all 0.3s ease;
   }

   .ds-sol-feat:hover .ds-sol-icon {
    background: #3b82f6;
    border-color: #3b82f6;
    transform: translateY(-5px);
    box-shadow: 0 10px 20px rgba(59, 130, 246, 0.3);
   }

   .ds-sol-feat:hover i {
    color: #fff;
   }

   .ds-sol-feat span {
    display: block;
    font-size: 0.85rem;
    font-weight: 700;
    color: #cbd5e1;
    letter-spacing: 1px;
    text-transform: uppercase;
    line-height: 1.4;
   }

   @media (max-width: 768px) {
    .ds-solutions-features {
     justify-content: center;
    }

    .ds-sol-feat {
     flex: 0 0 45%;
    }

    .ds-solutions-features::before,
    .ds-sol-feat::before {
     display: none;
    }

    .ds-sol-icon {
     margin-top: 0;
    }
   }

  {/literal}
 </style>
 <style>
  .ds-solutions-section {
   background: url('{$WEB_ROOT}/templates/{$template}/img/server/firewall.webp') center/cover no-repeat fixed;
  }
 </style>
</section>