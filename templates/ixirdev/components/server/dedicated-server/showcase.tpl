<section class="ds-showcase-section ds-hero-showcase ixir-slide ixir-slide--left is-slide-on">
 <div class="container">
  <style>
   {literal}
    .ds-hero-showcase {
     padding: 6rem 2rem;
     border-radius: 0;
     background: radial-gradient(circle at center, rgba(30, 41, 59, 0.6) 0%, rgba(15, 23, 42, 0.9) 100%);
     position: relative;
     overflow: hidden;
     text-align: center;
    }

    .ds-hero-showcase::before {
     content: '';
     position: absolute;
     top: 0;
     left: 0;
     width: 100%;
     height: 100%;
     background: url('/templates/ixirdev/img/server/bg18.webp') center/cover no-repeat;
     opacity: 0.35;
     pointer-events: none;
    }

    .ds-showcase-title-wrapper {
     position: relative;
     z-index: 2;
     margin-bottom: 4rem;
     text-shadow: 0 2px 4px rgba(0, 0, 0, 0.6);
    }

    .ds-showcase-title-wrapper h2 {
     color: #ffffff !important;
    }

    .ds-showcase-title-wrapper p {
     color: #e2e8f0 !important;
    }

    .ds-showcase-visual {
     position: relative;
     z-index: 2;
     display: inline-block;
     margin-bottom: 5rem;
     perspective: 1000px;
    }

    .ds-rack-stack {
     display: flex;
     flex-direction: column;
     gap: 3px;
     transform: rotateX(5deg);
     transition: transform 0.5s ease;
     filter: drop-shadow(0 25px 50px rgba(0, 0, 0, 0.6));
    }

    .ds-rack-stack:hover {
     transform: rotateX(0deg) scale(1.02);
    }

    .ds-rack-stack img.rack {
     width: 900px;
     max-width: 100%;
     height: auto;
    }

    .ds-showcase-badges {
     position: absolute;
     bottom: -18px;
     left: 50%;
     transform: translateX(-50%);
     display: flex;
     gap: 1rem;
     z-index: 3;
    }

    .ds-showcase-badge {
     padding: 0.5rem 1.25rem;
     border-radius: 30px;
     font-size: 0.85rem;
     font-weight: 700;
     display: flex;
     align-items: center;
     gap: 0.5rem;
     box-shadow: 0 10px 20px rgba(0, 0, 0, 0.4);
     letter-spacing: 0.05em;
     text-transform: uppercase;
    }

    .ds-badge-gold {
     background: linear-gradient(135deg, #eab308 0%, #b45309 100%);
     color: #fff;
     border: 1px solid #fef08a;
    }

    .ds-badge-platinum {
     background: linear-gradient(135deg, #f8fafc 0%, #94a3b8 100%);
     color: #0f172a;
     border: 1px solid #ffffff;
    }

    .ds-showcase-stats {
     display: flex;
     justify-content: center;
     gap: 8rem;
     margin-bottom: 5rem;
     position: relative;
     z-index: 2;
    }

    .ds-stat {
     text-align: center;
     position: relative;
    }

    .ds-stat:not(:last-child)::after {
     content: '';
     position: absolute;
     right: -4rem;
     top: 50%;
     transform: translateY(-50%);
     height: 50px;
     width: 1px;
     background: rgba(255, 255, 255, 0.1);
    }

    .ds-stat-val {
     font-size: 4rem;
     font-weight: 900;
     line-height: 1;
     margin-bottom: 0.75rem;
     background: linear-gradient(135deg, #ffffff 0%, #94a3b8 100%);
     background-clip: text;
     -webkit-text-fill-color: transparent;
     text-shadow: 0 10px 30px rgba(255, 255, 255, 0.1);
     display: block;
     font-family: system-ui, -apple-system, sans-serif;
    }

    .ds-stat-lbl {
     font-size: 1.15rem;
     color: #cbd5e1;
     font-weight: 600;
     line-height: 1.4;
     display: block;
    }

    .ds-showcase-features {
     display: grid;
     grid-template-columns: 1fr 1fr;
     gap: 2rem;
     max-width: 900px;
     margin: 0 auto;
     text-align: left;
     position: relative;
     z-index: 2;
    }

    .ds-feat-col {
     background: rgba(15, 23, 42, 0.6);
     padding: 2.5rem;
     border-radius: 20px;
     border: 1px solid rgba(255, 255, 255, 0.05);
     backdrop-filter: blur(10px);
     transition: transform 0.3s ease, border-color 0.3s ease;
    }

    .ds-feat-col:hover {
     transform: translateY(-5px);
     border-color: rgba(255, 255, 255, 0.1);
    }

    .ds-feat-col h5 {
     font-size: 1.75rem;
     font-weight: 700;
     color: #fff;
     margin-bottom: 2rem;
     display: flex;
     align-items: center;
     justify-content: center;
     gap: 1rem;
    }

    .ds-feat-col h5 i {
     color: #3b82f6;
     font-size: 2.25rem;
    }

    .ds-feat-col ul {
     list-style: none;
     padding: 0;
     margin: 0;
     display: flex;
     flex-direction: column;
     gap: 1.25rem;
    }

    .ds-feat-col ul li {
     font-size: 1rem;
     color: #e2e8f0;
     display: flex;
     align-items: flex-start;
     gap: 1rem;
     line-height: 1.5;
    }

    .ds-feat-col ul li i {
     color: #3b82f6;
     background: rgba(59, 130, 246, 0.1);
     width: 24px;
     height: 24px;
     display: flex;
     align-items: center;
     justify-content: center;
     border-radius: 50%;
     font-size: 0.75rem;
     margin-top: 0.125rem;
     flex-shrink: 0;
    }

    @media (max-width: 992px) {
     .ds-showcase-stats {
      gap: 2rem;
     }

     .ds-stat:not(:last-child)::after {
      right: -1rem;
     }

     .ds-stat-val {
      font-size: 3rem;
     }
    }

    @media (max-width: 768px) {
     .ds-showcase-title {
      font-size: 1.5rem;
     }

     .ds-showcase-stats {
      flex-wrap: wrap;
      gap: 2rem;
      justify-content: center;
     }

     .ds-stat {
      width: 40%;
     }

     .ds-stat:not(:last-child)::after {
      display: none;
     }

     .ds-showcase-features {
      grid-template-columns: 1fr;
     }

     .ds-rack-stack img.rack {
      width: 100%;
     }
    }

   {/literal}
  </style>

  <style>
   .ds-hero-showcase::before {
    background: url('{$WEB_ROOT}/templates/{$template}/img/server/bg8.webp') center/cover no-repeat;
   }
  </style>

  <header class="ixir-wh-plans-head ixir-ds-head ds-showcase-title-wrapper">
   <h2>Yüksek Performans, Yüksek Uptime — Dedicated Server ile İşinize Odaklanın.</h2>
   <p>Yalnızca hizmet değil, 20 yıllık deneyimimizle birlikte size katma değerli servisler
    sunuyoruz.</p>
  </header>

  <div class="ds-showcase-visual">
   <div class="ds-rack-stack">
    <img src="{$WEB_ROOT}/templates/{$template}/img/server/server.webp" alt="Server Unit" class="rack" loading="lazy">
   </div>
  </div>

  <div class="ds-showcase-stats">
   <div class="ds-stat">
    <span class="ds-stat-val">10x</span>
    <span class="ds-stat-lbl">Daha Hızlı<br>Disk Okuma</span>
   </div>
   <div class="ds-stat">
    <span class="ds-stat-val">%99.9</span>
    <span class="ds-stat-lbl">Uptime<br>Oranı</span>
   </div>
   <div class="ds-stat">
    <span class="ds-stat-val">%80</span>
    <span class="ds-stat-lbl">Azalan<br>Sunucu Yükü</span>
   </div>
   <div class="ds-stat">
    <span class="ds-stat-val">3</span>
    <span class="ds-stat-lbl">Farklı<br>Operatör</span>
   </div>
  </div>

  <div class="ds-showcase-features">
   <div class="ds-feat-col">
    <h5><i class="fas fa-microchip"></i> Teknoloji</h5>
    <ul>
     <li><i class="fas fa-check"></i> Intel® XEON® İşlemcili Sunucular</li>
     <li><i class="fas fa-check"></i> Intel®, Dell®, HPE®, Cisco® Markalı Sunucular</li>
     <li><i class="fas fa-check"></i> SSD ve Nvme Disk Seçenekleri</li>
     <li><i class="fas fa-check"></i> 50 Gbit İnternet Erişim Kapasitesi</li>
     <li><i class="fas fa-check"></i> 1 Gbit Port Limitsiz Trafik</li>
     <li><i class="fas fa-check"></i> Uzaktan Yönetim ile Tam Kontrol</li>
    </ul>
   </div>
   <div class="ds-feat-col">
    <h5><i class="fas fa-shield-alt"></i> Güvenlik</h5>
    <ul>
     <li><i class="fas fa-check"></i> Tüm Verileriniz Türkiye'de</li>
     <li><i class="fas fa-check"></i> TIER III+ Veri Merkezi</li>
     <li><i class="fas fa-check"></i> DDoS Korumalı Altyapı</li>
     <li><i class="fas fa-check"></i> 3 Operatör ile İnternet Yedekliliği</li>
     <li><i class="fas fa-check"></i> ISO 27001 Bilgi Güvenliği Sertifikası</li>
     <li><i class="fas fa-check"></i> Raid 1, 5, 10, 50, 60 Yapıları ile Yedeklilik</li>
    </ul>
   </div>
  </div>
 </div>
</section>