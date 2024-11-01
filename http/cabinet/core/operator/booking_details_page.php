<?php

Class booking_details_page
{
    var $mysqli;
    var $CardID;
    var $BookingID;
    var $PageID;
    var $CardTypeID;
    var $Lang;
    var $DefaultLang;

    //var $Card;
    var $Booking;

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
    function booking_details_page($mysqli, $BookingID)
    {
        $this -> BookingID = $BookingID;
        $this->mysqli = $mysqli;
        $this->Lang = $_SESSION['language'];
        $this->DefaultLang = $_SESSION['default_language'];
        $this->getBookingData();
    }

    function getBookingData(){
        // получить даныне бронирования
        require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/booking.php');
        $this->Booking = new booking($this->mysqli, $this->BookingID);
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

        $this -> templete_current_page = str_replace('{BookingID}', $this->Booking->BookingID, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{NameValue}', $this->Booking->UserName, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{PhoneValue}', $this->Booking->UserPhone, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{EmailValue}', $this->Booking->UserEmail, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{CardPrimaryTitle}', $this->Booking->Card->Name, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{DateBookingValue}', $this->Booking->DateBooking, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{DateEndValue}', $this->Booking->DateBookingEnd, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{PeopleCountValue}', $this->Booking->PeopleCount, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{HotelIDValue}', $this->Booking->Card->HotelList[$this->Booking->HotelID]['Name'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{TotalAmountCurrencyValue}', $this->Booking->Card->CurrencyList[$this->Booking->TotalAmountCurrency]['Name'], $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{BaseAmountValue}', $this->Booking->BaseAmount, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{TotalAmountCorrectionValue}', $this->Booking->TotalAmountCorrection, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{TotalAmountValue}', $this->Booking->TotalAmount, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{HotelListIDValue}', $this->Booking->HotelListName, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{HotelRoomsCountValue}', $this->Booking->HotelRoomsCount, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{OperatorNotesValue}', $this->Booking->OperatorNotes, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{NotesValue}', $this->Booking->Notes, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{StatusIDValue}', $this->Booking->BookingStatusIDName, $this -> templete_current_page);

        $this -> templete_current_page = str_replace('{PasportSurNameValue}', $this->Booking->PasportSurName, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{PasportNameValue}', $this->Booking->PasportName, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{PasportMiddleNameValue}', $this->Booking->PasportMiddleName, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{PasportSerialValue}', $this->Booking->PasportSerial, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{PasportIssuedByValue}', $this->Booking->PasportIssuedBy, $this -> templete_current_page);
        $this -> templete_current_page = str_replace('{PasportWhenIssuedValue}', $this->Booking->PasportIssuedDate, $this -> templete_current_page);


        /*
        echo '<pre>';
        print_r($this->Booking);
        echo '</pre>';
        die();
        */
        /*
        if ($card->CardTypeID == 1){
        }

        if ($card->CardTypeID == 2){
        }

        if ($card->CardTypeID == 3){
        }

        if ($card->CardTypeID == 4){
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

        */
        /*
        $details_href = '/'.$LinkLangCorrector.'page/'.$CardData['FileName'];
        $this -> templete_current_page = str_replace('{Details-href}', $details_href, $this -> templete_current_page);
        */

        // создать и подставить главное меню
        $headers ='
        ';
        $headers .= ' <script src="/cabinet/js/operator/booking_details.js"></script> ';
        $headers .= ' <link id="bsdp-css" href="/cabinet/css/order_page.css" rel="stylesheet"> ';
        $headers .= ' <script src="/cabinet/js/bootstrap-datepicker/bootstrap-datepicker.min.js"></script> ';
        $headers .= ' <script src="/cabinet/js/bootstrap-datepicker/locales/bootstrap-datepicker.'.$this->Booking->LangValue.'.min.js"></script> ';
        $headers .= ' <link id="bsdp-css" href="/cabinet/css/bootstrap-datepicker/bootstrap-datepicker3.min.css" rel="stylesheet"> ';

        $cabinet_page -> CONTENT = str_replace('{additional_headers}', $headers, $cabinet_page -> CONTENT);
        $cabinet_page -> CONTENT = str_replace('{page_content}', $this -> templete_current_page, $cabinet_page -> CONTENT);

        // Хлебные крошки
        $breadcrumb = '
            ';
        $breadcrumb = str_replace('{Назвение услуги}', $this->PrimaryTitle_data['PrimaryTitle'], $breadcrumb);

        $cabinet_page -> CONTENT = str_replace('{breadcrumb}', $breadcrumb, $cabinet_page -> CONTENT);


        // подключить переводчик
        require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
        $translator = new translator($this->mysqli, $this->Lang);
        $this -> CONTENT = $translator->translate($cabinet_page -> CONTENT);
    }

    // методы чтения шаблонов
    private function GetPageListTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/operator/booking_detail_page.html';
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



}

?>