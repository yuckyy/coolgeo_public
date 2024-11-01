<?php
/**
 * Created by PhpStorm.
 * User: yucky
 * Date: 15.11.2023
 * Time: 20:24
 */

Class hotel_page
{
    var $mysqli;
    var $PageID;

    // Язык
    var $Lang = 'ru';
    var $DefaultLang = 'ru';

    // данные
    var $Top_menu_data = Array();
    var $Carousel_data = Array();
    var $PrimaryTitle_data = Array();
    var $Album_data = Array();

    var $Primary_title = '';
    var $Primary_title_descryption = '';
    var $Album = Array();
    var $CardSettings = Array();

    // -- Темплеты --
    var $page_templete = '';
    var $templete_current_page = '';
    var $templete_primary_title = '';
    var $templete_card_page_option = '';
    var $templete_link_block = '';
    var $templete_link_block_block = '';
    var $templete_link_block_link = '';


    var $CONTENT = Array();

    //конструктор
    function hotel_page($mysqli, $PageID, $Lang)
    {
        $this->mysqli = $mysqli;
        $this->PageID = $PageID;
        $this->Lang = $Lang;
        $this->DefaultLang = $_SESSION['default_language'];

    }

    function generate($TopMenuActive = 0)
    {
        // Прочитать шаблон главной страницы
        $this->GetPageTemplete();
        $this->GetMainPageTemplete();
        $this->GetMainPagePrimaryTitleTemplete();
        $this->GetCardPageOptionTemplete();
        $this->GetCardPageLinkBlockTemplete();
        $this->GetCardPageLinkBlockBlockTemplete();
        $this->GetCardPageLinkBlockLinkTemplete();
        $this->GetCardPageButtonsTemplete();
        $this->GetCardAdvantageTemplete();

        // создать и подставить главное меню
        // Подключить класс главного меню
        require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/class_top_menu.php');
        $top_menu = new top_menu($this->mysqli, $this->Lang, $TopMenuActive);
        $this->page_templete = str_replace('{navigation_menu_bar}', $top_menu->CONTENT, $this->page_templete);

        // получить данные главной страницы из бд
        $Querry = $this->mysqli->prepare("
            SELECT *
                FROM PagePrimaryTitle ppt
                WHERE ppt.PageID = ? AND ppt.LangID = ?
        ");
        $Querry->bind_param('ii', $this->PageID, $this->Lang);
        $Querry->execute();
        $result = GetResultArray($Querry);
        $this->PrimaryTitle_data = $result[0];

        // подставить данные в заголовок главной страницы
        $this->templete_primary_title = str_replace('{main_page_primary_title}', $this->PrimaryTitle_data['PrimaryTitle'], $this->templete_primary_title);
        $this->templete_primary_title = str_replace('{main_page_primary_title_descryption}', $this->PrimaryTitle_data['PrimaryTitleDescryption'], $this->templete_primary_title);
        $this->templete_current_page = str_replace('{page_primary_title}', $this->templete_primary_title, $this->templete_current_page);

        // Подставить блоков
        // получить данные главной страницы из бд
        $Querry = $this->mysqli->prepare("
            SELECT c.PageID, c.CardID, cod.OptionID, cod.LangID, cod.ImageSrc, cod.ImageAlt, cod.Title, cod.Descryption
                FROM Card c
                  LEFT JOIN CardOptionsList col ON c.CardID = col.CardID
                  LEFT JOIN CardOptionsData cod ON col.OptionID = cod.OptionID AND cod.LangID = ?
                WHERE c.PageID = ?
                ORDER BY col.RowOrder;
        ");
        $Querry->bind_param('ii', $this->Lang, $this->PageID);
        $Querry->execute();
        $this -> CardData['Options'] = GetResultArray($Querry);

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
            if(isset($CardOption['ImageAlt'])){
                $TempCardOption = str_replace('{image_title}', $CardOption['ImageAlt'], $TempCardOption);
                $TempCardOption = str_replace('{image_alt}', 'http://CoolGeorgia.com '.$CardOption['ImageAlt'], $TempCardOption);
            }
            $TempCardOption = str_replace('{PrimaryTitle}', $CardOption['Title'], $TempCardOption);
            $TempCardOption = str_replace('{PrimaryTitleDescryption}', $CardOption['Descryption'], $TempCardOption);

            $CardOptions .= $TempCardOption;
        }

        $this -> templete_current_page = str_replace('{page_options}', $CardOptions, $this -> templete_current_page);




        // получить данные страницы из бд
        $Querry = $this->mysqli->prepare("
            SELECT c.PageID, c.ShowAdditionalLinks, c.AdditionalLinksType, c.CardImageSrc, cs.CoastsTitle, cs.CoastsText, cs.IncludesTitle, cs.IncludesText, cs.AdditionalTitle, cs.AdditionalText, 
                  cs.ButtonBuy, cs.RouteTitle, cs.RouteText, p.FileName, ll.Lang as 'LangValue', c.CardID,
                  cs.CardDescription_ImageSrc, cs.CardDescriptionImage_alt, cs.CardDescriptionImage_title, cs.CardDescription_Text
                FROM Card c
                  LEFT JOIN CardSettings cs ON c.CardID = cs.CardID AND cs.LangID = ?
                  LEFT JOIN LangList ll on ll.LangID = cs.LangID
                  LEFT JOIN Page p ON p.PageID = c.PageID
                WHERE c.PageID = ?;
        ");
        $Querry->bind_param('ii', $this->Lang, $this->PageID);
        $Querry->execute();
        $result = GetResultArray($Querry);
        $this -> CardData = $result[0];

        // получить даныне каорточки
        require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/admin/card.php');
        $Card = new card($this->mysqli, $this -> CardData['CardID']);
        $CardBaseAmountData = $Card->getBaseAmount(Array());
        $CardBaseAmount = $CardBaseAmountData['BookingCost'].$CardBaseAmountData['BookingCurrencyName'];

        // Подставить данные блока подробностей
        $this -> templete_current_page = str_replace('{CardDescription_ImageSrc}', $this -> CardData['CardDescription_ImageSrc'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{CardDescriptionImage_alt}', $this -> CardData['CardDescriptionImage_alt'], $this -> templete_current_page);
        var_dump($this -> CardData['CardDescriptionImage_alt']);
        $this -> templete_current_page = str_replace('{CardDescriptionImage_title}', $this -> CardData['CardDescriptionImage_title'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{CardDescription_Text}', $this -> CardData['CardDescription_Text'], $this -> templete_current_page);

        $this -> templete_current_page = str_replace('{CoastsTitle}', $this -> CardData['CoastsTitle'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{CoastsText}', $this -> CardData['CoastsText'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{IncludesTitle}', $this -> CardData['IncludesTitle'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{IncludesText}', $this -> CardData['IncludesText'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{AdditionalTitle}', $this -> CardData['AdditionalTitle'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{AdditionalText}', $this -> CardData['AdditionalText'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{CardButtonBuySrc}', $this -> CardData['CardButtonBuySrc'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{CardButtonBuyTitle}', $this -> CardData['ButtonBuy'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{CardBaseAmount}', $CardBaseAmount, $this -> templete_current_page);
        if (strlen(trim($this -> CardData['ButtonBuy'])) == 0){
            $this -> templete_current_page = str_replace('{d-class}', 'd-none', $this -> templete_current_page);
        } else {
            $this -> templete_current_page = str_replace('{d-class}', '', $this -> templete_current_page);
        }
        $this -> templete_current_page = str_replace('{RouteTitle}', $this -> CardData['RouteTitle'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{RouteText}', $this -> CardData['RouteText'], $this -> templete_current_page);
        $CardPageName = str_replace('.html', '', $this -> CardData['FileName']);
        $this -> templete_current_page = str_replace('{cartpage}', $CardPageName, $this -> templete_current_page );
        $this -> templete_current_page = str_replace('{langpage}', $this -> CardData['LangValue'], $this -> templete_current_page );
        if ($this -> Lang == 'ru'){
            $this -> templete_current_page = str_replace('{hreflangpage}', '', $this -> templete_current_page );
        }else{
            $this -> templete_current_page = str_replace('{hreflangpage}', $this -> Lang, $this -> templete_current_page );
        }



        if($this -> CardData['ShowAdditionalLinks']){
            // Подключить класс главного меню
            require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/admin/pages/linkblock.php');
            $LinkBlockData = '';
            if ($this -> CardData['AdditionalLinksType'] == "excursions"){
                $LinkBlock = new linkblock($this->mysqli, 2, $this->Lang);
                $LinkBlockData = $LinkBlock -> CONTENT;
            }
            else {
                $LinkBlock = new linkblock($this->mysqli, 1, $this->Lang);
                $LinkBlockData = $LinkBlock -> CONTENT;
            }

            $this -> templete_current_page = str_replace('{card_page_link_block}', $LinkBlockData, $this -> templete_current_page);
        }

        $this -> templete_current_page = str_replace('{card_buttons}', $this->templete_card_page_buttons, $this -> templete_current_page);
        $hreforderpage = "/cabinet/page/order.php?CardID=".$this->CardData['CardID'];
        $this -> templete_current_page = str_replace('{hreforderpage}', $hreforderpage, $this -> templete_current_page );

        $this->page_templete = str_replace('{page_templete_title}', $this->PrimaryTitle_data['page_templete_title'], $this->page_templete);
        $this->page_templete = str_replace('{page_templete_description}', $this->PrimaryTitle_data['page_templete_description'], $this->page_templete);
        $this->page_templete = str_replace('{page_templete_keywords}', $this->PrimaryTitle_data['page_templete_keywords'], $this->page_templete);

        $this->page_templete = str_replace('{og:title}', $this->PrimaryTitle_data['page_templete_title'], $this->page_templete);
        $this->page_templete = str_replace('{og:description}', $this->PrimaryTitle_data['page_templete_description'], $this->page_templete);

        $this->page_templete = str_replace('{og:image}', $this -> CardData['CardImageSrc'], $this->page_templete);

        $this->page_templete = str_replace('{og:url}', '://CoolGeorgia.com', $this->page_templete);
        $this->page_templete = str_replace('{page_content}', $this->templete_current_page, $this->page_templete);
        $this->page_templete = str_replace('{PageLang}', $this -> Lang, $this -> page_templete);

        $this->page_templete = str_replace('{advantage}', $this->templete_card_page_advantage, $this -> page_templete);




        require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
        $translator = new translator($this->mysqli, $this -> Lang);
        $this -> CONTENT = $translator->translate($this -> page_templete);
        //$this->CONTENT = $this->page_templete;
    }

    // методы чтения шаблонов
    private function GetPageTemplete()
    {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/pages/page_templete.html';
        if (file_exists($_file_path)) {
            $this->page_templete = file_get_contents($_file_path);
        }
    }

    private function GetMainPageTemplete()
    {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/pages/card_page.html';
        if (file_exists($_file_path)) {
            $this->templete_current_page = file_get_contents($_file_path);
        }
    }

    private function GetMainPagePrimaryTitleTemplete()
    {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/pages/main_page_primary_title.html';
        if (file_exists($_file_path)) {
            $this->templete_primary_title = file_get_contents($_file_path);
        }
    }

    private function GetCardPageOptionTemplete()
    {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/pages/card_page_option.html';
        if (file_exists($_file_path)) {
            $this->templete_card_page_option = file_get_contents($_file_path);
        }
    }

    private function GetCardPageLinkBlockTemplete()
    {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/pages/card_page_link_block.html';
        if (file_exists($_file_path)) {
            $this->templete_link_block = file_get_contents($_file_path);
        }
    }

    private function GetCardPageLinkBlockBlockTemplete()
    {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/pages/card_page_link_block_block.html';
        if (file_exists($_file_path)) {
            $this->templete_link_block_block = file_get_contents($_file_path);

        }
    }

    private function GetCardPageLinkBlockLinkTemplete()
    {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/pages/card_page_link_block_link.html';
        if (file_exists($_file_path)) {
            $this->templete_link_block_link = file_get_contents($_file_path);
        }
    }

    private function GetCardPageButtonsTemplete()
    {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/pages/card_page_buttons.html';
        if (file_exists($_file_path)) {
            $this->templete_card_page_buttons = file_get_contents($_file_path);
        }
    }

    private function GetCardAdvantageTemplete()
    {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/pages/card_page_advantage.html';
        if (file_exists($_file_path)) {
            $this->templete_card_page_advantage = file_get_contents($_file_path);
        }
    }

}
?>