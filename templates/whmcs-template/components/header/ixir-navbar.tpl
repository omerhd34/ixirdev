{assign var="ixirNav" value=[
  [
    "type" => "dropdown",
    "title" => "Domain",
    "icon" => "far fa-globe",
    "columns" => [
      [
        "width" => "col-md-4",
        "items" => [
          [
            "href" => "/domain-sorgu",
            "title" => "Domain Tescil",
            "icon" => "far fa-search",
            "label" => "Domain Sorgulama",
            "desc" => "125 TL'den başlayan fiyatlarla mükemmel bir domain kaydedin."
          ]
        ]
      ],
      [
        "width" => "col-md-4",
        "items" => [
          [
            "href" => "/domain-transfer",
            "title" => "Domain Transfer",
            "icon" => "fas fa-retweet",
            "label" => "Domain Transfer",
            "desc" => "Domain'inizi en iyi fiyatlarla transfer edin."
          ]
        ]
      ],
      [
        "width" => "col-md-4 last",
        "items" => [
          [
            "href" => "/whois-sorgulama",
            "title" => "Domain Whois",
            "icon" => "far fa-eye",
            "label" => "Whois Sorgulama",
            "desc" => "Hızlı ve güvenilir domain whois sorgulama"
          ]
        ]
      ]
    ]
  ],
  [
    "type" => "dropdown",
    "title" => "Hosting",
    "titleAttr" => "hosting",
    "icon" => "far fa-hdd",
    "badge" => ["class" => "menu-kampanya blink", "text" => "İNDİRİM"],
    "columns" => [
      [
        "width" => "col-md-4",
        "items" => [
          [
            "href" => "/linux-hosting",
            "title" => "Linux Hosting",
            "icon" => "fab fa-linux",
            "label" => "Linux Hosting",
            "desc" => "70.47 TL 'den başlayan fiyatlarla Nvme, Litespeed, Ücretsiz SSL ve Cpanel Linux Web hosting hizmeti"
          ],
          [
            "href" => "/windows-hosting",
            "title" => "Windows Hosting",
            "icon" => "fab fa-windows",
            "label" => "Windows Hosting",
            "desc" => "70.47 TL 'den başlayan fiyatlarla Nvme, Windows 2022, SQL Server 2022 Asp.net Core 9 Windows Web hosting hizmeti"
          ],
          [
            "href" => "/wordpress-hosting",
            "title" => "Wordpress Hosting",
            "icon" => "fab fa-wordpress-simple",
            "label" => "WordPress Hosting",
            "desc" => "WordPress sitelere özel Nvme, Litespeed Cache, AccelerateWP, PHP XRAY ile wordpress hosting hizmeti"
          ]
        ]
      ],
      [
        "width" => "col-md-4",
        "items" => [
          [
            "href" => "/kurumsal-mail-hosting",
            "title" => "Kurumsal Mail Hosting",
            "icon" => "far fa-envelope",
            "label" => "Kurumsal Mail Hosting",
            "desc" => "Büyük Kapasiteli, Kişi, Takvim, Konferans, Mesajlaşma Hepsi bir arada Mail Çözümü"
          ],
          [
            "href" => "/developer-hosting",
            "title" => "Developer Hosting",
            "icon" => "fas fa-code",
            "label" => "Developer Hosting",
            "desc" => "Geliştiriciler için, laravel, node.js, ruby, python, ssh/terminal destekli hosting hizmeti"
          ],
          [
            "href" => "/cloud-drive",
            "title" => "Bulut Depolama",
            "icon" => "fas fa-cloud-upload-alt",
            "label" => "Cloud Drive",
            "desc" => "Yüksek kotalı cloud drive ile dosyalarınızı bulutta barındırın."
          ]
        ]
      ],
      [
        "width" => "col-md-4 last",
        "items" => [
          [
            "href" => "/reseller-hosting",
            "title" => "Linux Reseller Hosting",
            "icon" => "fab fa-linux",
            "label" => "Linux Bayi Hosting",
            "desc" => "Sınırsız disk ve site barındırmaya sahip WHM/Cpanel reseller hosting hizmeti"
          ],
          [
            "href" => "/windows-reseller-hosting",
            "title" => "Windows Reseller Hosting",
            "icon" => "fab fa-windows",
            "label" => "Windows Bayi Hosting",
            "desc" => "Sınırsız site barındırabileceğiniz Windows Plesk panel reseller hosting hizmeti"
          ]
        ]
      ]
    ]
  ],
  [
   "type" => "dropdown",
   "title" => "Server",
   "icon" => "far fa-server",
   "columns" => [
     [
       "width" => "col-md-4",
       "items" => [
         [
           "href" => "/bulut-server",
           "title" => "Bulut Server",
           "icon" => "far fa-cloud",
           "label" => "Bulut Server",
           "desc" => "Uygun fiyatlı ve yüksek performanslı 60 saniyede kurulan bulut server çözümleri "
         ],
         [
           "href" => "/pci-tarama",
           "title" => "PCI-DSS Tarama",
           "icon" => "fas fa-shield-alt",
           "label" => "PCI-DSS",
           "desc" => "PCI-DSS hizmeti ile server güvenliği kontrol hizmeti"
         ]
       ]
     ],
     [
       "width" => "col-md-4",
       "items" => [
         [
           "href" => "/kiralik-server",
           "title" => "Kiralık Server",
           "icon" => "fas fa-server",
           "label" => "Kiralık Server",
           "desc" => "Yüksek performanslı, İstanbul Merkezli ve Operatör Yedekli Altyapı ile server'ınızı şimdi kiralayın!"
         ],
         [
           "href" => "/colocation",
           "title" => "Co-Location",
           "icon" => "fas fa-database",
           "label" => "Co-Location",
           "desc" => "Tier III veri merkezinde server'ınızı güvenle barındırın."
         ]
       ]
     ],
     [
       "width" => "col-md-4 last",
       "items" => [
         [
           "href" => "/ek-servisler",
           "title" => "Server Yönetim Servisleri",
           "icon" => "far fa-life-ring",
           "label" => "Server Servisleri",
           "desc" => "Çözüm odaklı server destek hizmeti"
         ]
       ]
     ]
   ]
  ],
  [
    "type" => "dropdown",
    "title" => "E-posta",
    "titleAttr" => "E-posta Hizmetleri",
    "icon" => "far fa-envelope",
    "columns" => [
      [
        "width" => "col-md-6",
        "items" => [
          [
            "href" => "/kurumsal-mail-hosting",
            "title" => "Kurumsal Mail Hosting",
            "icon" => "far fa-envelope",
            "label" => "Kurumsal Mail Hosting",
            "desc" => "Büyük Kapasiteli, Kişi, Takvim, Konferans, Mesajlaşma Hepsi bir arada Mail Çözümü"
          ]
        ]
      ],
      [
        "width" => "col-md-6",
        "items" => [
          [
            "href" => "/kurumsal-mail-server",
            "title" => "Kurumsal Mail Server",
            "icon" => "fas fa-server",
            "label" => "Kurumsal Mail Server",
            "badge" => ["class" => "menu-yeni blink", "style" => "color: #fff;", "text" => "YENİ"],
            "desc" => "İşletmenize özel yapılandırılmış profesyonel, güvenli performanslı mail altyapısı"
          ]
        ]
      ],
      ["divider" => true],
      [
        "width" => "col-md-6",
        "items" => [
          [
            "href" => "/antispam",
            "title" => "Antispam",
            "icon" => "fas fa-shield-alt",
            "label" => "AntiSpam",
            "desc" => "Domain'iniz nerede olursa olsun gelen maillerinizi yapay zeka destekli, kvkk uyumlu olarak koruyalım!"
          ]
        ]
      ],
      [
        "width" => "col-md-6",
        "items" => [
          [
            "href" => "/outbound-mail-gateway",
            "title" => "Outbound Mail Gateway",
            "icon" => "fas fa-check-double",
            "label" => "Outbound Mail Gateway",
            "desc" => "SmartHost hizmeti ile maillerinizi biz gönderelim, yüksek reputation &amp; senderscore ve KVKK uyumlu"
          ]
        ]
      ]
    ]
  ],

  [
    "type" => "link",
    "href" => "/site-pratik",
    "title" => "Web Sitesi Oluşturucu",
    "icon" => "far fa-magic",
    "label" => "Site Pratik",
    "badge" => ["class" => "menu-yeni blink", "text" => "AI Destekli"]
  ],
  [
    "type" => "link",
    "href" => "/ssl-sertifikalari",
    "title" => "SSL Sertifikaları",
    "icon" => "far fa-lock",
    "label" => "SSL Sertifikaları"
  ]
]}

<ul class="nav navbar-nav ixir-nav">
 {foreach $ixirNav as $nav}
  {if $nav.type == "dropdown"}
   <li class="dropdown">
    <a href="#" title="{if isset($nav.titleAttr)}{$nav.titleAttr}{else}{$nav.title}{/if}" class="dropdown-toggle"
     data-toggle="dropdown">
     <i class="{$nav.icon}"></i> {$nav.title}
     {if isset($nav.badge)}
      <span class="{$nav.badge.class}">{$nav.badge.text}</span>
     {/if}
    </a>
    <div class="dropdown-menu">
     <div class="mega-menu-header">
      <div class="container">
       <div class="row">
        {foreach $nav.columns as $col}
         {if isset($col.divider) && $col.divider}
          <div class="col-md-12 mega-menu-divider"></div>
         {else}
          <div class="{$col.width}">
           <ul class="icon">
            {foreach $col.items as $item}
             <li>
              <a class="mega-menu-card" href="{$WEB_ROOT}{$item.href}" {if isset($item.title)} title="{$item.title}" {/if}>
               <span class="mega-menu-icon"><i class="{$item.icon}"></i></span>
               <span class="mega-menu-body">
                <span class="mega-menu-title">
                 {$item.label}
                 {if isset($item.badge)}
                  <span class="{$item.badge.class}" {if isset($item.badge.style)} style="{$item.badge.style}"
                   {/if}>{$item.badge.text}</span>
                 {/if}
                </span>
                <span class="mega-menu-desc">{$item.desc}</span>
               </span>
               <span class="mega-menu-arrow" aria-hidden="true"></span>
              </a>
             </li>
            {/foreach}
           </ul>
          </div>
         {/if}
        {/foreach}
       </div>
      </div>
     </div>
    </div>
   </li>
  {else}
   <li>
    <a href="{$WEB_ROOT}{$nav.href}" title="{$nav.title}">
     <i class="{$nav.icon}"></i> {$nav.label}
     {if isset($nav.badge)}
      <span class="{$nav.badge.class}">{$nav.badge.text}</span>
     {/if}
    </a>
   </li>
  {/if}
 {/foreach}
 <li class="nav-cart dropdown">
  <a href="#" class="ixir-cart-toggle" title="Sepet" aria-label="Sepet" aria-haspopup="true" aria-expanded="false">
   <i class="far fa-shopping-basket" aria-hidden="true"></i>
   {if (isset($cartitemcount) && $cartitemcount > 0) || (isset($ixirCartCount) && $ixirCartCount > 0)}
    <span
     class="badge badge-danger cart-item-count">{if isset($cartitemcount) && $cartitemcount > 0}{$cartitemcount}{else}{$ixirCartCount}{/if}</span>
   {/if}
  </a>
  {include file="$template/components/header/ixir-cart-menu.tpl"}
 </li>
</ul>