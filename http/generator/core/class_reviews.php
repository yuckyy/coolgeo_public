<?php


Class reviews_page
{
    // Язык
    var $Lang = 'ru';
    var $DefaultLang = 'ru';
    var $CardPageName = '';

    // данные
    var $Top_menu_data = Array();
    var $PrimaryTitle_data = Array();
    var $ActiveItem = 1;


    // -- Темплеты --
    var $page_templete = '';
    var $templete_primary_title = '';
    var $templete_reviews_page = '';

    var $CONTENT = Array();

    //конструктор
    function reviews_page($Lang)
    {
        $this -> Lang = $Lang;
    }

    function generate()
    {

        //Преобразователь ссылки для языка
        $LinkLangCorrector = '';
        if ($this -> DefaultLang != $this -> Lang){
            $LinkLangCorrector = '/'.$this -> Lang;
        }

        // Прочитать шаблон главной страницы
        $this -> GetPageTemplete();
        $this -> GetReviewsPageTemplete();
        $this -> GetMainPagePrimaryTitleTemplete();


        // создать и подставить главное меню
        $top_menu = new top_menu($this -> Top_menu_data, $this -> Lang, $this -> ActiveItem, $this -> DefaultLang);
        $this -> page_templete = str_replace('{navigation_menu_bar}', $top_menu -> CONTENT, $this -> page_templete);

        // подставить данные в заголовок главной страницы
        $this -> templete_primary_title = str_replace('{main_page_primary_title}', $this -> PrimaryTitle_data['PrimaryTitle'][$this->Lang] , $this -> templete_primary_title);
        $this -> templete_primary_title = str_replace('{main_page_primary_title_descryption}', $this -> PrimaryTitle_data['PrimaryTitleDescryption'][$this->Lang] , $this -> templete_primary_title);
        $this -> templete_reviews_page = str_replace('{page_primary_title}', $this -> templete_primary_title, $this -> templete_reviews_page);


        $reviews_list = new reviews_pagelist(1);
        $this -> templete_reviews_page = str_replace('{reviews_list}', $reviews_list -> CONTENT, $this -> templete_reviews_page);

        $this -> page_templete = str_replace('{page_templete_title}', $this -> PrimaryTitle_data['page_templete_title'][$this -> Lang], $this -> page_templete);
        $this -> page_templete = str_replace('{page_templete_description}', $this -> PrimaryTitle_data['page_templete_description'][$this -> Lang], $this -> page_templete);
        $this -> page_templete = str_replace('{page_templete_keywords}', $this -> PrimaryTitle_data['page_templete_keywords'][$this -> Lang], $this -> page_templete);
        // Подставить блоков
        $this -> page_templete = str_replace('{page_content}', $this -> templete_reviews_page, $this -> page_templete);

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
    private function GetReviewsPageTemplete(){
        $_file_path = 'templete/reviews_page.html';
        if (file_exists($_file_path))
        {
            $this -> templete_reviews_page  = file_get_contents($_file_path);
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