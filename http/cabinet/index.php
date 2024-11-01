<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 17.03.2019
 * Time: 11:48
 */
session_start();
// подключиться к бд
require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/config.php');

// если не авторизован - отправить на страницу авторизации
if (!isset($_SESSION['authentication'])){
    header('location: /cabinet/page/login.php');
}else{
    if (isset($_SESSION['authentication']['UserID']) && strlen($_SESSION['authentication']['UserID']) > 0){
        header('location: /cabinet/page/current_bookings.php');
    }else{
        header('location: /cabinet/page/login.php');
    }
}
?>