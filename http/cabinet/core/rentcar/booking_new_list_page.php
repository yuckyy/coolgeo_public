<?php

Class booking_new_list_page
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
    function booking_new_list_page($mysqli)
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
        SELECT bc.id AS BookingID, 
        bsd.Name AS BookingStatusName,
         c.Name, 
         -- b.DateBooking,
        bc.startdate,
        bc.starttime,
        bc.finaldate,
        bc.finaltime,
        bc.TotalAmount,  
        c1.Name AS TotalAmountCurrency,
        
        
         bc.Name as UserName, 
         bc.Phone
                            FROM BookingCars bc
                              LEFT JOIN Cars c ON bc.CarID = c.CarsID
                              LEFT JOIN CarsSettings cs ON c.CarsID = cs.CarsID AND cs.LangID = 1 -- ?
                              LEFT JOIN Currency c1 ON c1.CurrencyID = 1
                              LEFT JOIN BookingStatus bs ON bc.BookingStatus = bs.BookingStatusID 
                              -- LEFT JOIN Users u ON u.UserID = bc.UserID
                              LEFT JOIN BookingStatusData bsd ON bsd.BookingStatusID = bc.BookingStatus and bsd.LangID = cs.LangID
                            where bc.BookingStatus = 1
            ");
        $MySQLiQuerry->bind_param('i', $this->Lang);
        $MySQLiQuerry->execute();
        $result = GetResultArray($MySQLiQuerry);
        $tableData = array();
        $counter = 0;
        if ($result){
            foreach ($result as $Row){
                $counter++;
                $tableData[$counter]['BookingID'] = $Row['BookingID'];
                $tableData[$counter]['BookingStatusName'] = $Row['BookingStatusName'];
                $tableData[$counter]['PrimaryTitle'] = '<a href="/cabinet/page/rentcar/booking_details.php?BookingID='.$Row['BookingID'].'">'.$Row['Name'].'</a>';
                list($date, $time) = explode(' ', $this->getDateFromDB($Row['DateBooking']));
                $tableData[$counter]['devider1'] = '';
                $tableData[$counter]['DateBooking1'] = $Row['startdate'];
                $tableData[$counter]['DateBooking2'] = $Row['finaldate'];
                
                // $tableData[$counter]['PeopleCount'] = $Row['PeopleCount'];
                $tableData[$counter]['TotalAmount'] = $Row['TotalAmount'].' '.$Row['TotalAmountCurrency'];
                $tableData[$counter]['devider2'] = '';
                $tableData[$counter]['UserName'] = $Row['UserName'];
                $tableData[$counter]['Phone'] = '<a href="tel: '.$Row['Phone'].'" class="font-weight-bold" >'.$Row['Phone'].'</a>';

                //$tableData[$counter]['Divider'] = '<hr class="style-eight">';
            }
        }
        $filtertable = new filtertable($tableData);
        $filtertable -> set_tablesettings('class="responsive-table"');

        $filtertable->set_columns(array('BookingID', 'BookingStatusName', 'PrimaryTitle', 'devider1', 'DateBooking1','DateBooking2',  'TotalAmount', 'devider2', 'UserName', 'Phone'));
        $filtertable->set_columnNames(array('{BookingID}', '{BookingStatusName}', '{PrimaryTitle}', '', '{DateBooking1}','{DateBooking2}', '{TotalAmount}', '', '{UserName}', '{Phone}'));

        $filtertable->set_column_property('BookingID', 'captionsettings', 'class="text-center"');
        $filtertable->set_column_property('BookingStatusName', 'BookingStatusName', 'class="text-center"');
        $filtertable->set_column_property('PrimaryTitle', 'captionsettings', 'class="text-center"');
        $filtertable->set_column_property('devider1', 'captionsettings', 'class="w-0 d-md-none"');
        $filtertable->set_column_property('DateBooking1', 'captionsettings', 'class="text-center"');
        $filtertable->set_column_property('DateBooking2', 'captionsettings', 'class="text-center"');
        // $filtertable->set_column_property('PeopleCount', 'captionsettings', 'class="text-center"');
        $filtertable->set_column_property('TotalAmount', 'captionsettings', 'class="text-center"');
        $filtertable->set_column_property('devider2', 'captionsettings', 'class="w-0 d-md-none"');
        $filtertable->set_column_property('UserName', 'captionsettings', 'class="text-center"');
        $filtertable->set_column_property('Phone', 'captionsettings', 'class="text-center"');

        $filtertable->set_column_property('BookingID', 'bodysettings', 'class="pt-md-1 pb-md-1 pl-2 pr-2 d-inline-block d-md-table-cell"');
        $filtertable->set_column_property('BookingStatusName', 'bodysettings', 'class="pt-md-1 pb-md-1 pl-2 pr-2 d-inline-block d-md-table-cell"');
        $filtertable->set_column_property('PrimaryTitle', 'bodysettings', 'class="pt-md-1 pb-md-1 pl-2 pr-2 d-inline-block d-md-table-cell"');
        $filtertable->set_column_property('devider1', 'bodysettings', 'class="pt-md-1 pb-md-1w-0 d-md-none"');
        $filtertable->set_column_property('DateBooking1', 'bodysettings', 'class="pt-md-1 pb-md-1 text-center pl-2 pr-2 d-inline-block d-md-table-cell"');
        $filtertable->set_column_property('DateBooking2', 'bodysettings', 'class="pt-md-1 pb-md-1 text-center pl-2 pr-2 d-inline-block d-md-table-cell"');
        // $filtertable->set_column_property('PeopleCount', 'bodysettings', 'class="pt-md-1 pb-md-1 text-right pl-2 pr-2 d-inline-block d-md-table-cell"');
        $filtertable->set_column_property('TotalAmount', 'bodysettings', 'class="pt-md-1 pb-md-1 text-right pl-2 pr-2 d-inline-block d-md-table-cell"');
        $filtertable->set_column_property('devider2', 'bodysettings', 'class="pt-md-1 pb-md-1 w-0 d-md-none"');
        $filtertable->set_column_property('UserName', 'bodysettings', 'class="pt-md-1 pb-md-1 pl-2 pr-2 pb-3 d-inline-block d-md-table-cell"');
        $filtertable->set_column_property('Phone', 'bodysettings', 'class="pt-md-1 pb-md-1 text-center pl-2 pr-2 pb-3 d-inline-block d-md-table-cell"');


        $filtertable->setTableTitle('{Список новых бронирований}');
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
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/booking_new_list_page.html';
        if (file_exists($_file_path))
        {
            $this -> templete_current_page = file_get_contents($_file_path);
        }
    }


}

?>