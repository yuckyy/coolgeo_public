<?php

session_start();

require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/page_start_block.php');
require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/admin/pagelist_page.php');

$pagelist_page = new pagelist_page($mysqli);
$pagelist_page -> generate();
echo $pagelist_page -> CONTENT;


?>