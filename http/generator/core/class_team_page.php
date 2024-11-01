<?php


Class team_page
{
    // Язык
    var $Lang = 'ru';
    var $DefaultLang = 'ru';
    var $CardPageName = '';

    // данные
    var $Top_menu_data = Array();
    var $ActiveItem = 1;
    var $CardData = Array();

    // -- Темплеты --
    var $page_templete = '';
    var $templete_primary_title = '';
    var $templete_team_page = '';
    var $templete_card_page_option = '';



    var $CONTENT = Array();

    //конструктор
    function team_page($Lang)
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
        $this -> GetTeamPageTemplete();
        $this -> GetCardPageOptionTemplete();
        $this -> GetMainPagePrimaryTitleTemplete();


        // создать и подставить главное меню
        $top_menu = new top_menu($this -> Top_menu_data, $this -> Lang, $this -> ActiveItem, $this -> DefaultLang);
        $this -> page_templete = str_replace('{navigation_menu_bar}', $top_menu -> CONTENT, $this -> page_templete);

        // подставить данные в заголовок главной страницы
        $this -> templete_primary_title = str_replace('{main_page_primary_title}', $this -> CardData['PrimaryTitle'][$this->Lang] , $this -> templete_primary_title);
        $this -> templete_primary_title = str_replace('{main_page_primary_title_descryption}', $this -> CardData['PrimaryTitleDescryption'][$this->Lang] , $this -> templete_primary_title);
        $this -> templete_team_page = str_replace('{page_primary_title}', $this -> templete_primary_title, $this -> templete_team_page);

        // Подставить блоков
        $CardOptions = '';
        $TempCardOption = '';
        $OrderPicture = '1';
        $OrderDescryption = '2';
        Foreach($this -> CardData['Options'] as $CardOption){

            if ($OrderPicture == '1'){
                $OrderPicture = '2';
                $OrderDescryption = '1';
            }
            else{
                $OrderPicture = '1';
                $OrderDescryption = '2';
            }
            $TempCardOption = $this -> templete_card_page_option;
            // проставить сотрировку блоков
            $TempCardOption = str_replace('{order_picture}', $OrderPicture, $TempCardOption);
            $TempCardOption = str_replace('{order_descryption}', $OrderDescryption, $TempCardOption);
            // подставить данные блока
            $TempCardOption = str_replace('{image_src}', $CardOption['ImageSrc'], $TempCardOption);
            $TempCardOption = str_replace('{image_alt}', $CardOption['ImageAlt'], $TempCardOption);
            $TempCardOption = str_replace('{PrimaryTitle}', $CardOption['Title'][$this -> Lang], $TempCardOption);
            $TempCardOption = str_replace('{PrimaryTitleDescryption}', $CardOption['Descryption'][$this -> Lang], $TempCardOption);
            $TempCardOption = str_replace('{cartpage}', $this -> CardPageName, $TempCardOption);
            $TempCardOption = str_replace('{langpage}', $this -> Lang, $TempCardOption);
            $CardOptions .= $TempCardOption;
        }
        $this -> templete_team_page = str_replace('{page_options}', $CardOptions, $this -> templete_team_page);



        // Подставить данные блока подробностей
        $this -> templete_card_page = str_replace('{CoastsTitle}', $this -> CardData['CoastsTitle'][$this->Lang], $this -> templete_card_page);
        $this -> templete_card_page = str_replace('{CoastsText}', $this -> CardData['CoastsText'][$this->Lang], $this -> templete_card_page);
        $this -> templete_card_page = str_replace('{IncludesTitle}', $this -> CardData['IncludesTitle'][$this->Lang], $this -> templete_card_page);
        $this -> templete_card_page = str_replace('{IncludesText}', $this -> CardData['IncludesText'][$this->Lang], $this -> templete_card_page);
        $this -> templete_card_page = str_replace('{AdditionalTitle}', $this -> CardData['AdditionalTitle'][$this->Lang], $this -> templete_card_page);
        $this -> templete_card_page = str_replace('{AdditionalText}', $this -> CardData['AdditionalText'][$this->Lang], $this -> templete_card_page);
        $this -> templete_card_page = str_replace('{CardButtonBuySrc}', $this -> CardData['CardButtonBuySrc'], $this -> templete_card_page);
        $this -> templete_card_page = str_replace('{CardButtonBuyTitle}', $this -> CardData['CardButtonBuyTitle'][$this->Lang], $this -> templete_card_page);
        $this -> templete_card_page = str_replace('{RouteTitle}', $this -> CardData['RouteTitle'][$this->Lang], $this -> templete_card_page);
        $this -> templete_card_page = str_replace('{RouteText}', $this -> CardData['RouteText'][$this->Lang], $this -> templete_card_page);


        $this -> page_templete = str_replace('{page_templete_title}', $this -> CardData['page_templete_title'][$this -> Lang], $this -> page_templete);
        $this -> page_templete = str_replace('{page_templete_description}', $this -> CardData['page_templete_description'][$this -> Lang], $this -> page_templete);
        $this -> page_templete = str_replace('{page_templete_keywords}', $this -> CardData['page_templete_keywords'][$this -> Lang], $this -> page_templete);

        $this -> page_templete = str_replace('{page_content}', $this -> templete_team_page, $this -> page_templete);

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
    private function GetTeamPageTemplete(){
        $_file_path = 'templete/team_page.html';
        if (file_exists($_file_path))
        {
            $this -> templete_team_page  = file_get_contents($_file_path);
        }
    }
    private function GetCardPageOptionTemplete(){
        $_file_path = 'templete/card_page_option.html';
        if (file_exists($_file_path))
        {
            $this -> templete_card_page_option = file_get_contents($_file_path);
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