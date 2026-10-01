<div class="dropdown-menu ixir-cart-menu">
 <div class="ixir-cart-head">
  <span class="ixir-cart-title">Sepetiniz</span>
  <div class="ixir-cart-head-actions">
   {if isset($ixirCartCount) && $ixirCartCount > 0}
    <span class="ixir-cart-count">{$ixirCartCount} ürün</span>
   {/if}
   <button type="button" class="ixir-cart-close ixir-close" title="Kapat" aria-label="Kapat">
    <i class="fas fa-times"></i>
   </button>
  </div>
 </div>
 {if isset($ixirCartItems) && $ixirCartItems}
  <ul class="ixir-cart-items">
   {foreach $ixirCartItems as $item}
    <li>
     <span class="ixir-cart-item-icon">
      {if $item.type == 'domain' || $item.type == 'renewal'}
       <i class="fas fa-globe"></i>
      {elseif $item.type == 'addon'}
       <i class="fas fa-puzzle-piece"></i>
      {else}
       <i class="fas fa-cube"></i>
      {/if}
     </span>
     <span class="ixir-cart-item-body">
      <span class="ixir-cart-item-name">
       {$item.name|escape}
       {if $item.qty}<em>x{$item.qty}</em>{/if}
      </span>
      {if $item.meta}
       <span class="ixir-cart-item-meta">{$item.meta|escape}</span>
      {/if}
     </span>
     {if isset($item.removeType)}
      <a
       href="{$WEB_ROOT}/cart.php?a=remove&amp;r={$item.removeType|escape:'url'}&amp;i={$item.removeIndex|escape:'url'}{if isset($item.renewalType) && $item.renewalType}&amp;rt={$item.renewalType|escape:'url'}{/if}"
       class="ixir-cart-item-remove" data-type="{$item.removeType|escape}" data-index="{$item.removeIndex|escape}"
       data-name="{$item.name|escape}"
       {if isset($item.renewalType) && $item.renewalType}data-rt="{$item.renewalType|escape}" {/if} title="Kaldır"
       aria-label="{$item.name|escape} ürününü sepetten kaldır">
       <i class="fas fa-trash-alt" aria-hidden="true"></i>
      </a>
     {/if}
    </li>
   {/foreach}
  </ul>
 {else}
  <div class="ixir-cart-empty">
   <span class="ixir-cart-empty-icon"><i class="fas fa-shopping-basket"></i></span>
   <strong>Sepetiniz boş.</strong>
   <span class="ixir-cart-empty-text">Henüz ürün eklemediniz.</span>
  </div>
 {/if}
 <a href="{$WEB_ROOT}/sepet/goruntule" class="ixir-cart-view-btn">
  <span class="ixir-cart-view-btn-label">Sepeti Gör <i class="fas fa-arrow-right"></i></span>
 </a>
</div>