<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 17.03.2019
 * Time: 18:40
 */

//сессия
session_start();
// подключиться к бд
require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/config.php');
require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/user.php');
// пользователь
$user = new user($mysqli);
$result = $user -> LogOut();
// переадресация в начало
header('location: /');


?>