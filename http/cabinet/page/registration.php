<?php

session_start();

require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/page_start_block.php');
require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/registration_page.php');

$page = new registration_page($mysqli);
$page -> generate();
echo $page -> CONTENT;


?>