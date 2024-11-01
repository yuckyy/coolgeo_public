<?php

session_start();

require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/page_start_block.php');
require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/login_page.php');

$login_page = new login_page($mysqli);
$login_page -> generate();
echo $login_page -> CONTENT;


?>