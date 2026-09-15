
                </div><!-- /.main-content -->
                {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                    <div class="col-md-3 pull-md-left sidebar sidebar-secondary">
                        {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                    </div>
                {/if}
            <div class="clearfix"></div>
        </div>
    </div>
</section>

<footer class="footer">
    <div class="container">
     <div class="row">

         <div class="col-md-3">
           <li><a href="cart.php">Store</a></li>
           <li><a href="downloads.php">Downloads</a></li>
           <li><a href="cart.php?gid=addons">Addons</a></li>
           <li><a href="clientarea.php?action=invoices">Invoices</a></li>
            <li><a href="serverstatus.php">Network Status</a></li>
         </div>

           <div class="col-md-3">
               <li><a href="knowledgebase.php">Knowledgebase</a></li>
               <li><a href="serverstatus.php">Server Status</a></li>
               <li><a href="announcements.php">Announcements</a></li>
               <li><a href="clientarea.php?action=services">Services</a></li>
               <li><a href="contact.php">Contact Us</a></li>
           </div>

           <style>
           .footer .fab {
               padding-right: 23px;
               padding-left: 0px;
               padding-top: 19px;
               font-size: 23px !important;
           }
           </style>

           <div class="col-md-2">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
             <a href="#"><i class="fab fa-twitter"></i></a>
             <a href="#"><i class="fab fa-google-plus-g"></i></a>
             <a href="#"><i class="fab fa-instagram"></i></a>
             <a href="#"><i class="fab fa-youtube"></i></a>
             <a href="#"><i class="fab fa-linkedin-in"></i></a>
           </div>

           <div class="col-md-4">
             <img class="flogo" style="max-width: 220px;" src="{$assetLogoPath}">
             <p>Cheap, secure and fast hosting solutions. Create your website today
             with the most trusted hosting company!</p>
             <br />
             <p>Theme designed by <a href="https://aalayer.com">AALayer</a></p>
           </div>



     </div>
  </div>
</footer>

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

{$footeroutput}

</body>
</html>
