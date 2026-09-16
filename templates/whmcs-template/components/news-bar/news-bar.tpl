<div class="news-bar" id="ixirNewsBar">
    <div class="container">
        <div class="news-content">
            <span class="news-badge"><i class="far fa-envelope"></i></span>
            <p>İşletmeniz için en iyi çözüm; <strong>Mail Hosting</strong> paketlerimizi incelediniz mi?</p>
            <a href="{$WEB_ROOT}/kurumsal-mail-hosting" class="news-cta">Hemen İncele <i class="fas fa-arrow-right"></i></a>
            <button type="button" class="newsClose ixir-close" title="Kapat" aria-label="Kapat"><i class="fas fa-times"></i></button>
        </div>
    </div>
</div>

<script>
{literal}
jQuery(function($) {
    try { localStorage.removeItem('ixirNewsBarClosed'); } catch (e) {}
    $('#ixirNewsBar').show();
    $(document).on('click', '.newsClose', function(e) {
        e.preventDefault();
        $('#ixirNewsBar').slideUp(200);
    });
});
{/literal}
</script>
