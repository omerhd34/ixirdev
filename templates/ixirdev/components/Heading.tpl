{* 
  Kullanım: {include file="$template/components/Heading.tpl" title="Başlık" tag="h2" class="mb-4" id="ornek-id" line=false}
*}

{if !isset($isHeadingStyleLoaded)}
    {assign var="isHeadingStyleLoaded" value=true}
    <style>
        .site-heading {
            margin-top: 0;
            font-family: "Space Grotesk", "Roboto", -apple-system, sans-serif !important;
            font-weight: 700;
            letter-spacing: -0.025em;
            line-height: 1.25;
            font-size: 24px; 
        }

        .bg-dark-blue .site-heading,
        .bg-dark .site-heading,
        .ixir-wh-diff--dark .site-heading,
        .ixir-cs-usage .site-heading,
        .ixir-cs-story .site-heading,
        .ixir-pci-story .site-heading,
        .pci-story-intro .site-heading,
        .ixir-as-why .site-heading,
        .ixir-as-why-header .site-heading,
        .ixir-kms-diff .site-heading,
        .ixir-wh-story:not(.bg-light-blue):not(.ixir-wh-story--light) .site-heading,
        .ixir-wh-story--features .site-heading,
        .ixir-wh-story-features-head .site-heading,
        .ixir-wh-software .site-heading,
        .ixir-ds-network-section.bg-dark-blue .site-heading,
        section[style*="#091322"] .site-heading,
        div[style*="#091322"] .site-heading,
        section[style*="#070e1a"] .site-heading,
        div[style*="#070e1a"] .site-heading,
        .site-heading.text-white {
            color: #ffffff !important;
        }

        .site-heading:not(.site-heading--no-line)::after {
            content: "";
            display: block;
            width: 64px;
            height: 3.5px;
            margin: 16px auto 0;
            border-radius: 99px;
            background: linear-gradient(90deg, #2563eb, #60a5fa);
        }

        .site-heading.site-heading--no-line::after {
            display: none !important;
        }

        .site-heading.text-left::after,
        .site-heading.align-left::after,
        .site-heading.site-heading--align-left::after,
        .site-heading--align-left::after,
        .text-left > .site-heading::after {
            margin-left: 0 !important;
            margin-right: auto !important;
        }

        .site-heading.text-center::after,
        .site-heading.align-center::after,
        .site-heading.site-heading--align-center::after,
        .site-heading--align-center::after,
        .text-center > .site-heading::after {
            margin-left: auto !important;
            margin-right: auto !important;
        }

        .site-heading.text-right::after,
        .site-heading.align-right::after,
        .site-heading.site-heading--align-right::after,
        .site-heading--align-right::after,
        .text-right > .site-heading::after {
            margin-left: auto !important;
            margin-right: 0 !important;
        }

        @media screen and (max-width: 768px) {
            .site-heading:not(.site-heading--no-line)::after {
                margin-top: 12px;
            }
        }

        @media screen and (min-width: 768px) and (max-width: 1024px) {
            .site-heading {
                font-size: 26px;
            }
        }

        @media screen and (min-width: 1024px) {
            .site-heading {
                font-size: 32px;
            }
        }
    </style>
{/if}

{assign var="headingTag" value=$tag|default:"h2"}
{assign var="showLine" value=true}
{if isset($line) && ($line === false || $line === "false" || $line === 0 || $line === "0")}
    {assign var="showLine" value=false}
{/if}
{if isset($hasLine) && ($hasLine === false || $hasLine === "false" || $hasLine === 0 || $hasLine === "0")}
    {assign var="showLine" value=false}
{/if}

{assign var="alignClass" value=""}
{if !empty($align)}
    {if $align == "left"}
        {assign var="alignClass" value=" site-heading--align-left text-left"}
    {elseif $align == "center"}
        {assign var="alignClass" value=" site-heading--align-center text-center"}
    {elseif $align == "right"}
        {assign var="alignClass" value=" site-heading--align-right text-right"}
    {/if}
{/if}

<{$headingTag}{if !empty($id)} id="{$id}"{/if} class="site-heading{if !$showLine} site-heading--no-line{/if}{$alignClass}{if !empty($class)} {$class}{/if}">
    {$title}
</{$headingTag}>

{* Reset local variables to avoid leakage across Smarty includes *}
{assign var="tag" value=null}
{assign var="id" value=null}
{assign var="class" value=null}
{assign var="line" value=null}
{assign var="hasLine" value=null}
{assign var="align" value=null}