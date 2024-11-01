<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 15.05.2018
 * Time: 20:24
 */

Class contacts_page
{
    // Язык
    var $Lang = 'ru';
    var $DefaultLang = 'ru';

    var $Caption = '';

    // данные
    var $Top_menu_data = Array();
    var $PrimaryTitle_data = Array();
    var $Album_data = Array();
    var $ActiveItem = 1;

    // -- Темплеты --
    var $page_templete = '';
    var $templete_contacts_page = '';
    var $templete_primary_title = '';

    var $CONTENT = Array();

    //конструктор
    function contacts_page($Lang)
    {
        $this -> Lang = $Lang;
    }

    function generate()
    {

        // Прочитать шаблон главной страницы
        $this -> GetPageTemplete();
        $this -> GetContactsPageTemplete();
        $this -> GetMainPagePrimaryTitleTemplete();

        // создать и подставить главное меню
        $top_menu = new top_menu($this -> Top_menu_data, $this -> Lang, $this -> ActiveItem, $this -> DefaultLang);
        $this -> page_templete = str_replace('{navigation_menu_bar}', $top_menu -> CONTENT, $this -> page_templete);

        $this -> page_templete = str_replace('{page_templete_title}', $this -> PrimaryTitle_data['page_templete_title'][$this -> Lang], $this -> page_templete);
        $this -> page_templete = str_replace('{page_templete_description}', $this -> PrimaryTitle_data['page_templete_description'][$this -> Lang], $this -> page_templete);
        $this -> page_templete = str_replace('{page_templete_keywords}', $this -> PrimaryTitle_data['page_templete_keywords'][$this -> Lang], $this -> page_templete);

        $this -> page_templete = str_replace('{page_content}', $this -> templete_contacts_page, $this -> page_templete);

        $this -> CONTENT = $this -> page_templete;

    }

    // методы чтения шаблонов
    private function GetPageTemplete(){
        $_file_path = 'templete/page_templete.html';
        if (file_exists($_file_path))
        {
            $this -> page_templete = file_get_contents($_file_path);
        }
    }
    private function GetContactsPageTemplete(){
        $_file_path = 'templete/contacts_page.html';
        if (file_exists($_file_path))
        {
            $this -> templete_contacts_page = file_get_contents($_file_path);
        }
    }
    private function GetMainPagePrimaryTitleTemplete(){
        $_file_path = 'templete/main_page_primary_title.html';
        if (file_exists($_file_path))
        {
            $this -> templete_primary_title = file_get_contents($_file_path);
        }
    }


}





?>