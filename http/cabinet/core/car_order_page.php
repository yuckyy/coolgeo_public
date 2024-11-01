<?php

Class car_order_page
{
    var $mysqli;
    var $CardID;
    var $PageID;
    var $CardTypeID;
    var $Lang;
    var $DefaultLang;
    // -- Темплеты --
    var $templete_current_page = '';
    var $templete_primary_title = '';
    var $templete_order = '';
    var $templete_order_CardTypeID = Array(
        1 => '',
        2 => '',
        3 => '',
        4 => ''
    );

    var $CONTENT = Array();

    //конструктор
    function car_order_page($mysqli, $CardID)
    {
        $this -> CardID = $CardID;
        $this->mysqli = $mysqli;
        $this->Lang = $_SESSION['language'];
        $this->DefaultLang = $_SESSION['default_language'];
    }

    function generate()
    {

        // Подключить класс страницы кабинета
        require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/cabinet_page.php');
        $cabinet_page = new cabinet_page($this->mysqli, 8, 1);
        $cabinet_page -> generate();

        // Прочитать шаблон главной страницы
        $this -> GetPageListTemplete();
        $this -> GetMainPagePrimaryTitleTemplete();
        $this -> GetMain_order_Templete();
        $this -> GetMain_order_CardTypeID_1_Templete();
        $this -> GetMain_order_CardTypeID_2_Templete();
        $this -> GetMain_order_CardTypeID_3_Templete();
        $this -> GetMain_order_CardTypeID_4_Templete();


        // Найти PageID
        $Querry = $this->mysqli->prepare("
            SELECT c.CardID, c.PageID, c.CardTypeID
              FROM Card c
              WHERE c.CardID = ?
              LIMIT 1;
        ");
        $Querry->bind_param('i', $this->CardID);
        $Querry->execute();
        $result = GetResultArray($Querry);
        $this->PageID = $result[0]['PageID'];
        $this->CardTypeID = $result[0]['CardTypeID'];

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
        $this -> templete_current_page = str_replace('{page_primary_title}', $this->templete_primary_title, $this -> templete_current_page);

        // сформировать шаблон
        $this -> templete_current_page = str_replace('{order_data}', $this->templete_order, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{order_details}', $this -> templete_order_CardTypeID[$this->CardTypeID], $this -> templete_current_page);

        // получить данные главной страницы из бд
        $Querry = $this->mysqli->prepare("
            SELECT c.CardID, cs.ImagaSrc, cs.ImageAlt, cs.CardDescryption, cs.ButtonDetails, cs.ButtonBuy, cs.CardDetailsShort, cs.Coast as 'CardDetailsShortPrice', p.FileName,
                    cs.CoastsTitle, cs.CoastsText, cs.IncludesTitle, cs.IncludesText, cs.AdditionalTitle, cs.AdditionalText, ll.Lang as 'LangValue'
                  FROM Card c 
                  INNER JOIN CardSettings cs ON c.CardID = cs.CardID AND cs.LangID = ?
                  INNER JOIN LangList ll ON ll.LangID = cs.LangID
                  INNER JOIN Page p ON c.PageID = p.PageID
                WHERE c.CardID = ?;
        ");
        $Querry->bind_param('ii', $this->Lang, $this->CardID);
        $Querry->execute();
        $result = GetResultArray($Querry);
        $CardData = $result[0];
        $this -> templete_current_page = str_replace('{image_src}', $CardData['ImagaSrc'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{image_title}', $CardData['ImageAlt'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{image_alt}', $CardData['ImageAlt'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{CardButtonBuyTitle}', $CardData['ButtonBuy'], $this -> templete_current_page);
        // Подставить данные блока подробностей
        $this -> templete_current_page = str_replace('{CoastsTitle}', $CardData['CoastsTitle'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{CoastsText}', $CardData['CoastsText'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{IncludesTitle}', $CardData['IncludesTitle'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{IncludesText}', $CardData['IncludesText'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{AdditionalTitle}', $CardData['AdditionalTitle'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{AdditionalText}', $CardData['AdditionalText'], $this -> templete_current_page);
        // Подставить данные блока заказа
        $this -> templete_current_page = str_replace('{LangValue}', $CardData['LangValue'], $this -> templete_current_page);

        $this -> templete_current_page = str_replace('{Name-value}', $_SESSION['authentication']['Name'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{Phone-value}', $_SESSION['authentication']['Phone'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{Email-value}', $_SESSION['authentication']['Email'], $this -> templete_current_page);
        if (strlen($_SESSION['authentication']['Name']) > 0) {
            $this -> templete_current_page = str_replace('{Name-readonly}', 'readonly', $this -> templete_current_page);
        } else {
            $this -> templete_current_page = str_replace('{Name-readonly}', '', $this -> templete_current_page);
        }
        if (strlen($_SESSION['authentication']['Phone']) > 0) {
            $this -> templete_current_page = str_replace('{Phone-readonly}', 'readonly', $this -> templete_current_page);
        } else {
            $this -> templete_current_page = str_replace('{Phone-readonly}', '', $this -> templete_current_page);
        }
        if (strlen($_SESSION['authentication']['Email']) > 0) {
            $this -> templete_current_page = str_replace('{eMail-readonly}', 'readonly', $this -> templete_current_page);
        } else {
            $this -> templete_current_page = str_replace('{eMail-readonly}', '', $this -> templete_current_page);
        }
        $this -> templete_current_page = str_replace('{CardID}', $this->CardID, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{page_primary_title}', $this->PrimaryTitle_data['PrimaryTitle'], $this->templete_current_page);
        $this -> templete_current_page = str_replace('{page_primary_title_descryption}', $this->PrimaryTitle_data['PrimaryTitleDescryption'], $this->templete_current_page);

        // подключить контрол селекта
        require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/select.php');

        // получить даныне каорточки
        require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/admin/card.php');
        $card = new card($this->mysqli, $this->CardID);

        if ($card->CardTypeID == 1){
            // валюта
            $CurrencyData = Array();
            foreach ($card->PriceByExcursion as $CurrencyID => $Data){
                $CurrencyData[$CurrencyID] = $card->CurrencyList[$CurrencyID]['Name'];
            }
            $Select = new select('CurrencyID', $CurrencyData, $card->DefaultCurrency['CurrencyID']);
            $this -> templete_current_page = str_replace('{CurrencyID}', $Select->CONTENT, $this -> templete_current_page);
            $this -> templete_current_page = str_replace('{HideCardCost}', '', $this -> templete_current_page);

        }

        if ($card->CardTypeID == 2){
            // валюта
            $CurrencyData = Array();
            foreach ($card->PriceByToure as $CurrencyID => $Data){
                $CurrencyData[$CurrencyID] = $card->CurrencyList[$CurrencyID]['Name'];
            }
            $Select = new select('CurrencyID', $CurrencyData, $card->DefaultCurrency['CurrencyID']);
            $this -> templete_current_page = str_replace('{CurrencyID}', $Select->CONTENT, $this -> templete_current_page);

            // отель
            $HotelData = Array();
            if(isset($card->PriceByToure[$card->DefaultCurrency['CurrencyID']])){
                foreach ($card->PriceByToure[$card->DefaultCurrency['CurrencyID']] as $Data){
                    $HotelData[$Data['HotelID']] = $Data['HotelName'];
                }
            }

            $Select = new select('HotelID', $HotelData, $card->DefaultCurrency['CurrencyID']);
            $this -> templete_current_page = str_replace('{HotelID}', $Select->CONTENT, $this -> templete_current_page);

            $this -> templete_current_page = str_replace('{HideCardCost}', '', $this -> templete_current_page);
        }

        if ($card->CardTypeID == 3){
            // валюта
            $CurrencyData = Array();
            foreach ($card->PriceByWedding as $CurrencyID => $Data){
                $CurrencyData[$CurrencyID] = $card->CurrencyList[$CurrencyID]['Name'];
            }
            $Select = new select('CurrencyID', $CurrencyData, $card->DefaultCurrency['CurrencyID']);
            $this -> templete_current_page = str_replace('{CurrencyID}', $Select->CONTENT, $this -> templete_current_page);

            // отель
            $HotelData = Array();
            if(isset($card->PriceByWedding[$card->DefaultCurrency['CurrencyID']])){
                foreach ($card->PriceByWedding[$card->DefaultCurrency['CurrencyID']] as $Data){
                    $HotelData[$Data['HotelID']] = $Data['HotelName'];
                }
            }

            $Select = new select('HotelID', $HotelData, $card->DefaultCurrency['CurrencyID']);
            $this -> templete_current_page = str_replace('{HotelID}', $Select->CONTENT, $this -> templete_current_page);

            $this -> templete_current_page = str_replace('{HideCardCost}', '', $this -> templete_current_page);
        }

        if ($card->CardTypeID == 4){
            $this -> templete_current_page = str_replace('{HideCardCost}', 'd-none', $this -> templete_current_page);
        }


        //Преобразователь ссылки для языка
        $LinkLangCorrector = '';
        if ($this -> DefaultLang != $this -> Lang){
            $Querry = $this->mysqli->prepare("
                    SELECT ll.Lang
                        FROM LangList ll
                        WHERE ll.LangID = ?
                ");
            $Querry->bind_param('i', $this -> Lang);
            $Querry->execute();
            $result = GetResultArray($Querry);
            $LinkLangCorrector = $result[0]['Lang'].'/';
        }

        $details_href = '/'.$LinkLangCorrector.'page/'.$CardData['FileName'];
        $this -> templete_current_page = str_replace('{Details-href}', $details_href, $this -> templete_current_page);

        // создать и подставить главное меню
        $headers ='
        ';
        $headers .= ' <script src="/cabinet/js/bootstrap-datepicker/bootstrap-datepicker.min.js"></script> ';
        $headers .= ' <script src="/cabinet/js/bootstrap-datepicker/locales/bootstrap-datepicker.'.$CardData['LangValue'].'.min.js"></script> ';
        $headers .= ' <link id="bsdp-css" href="/cabinet/css/bootstrap-datepicker/bootstrap-datepicker3.min.css" rel="stylesheet"> ';
        $headers .= ' <script src="/cabinet/js/order_page.js"></script> ';
        $headers .= ' <script src="/cabinet/js/intlTelInput.js"></script> ';
        $headers .= ' <link href="/cabinet/css/intlTelInput.css" rel="stylesheet"> ';




        $headers .= ' <link id="bsdp-css" href="/cabinet/css/order_page.css" rel="stylesheet"> ';

        $cabinet_page -> CONTENT = str_replace('{additional_headers}', $headers, $cabinet_page -> CONTENT);
        $cabinet_page -> CONTENT = str_replace('{page_content}', $this -> templete_current_page, $cabinet_page -> CONTENT);

        // Хлебные крошки
        $breadcrumb = '';
        $breadcrumb = str_replace('{Назвение услуги}', $this->PrimaryTitle_data['PrimaryTitle'], $breadcrumb);

        $cabinet_page -> CONTENT = str_replace('{breadcrumb}', $breadcrumb, $cabinet_page -> CONTENT);


        // подключить переводчик
        require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
        $translator = new translator($this->mysqli, $this->Lang);
        $this -> CONTENT = $translator->translate($cabinet_page -> CONTENT);
    }

    // методы чтения шаблонов
    private function GetPageListTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/order_page.html';
        if (file_exists($_file_path))
        {
            $this -> templete_current_page = file_get_contents($_file_path);
        }
    }

    private function GetMainPagePrimaryTitleTemplete()
    {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/pages/main_page_primary_title.html';
        if (file_exists($_file_path)) {
            $this->templete_primary_title = file_get_contents($_file_path);
        }
    }

    private function GetMain_order_Templete()
    {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/order.html';
        if (file_exists($_file_path)) {
            $this->templete_order = file_get_contents($_file_path);
        }
    }
    private function GetMain_order_CardTypeID_1_Templete()
    {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/order_CardTypeID_1.html';
        if (file_exists($_file_path)) {
            $this->templete_order_CardTypeID[1] = file_get_contents($_file_path);
        }
    }
    private function GetMain_order_CardTypeID_2_Templete()
    {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/order_CardTypeID_2.html';
        if (file_exists($_file_path)) {
            $this->templete_order_CardTypeID[2] = file_get_contents($_file_path);
        }
    }
    private function GetMain_order_CardTypeID_3_Templete()
    {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/order_CardTypeID_3.html';
        if (file_exists($_file_path)) {
            $this->templete_order_CardTypeID[3] = file_get_contents($_file_path);
        }
    }
    private function GetMain_order_CardTypeID_4_Templete()
    {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/order_CardTypeID_4.html';
        if (file_exists($_file_path)) {
            $this->templete_order_CardTypeID[4] = file_get_contents($_file_path);
        }
    }

}

?>