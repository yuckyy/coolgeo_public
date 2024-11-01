<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 15.05.2018
 * Time: 20:24
 */

Class main_page
{
    // Язык
    var $Lang = 'ru';
    var $DefaultLang = 'ru';

    var $Caption = '';

    // данные
    var $Top_menu_data = Array();
    var $Carousel_data = Array();
    var $PrimaryTitle_data = Array();
    var $Album_data = Array();


    var $Primary_title = '';
    var $Primary_title_descryption = '';
    var $Album = Array();

    // -- Темплеты --
    var $page_templete = '';
    var $templete_main_page = '';
    var $templete_primary_title = '';

    var $CONTENT = Array();

    //конструктор
    function main_page($Lang)
    {
        $this -> Lang = $Lang;
    }

    function generate()
    {
        // Прочитать шаблон главной страницы
        $this -> GetPageTemplete();
        $this -> GetMainPageTemplete();
        $this -> GetMainPagePrimaryTitleTemplete();

        //Преобразователь ссылки для языка
        $LinkLangCorrector = '';
        if ($this -> DefaultLang != $this -> Lang){
            $LinkLangCorrector = '/'.$this -> Lang;
        }

        // создать и подставить главное меню
        $top_menu = new top_menu($this -> Top_menu_data, $this -> Lang, 1, $this -> DefaultLang);
        $this -> page_templete = str_replace('{navigation_menu_bar}', $top_menu -> CONTENT, $this -> page_templete);

        // создать и подставить карусель
        $carousel = new carousel($this -> Carousel_data, $this -> Lang);
        $this -> templete_main_page = str_replace('{main_page_carousel}', $carousel -> CONTENT, $this -> templete_main_page);

        // подставить данные в заголовок главной страницы
        $this -> templete_primary_title = str_replace('{main_page_primary_title}', $this -> PrimaryTitle_data['PrimaryTitle'][$this->Lang] , $this -> templete_primary_title);
        $this -> templete_primary_title = str_replace('{main_page_primary_title_descryption}', $this -> PrimaryTitle_data['PrimaryTitleDescryption'][$this->Lang] , $this -> templete_primary_title);
        $this -> templete_main_page = str_replace('{main_page_primary_title}', $this -> templete_primary_title, $this -> templete_main_page);

        // создать и подставить альбом главной страницы
        $album = new album($this -> Album_data, $this -> Lang, $this -> DefaultLang);
        $this -> templete_main_page = str_replace('{main_page_album}', $album -> CONTENT, $this -> templete_main_page);

        $this -> page_templete = str_replace('{page_templete_title}', $this -> PrimaryTitle_data['page_templete_title'][$this -> Lang], $this -> page_templete);
        $this -> page_templete = str_replace('{page_templete_description}', $this -> PrimaryTitle_data['page_templete_description'][$this -> Lang], $this -> page_templete);
        $this -> page_templete = str_replace('{page_templete_keywords}', $this -> PrimaryTitle_data['page_templete_keywords'][$this -> Lang], $this -> page_templete);

        $this -> page_templete = str_replace('{page_content}', $this -> templete_main_page, $this -> page_templete);

        $this -> page_templete = str_replace('{og:title}', $this -> PrimaryTitle_data['page_templete_title'][$this -> Lang], $this -> page_templete);
        $this -> page_templete = str_replace('{og:description}', $this -> PrimaryTitle_data['page_templete_description'][$this -> Lang], $this -> page_templete);
        $this -> page_templete = str_replace('{og:image}', 'http://coolgeorgia.com/images/slider/signaghi-coolgeorgiatravel.jpg', $this -> page_templete);

        $this -> page_templete = str_replace('{og:url}', 'http://CoolGeorgia.com', $this -> page_templete);

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
    private function GetMainPageTemplete(){
        $_file_path = 'templete/main_page.html';
        if (file_exists($_file_path))
        {
             $this -> templete_main_page = file_get_contents($_file_path);
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