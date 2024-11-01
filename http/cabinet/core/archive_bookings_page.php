<?php

Class archive_bookings_page
{
    var $mysqli;
    var $PageID;
    var $CardTypeID;
    var $UserID;
    var $Lang;
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
    function archive_bookings_page($mysqli)
    {
        $this->mysqli = $mysqli;
        $this->Lang = $_SESSION['language'];
        $this->UserID = $_SESSION['authentication']['UserID'];
    }

    function generate()
    {

        // Подключить класс страницы кабинета
        require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/cabinet_page.php');
        $cabinet_page = new cabinet_page($this->mysqli, 8, 1);
        $cabinet_page -> generate();

        // Прочитать шаблон главной страницы
        $this -> GetPageListTemplete();

        //templete_current_page

        $booking_table = $this->getPageTable();
        $this->templete_current_page = str_replace('{Current-Bookings-Table}', $booking_table, $this->templete_current_page);

        // создать и подставить главное меню
        $headers = '
            <link id="bsdp-css" href="/cabinet/css/current_bookings_page.css" rel="stylesheet">
        ';
        $cabinet_page -> CONTENT = str_replace('{additional_headers}', $headers, $cabinet_page -> CONTENT);
        $cabinet_page -> CONTENT = str_replace('{page_content}', $this -> templete_current_page, $cabinet_page -> CONTENT);

        // Хлебные крошки
        $breadcrumb = '
                ';
        $cabinet_page -> CONTENT = str_replace('{breadcrumb}', $breadcrumb, $cabinet_page -> CONTENT);


        // подключить переводчик
        require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
        $translator = new translator($this->mysqli, $this->Lang);
        $this -> CONTENT = $translator->translate($cabinet_page -> CONTENT);
    }

    function getPageTable(){
        // Подключить класс страницы кабинета
        require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/filtertable.php');

        $MySQLiQuerry = $this -> mysqli->prepare("
                SELECT b.BookingID, c.CardID, c.CardImageSrc, ppt.PrimaryTitle, ppt.PrimaryTitleDescryption, b.DateBooking, b.TotalAmount, c1.Name as TotalAmountCurrency
                    FROM Booking b
                      LEFT JOIN Card c ON b.CardID = c.CardID
                      LEFT JOIN CardSettings cs ON c.CardID = cs.CardID AND cs.LangID = ?
                      LEFT JOIN PagePrimaryTitle ppt ON c.PageID = ppt.PageID AND cs.LangID = ppt.LangID
                      LEFT JOIN Currency c1 ON b.TotalAmountCurrency = c1.CurrencyID
                      LEFT JOIN BookingStatus bs ON b.BookingStatusID = bs.BookingStatusID
                    WHERE b.UserID = ? 
                      AND bs.Active = 0;
            ");
        $MySQLiQuerry->bind_param('ii', $this->Lang, $this->UserID);
        $MySQLiQuerry->execute();
        $result = GetResultArray($MySQLiQuerry);
        $tableData = array();
        $counter = 0;
        if ($result){
            foreach ($result as $Row){
                $counter++;
                $tableData[$counter]['BookingID'] = $Row['BookingID'];
                $tableData[$counter]['Image'] = '<a href="/cabinet/page/booking_details.php?BookingID='.$Row['BookingID'].'">'.'<img class="responsive-table-img" src="'.$Row['CardImageSrc'].'" >'.'</a>';
                $tableData[$counter]['PrimaryTitle'] = '<a href="/cabinet/page/booking_details.php?BookingID='.$Row['BookingID'].'">'.$Row['PrimaryTitle'].'</a>';
                $tableData[$counter]['PrimaryTitleDescryption'] = $Row['PrimaryTitleDescryption'];
                list($date, $time) = explode(' ', $this->getDateFromDB($Row['DateBooking']));
                $tableData[$counter]['DateBooking'] = $date;
                $tableData[$counter]['TotalAmount'] = $Row['TotalAmount'].' '.$Row['TotalAmountCurrency'];
                //$tableData[$counter]['Divider'] = '<hr class="style-eight">';
            }
        }
        $filtertable = new filtertable($tableData);
        $filtertable -> set_tablesettings('class="responsive-table"');

        $filtertable->set_columns(array('BookingID', 'Image', 'PrimaryTitle', 'PrimaryTitleDescryption', 'DateBooking', 'TotalAmount'));
        $filtertable->set_columnNames(array('{BookingID}', '{Image}', '{PrimaryTitle}', '{PrimaryTitleDescryption}','{DateBooking}', '{TotalAmount}'));

        $filtertable->set_column_property('BookingID', 'captionsettings', 'class="BookingID-column"');
        $filtertable->set_column_property('Image', 'captionsettings', 'class="Image-column"');
        $filtertable->set_column_property('PrimaryTitle', 'captionsettings', 'class="PrimaryTitle-column"');
        $filtertable->set_column_property('PrimaryTitleDescryption', 'captionsettings', 'class="PrimaryTitleDescryption-column"');
        $filtertable->set_column_property('DateBooking', 'captionsettings', 'class="DateBooking-column"');
        $filtertable->set_column_property('TotalAmount', 'captionsettings', 'class="TotalAmount-column"');

        $filtertable->set_column_property('BookingID', 'bodysettings', 'class="BookingID-column"');
        $filtertable->set_column_property('Image', 'bodysettings', 'class="Image-column"');
        $filtertable->set_column_property('PrimaryTitle', 'bodysettings', 'class="PrimaryTitle-column"');
        $filtertable->set_column_property('PrimaryTitleDescryption', 'bodysettings', 'class="PrimaryTitleDescryption-column"');
        $filtertable->set_column_property('DateBooking', 'bodysettings', 'class="DateBooking-column"');
        $filtertable->set_column_property('TotalAmount', 'bodysettings', 'class="TotalAmount-column"');



        $filtertable->setTableTitle('{Архив бронирований}');
        $filtertable->setFilterPlaceHolder('');
        $filtertable->generate();
        return $filtertable->content;
    }

    function getDateFromDB($inputdate){
        if (strlen($inputdate) > 0){
            list($date,$time) = explode(' ',$inputdate);
            list($yyyy,$mm,$dd) = explode('-',$date);
            list($H,$i,$s) = explode(':',$time);
            if (checkdate($mm,$dd,$yyyy)) {
                if (strlen($time) == 0){
                    $inputdate .= ' 00:00:00';
                }
                $DateTime = DateTime::createFromFormat('Y-m-d H:i:s', $inputdate);
                $Timestamp = $DateTime->getTimestamp();
                return date('d.m.Y H:i:s', $Timestamp);
            }else{
                return '';
            }
        }else{
            return '';
        }
    }

    // методы чтения шаблонов
    private function GetPageListTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/archive_bookings_page.html';
        if (file_exists($_file_path))
        {
            $this -> templete_current_page = file_get_contents($_file_path);
        }
    }


}

?>