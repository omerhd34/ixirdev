{if $ixirPageSlug == 'linux-hosting'}
 {include file="$template/components/hosting/linux/linux-hosting.tpl"}
{elseif $ixirPageSlug == 'windows-hosting'}
 {include file="$template/components/hosting/windows/windows-hosting.tpl"}
{elseif $ixirPageSlug == 'wordpress-hosting'}
 {include file="$template/components/hosting/wordpress/wordpress-hosting.tpl"}
{elseif $ixirPageSlug == 'developer-hosting'}
 {include file="$template/components/hosting/developer/developer-hosting.tpl"}
{elseif $ixirPageSlug == 'cloud-drive'}
 {include file="$template/components/hosting/cloud-drive/cloud-drive.tpl"}
{elseif $ixirPageSlug == 'kurumsal-mail-hosting'}
 {include file="$template/components/hosting/kurumsal-mail/kurumsal-mail-hosting.tpl"}
{elseif $ixirPageSlug == 'linux-reseller-hosting'}
 {include file="$template/components/hosting/linux-reseller/linux-reseller.tpl"}
{elseif $ixirPageSlug == 'windows-reseller-hosting'}
 {include file="$template/components/hosting/windows-reseller/windows-reseller.tpl"}
{elseif $ixirPageSlug == 'cloud-server'}
 {include file="$template/components/server/cloud-server/cloud-server.tpl"}
{elseif $ixirPageSlug == 'dedicated-server'}
 {include file="$template/components/server/dedicated-server/dedicated-server.tpl"}
{/if}