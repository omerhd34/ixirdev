<div class="ixir-network-component {if $theme == 'dark'}theme-dark{else}theme-light{/if}">
  {literal}
  <style>
    .ixir-network-component {
      width: 100%;
      margin: 0 auto;
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
    }
    
    .ixir-network-canvas-wrap {
      width: 100%;
      max-width: 1140px;
      margin: 0 auto;
      position: relative;
      overflow-x: auto;
      -webkit-overflow-scrolling: touch;
      padding: 1.5rem 0.5rem;
    }
    
    .ixir-network-canvas-wrap::-webkit-scrollbar {
      height: 6px;
    }
    .ixir-network-canvas-wrap::-webkit-scrollbar-track {
      background: rgba(0, 0, 0, 0.03);
      border-radius: 4px;
    }
    .ixir-network-canvas-wrap::-webkit-scrollbar-thumb {
      background: rgba(59, 130, 246, 0.35);
      border-radius: 4px;
    }
    
    .ixir-network-svg {
      display: block;
      width: 100%;
      height: auto;
      min-width: 860px;
      margin: 0 auto;
      user-select: none;
    }

    .theme-light .ixir-network-svg,
    .bg-light-blue .ixir-network-svg {
      filter: drop-shadow(0 15px 35px rgba(0, 0, 0, 0.04));
    }

    .theme-dark .ixir-network-svg,
    .bg-dark-blue .ixir-network-svg {
      filter: drop-shadow(0 20px 45px rgba(0, 0, 0, 0.45));
    }
    
    .ixir-network-scroll-hint {
      display: none;
      align-items: center;
      justify-content: center;
      gap: 0.5rem;
      font-size: 0.8125rem;
      font-weight: 600;
      color: #3b82f6;
      background: rgba(59, 130, 246, 0.08);
      border: 1px dashed rgba(59, 130, 246, 0.3);
      border-radius: 20px;
      padding: 0.45rem 1.1rem;
      margin: 0 auto 1.25rem auto;
      width: fit-content;
    }
    
    .theme-dark .ixir-network-scroll-hint,
    .bg-dark-blue .ixir-network-scroll-hint {
      color: #38bdf8;
      background: rgba(56, 189, 248, 0.1);
      border-color: rgba(56, 189, 248, 0.3);
    }
    
    @media (max-width: 991px) {
      .ixir-network-scroll-hint {
        display: inline-flex;
      }
    }
    
    .net-node {
      cursor: pointer;
    }

    .card-rect, .cloud-bg {
      transition: stroke 0.25s ease, stroke-width 0.25s ease, filter 0.25s ease;
    }

    .net-node:hover .card-rect,
    .net-node:hover .cloud-bg {
      stroke: #2563eb !important;
      stroke-width: 2px !important;
      filter: url(#glowBlue);
    }

    .theme-dark .net-node:hover .card-rect,
    .theme-dark .net-node:hover .cloud-bg,
    .bg-dark-blue .net-node:hover .card-rect,
    .bg-dark-blue .net-node:hover .cloud-bg {
      stroke: #38bdf8 !important;
      stroke-width: 2px !important;
      filter: url(#glowCyan);
    }

    .theme-dark .network-lines .main-line,
    .bg-dark-blue .network-lines .main-line {
      stroke-opacity: 0.95;
    }

    .ixir-network-stats-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 1.25rem;
      max-width: 1140px;
      margin: 2.5rem auto 0 auto;
      text-align: left;
    }
    
    @media (max-width: 991px) {
      .ixir-network-stats-grid {
        grid-template-columns: repeat(2, 1fr);
      }
    }
    
    @media (max-width: 575px) {
      .ixir-network-stats-grid {
        grid-template-columns: 1fr;
      }
    }
    
    .ixir-net-stat-card {
      background: #ffffff;
      border: 1px solid rgba(226, 232, 240, 0.95);
      border-radius: 14px;
      padding: 1.35rem 1.25rem;
      box-shadow: 0 4px 16px -2px rgba(15, 23, 42, 0.04);
      transition: transform 0.25s ease, box-shadow 0.25s ease, border-color 0.25s ease;
      position: relative;
      overflow: hidden;
    }
    
    .ixir-net-stat-card::before {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      height: 3px;
      background: linear-gradient(90deg, #3b82f6, #06b6d4);
      opacity: 0;
      transition: opacity 0.25s ease;
    }
    
    .ixir-net-stat-card:hover {
      transform: translateY(-4px);
      box-shadow: 0 12px 28px -4px rgba(37, 99, 235, 0.12);
      border-color: rgba(59, 130, 246, 0.35);
    }
    
    .ixir-net-stat-card:hover::before {
      opacity: 1;
    }
    
    .theme-dark .ixir-net-stat-card,
    .bg-dark-blue .ixir-net-stat-card {
      background: rgba(14, 27, 51, 0.7);
      border: 1px solid rgba(255, 255, 255, 0.08);
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.35);
      backdrop-filter: blur(10px);
    }
    
    .theme-dark .ixir-net-stat-card:hover,
    .bg-dark-blue .ixir-net-stat-card:hover {
      border-color: rgba(56, 189, 248, 0.4);
      box-shadow: 0 14px 32px rgba(0, 0, 0, 0.5), 0 0 18px rgba(56, 189, 248, 0.18);
    }
    
    .ixir-net-stat-icon {
      width: 44px;
      height: 44px;
      border-radius: 10px;
      background: rgba(59, 130, 246, 0.1);
      color: #2563eb;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      font-size: 1.25rem;
      margin-bottom: 0.9rem;
    }
    
    .theme-dark .ixir-net-stat-icon,
    .bg-dark-blue .ixir-net-stat-icon {
      background: rgba(56, 189, 248, 0.12);
      color: #38bdf8;
    }
    
    .ixir-net-stat-card h4 {
      font-size: 1.05rem;
      font-weight: 700;
      color: #0f172a;
      margin: 0 0 0.35rem 0;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }
    
    .theme-dark .ixir-net-stat-card h4,
    .bg-dark-blue .ixir-net-stat-card h4 {
      color: #ffffff;
    }
    
    .ixir-net-stat-badge {
      font-size: 0.6875rem;
      font-weight: 700;
      padding: 0.2rem 0.5rem;
      border-radius: 6px;
      background: rgba(37, 99, 235, 0.08);
      color: #2563eb;
      letter-spacing: 0.02em;
    }
    
    .theme-dark .ixir-net-stat-badge,
    .bg-dark-blue .ixir-net-stat-badge {
      background: rgba(56, 189, 248, 0.15);
      color: #38bdf8;
    }
    
    .ixir-net-stat-card p {
      font-size: 0.8125rem;
      line-height: 1.55;
      color: #64748b;
      margin: 0;
    }
    
    .theme-dark .ixir-net-stat-card p,
    .bg-dark-blue .ixir-net-stat-card p {
      color: #94a3b8;
    }
  </style>
  {/literal}

  <div class="ixir-network-scroll-hint">
    <i class="fas fa-arrows-alt-h"></i> Mimari şemayı tam incelemek için yatay kaydırabilirsiniz
  </div>

  <div class="ixir-network-canvas-wrap">
    <svg class="ixir-network-svg" viewBox="0 0 1140 710" fill="none" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
      <defs>
        <filter id="nodeShadow" x="-10%" y="-10%" width="125%" height="130%" filterUnits="userSpaceOnUse">
          <feDropShadow dx="0" dy="6" stdDeviation="9" flood-color="#0f172a" flood-opacity="0.08"/>
        </filter>
        
        <filter id="cloudShadow" x="-15%" y="-15%" width="130%" height="135%" filterUnits="userSpaceOnUse">
          <feDropShadow dx="0" dy="5" stdDeviation="8" flood-color="#0f172a" flood-opacity="0.07"/>
        </filter>

        <filter id="glowBlue" x="-20%" y="-20%" width="140%" height="140%">
          <feDropShadow dx="0" dy="0" stdDeviation="6" flood-color="#3b82f6" flood-opacity="0.55"/>
        </filter>

        <filter id="glowCyan" x="-20%" y="-20%" width="140%" height="140%">
          <feDropShadow dx="0" dy="0" stdDeviation="7" flood-color="#38bdf8" flood-opacity="0.65"/>
        </filter>

        <filter id="packetGlow" x="-30%" y="-30%" width="160%" height="160%">
          <feDropShadow dx="0" dy="0" stdDeviation="3" flood-color="#38bdf8" flood-opacity="0.9"/>
        </filter>

        <linearGradient id="grad-core-turknet" x1="0%" y1="0%" x2="100%" y2="100%">
          <stop offset="0%" stop-color="#2563eb"/>
          <stop offset="100%" stop-color="#1e1b4b"/>
        </linearGradient>

        <linearGradient id="grad-core-gibir" x1="0%" y1="0%" x2="0%" y2="100%">
          <stop offset="0%" stop-color="#2563eb"/>
          <stop offset="100%" stop-color="#0284c7"/>
        </linearGradient>

        <linearGradient id="grad-core-telekom" x1="0%" y1="0%" x2="100%" y2="100%">
          <stop offset="0%" stop-color="#2563eb"/>
          <stop offset="100%" stop-color="#475569"/>
        </linearGradient>

        <linearGradient id="grad-core-storm" x1="0%" y1="0%" x2="100%" y2="100%">
          <stop offset="0%" stop-color="#2563eb"/>
          <stop offset="100%" stop-color="#0f172a"/>
        </linearGradient>
      </defs>

      <g class="network-lines">
        <path id="path-c-tn" class="main-line" d="M 570 95 C 570 145, 180 120, 180 175" 
          stroke="#1e1b4b" stroke-width="3.5" stroke-linecap="round" fill="none"/>
        
        <path id="path-c-gb" class="main-line" d="M 570 95 C 570 142, 440 128, 440 175" 
          stroke="#0080ff" stroke-width="3.5" stroke-linecap="round" fill="none"/>
        
        <path id="path-c-tt" class="main-line" d="M 570 95 C 570 142, 700 128, 700 175" 
          stroke="#64748b" stroke-width="3.5" stroke-linecap="round" fill="none"/>
        
        <path id="path-c-sw" class="main-line" d="M 570 95 C 570 145, 960 120, 960 175" 
          stroke="#0f172a" stroke-width="3.5" stroke-linecap="round" fill="none"/>

        <path id="path-tn-gtt" class="main-line" d="M 180 251 C 180 325, 410 285, 410 355" 
          stroke="#1e1b4b" stroke-width="3.5" stroke-linecap="round" fill="none"/>

        <path id="path-tn-spk" class="main-line" d="M 180 251 C 180 365, 670 295, 670 355" 
          stroke="#1e1b4b" stroke-width="3.5" stroke-linecap="round" fill="none"/>

        <path id="path-gb-spk" class="main-line" d="M 440 251 C 440 320, 640 305, 640 355" 
          stroke="#0080ff" stroke-width="3.5" stroke-linecap="round" fill="none"/>

        <path id="path-gb-bus" class="main-line" d="M 470 251 C 470 340, 570 410, 570 530" 
          stroke="#0080ff" stroke-width="3.5" stroke-linecap="round" fill="none"/>

        <path id="path-gtt-bus" class="main-line" d="M 440 431 L 440 530" 
          stroke="#0080ff" stroke-width="3.5" stroke-linecap="round" fill="none"/>

        <path id="path-spk-bus" class="main-line" d="M 700 431 L 700 530" 
          stroke="#0080ff" stroke-width="3.5" stroke-linecap="round" fill="none"/>

        <line x1="80" y1="530" x2="1060" y2="530" 
          stroke="#0080ff" stroke-width="4" stroke-linecap="round"/>

        <line x1="109" y1="530" x2="109" y2="575" stroke="#0080ff" stroke-width="2.5" stroke-dasharray="5 4"/>
        <line x1="294" y1="530" x2="294" y2="575" stroke="#0080ff" stroke-width="2.5" stroke-dasharray="5 4"/>
        <line x1="479" y1="530" x2="479" y2="575" stroke="#0080ff" stroke-width="2.5" stroke-dasharray="5 4"/>
        <line x1="664" y1="530" x2="664" y2="575" stroke="#0080ff" stroke-width="2.5" stroke-dasharray="5 4"/>
        <line x1="849" y1="530" x2="849" y2="575" stroke="#0080ff" stroke-width="2.5" stroke-dasharray="5 4"/>
        <line x1="1034" y1="530" x2="1034" y2="575" stroke="#0080ff" stroke-width="2.5" stroke-dasharray="5 4"/>
      </g>

      <g class="animated-packets" opacity="0.9">
        <circle r="4" fill="#818cf8" filter="url(#packetGlow)">
          <animateMotion dur="2.2s" repeatCount="indefinite" path="M 570 95 C 570 145, 180 120, 180 175"/>
        </circle>
        <circle r="4" fill="#00f2fe" filter="url(#packetGlow)">
          <animateMotion dur="2.0s" repeatCount="indefinite" path="M 570 95 C 570 142, 440 128, 440 175"/>
        </circle>
        <circle r="4" fill="#94a3b8" filter="url(#packetGlow)">
          <animateMotion dur="2.1s" repeatCount="indefinite" path="M 570 95 C 570 142, 700 128, 700 175"/>
        </circle>
        <circle r="4" fill="#10b981" filter="url(#packetGlow)">
          <animateMotion dur="2.3s" repeatCount="indefinite" path="M 570 95 C 570 145, 960 120, 960 175"/>
        </circle>

        <circle r="3.5" fill="#818cf8" filter="url(#packetGlow)">
          <animateMotion dur="2.4s" begin="0.5s" repeatCount="indefinite" path="M 180 251 C 180 325, 410 285, 410 355"/>
        </circle>
        <circle r="3.5" fill="#818cf8" filter="url(#packetGlow)">
          <animateMotion dur="2.5s" begin="0.8s" repeatCount="indefinite" path="M 180 251 C 180 365, 670 295, 670 355"/>
        </circle>

        <circle r="3.5" fill="#00f2fe" filter="url(#packetGlow)">
          <animateMotion dur="2.1s" begin="0.6s" repeatCount="indefinite" path="M 440 251 C 440 320, 640 305, 640 355"/>
        </circle>

        <circle r="3.5" fill="#00f2fe" filter="url(#packetGlow)">
          <animateMotion dur="2.6s" begin="0.4s" repeatCount="indefinite" path="M 470 251 C 470 340, 570 410, 570 530"/>
        </circle>
        <circle r="3.5" fill="#22c55e" filter="url(#packetGlow)">
          <animateMotion dur="1.6s" begin="0.9s" repeatCount="indefinite" path="M 440 431 L 440 530"/>
        </circle>
        <circle r="3.5" fill="#f43f5e" filter="url(#packetGlow)">
          <animateMotion dur="1.6s" begin="1.1s" repeatCount="indefinite" path="M 700 431 L 700 530"/>
        </circle>
      </g>

      <g class="net-node node-core" transform="translate(450, 18)">
        <rect class="card-rect" width="240" height="78" rx="14" ry="14" 
          fill="#ffffff" stroke="#e2e8f0" stroke-width="1.5" filter="url(#nodeShadow)"/>
        <text x="226" y="22" font-size="10.5" font-weight="700" fill="#64748b" text-anchor="end" letter-spacing="0.4">AS206991</text>
        <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/logo-color.webp" href="{$WEB_ROOT}/templates/{$template}/img/logo-color.webp" x="35" y="24" width="170" height="38" preserveAspectRatio="xMidYMid meet"/>
      </g>

      <g class="net-node node-turknet" transform="translate(90, 175)">
        <rect class="card-rect" width="180" height="76" rx="12" ry="12" 
          fill="#ffffff" stroke="#e2e8f0" stroke-width="1.5" filter="url(#nodeShadow)"/>
        <text x="168" y="20" font-size="10" font-weight="700" fill="#64748b" text-anchor="end">AS12735</text>
        <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/turknet.png" href="{$WEB_ROOT}/templates/{$template}/img/server/network/turknet.png" x="18" y="26" width="144" height="40" preserveAspectRatio="xMidYMid meet"/> 
      </g>

      <g class="net-node node-gibir" transform="translate(350, 175)">
        <rect class="card-rect" width="180" height="76" rx="12" ry="12" 
          fill="#ffffff" stroke="#e2e8f0" stroke-width="1.5" filter="url(#nodeShadow)"/>
        <text x="168" y="20" font-size="10" font-weight="700" fill="#64748b" text-anchor="end">AS208972</text>
        <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/gibirnet.png" href="{$WEB_ROOT}/templates/{$template}/img/server/network/gibirnet.png" x="18" y="25" width="144" height="42" preserveAspectRatio="xMidYMid meet"/>
      </g>

      <g class="net-node node-telekom" transform="translate(610, 175)">
        <rect class="card-rect" width="180" height="76" rx="12" ry="12" 
          fill="#ffffff" stroke="#e2e8f0" stroke-width="1.5" filter="url(#nodeShadow)"/>
        <text x="168" y="20" font-size="10" font-weight="700" fill="#64748b" text-anchor="end">AS9121</text>
        <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/turktelekom.png" href="{$WEB_ROOT}/templates/{$template}/img/server/network/turktelekom.png" x="14" y="25" width="152" height="42" preserveAspectRatio="xMidYMid meet"/>
      </g>

      <g class="net-node node-stormwall" transform="translate(870, 175)">
        <rect class="card-rect" width="180" height="76" rx="12" ry="12" 
          fill="#ffffff" stroke="#e2e8f0" stroke-width="1.5" filter="url(#nodeShadow)"/>
        <text x="168" y="20" font-size="10" font-weight="700" fill="#64748b" text-anchor="end">AS59796</text>
        <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/stormwall.png" href="{$WEB_ROOT}/templates/{$template}/img/server/network/stormwall.png" x="16" y="27" width="148" height="38" preserveAspectRatio="xMidYMid meet"/>
      </g>

      <g class="net-node node-gtt" transform="translate(350, 355)">
        <rect class="card-rect" width="180" height="76" rx="12" ry="12" 
          fill="#ffffff" stroke="#e2e8f0" stroke-width="1.5" filter="url(#nodeShadow)"/>
        <text x="168" y="20" font-size="10" font-weight="700" fill="#64748b" text-anchor="end">AS33257</text>
        <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/gtt.png" href="{$WEB_ROOT}/templates/{$template}/img/server/network/gtt.png" x="25" y="25" width="130" height="42" preserveAspectRatio="xMidYMid meet"/>
      </g>

      <g class="net-node node-sparkle" transform="translate(610, 355)">
        <rect class="card-rect" width="180" height="76" rx="12" ry="12" 
          fill="#ffffff" stroke="#e2e8f0" stroke-width="1.5" filter="url(#nodeShadow)"/>
        <text x="168" y="20" font-size="10" font-weight="700" fill="#64748b" text-anchor="end">AS6762</text>
        <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/sparkle.png" href="{$WEB_ROOT}/templates/{$template}/img/server/network/sparkle.png" x="12" y="24" width="156" height="38" preserveAspectRatio="xMidYMid meet"/>
      </g>

      <g class="net-node node-carrier" transform="translate(24, 575)">
        <path class="cloud-bg" d="M 27.3 66.0 L 138.9 66.0 C 153.8 66.0, 166.2 53.3, 166.2 38.1 C 166.2 22.9, 153.8 10.2, 138.9 10.2 C 136.4 10.2, 132.7 10.8, 130.2 11.4 C 122.8 3.8, 112.8 0.0, 101.7 0.0 C 88.0 0.0, 76.9 6.3, 70.7 17.8 C 67.0 15.2, 60.8 14.0, 55.8 14.0 C 39.7 14.0, 27.3 26.7, 27.3 43.2 C 22.3 43.2, 18.6 45.7, 14.9 48.3 C 3.7 54.6, 9.9 66.0, 27.3 66.0 Z" 
          fill="#ffffff" stroke="#e2e8f0" stroke-width="1.3" filter="url(#cloudShadow)"/>
        <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/nttdata.png" href="{$WEB_ROOT}/templates/{$template}/img/server/network/nttdata.png" x="30" y="20" width="126" height="30" preserveAspectRatio="xMidYMid meet"/>
      </g>

      <g class="net-node node-carrier" transform="translate(209, 575)">
        <path class="cloud-bg" d="M 27.3 66.0 L 138.9 66.0 C 153.8 66.0, 166.2 53.3, 166.2 38.1 C 166.2 22.9, 153.8 10.2, 138.9 10.2 C 136.4 10.2, 132.7 10.8, 130.2 11.4 C 122.8 3.8, 112.8 0.0, 101.7 0.0 C 88.0 0.0, 76.9 6.3, 70.7 17.8 C 67.0 15.2, 60.8 14.0, 55.8 14.0 C 39.7 14.0, 27.3 26.7, 27.3 43.2 C 22.3 43.2, 18.6 45.7, 14.9 48.3 C 3.7 54.6, 9.9 66.0, 27.3 66.0 Z" 
          fill="#ffffff" stroke="#e2e8f0" stroke-width="1.3" filter="url(#cloudShadow)"/>
        <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/cloudflare.png" href="{$WEB_ROOT}/templates/{$template}/img/server/network/cloudflare.png" x="13" y="10" width="140" height="48" preserveAspectRatio="xMidYMid meet"/>
      </g>

      <g class="net-node node-carrier" transform="translate(394, 575)">
        <path class="cloud-bg" d="M 27.3 66.0 L 138.9 66.0 C 153.8 66.0, 166.2 53.3, 166.2 38.1 C 166.2 22.9, 153.8 10.2, 138.9 10.2 C 136.4 10.2, 132.7 10.8, 130.2 11.4 C 122.8 3.8, 112.8 0.0, 101.7 0.0 C 88.0 0.0, 76.9 6.3, 70.7 17.8 C 67.0 15.2, 60.8 14.0, 55.8 14.0 C 39.7 14.0, 27.3 26.7, 27.3 43.2 C 22.3 43.2, 18.6 45.7, 14.9 48.3 C 3.7 54.6, 9.9 66.0, 27.3 66.0 Z" 
          fill="#ffffff" stroke="#e2e8f0" stroke-width="1.3" filter="url(#cloudShadow)"/>
        <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/turkcell.png" href="{$WEB_ROOT}/templates/{$template}/img/server/network/turkcell.png" x="19" y="16" width="128" height="38" preserveAspectRatio="xMidYMid meet"/>
      </g>

      <g class="net-node node-carrier" transform="translate(579, 575)">
        <path class="cloud-bg" d="M 27.3 66.0 L 138.9 66.0 C 153.8 66.0, 166.2 53.3, 166.2 38.1 C 166.2 22.9, 153.8 10.2, 138.9 10.2 C 136.4 10.2, 132.7 10.8, 130.2 11.4 C 122.8 3.8, 112.8 0.0, 101.7 0.0 C 88.0 0.0, 76.9 6.3, 70.7 17.8 C 67.0 15.2, 60.8 14.0, 55.8 14.0 C 39.7 14.0, 27.3 26.7, 27.3 43.2 C 22.3 43.2, 18.6 45.7, 14.9 48.3 C 3.7 54.6, 9.9 66.0, 27.3 66.0 Z" 
          fill="#ffffff" stroke="#e2e8f0" stroke-width="1.3" filter="url(#cloudShadow)"/>
        <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/vodafone.png" href="{$WEB_ROOT}/templates/{$template}/img/server/network/vodafone.png" x="20" y="18" width="126" height="34" preserveAspectRatio="xMidYMid meet"/>
      </g>

      <g class="net-node node-carrier" transform="translate(764, 575)">
        <path class="cloud-bg" d="M 27.3 66.0 L 138.9 66.0 C 153.8 66.0, 166.2 53.3, 166.2 38.1 C 166.2 22.9, 153.8 10.2, 138.9 10.2 C 136.4 10.2, 132.7 10.8, 130.2 11.4 C 122.8 3.8, 112.8 0.0, 101.7 0.0 C 88.0 0.0, 76.9 6.3, 70.7 17.8 C 67.0 15.2, 60.8 14.0, 55.8 14.0 C 39.7 14.0, 27.3 26.7, 27.3 43.2 C 22.3 43.2, 18.6 45.7, 14.9 48.3 C 3.7 54.6, 9.9 66.0, 27.3 66.0 Z" 
          fill="#ffffff" stroke="#e2e8f0" stroke-width="1.3" filter="url(#cloudShadow)"/>
        <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/verizon.png" href="{$WEB_ROOT}/templates/{$template}/img/server/network/verizon.png" x="8" y="16" width="150" height="36" preserveAspectRatio="xMidYMid meet"/>
      </g>

      <g class="net-node node-carrier" transform="translate(949, 575)">
        <path class="cloud-bg" d="M 27.3 66.0 L 138.9 66.0 C 153.8 66.0, 166.2 53.3, 166.2 38.1 C 166.2 22.9, 153.8 10.2, 138.9 10.2 C 136.4 10.2, 132.7 10.8, 130.2 11.4 C 122.8 3.8, 112.8 0.0, 101.7 0.0 C 88.0 0.0, 76.9 6.3, 70.7 17.8 C 67.0 15.2, 60.8 14.0, 55.8 14.0 C 39.7 14.0, 27.3 26.7, 27.3 43.2 C 22.3 43.2, 18.6 45.7, 14.9 48.3 C 3.7 54.6, 9.9 66.0, 27.3 66.0 Z" 
          fill="#ffffff" stroke="#e2e8f0" stroke-width="1.3" filter="url(#cloudShadow)"/>
        <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/retn.png" href="{$WEB_ROOT}/templates/{$template}/img/server/network/retn.png" x="16" y="24" width="134" height="26" preserveAspectRatio="xMidYMid meet"/>
      </g>
    </svg>
  </div>
</div>
