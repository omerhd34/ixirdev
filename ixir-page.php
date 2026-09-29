<?php

use WHMCS\ClientArea;

define('CLIENTAREA', true);

require __DIR__ . '/init.php';
require_once __DIR__ . '/includes/ixir-corporate-pages.php';

$slug = strtolower(trim((string) ($_GET['slug'] ?? '')));
$slug = preg_replace('/[^a-z0-9-]/', '', $slug);

if (ixir_render_corporate_page($slug)) {
    exit;
}

$pages = function_exists('ixir_product_pages') ? ixir_product_pages() : [];

if ($slug === '' || !isset($pages[$slug])) {
    header('Location: ' . (function_exists('ixir_web_root') ? ixir_web_root() : '') . '/', true, 302);
    exit;
}

$title = $pages[$slug];
$group = ixir_find_product_group($slug, $title);
$customLanding = in_array($slug, ['linux-hosting', 'windows-hosting', 'wordpress-hosting', 'cloud-drive'], true);
if ($group && !empty($group->id) && !$customLanding) {
    $root = function_exists('ixir_web_root') ? ixir_web_root() : '';
    header('Location: ' . $root . '/sepet?gid=' . (int) $group->id, true, 302);
    exit;
}

$ca = new ClientArea();
$ca->setPageTitle($title);
$ca->addToBreadCrumb('index.php', Lang::trans('globalsystemname'));
$ca->addToBreadCrumb($slug, $title);
$ca->initPage();
$ca->assign('displayTitle', $title);
$ca->assign('ixirPageSlug', $slug);
$ca->setTemplate('product-landing');
$ca->output();
