<div class="mobile-header menuTopFix">
    <div class="mobile-top">
        <div class="container">
            <div class="row">
                <div class="col-xs-6">
                    <ul class="toplink1">
                        {if $loggedin}
                            <li><a href="{$WEB_ROOT}/clientarea.php" title="Müşteri Paneli">Hesabım</a></li>
                            <li><a href="{$WEB_ROOT}/logout.php" title="Çıkış">Çıkış</a></li>
                        {else}
                            <li><a href="{$WEB_ROOT}/clientarea.php" title="Müşteri Paneli">Giriş Yap</a></li>
                            <li><a href="{$WEB_ROOT}/register.php" title="Kayıt Ol">Kayıt Ol</a></li>
                        {/if}
                    </ul>
                </div>
                <div class="col-xs-6">
                    <ul class="toplink2">
                        <li><a href="tel:+908503027111"><i class="fas fa-phone fa-fw"></i> 0850 302 7 111</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row mobile-header-main">
            <div class="col-xs-3">
                <a href="#ixirMobileMenu" class="mblMenu" data-toggle="collapse" title="Menü"><i class="fas fa-bars"></i></a>
            </div>
            <div class="col-xs-6">
                <a href="{$WEB_ROOT}/index.php" class="mobile-logo">
                    <img src="{$WEB_ROOT}/templates/{$template}/img/logo-color.webp" alt="ixirhost logo">
                </a>
            </div>
            <div class="col-xs-3">
                <a href="{$WEB_ROOT}/cart.php?a=view" class="mobile-cart">
                    <i class="fas fa-shopping-basket"></i>
                    {if isset($cartitemcount) && $cartitemcount > 0}
                        <span class="badge badge-danger">{$cartitemcount}</span>
                    {/if}
                </a>
            </div>
        </div>
    </div>
    <div class="collapse" id="ixirMobileMenu">
        <ul class="ixir-mobile-nav">
            <li><a href="{$WEB_ROOT}/alanaditescil"><i class="fas fa-globe"></i> Domain</a></li>
            <li><a href="{$WEB_ROOT}/webhosting"><i class="fas fa-hdd"></i> Web Hosting</a></li>
            <li><a href="{$WEB_ROOT}/kurumsal-mail-hosting"><i class="fas fa-envelope"></i> E-posta</a></li>
            <li><a href="{$WEB_ROOT}/cloud"><i class="fas fa-server"></i> Sunucu</a></li>
            <li><a href="{$WEB_ROOT}/website-olusturucu"><i class="fas fa-magic"></i> Site Pratik</a></li>
            <li><a href="{$WEB_ROOT}/ssl-sertifikalari"><i class="fas fa-lock"></i> SSL Sertifikaları</a></li>
            <li><a href="{$WEB_ROOT}/cart.php?a=view">Sepet</a></li>
        </ul>
    </div>
</div>
