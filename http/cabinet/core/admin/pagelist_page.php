<?php

Class pagelist_page
{
    var $mysqli;
    // -- Темплеты --
    var $templete_pagelist = '';

    var $CONTENT = Array();

    //конструктор
    function pagelist_page($mysqli)
    {
        $this->mysqli = $mysqli;
    }

    function generate()
    {

        // Подключить класс страницы кабинета
        require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/cabinet_page.php');
        $cabinet_page = new cabinet_page($this->mysqli, 8, 1);
        $cabinet_page -> generate();

        // Прочитать шаблон главной страницы
        $this -> GetPageListTemplete();

        // создать и подставить главное меню
        $headers = '
        ';
        $cabinet_page -> CONTENT = str_replace('{additional_headers}', $headers, $cabinet_page -> CONTENT);
        $cabinet_page -> CONTENT = str_replace('{page_content}', $this -> templete_pagelist, $cabinet_page -> CONTENT);

        // Хлебные крошки
        $breadcrumb = '<nav aria-label="breadcrumb" style="display: inline !important;">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Кабинет</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Администрирование -  Контент: Страницы сайта</li>
                    </ol>
                </nav>';
        $cabinet_page -> CONTENT = str_replace('{breadcrumb}', $breadcrumb, $cabinet_page -> CONTENT);


        $this -> CONTENT = $cabinet_page -> CONTENT;
    }

    // методы чтения шаблонов
    private function GetPageListTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/pagelist_page.html';
        if (file_exists($_file_path))
        {
            $this -> templete_pagelist = file_get_contents($_file_path);
        }
    }

}

?>