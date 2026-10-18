{if $templatefile != 'whois-sorgulama' && !$ixirCorporate && !$ixirDomainSearchPage && !$ixirDomainTransferPage && !($templatefile == 'product-landing' && ($ixirPageSlug == 'linux-hosting' || $ixirPageSlug == 'windows-hosting' || $ixirPageSlug == 'wordpress-hosting' || $ixirPageSlug == 'developer-hosting' || $ixirPageSlug == 'cloud-drive' || $ixirPageSlug == 'kurumsal-mail-hosting' || $ixirPageSlug == 'kurumsal-mail-server' || $ixirPageSlug == 'linux-reseller-hosting' || $ixirPageSlug == 'windows-reseller-hosting' || $ixirPageSlug == 'cloud-server' || $ixirPageSlug == 'dedicated-server' || $ixirPageSlug == 'colocation' || $ixirPageSlug == 'pci-tarama' || $ixirPageSlug == 'ek-servisler' || $ixirPageSlug == 'server-servisleri' || $ixirPageSlug == 'antispam' || $ixirPageSlug == 'outbound-mail-gateway' || $ixirPageSlug == 'site-pratik' || $ixirPageSlug == 'ssl-sertifikalari')) && ($templatefile != 'homepage' || $twitterusername || $announcements)}
 </div>
 {if !$inShoppingCart && $secondarySidebar && $secondarySidebar->hasChildren()}
  <div class="col-md-3 pull-md-left sidebar sidebar-secondary">
   {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
  </div>
 {/if}
 <div class="clearfix"></div>
 </div>
 </div>
 </section>
{/if}

{if $templatefile == 'homepage'}
 {include file="$template/components/home/ixir-next/ixir-next.tpl"}
{/if}

{if !$ixirIsAuthPage && !$showingLoginPage && $templatefile != 'login' && $templatefile != 'clientregister' && $templatefile != 'password-reset' && $filename != 'ixir-hesabim' && $filename != 'register'}
 {include file="$template/components/help/help.tpl"}
{/if}

{include file="$template/components/animations/ixir-slides.tpl"}

{include file="$template/components/footer/footer.tpl"}

<div id="fullpage-overlay" class="hidden">
 <div class="outer-wrapper">
  <div class="inner-wrapper">
   <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg">
   <br>
   <span class="msg"></span>
  </div>
 </div>
</div>

<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
 <div class="modal-dialog">
  <div class="modal-content panel-primary">
   <div class="modal-header panel-heading">
    <button type="button" class="close" data-dismiss="modal">
     <span aria-hidden="true">&times;</span>
     <span class="sr-only">{$LANG.close}</span>
    </button>
    <h4 class="modal-title"></h4>
   </div>
   <div class="modal-body panel-body">
    {$LANG.loading}
   </div>
   <div class="modal-footer panel-footer">
    <div class="pull-left loader">
     <i class="fas fa-circle-notch fa-spin"></i>
     {$LANG.loading}
    </div>
    <button type="button" class="btn btn-default" data-dismiss="modal">
     {$LANG.close}
    </button>
    <button type="button" class="btn btn-primary modal-submit">
     {$LANG.submit}
    </button>
   </div>
  </div>
 </div>
</div>

{include file="$template/includes/generate-password.tpl"}

<script>
{literal}
(function() {
  function getStickyOffset() {
    var bottom = 0;
    var selectors = ['.ixir-header', '.mobile-header', '.news-bar'];
    for (var i = 0; i < selectors.length; i++) {
      var el = document.querySelector(selectors[i]);
      if (!el || el.classList.contains('is-hidden')) continue;
      var style = window.getComputedStyle(el);
      if (style.display === 'none' || style.visibility === 'hidden' || style.position !== 'fixed') continue;
      var rect = el.getBoundingClientRect();
      if (rect.height > 0 && rect.bottom > bottom) bottom = rect.bottom;
    }
    return Math.ceil(bottom);
  }

  function cleanHashFromUrl() {
    if (window.location.hash && (window.location.hash.indexOf('ixir-') !== -1 || window.location.hash === '#ixir-wh-plans')) {
      if (window.history && window.history.replaceState) {
        window.history.replaceState(null, document.title, window.location.pathname + window.location.search);
      }
    }
  }

  cleanHashFromUrl();
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', cleanHashFromUrl);
  }
  window.addEventListener('load', cleanHashFromUrl);
  window.addEventListener('hashchange', cleanHashFromUrl);

  document.addEventListener('click', function(e) {
    var link = e.target.closest('a');
    if (!link) return;

    var href = link.getAttribute('href');
    if (!href) return;

    var hashIndex = href.indexOf('#');
    if (hashIndex === -1) return;

    var hash = href.slice(hashIndex);
    if (!hash || hash === '#' || hash.length < 2) return;

    if (link.hasAttribute('data-toggle') || link.getAttribute('role') === 'tab') return;

    var targetId = hash.slice(1);
    var targetEl = document.getElementById(targetId);
    if (!targetEl) return;

    var linkPath = (link.pathname || '').replace(/\/+$/, '');
    var currPath = (window.location.pathname || '').replace(/\/+$/, '');
    if (link.origin && link.origin !== window.location.origin) return;
    if (linkPath && linkPath !== currPath && href.charAt(0) !== '#') return;

    var alreadyPrevented = e.defaultPrevented;
    e.preventDefault();

    if (!alreadyPrevented) {
      if (e.metaKey || e.ctrlKey || e.shiftKey || e.altKey || (e.button !== undefined && e.button !== 0)) return;
      var y = window.pageYOffset || document.documentElement.scrollTop || 0;
      var dest = Math.max(0, Math.round(targetEl.getBoundingClientRect().top + y - getStickyOffset()));
      var reduce = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;
      if (reduce || Math.abs(dest - y) < 2) {
        window.scrollTo(0, dest);
      } else {
        window.scrollTo({
          top: dest,
          behavior: 'smooth'
        });
      }
    }

    cleanHashFromUrl();
  }, false);
})();
{/literal}
</script>

{$footeroutput}

</body>

</html>