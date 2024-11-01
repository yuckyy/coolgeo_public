<?php

include 'generator/core/class_top_menu.php';
// Подключить настройки
include 'generator/settings/top_menu_data.php';


$top_menu = new top_menu($TopMenuData, 'en', 1, 'ru');

echo $top_menu -> CONTENT;

?>