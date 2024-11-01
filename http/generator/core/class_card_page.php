<?php

Class card_page
{
    // Язык
    var $Lang = 'ru';
    var $DefaultLang = 'ru';
    var $CardPageName = '';

    // данные
    var $Top_menu_data = Array();
    var $ActiveItem = 1;
    var $CardData = Array();
    var $OtherExcursionsData = Array();
    var $OtherToursData = Array();

    // -- Темплеты --
    var $page_templete = '';
    var $templete_primary_title = '';
    var $templete_card_page = '';
    var $templete_card_page_option = '';
    var $templete_link_block = '';
    var $templete_link_block_block = '';
    var $templete_link_block_link = '';


    var $CONTENT = Array();

    //конструктор
    function card_page($Lang)
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
        $this -> GetCardPageTemplete();
        $this -> GetCardPageOptionTemplete();
        $this -> GetMainPagePrimaryTitleTemplete();
        $this -> GetCardPageLinkBlockTemplete();
        $this -> GetCardPageLinkBlockBlockTemplete();
        $this -> GetCardPageLinkBlockLinkTemplete();



        // создать и подставить главное меню
        $top_menu = new top_menu($this -> Top_menu_data, $this -> Lang, $this -> ActiveItem, $this -> DefaultLang);
        $this -> page_templete = str_replace('{navigation_menu_bar}', $top_menu -> CONTENT, $this -> page_templete);

        // подставить данные в заголовок главной страницы
        $this -> templete_primary_title = str_replace('{main_page_primary_title}', $this -> CardData['PrimaryTitle'][$this->Lang] , $this -> templete_primary_title);
        $this -> templete_primary_title = str_replace('{main_page_primary_title_descryption}', $this -> CardData['PrimaryTitleDescryption'][$this->Lang] , $this -> templete_primary_title);
        $this -> templete_card_page = str_replace('{page_primary_title}', $this -> templete_primary_title, $this -> templete_card_page);

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
            if(isset($CardOption['ImageAlt'][$this -> Lang])){
                $TempCardOption = str_replace('{image_title}', $CardOption['ImageAlt'][$this -> Lang], $TempCardOption);
                $TempCardOption = str_replace('{image_alt}', 'http://CoolGeorgia.com '.$CardOption['ImageAlt'][$this -> Lang], $TempCardOption);
            }
            $TempCardOption = str_replace('{PrimaryTitle}', $CardOption['Title'][$this -> Lang], $TempCardOption);
            $TempCardOption = str_replace('{PrimaryTitleDescryption}', $CardOption['Descryption'][$this -> Lang], $TempCardOption);

            $CardOptions .= $TempCardOption;
        }
        $this -> templete_card_page = str_replace('{page_options}', $CardOptions, $this -> templete_card_page);



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
        $CardPageName = str_replace('.html', '', $this -> CardPageName);
        $this -> templete_card_page = str_replace('{cartpage}', $CardPageName, $this -> templete_card_page );
        $this -> templete_card_page = str_replace('{langpage}', $this -> Lang, $this -> templete_card_page );
        if ($this -> Lang == 'ru'){
            $this -> templete_card_page = str_replace('{hreflangpage}', '', $this -> templete_card_page );
        }else{
            $this -> templete_card_page = str_replace('{hreflangpage}', $this -> Lang, $this -> templete_card_page );
        }



        if($this -> CardData['ShowAdditionalLinks']){
            $LinkBlockData = Array();
            if ($this -> CardData['AdditionalLinksType'] == "excursions"){
                $LinkBlockData = $this -> OtherExcursionsData;
            }
            else {
                $LinkBlockData = $this -> OtherToursData;
            }

            /*
            echo '<pre>';
            print_r($LinkBlockData);
            echo '</pre>';
            die();
            */

            $CardPageLinkBlock = $this -> templete_link_block;
            $CardPageLinkBlock = str_replace('{LinkBlockTitle}', $LinkBlockData['LinkBlockTitle'][$this->Lang], $CardPageLinkBlock);

            $LinkBlocks = '';
            $TempLinkBlock = '';
            $Links = '';
            $TempLink = '';

            foreach ($LinkBlockData['LinkBlocks'] as $BlockData){


                $TempLinkBlock = $this -> templete_link_block_block;

                $Links = '';
                foreach ($BlockData as $LinkData){
                    $TempLink = $this -> templete_link_block_link;
                    $TempLink = str_replace('{LinkHref}', $LinkLangCorrector.$LinkData['LinkSrc'], $TempLink);
                    $TempLink = str_replace('{LinkTitle}', $LinkData['LinkTitle'][$this->Lang], $TempLink);
                    $Links .= $TempLink;
                }
                $TempLinkBlock = str_replace('{LinkBlockLinks}', $Links, $TempLinkBlock);

                $LinkBlocks .= $TempLinkBlock;

            }

            $CardPageLinkBlock = str_replace('{LinkBlockBlocks}', $LinkBlocks, $CardPageLinkBlock);
            $this -> templete_card_page = str_replace('{card_page_link_block}', $CardPageLinkBlock, $this -> templete_card_page);
        }


        $this -> page_templete = str_replace('{page_templete_title}', $this -> CardData['page_templete_title'][$this -> Lang], $this -> page_templete);
        $this -> page_templete = str_replace('{page_templete_description}', $this -> CardData['page_templete_description'][$this -> Lang], $this -> page_templete);
        $this -> page_templete = str_replace('{page_templete_keywords}', $this -> CardData['page_templete_keywords'][$this -> Lang], $this -> page_templete);

        $this -> page_templete = str_replace('{og:title}', $this -> CardData['page_templete_title'][$this -> Lang], $this -> page_templete);
        $this -> page_templete = str_replace('{og:description}', $this -> CardData['page_templete_description'][$this -> Lang], $this -> page_templete);
        $this -> page_templete = str_replace('{og:image}', 'http://CoolGeorgia.com'.$this -> CardData['Options'][0]['ImageSrc'], $this -> page_templete);
        $this -> page_templete = str_replace('{og:url}', 'http://CoolGeorgia.com', $this -> page_templete);



        $this -> page_templete = str_replace('{page_content}', $this -> templete_card_page, $this -> page_templete);

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
    private function GetCardPageTemplete(){
        $_file_path = 'templete/card_page.html';
        if (file_exists($_file_path))
        {
            $this -> templete_card_page = file_get_contents($_file_path);
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
    private function GetCardPageLinkBlockTemplete(){
        $_file_path = 'templete/card_page_link_block.html';
        if (file_exists($_file_path))
        {
            $this -> templete_link_block = file_get_contents($_file_path);
        }
    }
    private function GetCardPageLinkBlockBlockTemplete(){
        $_file_path = 'templete/card_page_link_block_block.html';
        if (file_exists($_file_path))
        {
            $this -> templete_link_block_block = file_get_contents($_file_path);

        }
    }
    private function GetCardPageLinkBlockLinkTemplete(){
        $_file_path = 'templete/card_page_link_block_link.html';
        if (file_exists($_file_path))
        {
            $this -> templete_link_block_link = file_get_contents($_file_path);
        }
    }




}





?>