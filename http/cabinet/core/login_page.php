<?php

Class login_page
{
    var $mysqli;
    // -- Темплеты --
    var $templete_page = '';
    var $templete_login_form = '';

    var $CONTENT = Array();

    //конструктор
    function login_page($mysqli)
    {
        $this->mysqli = $mysqli;
    }

    function generate()
    {
        // Прочитать шаблон главной страницы
        $this -> GetPageTemplete();
        $this -> GetLogin_formTemplete();

        // Подключить класс главного меню
        require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/class_top_menu.php');
        $topmenu = new top_menu($this->mysqli, $_SESSION['language'], 8);

        // создать и подставить главное меню
        $headers = '
            <script src="/cabinet/js/login_page.js"></script>
            <script src="/cabinet/js/intlTelInput.js"></script>
            <link href="/cabinet/css/login_page.css" rel="stylesheet">
            <link href="/cabinet/css/intlTelInput.css" rel="stylesheet">
        ';
        $this -> page_templete = str_replace('{additional_headers}', $headers, $this -> page_templete);
        $this -> page_templete = str_replace('{navigation_menu_bar}', $topmenu->CONTENT, $this -> page_templete);
        $this -> page_templete = str_replace('{page_content}', $this -> templete_login_form, $this -> page_templete);

        // подключить переводчик
        require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
        $translator = new translator($this->mysqli, $_SESSION['language']);
        $this -> CONTENT = $translator->translate($this -> page_templete);
    }

    // методы чтения шаблонов
    private function GetPageTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/page.html';
        if (file_exists($_file_path))
        {
            $this -> page_templete = file_get_contents($_file_path);
        }
    }
    private function GetLogin_formTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/login_form.html';
        if (file_exists($_file_path))
        {
            $this -> templete_login_form = file_get_contents($_file_path);
        }
    }

}

?>