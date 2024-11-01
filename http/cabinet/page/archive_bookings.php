<?php
session_start();

require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/archive_bookings_page.php');
require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/page_start_block.php');

$page = new archive_bookings_page($mysqli);
$page -> generate();
echo $page -> CONTENT;


?>