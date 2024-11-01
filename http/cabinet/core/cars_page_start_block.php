<?php
//сессия
session_start();
// подключиться к бд
require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/config.php');
// подключить класс горизонтального верхнего меню
require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/class_top_menu.php');

// Прочитать язык по умолчанию
$MySqliQuerry = $mysqli->prepare("SELECT value FROM Settings WHERE `Key` = ? LIMIT 1");
$Key = 'default_language';
$MySqliQuerry->bind_param('s', $Key);
$MySqliQuerry->execute();
$result = GetResultArray($MySqliQuerry);
if (!isset($_SESSION['language'])){
    $_SESSION['language'] = $result[0]['value'];
}
if (!isset($_SESSION['default_language'])){
    $_SESSION['default_language'] = $result[0]['value'];
}

list($page_uri, $page_params) = explode('?', $_SERVER['REQUEST_URI']);
// проверить доступ к странице
$MySqliQuerry = $mysqli->prepare("
            SELECT cp.CabinetPageID, cp.Access
                FROM CabinetPage cp
                WHERE cp.URI = ?
        ");
$MySqliQuerry->bind_param('s', $page_uri);
$MySqliQuerry->execute();
$result = GetResultArray($MySqliQuerry);
$AccessNeeded = $result[0]['Access'];

// отключил проверку аутентификации для бронирования заказа

// if ($AccessNeeded && !isset($_SESSION['authentication']['UserID'])){
//     $_SESSION['RefererPage'] = $_SERVER['REQUEST_URI'];
//     header('location: /cabinet/page/login.php');
//     die();
// }

// // проверить доступ к странице
// $MySqliQuerry = $mysqli->prepare("
//             SELECT cp.CabinetPageID
//                 FROM CabinetPage cp
//                   LEFT JOIN CabinetPageAccess cpa ON cp.CabinetPageID = cpa.CabinetPageID
//                   LEFT JOIN GroupRoles gr ON gr.RoleID = cpa.RoleID
//                   LEFT JOIN UserGroups ug ON ug.GroupID = gr.GroupID
//                 WHERE cp.URI = ?
//                     and ((ug.UserID = ? AND ug.UserID is not NULL) or cp.Access = 0)
//                 GROUP BY cp.CabinetPageID
//         ");
// $UserID = '';
// if (isset($_SESSION['authentication']['UserID'])){
//     $UserID = $_SESSION['authentication']['UserID'];
// }
// $MySqliQuerry->bind_param('si', $page_uri, $UserID);
$MySqliQuerry->execute();
$result = GetResultArray($MySqliQuerry);
//if (count($result) == 0){
//    header('location: /');
//    die();
//}


?>