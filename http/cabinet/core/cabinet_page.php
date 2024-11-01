<?php

Class cabinet_page
{
    var $mysqli;
    // -- Темплеты --
    var $templete_page = '';
    var $templete_cabinetpage = '';

    var $TopMenuActive;
    var $SideBarActive;

    var $CONTENT = Array();

    //конструктор
    function cabinet_page($mysqli, $TopMenuActive = 0, $SideBarActive = 0)
    {
        $this->mysqli = $mysqli;
        $this->TopMenuActive = $TopMenuActive;
        $this->SideBarActive = $SideBarActive;
    }

    function generate()
    {
        // Прочитать шаблон главной страницы
        $this -> GetPageTemplete();
        $this -> GetCabinetPageTemplete();

        // Подключить класс главного меню
        require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/class_top_menu.php');
        $topmenu = new top_menu($this->mysqli, $_SESSION['language'], $this->TopMenuActive);

        // Подключить класс бокового меню
        require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/sidebar_menu.php');
        $sidebar = new sidebar_menu($this->mysqli, $_SESSION['language'], $this->SideBarActive);
        $this -> templete_cabinetpage = str_replace('{sidebar_menu}', $sidebar->CONTENT, $this -> templete_cabinetpage);


        // создать и подставить главное меню
        $headers = '
        <link rel="stylesheet" href="/cabinet/css/cabinet_sidemenu.css">
        {additional_headers}
        ';
        $this -> page_templete = str_replace('{additional_headers}', $headers, $this -> page_templete);
        $this -> page_templete = str_replace('{navigation_menu_bar}', $topmenu->CONTENT, $this -> page_templete);
        $this -> page_templete = str_replace('{page_content}', $this -> templete_cabinetpage, $this -> page_templete);

        $this -> CONTENT = $this -> page_templete;
    }

    // методы чтения шаблонов
    private function GetPageTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/page.html';
        if (file_exists($_file_path))
        {
            $this -> page_templete = file_get_contents($_file_path);
        }
    }
    private function GetCabinetPageTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/cabinet_page.html';
        if (file_exists($_file_path))
        {
            $this -> templete_cabinetpage = file_get_contents($_file_path);
        }
    }

}

?>