<?php

use WHMCS\ClientArea;

define('CLIENTAREA', true);

require __DIR__ . '/init.php';

$slug = strtolower(trim((string) ($_GET['slug'] ?? '')));
$slug = preg_replace('/[^a-z0-9-]/', '', $slug);
$pages = function_exists('ixir_product_pages') ? ixir_product_pages() : [];

if ($slug === '' || !isset($pages[$slug])) {
    header('Location: ' . (function_exists('ixir_web_root') ? ixir_web_root() : '') . '/', true, 302);
    exit;
}

$page = $pages[$slug];
$group = ixir_find_product_group($slug, $page);
if ($group && !empty($group->id)) {
    $root = function_exists('ixir_web_root') ? ixir_web_root() : '';
    header('Location: ' . $root . '/sepet?gid=' . (int) $group->id, true, 302);
    exit;
}

$ca = new ClientArea();
$ca->setPageTitle($page['title']);
$ca->addToBreadCrumb('index.php', Lang::trans('globalsystemname'));
$ca->addToBreadCrumb($slug, $page['title']);
$ca->initPage();
$ca->assign('displayTitle', $page['title']);
$ca->assign('tagline', $page['tagline']);
$ca->assign('ixirPage', $page);
$ca->assign('ixirPageSlug', $slug);
$ca->setTemplate('product-landing');
$ca->output();
