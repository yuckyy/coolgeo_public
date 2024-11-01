<?php
session_start();

require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/rentcar/booking_new_list_page.php');
require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/page_start_block.php');

$page = new booking_new_list_page($mysqli);
$page -> generate();
echo $page -> CONTENT;


?>