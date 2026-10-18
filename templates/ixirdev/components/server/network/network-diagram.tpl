<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/components/server/network/network-diagram.css?v={$versionHash}">

<div class="ixir-network-component {if $theme == 'dark'}theme-dark{else}theme-light{/if}">
 <div class="ixir-network-canvas-wrap">
  <svg class="ixir-network-svg" viewBox="0 0 1140 710" fill="none" xmlns="http://www.w3.org/2000/svg"
   xmlns:xlink="http://www.w3.org/1999/xlink">
   <defs>
    <filter id="nodeShadow" x="-10%" y="-10%" width="125%" height="130%" filterUnits="userSpaceOnUse">
     <feDropShadow dx="0" dy="6" stdDeviation="9" flood-color="#0f172a" flood-opacity="0.08" />
    </filter>

    <filter id="cloudShadow" x="-15%" y="-15%" width="130%" height="135%" filterUnits="userSpaceOnUse">
     <feDropShadow dx="0" dy="5" stdDeviation="8" flood-color="#0f172a" flood-opacity="0.07" />
    </filter>

    <filter id="glowBlue" x="-20%" y="-20%" width="140%" height="140%">
     <feDropShadow dx="0" dy="0" stdDeviation="6" flood-color="#3b82f6" flood-opacity="0.55" />
    </filter>

    <filter id="glowCyan" x="-20%" y="-20%" width="140%" height="140%">
     <feDropShadow dx="0" dy="0" stdDeviation="7" flood-color="#38bdf8" flood-opacity="0.65" />
    </filter>

    <filter id="packetGlow" x="-30%" y="-30%" width="160%" height="160%">
     <feDropShadow dx="0" dy="0" stdDeviation="3" flood-color="#38bdf8" flood-opacity="0.9" />
    </filter>

    <linearGradient id="grad-core-turknet" x1="0%" y1="0%" x2="100%" y2="100%">
     <stop offset="0%" stop-color="#2563eb" />
     <stop offset="100%" stop-color="#1e1b4b" />
    </linearGradient>

    <linearGradient id="grad-core-gibir" x1="0%" y1="0%" x2="0%" y2="100%">
     <stop offset="0%" stop-color="#2563eb" />
     <stop offset="100%" stop-color="#0284c7" />
    </linearGradient>

    <linearGradient id="grad-core-telekom" x1="0%" y1="0%" x2="100%" y2="100%">
     <stop offset="0%" stop-color="#2563eb" />
     <stop offset="100%" stop-color="#475569" />
    </linearGradient>

    <linearGradient id="grad-core-storm" x1="0%" y1="0%" x2="100%" y2="100%">
     <stop offset="0%" stop-color="#2563eb" />
     <stop offset="100%" stop-color="#0f172a" />
    </linearGradient>
    <clipPath id="packetZoneClip">
     <rect x="50" y="80" width="1040" height="480" />
    </clipPath>
   </defs>

   <g class="network-lines">
    <path id="path-c-tn" class="main-line" d="M 570 95 C 570 145, 180 120, 180 175" stroke="#1e1b4b" stroke-width="3.5"
     stroke-linecap="round" fill="none" />

    <path id="path-c-gb" class="main-line" d="M 570 95 C 570 142, 440 128, 440 175" stroke="#0080ff" stroke-width="3.5"
     stroke-linecap="round" fill="none" />

    <path id="path-c-tt" class="main-line" d="M 570 95 C 570 142, 700 128, 700 175" stroke="#64748b" stroke-width="3.5"
     stroke-linecap="round" fill="none" />

    <path id="path-c-sw" class="main-line" d="M 570 95 C 570 145, 960 120, 960 175" stroke="#0f172a" stroke-width="3.5"
     stroke-linecap="round" fill="none" />

    <path id="path-tn-gtt" class="main-line" d="M 180 251 C 180 340, 230 393, 350 393" stroke="#1e1b4b"
     stroke-width="3.5" stroke-linecap="round" fill="none" />

    <path id="path-tn-spk" class="main-line" d="M 180 251 C 180 365, 670 295, 670 355" stroke="#1e1b4b"
     stroke-width="3.5" stroke-linecap="round" fill="none" />

    <path id="path-gb-spk" class="main-line" d="M 470 251 C 470 320, 640 305, 640 355" stroke="#0080ff"
     stroke-width="3.5" stroke-linecap="round" fill="none" />

    <path id="path-gb-bus" class="main-line" d="M 440 251 C 440 345, 575 320, 575 430 C 575 480, 570 500, 570 530"
     stroke="#0080ff" stroke-width="3.5" stroke-linecap="round" fill="none" />

    <path id="path-gtt-bus" class="main-line" d="M 440 431 L 440 530" stroke="#0080ff" stroke-width="3.5"
     stroke-linecap="round" fill="none" />

    <path id="path-spk-bus" class="main-line" d="M 700 431 L 700 530" stroke="#0080ff" stroke-width="3.5"
     stroke-linecap="round" fill="none" />

    <line x1="80" y1="530" x2="1070" y2="530" stroke="#0080ff" stroke-width="4" stroke-linecap="round" />
    <line x1="121" y1="530" x2="121" y2="576" stroke="#0080ff" stroke-width="2.5" stroke-dasharray="5 4" />
    <line x1="306" y1="530" x2="306" y2="576" stroke="#0080ff" stroke-width="2.5" stroke-dasharray="5 4" />
    <line x1="491" y1="530" x2="491" y2="576" stroke="#0080ff" stroke-width="2.5" stroke-dasharray="5 4" />
    <line x1="676" y1="530" x2="676" y2="576" stroke="#0080ff" stroke-width="2.5" stroke-dasharray="5 4" />
    <line x1="861" y1="530" x2="861" y2="576" stroke="#0080ff" stroke-width="2.5" stroke-dasharray="5 4" />
    <line x1="1046" y1="530" x2="1046" y2="576" stroke="#0080ff" stroke-width="2.5" stroke-dasharray="5 4" />
   </g>

   <g class="animated-packets" opacity="0.9" clip-path="url(#packetZoneClip)">
    <circle r="4" fill="#818cf8" filter="url(#packetGlow)">
     <animateMotion dur="2.2s" repeatCount="indefinite" path="M 570 95 C 570 145, 180 120, 180 175" />
    </circle>
    <circle r="4" fill="#00f2fe" filter="url(#packetGlow)">
     <animateMotion dur="2.0s" repeatCount="indefinite" path="M 570 95 C 570 142, 440 128, 440 175" />
    </circle>
    <circle r="4" fill="#94a3b8" filter="url(#packetGlow)">
     <animateMotion dur="2.1s" repeatCount="indefinite" path="M 570 95 C 570 142, 700 128, 700 175" />
    </circle>
    <circle r="4" fill="#10b981" filter="url(#packetGlow)">
     <animateMotion dur="2.3s" repeatCount="indefinite" path="M 570 95 C 570 145, 960 120, 960 175" />
    </circle>

    <circle r="3.5" fill="#818cf8" filter="url(#packetGlow)">
     <animateMotion dur="2.4s" begin="-0.5s" repeatCount="indefinite" path="M 180 251 C 180 340, 230 393, 350 393" />
    </circle>
    <circle r="3.5" fill="#818cf8" filter="url(#packetGlow)">
     <animateMotion dur="2.5s" begin="-0.8s" repeatCount="indefinite" path="M 180 251 C 180 365, 670 295, 670 355" />
    </circle>

    <circle r="3.5" fill="#00f2fe" filter="url(#packetGlow)">
     <animateMotion dur="2.1s" begin="-0.6s" repeatCount="indefinite" path="M 470 251 C 470 320, 640 305, 640 355" />
    </circle>
    <circle r="3.5" fill="#00f2fe" filter="url(#packetGlow)">
     <animateMotion dur="2.6s" begin="-0.4s" repeatCount="indefinite"
      path="M 440 251 C 440 345, 575 320, 575 430 C 575 480, 570 500, 570 530" />
    </circle>

    <circle r="3.5" fill="#22c55e" filter="url(#packetGlow)">
     <animateMotion dur="1.6s" begin="-0.9s" repeatCount="indefinite" path="M 440 431 L 440 530" />
    </circle>
    <circle r="3.5" fill="#f43f5e" filter="url(#packetGlow)">
     <animateMotion dur="1.6s" begin="-1.1s" repeatCount="indefinite" path="M 700 431 L 700 530" />
    </circle>
   </g>

   <g class="net-node node-core" transform="translate(450, 18)">
    <rect class="card-rect" width="240" height="78" rx="14" ry="14" fill="#ffffff" stroke="#e2e8f0" stroke-width="1.5"
     filter="url(#nodeShadow)" />
    <text x="226" y="22" font-size="10.5" font-weight="700" fill="#64748b" text-anchor="end"
     letter-spacing="0.4">AS206991</text>
    <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/logo-color.webp"
     href="{$WEB_ROOT}/templates/{$template}/img/logo-color.webp" x="35" y="24" width="170" height="38"
     preserveAspectRatio="xMidYMid meet" />
   </g>

   <g class="net-node node-turknet" transform="translate(90, 175)">
    <rect class="card-rect" width="180" height="76" rx="12" ry="12" fill="#ffffff" stroke="#e2e8f0" stroke-width="1.5"
     filter="url(#nodeShadow)" />
    <text x="168" y="20" font-size="10" font-weight="700" fill="#64748b" text-anchor="end">AS12735</text>
    <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/turknet.png"
     href="{$WEB_ROOT}/templates/{$template}/img/server/network/turknet.png" x="18" y="26" width="144" height="40"
     preserveAspectRatio="xMidYMid meet" />
   </g>

   <g class="net-node node-gibir" transform="translate(350, 175)">
    <rect class="card-rect" width="180" height="76" rx="12" ry="12" fill="#ffffff" stroke="#e2e8f0" stroke-width="1.5"
     filter="url(#nodeShadow)" />
    <text x="168" y="20" font-size="10" font-weight="700" fill="#64748b" text-anchor="end">AS208972</text>
    <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/gibirnet.png"
     href="{$WEB_ROOT}/templates/{$template}/img/server/network/gibirnet.png" x="18" y="25" width="144" height="42"
     preserveAspectRatio="xMidYMid meet" />
   </g>

   <g class="net-node node-telekom" transform="translate(610, 175)">
    <rect class="card-rect" width="180" height="76" rx="12" ry="12" fill="#ffffff" stroke="#e2e8f0" stroke-width="1.5"
     filter="url(#nodeShadow)" />
    <text x="168" y="20" font-size="10" font-weight="700" fill="#64748b" text-anchor="end">AS9121</text>
    <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/turktelekom.png"
     href="{$WEB_ROOT}/templates/{$template}/img/server/network/turktelekom.png" x="14" y="25" width="152" height="42"
     preserveAspectRatio="xMidYMid meet" />
   </g>

   <g class="net-node node-stormwall" transform="translate(870, 175)">
    <rect class="card-rect" width="180" height="76" rx="12" ry="12" fill="#ffffff" stroke="#e2e8f0" stroke-width="1.5"
     filter="url(#nodeShadow)" />
    <text x="168" y="20" font-size="10" font-weight="700" fill="#64748b" text-anchor="end">AS59796</text>
    <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/stormwall.png"
     href="{$WEB_ROOT}/templates/{$template}/img/server/network/stormwall.png" x="16" y="27" width="148" height="38"
     preserveAspectRatio="xMidYMid meet" />
   </g>

   <g class="net-node node-gtt" transform="translate(350, 355)">
    <rect class="card-rect" width="180" height="76" rx="12" ry="12" fill="#ffffff" stroke="#e2e8f0" stroke-width="1.5"
     filter="url(#nodeShadow)" />
    <text x="168" y="20" font-size="10" font-weight="700" fill="#64748b" text-anchor="end">AS33257</text>
    <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/gtt.png"
     href="{$WEB_ROOT}/templates/{$template}/img/server/network/gtt.png" x="25" y="25" width="130" height="42"
     preserveAspectRatio="xMidYMid meet" />
   </g>

   <g class="net-node node-sparkle" transform="translate(610, 355)">
    <rect class="card-rect" width="180" height="76" rx="12" ry="12" fill="#ffffff" stroke="#e2e8f0" stroke-width="1.5"
     filter="url(#nodeShadow)" />
    <text x="168" y="20" font-size="10" font-weight="700" fill="#64748b" text-anchor="end">AS6762</text>
    <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/sparkle.png"
     href="{$WEB_ROOT}/templates/{$template}/img/server/network/sparkle.png" x="12" y="24" width="156" height="38"
     preserveAspectRatio="xMidYMid meet" />
   </g>

   <g class="net-node node-carrier" transform="translate(4, 575) scale(1.15)">
    <path class="cloud-bg"
     d="M 27.3 66.0 L 138.9 66.0 C 153.8 66.0, 166.2 53.3, 166.2 38.1 C 166.2 22.9, 153.8 10.2, 138.9 10.2 C 136.4 10.2, 132.7 10.8, 130.2 11.4 C 122.8 3.8, 112.8 0.0, 101.7 0.0 C 88.0 0.0, 76.9 6.3, 70.7 17.8 C 67.0 15.2, 60.8 14.0, 55.8 14.0 C 39.7 14.0, 27.3 26.7, 27.3 43.2 C 22.3 43.2, 18.6 45.7, 14.9 48.3 C 3.7 54.6, 9.9 66.0, 27.3 66.0 Z"
     fill="#ffffff" stroke="#e2e8f0" stroke-width="1.3" filter="url(#cloudShadow)" />
    <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/nttdata.png"
     href="{$WEB_ROOT}/templates/{$template}/img/server/network/nttdata.png" x="37" y="20" width="120" height="40"
     preserveAspectRatio="xMidYMid meet" />
   </g>

   <g class="net-node node-carrier" transform="translate(189, 575) scale(1.15)">
    <path class="cloud-bg"
     d="M 27.3 66.0 L 138.9 66.0 C 153.8 66.0, 166.2 53.3, 166.2 38.1 C 166.2 22.9, 153.8 10.2, 138.9 10.2 C 136.4 10.2, 132.7 10.8, 130.2 11.4 C 122.8 3.8, 112.8 0.0, 101.7 0.0 C 88.0 0.0, 76.9 6.3, 70.7 17.8 C 67.0 15.2, 60.8 14.0, 55.8 14.0 C 39.7 14.0, 27.3 26.7, 27.3 43.2 C 22.3 43.2, 18.6 45.7, 14.9 48.3 C 3.7 54.6, 9.9 66.0, 27.3 66.0 Z"
     fill="#ffffff" stroke="#e2e8f0" stroke-width="1.3" filter="url(#cloudShadow)" />
    <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/cloudflare.png"
     href="{$WEB_ROOT}/templates/{$template}/img/server/network/cloudflare.png" x="41" y="24" width="100" height="32"
     preserveAspectRatio="xMidYMid meet" />
   </g>

   <g class="net-node node-carrier" transform="translate(374, 575) scale(1.15)">
    <path class="cloud-bg"
     d="M 27.3 66.0 L 138.9 66.0 C 153.8 66.0, 166.2 53.3, 166.2 38.1 C 166.2 22.9, 153.8 10.2, 138.9 10.2 C 136.4 10.2, 132.7 10.8, 130.2 11.4 C 122.8 3.8, 112.8 0.0, 101.7 0.0 C 88.0 0.0, 76.9 6.3, 70.7 17.8 C 67.0 15.2, 60.8 14.0, 55.8 14.0 C 39.7 14.0, 27.3 26.7, 27.3 43.2 C 22.3 43.2, 18.6 45.7, 14.9 48.3 C 3.7 54.6, 9.9 66.0, 27.3 66.0 Z"
     fill="#ffffff" stroke="#e2e8f0" stroke-width="1.3" filter="url(#cloudShadow)" />
    <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/turkcell.png"
     href="{$WEB_ROOT}/templates/{$template}/img/server/network/turkcell.png" x="47" y="24" width="100" height="32"
     preserveAspectRatio="xMidYMid meet" />
   </g>

   <g class="net-node node-carrier" transform="translate(559, 575) scale(1.15)">
    <path class="cloud-bg"
     d="M 27.3 66.0 L 138.9 66.0 C 153.8 66.0, 166.2 53.3, 166.2 38.1 C 166.2 22.9, 153.8 10.2, 138.9 10.2 C 136.4 10.2, 132.7 10.8, 130.2 11.4 C 122.8 3.8, 112.8 0.0, 101.7 0.0 C 88.0 0.0, 76.9 6.3, 70.7 17.8 C 67.0 15.2, 60.8 14.0, 55.8 14.0 C 39.7 14.0, 27.3 26.7, 27.3 43.2 C 22.3 43.2, 18.6 45.7, 14.9 48.3 C 3.7 54.6, 9.9 66.0, 27.3 66.0 Z"
     fill="#ffffff" stroke="#e2e8f0" stroke-width="1.3" filter="url(#cloudShadow)" />
    <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/vodafone.png"
     href="{$WEB_ROOT}/templates/{$template}/img/server/network/vodafone.png" x="47" y="24" width="100" height="32"
     preserveAspectRatio="xMidYMid meet" />
   </g>

   <g class="net-node node-carrier" transform="translate(744, 575) scale(1.15)">
    <path class="cloud-bg"
     d="M 27.3 66.0 L 138.9 66.0 C 153.8 66.0, 166.2 53.3, 166.2 38.1 C 166.2 22.9, 153.8 10.2, 138.9 10.2 C 136.4 10.2, 132.7 10.8, 130.2 11.4 C 122.8 3.8, 112.8 0.0, 101.7 0.0 C 88.0 0.0, 76.9 6.3, 70.7 17.8 C 67.0 15.2, 60.8 14.0, 55.8 14.0 C 39.7 14.0, 27.3 26.7, 27.3 43.2 C 22.3 43.2, 18.6 45.7, 14.9 48.3 C 3.7 54.6, 9.9 66.0, 27.3 66.0 Z"
     fill="#ffffff" stroke="#e2e8f0" stroke-width="1.3" filter="url(#cloudShadow)" />
    <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/verizon.png"
     href="{$WEB_ROOT}/templates/{$template}/img/server/network/verizon.png" x="47" y="24" width="100" height="32"
     preserveAspectRatio="xMidYMid meet" />
   </g>

   <g class="net-node node-carrier" transform="translate(929, 575) scale(1.15)">
    <path class="cloud-bg"
     d="M 27.3 66.0 L 138.9 66.0 C 153.8 66.0, 166.2 53.3, 166.2 38.1 C 166.2 22.9, 153.8 10.2, 138.9 10.2 C 136.4 10.2, 132.7 10.8, 130.2 11.4 C 122.8 3.8, 112.8 0.0, 101.7 0.0 C 88.0 0.0, 76.9 6.3, 70.7 17.8 C 67.0 15.2, 60.8 14.0, 55.8 14.0 C 39.7 14.0, 27.3 26.7, 27.3 43.2 C 22.3 43.2, 18.6 45.7, 14.9 48.3 C 3.7 54.6, 9.9 66.0, 27.3 66.0 Z"
     fill="#ffffff" stroke="#e2e8f0" stroke-width="1.3" filter="url(#cloudShadow)" />
    <image xlink:href="{$WEB_ROOT}/templates/{$template}/img/server/network/retn.png"
     href="{$WEB_ROOT}/templates/{$template}/img/server/network/retn.png" x="47" y="24" width="100" height="32"
     preserveAspectRatio="xMidYMid meet" />
   </g>
  </svg>
 </div>

 <div class="ixir-network-mobile">

  <div class="inm-tier inm-tier-core">
   <div class="inm-card inm-card-core">
    <span class="inm-asn">AS206991</span>
    <img src="{$WEB_ROOT}/templates/{$template}/img/logo-color.webp" alt="IXIRHost">
   </div>
  </div>

  <div class="inm-connector"></div>

  <div class="inm-tier inm-tier-up">
   <div class="inm-card">
    <span class="inm-asn">AS12735</span>
    <img src="{$WEB_ROOT}/templates/{$template}/img/server/network/turknet.png" alt="TurkNet">
   </div>
   <div class="inm-card">
    <span class="inm-asn">AS208972</span>
    <img src="{$WEB_ROOT}/templates/{$template}/img/server/network/gibirnet.png" alt="GibirNet">
   </div>
   <div class="inm-card">
    <span class="inm-asn">AS9121</span>
    <img src="{$WEB_ROOT}/templates/{$template}/img/server/network/turktelekom.png" alt="Türk Telekom">
   </div>
   <div class="inm-card">
    <span class="inm-asn">AS59796</span>
    <img src="{$WEB_ROOT}/templates/{$template}/img/server/network/stormwall.png" alt="StormWall">
   </div>
  </div>

  <div class="inm-connector"></div>

  <div class="inm-tier inm-tier-mid">
   <div class="inm-card">
    <span class="inm-asn">AS33257</span>
    <img src="{$WEB_ROOT}/templates/{$template}/img/server/network/gtt.png" alt="GTT">
   </div>
   <div class="inm-card">
    <span class="inm-asn">AS6762</span>
    <img src="{$WEB_ROOT}/templates/{$template}/img/server/network/sparkle.png" alt="Sparkle">
   </div>
  </div>

  <div class="inm-connector"></div>
  <div class="inm-bus"></div>

  <div class="inm-tier inm-tier-end">
   <div class="inm-card inm-card-end">
    <img src="{$WEB_ROOT}/templates/{$template}/img/server/network/nttdata.png" alt="NTT Data">
   </div>
   <div class="inm-card inm-card-end">
    <img src="{$WEB_ROOT}/templates/{$template}/img/server/network/cloudflare.png" alt="Cloudflare">
   </div>
   <div class="inm-card inm-card-end">
    <img src="{$WEB_ROOT}/templates/{$template}/img/server/network/turkcell.png" alt="Turkcell">
   </div>
   <div class="inm-card inm-card-end">
    <img src="{$WEB_ROOT}/templates/{$template}/img/server/network/vodafone.png" alt="Vodafone">
   </div>
   <div class="inm-card inm-card-end">
    <img src="{$WEB_ROOT}/templates/{$template}/img/server/network/verizon.png" alt="Verizon">
   </div>
   <div class="inm-card inm-card-end">
    <img src="{$WEB_ROOT}/templates/{$template}/img/server/network/retn.png" alt="RETN">
   </div>
  </div>
 </div>
</div>