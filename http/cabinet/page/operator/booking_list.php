<?php
session_start();

require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/operator/booking_list_page.php');
require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/page_start_block.php');

// Страница
if (isset($_GET['page'])){
    if (preg_match('/^[0-9]*$/', $_GET['page'])) {
        $Page = $_GET['page'];
    }
} else {
    $Page = 1;
}

$page = new booking_list_page($mysqli, $Page);
$page -> generate();
echo $page -> CONTENT;

?>