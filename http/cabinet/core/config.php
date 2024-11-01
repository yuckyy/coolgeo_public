<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 17.03.2019
 * Time: 11:54
 */
//доступ к базе данных
$db_host = 'mysql316.1gb.ua';
$db_name = 'gbua_cgdb';
$db_user = 'gbua_cgdb';
$db_pass = 'V4CN-6X-wNNN';


// Подключаемся к БД
$mysqli = new mysqli($db_host, $db_user, $db_pass, $db_name);
$mysqli->set_charset("utf8");
// Петод получения массива результата
require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/GetResultArray.php');

?>