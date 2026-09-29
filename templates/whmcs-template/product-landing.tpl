{if $ixirPageSlug == 'linux-hosting'}
 {include file="$template/components/hosting/linux/linux-hosting.tpl"}
{elseif $ixirPageSlug == 'windows-hosting'}
 {include file="$template/components/hosting/windows/windows-hosting.tpl"}
{elseif $ixirPageSlug == 'wordpress-hosting'}
 {include file="$template/components/hosting/wordpress/wordpress-hosting.tpl"}
{elseif $ixirPageSlug == 'developer-hosting'}
 {include file="$template/components/hosting/developer/developer-hosting.tpl"}
{else}
{/if}