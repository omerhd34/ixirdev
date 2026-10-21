{if !isset($isListStyleLoaded)}
 {assign var="isListStyleLoaded" value=true scope="global"}
 <style>
  .ixir-list {
   --ixir-list-cols: 3;
   --ixir-list-gap: 56px;
   --ixir-list-item-w: 250px;
   --ixir-list-text: #fff;
   --ixir-list-title: rgba(255, 255, 255, 0.92);
   --ixir-list-icon: #386ce0;
   --ixir-list-hover: #fbd746;
   --ixir-list-line: rgba(255, 255, 255, 0.2);
   --ixir-list-border: rgba(255, 255, 255, 0.16);
   box-sizing: border-box;
   width: 100%;
   margin: 28px 0 0;
   padding: 20px 0 0;
   border-top: 1px solid var(--ixir-list-border);
   font-family: "Roboto", -apple-system, sans-serif;
  }

  .ixir-list *,
  .ixir-list *::before,
  .ixir-list *::after {
   box-sizing: border-box;
  }

  .ixir-list--light {
   --ixir-list-text: #0f172a;
   --ixir-list-title: #0f172a;
   --ixir-list-icon: #2563eb;
   --ixir-list-hover: #2563eb;
   --ixir-list-line: rgba(15, 23, 42, 0.14);
   --ixir-list-border: rgba(15, 23, 42, 0.12);
  }

  .ixir-list--no-border {
   margin-top: 0;
   padding-top: 0;
   border-top: 0;
  }

  .ixir-list--cols-1 { --ixir-list-cols: 1; }
  .ixir-list--cols-2 { --ixir-list-cols: 2; }
  .ixir-list--cols-3 { --ixir-list-cols: 3; }
  .ixir-list--cols-4 { --ixir-list-cols: 4; }

  .ixir-list__inner {
   width: 100%;
   max-width: calc(var(--ixir-list-cols) * var(--ixir-list-item-w) + (var(--ixir-list-cols) - 1) * var(--ixir-list-gap));
   margin: 0 auto;
  }

  .ixir-list--left .ixir-list__inner {
   margin-left: 0;
  }

  .ixir-list__title {
   margin: 0 0 14px;
   color: var(--ixir-list-title);
   font-size: 13px;
   font-weight: 700;
   line-height: 1.3;
   letter-spacing: 0.08em;
   text-transform: uppercase;
  }

  .ixir-list__items {
   list-style: none !important;
   margin: 0;
   padding: 0;
   column-count: var(--ixir-list-cols);
   column-gap: var(--ixir-list-gap);
   column-fill: balance;
   column-rule: 1px solid var(--ixir-list-line);
  }

  .ixir-list--no-divider .ixir-list__items {
   column-rule: 0;
  }

  .ixir-list__item {
   display: block;
   margin: 0;
   padding: 0 0 10px;
   list-style: none !important;
   break-inside: avoid;
   page-break-inside: avoid;
   color: var(--ixir-list-text);
   font-size: 14px;
   font-weight: 500;
   line-height: 1.4;
  }

  .ixir-list__item::marker {
   content: none;
  }

  .ixir-list__link,
  .ixir-list__static {
   display: inline-flex;
   align-items: center;
   gap: 12px;
   max-width: 100%;
   color: var(--ixir-list-text) !important;
   text-decoration: none !important;
  }

  .ixir-list__icon {
   display: inline-flex;
   align-items: center;
   justify-content: center;
   flex: 0 0 18px;
   width: 18px;
   color: var(--ixir-list-icon);
   font-size: 14px;
   text-align: center;
   transition: color 0.2s ease, transform 0.2s ease;
  }

  .ixir-list__label {
   min-width: 0;
   transition: color 0.2s ease, transform 0.2s ease;
  }

  .ixir-list__link:hover,
  .ixir-list__link:focus-visible {
   color: var(--ixir-list-hover) !important;
  }

  .ixir-list__link:hover .ixir-list__icon,
  .ixir-list__link:focus-visible .ixir-list__icon {
   color: var(--ixir-list-hover);
   transform: scale(1.15);
  }

  .ixir-list__link:hover .ixir-list__label,
  .ixir-list__link:focus-visible .ixir-list__label {
   transform: translateX(2px);
  }

  .ixir-list__link:focus-visible {
   outline: 2px solid var(--ixir-list-hover);
   outline-offset: 4px;
   border-radius: 4px;
  }

  .ixir-list--animate .ixir-list__item {
   animation: ixirListIn 0.5s ease both;
   animation-delay: calc(0.12s + var(--i, 0) * 45ms);
  }

  @keyframes ixirListIn {
   from {
    opacity: 0;
    translate: 0 10px;
   }

   to {
    opacity: 1;
    translate: 0 0;
   }
  }

  @media screen and (max-width: 992px) {
   .ixir-list {
    --ixir-list-gap: 40px;
   }

   .ixir-list--cols-3,
   .ixir-list--cols-4 {
    --ixir-list-cols: 2;
   }
  }

  @media screen and (max-width: 480px) {
   .ixir-list {
    --ixir-list-gap: 24px;
   }

   .ixir-list--cols-2,
   .ixir-list--cols-3,
   .ixir-list--cols-4 {
    --ixir-list-cols: 1;
   }

   .ixir-list__inner {
    max-width: none;
   }

   .ixir-list__title {
    margin-bottom: 10px;
   }
  }

  @media (prefers-reduced-motion: reduce) {
   .ixir-list--animate .ixir-list__item {
    animation: none;
   }

   .ixir-list__icon,
   .ixir-list__label {
    transition: none;
   }

   .ixir-list__link:hover .ixir-list__icon,
   .ixir-list__link:hover .ixir-list__label {
    transform: none;
   }
  }
 </style>
{/if}

{assign var="listCols" value=$columns|default:3}
{assign var="listTheme" value=$theme|default:"dark"}
{assign var="listAlign" value=$align|default:"center"}

{assign var="listDivider" value=true}
{if isset($divider) && ($divider === false || $divider === "false" || $divider === 0 || $divider === "0")}
 {assign var="listDivider" value=false}
{/if}

{assign var="listBorder" value=true}
{if isset($border) && ($border === false || $border === "false" || $border === 0 || $border === "0")}
 {assign var="listBorder" value=false}
{/if}

{assign var="listAnimate" value=true}
{if isset($animate) && ($animate === false || $animate === "false" || $animate === 0 || $animate === "0")}
 {assign var="listAnimate" value=false}
{/if}

{if !empty($items)}
 <div{if !empty($id)} id="{$id}"{/if}
  class="ixir-list ixir-list--cols-{$listCols} ixir-list--{$listTheme}{if $listAlign == 'left'} ixir-list--left{/if}{if !$listDivider} ixir-list--no-divider{/if}{if !$listBorder} ixir-list--no-border{/if}{if $listAnimate} ixir-list--animate{/if}{if !empty($class)} {$class}{/if}"
  role="region"{if !empty($title)} aria-label="{$title|escape:'html'}"{/if}>
  <div class="ixir-list__inner">
   {if !empty($title)}
    <p class="ixir-list__title" lang="tr">{$title|escape:'html'}</p>
   {/if}
   <ul class="ixir-list__items" role="list">
    {foreach from=$items item=listItem}
     <li class="ixir-list__item" style="--i: {$listItem@index}">
      {assign var="listIcon" value=$listItem.icon|default:"fas fa-check"}
      {if !empty($listItem.href) || !empty($listItem.url)}
       <a class="ixir-list__link"
        href="{if !empty($listItem.url)}{$listItem.url}{else}{$WEB_ROOT}/{$listItem.href}{/if}"
        title="{if !empty($listItem.title)}{$listItem.title|escape:'html'}{else}{$listItem.label|escape:'html'}{/if}"
        {if !empty($listItem.external)} target="_blank" rel="noopener noreferrer"{/if}>
        <i class="{$listIcon} fa-fw ixir-list__icon" aria-hidden="true"></i>
        <span class="ixir-list__label">{$listItem.label|escape:'html'}</span>
       </a>
      {else}
       <span class="ixir-list__static">
        <i class="{$listIcon} fa-fw ixir-list__icon" aria-hidden="true"></i>
        <span class="ixir-list__label">{$listItem.label|escape:'html'}</span>
       </span>
      {/if}
     </li>
    {/foreach}
   </ul>
  </div>
 </div>
{/if}

{assign var="items" value=null}
{assign var="title" value=null}
{assign var="columns" value=null}
{assign var="divider" value=null}
{assign var="border" value=null}
{assign var="align" value=null}
{assign var="theme" value=null}
{assign var="animate" value=null}
{assign var="class" value=null}
{assign var="id" value=null}