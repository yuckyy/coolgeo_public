<?php

Class unlogined_booking_details_page
{
    var $mysqli;
    // -- Темплеты --
    var $templete_page = '';
    var $templete_login_form = '';

    var $CONTENT = Array();

    //конструктор
    function unlogined_booking_details_page($mysqli, $BookingID)
    {
        $this->mysqli = $mysqli;
        $this->BookingID = $BookingID;
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

        ';
        $this -> page_templete = str_replace('{additional_headers}', $headers, $this -> page_templete);
        $this -> page_templete = str_replace('{navigation_menu_bar}', $topmenu->CONTENT, $this -> page_templete);
        $this -> page_templete = str_replace('{page_content}', $this -> templete_login_form, $this -> page_templete);

        $Querry = $this -> mysqli->prepare("
              SELECT c.Value
                FROM Settings c
                WHERE c.Key = ?
                LIMIT 1;
            ");
        $key = 'unlogined_booking_details_content';
        $Querry->bind_param('s', $key);
        $Querry->execute();
        $result = GetResultArray($Querry);
        if (isset($result[0]['Value'])){
            $this -> page_templete = str_replace('{unlogined_booking_details_content}', $result[0]['Value'], $this -> page_templete);
        } else {
            $this -> page_templete = str_replace('{unlogined_booking_details_content}', '', $this -> page_templete);
        }

        require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/booking.php');
        $booking = new booking($this->mysqli, $this->BookingID);

        require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/admin/card.php');
        $card = new card($this->mysqli, $booking->CardID);

        $this -> page_templete = str_replace('{BookingID}', $booking->BookingID, $this -> page_templete);
        $this -> page_templete = str_replace('{UserName}', $booking->UserName, $this -> page_templete);
        $this -> page_templete = str_replace('{UserPhone}', $booking->UserPhone, $this -> page_templete);
        $this -> page_templete = str_replace('{UserEmail}', $booking->UserEmail, $this -> page_templete);
        $this -> page_templete = str_replace('{DateBooking}', $booking->DateBooking, $this -> page_templete);
        $this -> page_templete = str_replace('{PeopleCount}', $booking->PeopleCount, $this -> page_templete);
        $this -> page_templete = str_replace('{CardName}', $card->Name, $this -> page_templete);
        $this -> page_templete = str_replace('{TotalAmount}', $booking->TotalAmount, $this -> page_templete);
        $this -> page_templete = str_replace('{TotalAmountCurrency}', $booking->TotalAmountCurrency, $this -> page_templete);
        $this -> page_templete = str_replace('{TotalAmountCurrencyName}', $card->CurrencyList[$booking->TotalAmountCurrency]['Name'] , $this -> page_templete);

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
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/unlogined_booking_details_page.html';
        if (file_exists($_file_path))
        {
            $this -> templete_login_form = file_get_contents($_file_path);
        }
    }

}

?>