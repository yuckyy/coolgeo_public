<?php

Class callback_list_page
{
    var $mysqli;
    var $PageID;
    // пагинатор
    var $Page;
    var $StartRow;

    var $CardTypeID;
    var $UserID;
    var $Lang;
    var $RowsOnPage;
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
    function callback_list_page($mysqli, $Page)
    {
        $this->mysqli = $mysqli;
        $this->Lang = $_SESSION['language'];
        $this->UserID = $_SESSION['authentication']['UserID'];
        $this->Page = $Page;
        $MySQLiQuerry = $this -> mysqli->prepare("
                SELECT Value
                    FROM Settings
                    where `Key` = 'Operator_CallBackList_RowsOnPage';
            ");
        $MySQLiQuerry->execute();
        $result = GetResultArray($MySQLiQuerry);
        if ($result){
            $this->RowsOnPage = $result[0]['Value'];
        } else {
            $this->RowsOnPage = 10;
        }
        $this->StartRow = (($this->Page - 1) * $this->RowsOnPage);
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

        $page_table = $this->getPageTable();
        $this->templete_current_page = str_replace('{Current-Table}', $page_table, $this->templete_current_page);

        $paginator = $this->getPaginator();
        $this->templete_current_page = str_replace('{Paginator}', $paginator, $this->templete_current_page);


        //<link id="bsdp-css" href="/cabinet/css/current_bookings_page.css" rel="stylesheet">
        $headers = '';
        $headers .= ' <script src="/cabinet/js/operator/callback_list.js"></script> ';
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
                SELECT cbl.CallBackID, cbl.Phone, 
                      cbl.CardID, ppt.PrimaryTitle AS CardName,
                      cbl.LangID, ll.Lang AS LangName,
                      cbl.CallBackStatusID, cbs.Name AS CallBackStatusName,
                      cbl.Created, u.Name AS OperatorName
                    FROM CallBackList cbl
                      LEFT JOIN CallBackStatus cbs ON cbl.CallBackStatusID = cbs.CallBackStatusID
                      LEFT JOIN LangList ll ON cbl.LangID = ll.LangID
                      LEFT JOIN Card c ON cbl.CardID = c.CardID
                      LEFT JOIN PagePrimaryTitle ppt ON ppt.PageID = c.PageID AND ppt.LangID = ?
                      LEFT JOIN Users u ON u.UserID = cbl.Operator 
                    ORDER BY cbl.CallBackID DESC
                    LIMIT ?, ?;
            ");
        $MySQLiQuerry->bind_param('iii', $this->Lang, $this->StartRow, $this->RowsOnPage);
        $MySQLiQuerry->execute();
        $result = GetResultArray($MySQLiQuerry);
        $tableData = array();
        $counter = 0;
        if ($result){
            foreach ($result as $Row){
                $counter++;
                $tableData[$counter]['CallBackID'] = $Row['CallBackID'];
                $tableData[$counter]['CallBackStatusName'] = '<a href="#" id="callback-id-'.$Row['CallBackID'].'" data-callback-id="'.$Row['CallBackID'].'">'.$Row['CallBackStatusName'].'</a>';
                $tableData[$counter]['CardName'] = $Row['CardName'];
                $tableData[$counter]['devider1'] = '';
                $tableData[$counter]['Phone'] = '<a href="tel: '.$Row['Phone'].'">'.$Row['Phone'].'</a>' ;
                $tableData[$counter]['Created'] = $this->getDateFromDB($Row['Created']);
                $tableData[$counter]['LangName'] = $Row['LangName'];
                $tableData[$counter]['OperatorName'] = $Row['OperatorName'];

            }
        }
        $filtertable = new filtertable($tableData);
        $filtertable -> set_tablesettings('class="responsive-table"');

        $filtertable->set_columns(array('CallBackID', 'CallBackStatusName', 'CardName', 'devider1', 'Phone', 'Created', 'LangName', 'OperatorName'));
        $filtertable->set_columnNames(array('{CallBackID}', '{CallBackStatusName}', '{CardName}', '', '{Phone}', '{Created}','{LangName}','{OperatorName}'));

        $filtertable->set_column_property('CallBackID', 'captionsettings', 'class="text-center"');
        $filtertable->set_column_property('CallBackStatusName', 'BookingStatusName', 'class="text-center"');
        $filtertable->set_column_property('CardName', 'captionsettings', 'class="text-center"');
        $filtertable->set_column_property('devider1', 'captionsettings', 'class="w-0 d-md-none"');
        $filtertable->set_column_property('Phone', 'captionsettings', 'class="text-center"');
        $filtertable->set_column_property('Created', 'captionsettings', 'class="text-center"');
        $filtertable->set_column_property('LangName', 'captionsettings', 'class="text-center"');
        $filtertable->set_column_property('OperatorName', 'captionsettings', 'class="text-center"');


        $filtertable->set_column_property('CallBackID', 'bodysettings', 'class="pt-md-1 pb-md-1 pl-2 pr-2 d-inline-block d-md-table-cell"');
        $filtertable->set_column_property('CallBackStatusName', 'bodysettings', 'class="pt-md-1 pb-md-1 pl-2 pr-2 d-inline-block d-md-table-cell"');
        $filtertable->set_column_property('CardName', 'bodysettings', 'class="pt-md-1 pb-md-1 pl-2 pr-2 d-inline-block d-md-table-cell"');
        $filtertable->set_column_property('devider1', 'bodysettings', 'class="pt-md-1 pb-md-1w-0 d-md-none"');
        $filtertable->set_column_property('Phone', 'bodysettings', 'class="pt-md-1 pb-md-1 text-center pl-2 pr-2 d-inline-block d-md-table-cell"');
        $filtertable->set_column_property('Created', 'bodysettings', 'class="pt-md-1 pb-md-1 text-right pl-2 pr-2 d-inline-block d-md-table-cell"');
        $filtertable->set_column_property('LangName', 'bodysettings', 'class="pt-md-1 pb-md-1 text-right pl-2 pr-2 d-inline-block d-md-table-cell"');
        $filtertable->set_column_property('OperatorName', 'bodysettings', 'class="pt-md-1 pb-md-1 text-right pl-2 pr-2 d-inline-block d-md-table-cell"');


        $filtertable->setTableTitle('{Список запросов обратного звонка}');
        $filtertable->setFilterPlaceHolder('');
        $filtertable->generate();
        return $filtertable->content;
    }

    function getPaginator(){
        // пагинатор
        require($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/pagination.php');
        $MySQLiQuerry = $this -> mysqli->prepare(
            "
                SELECT count(*) as CountRows
                    FROM CallBackList cbl
            ");
        //$MySQLiQuerry->bind_param('iiii', $this->source, $this->source, $timefrom, $timeto);
        $MySQLiQuerry->execute();
        $result = GetResultArray($MySQLiQuerry);
        $CountRows = $result[0]['CountRows'];
        $CountPages = $CountRows / $this->RowsOnPage;
        $pagination = new pagination($CountPages,$this->Page, '/cabinet/page/operator/callback_list.php?page={page}');
        return $pagination->CONTENT;

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
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/operator/callback_list_page.html';
        if (file_exists($_file_path))
        {
            $this -> templete_current_page = file_get_contents($_file_path);
        }
    }


}

?>