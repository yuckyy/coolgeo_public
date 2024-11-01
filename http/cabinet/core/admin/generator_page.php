<?php

Class generator_page
{
    var $mysqli;
    // -- Темплеты --
    var $templete_page = '';

    var $CONTENT = Array();

    //конструктор
    function generator_page($mysqli)
    {
        $this->mysqli = $mysqli;
    }

    function generate()
    {

        // Подключить класс страницы кабинета
        require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/cabinet_page.php');
        $cabinet_page = new cabinet_page($this->mysqli, 8, 1);
        $cabinet_page -> generate();

        // Прочитать шаблон главной страницы
        $this -> GetPageListTemplete();

        $table = $this -> getPageTable();
        $this -> templete_page = str_replace('{pagelist_table}', $table, $this -> templete_page);

        // создать и подставить главное меню
        $headers = '
            <script src="/cabinet/js/admin/generator_page.js"></script>
        ';
        $cabinet_page -> CONTENT = str_replace('{additional_headers}', $headers, $cabinet_page -> CONTENT);
        $cabinet_page -> CONTENT = str_replace('{page_content}', $this -> templete_page, $cabinet_page -> CONTENT);

        // Хлебные крошки
        $breadcrumb = '<nav aria-label="breadcrumb" style="display: inline !important;">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Кабинет</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Администрирование -  Контент: Генератор сайта</li>
                    </ol>
                </nav>';
        $cabinet_page -> CONTENT = str_replace('{breadcrumb}', $breadcrumb, $cabinet_page -> CONTENT);
        $this -> CONTENT = $cabinet_page -> CONTENT;
    }

    function getPageTable(){
        // Подключить класс страницы кабинета
        require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/filtertable.php');

        $MySQLiQuerry = $this -> mysqli->prepare(
            "
                SELECT p.PageID, pt.PageTypeID, pt.Name AS 'PageTypeName', p.Name as 'PageName'
                    FROM Page p
                      LEFT JOIN PageType pt ON p.PageTypeID =pt.PageTypeID
                    ORDER BY p.PageTypeID, p.Name
            ");
        $MySQLiQuerry->execute();
        $result = GetResultArray($MySQLiQuerry);
        $tableData = array();
        $counter = 0;
        foreach ($result as $Row){
            $counter++;
            $tableData[$counter]['PageID'] = $Row['PageID'];
            $tableData[$counter]['PageTypeName'] = $Row['PageTypeName'];
            $tableData[$counter]['PageName'] = $Row['PageName'];
            $tableData[$counter]['Update'] = '<button type="button" data-button-pageid="'.$Row['PageID'].'" >Обновить</button>';
        }
        $filtertable = new filtertable($tableData);
        $filtertable->set_columns(array('PageID', 'PageTypeName', 'PageName', 'Update'));
        $filtertable->set_columnNames(array('Код', 'Тип', 'Название', 'Обновить'));
        $filtertable->setTableTitle('Список страниц');
        $filtertable->setFilterPlaceHolder('Фильтр текущих страниц');
        $filtertable->generate();
        return $filtertable->content;
    }

    // методы чтения шаблонов
    private function GetPageListTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/generator_page.html';
        if (file_exists($_file_path))
        {
            $this -> templete_page = file_get_contents($_file_path);
        }
    }

}

?>