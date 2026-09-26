{include file="orderforms/standard_cart/common.tpl"}

<div id="order-standard_cart" class="ixir-domain-page ixir-transfer-page">
 <div class="cart-sidebar hidden">{include file="orderforms/standard_cart/sidebar-categories.tpl"}</div>
 <div class="cart-body ixir-domain-body">
  {include file="orderforms/standard_cart/sidebar-categories-collapsed.tpl"}
  {include file="$template/components/domain/transfer/domain-transfer.tpl"}
 </div>
</div>

{include file="$template/components/domain/transfer/scripts.tpl"}