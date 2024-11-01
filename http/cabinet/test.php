<?php

if (isset($_GET['page'])){
    $page = $_GET['page'];
} else{
    $page = 40;
}

if (isset($_GET['lang'])){
    $lang = $_GET['lang'];
} else{
    $lang = 1;
}

//сессия
session_start();
// подключиться к бд
require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/config.php');
require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/admin/PageUpdater.php');
$PageUpdater = new PageUpdater($mysqli, $page, $lang);
$PageUpdater -> generate();
echo $PageUpdater -> CONTENT;

?>