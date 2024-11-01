<?php
// класс пользователя
Class filtertable
{
    var $tabledata=array();
    var $tableContainer = '';
    var $table;
    var $content;
    //конструктор
    function filtertable($tabledata)
    {
        // класс таблицы
        require($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/arrtable.php');
        $this -> tabledata = $tabledata;
        $this -> GetTableContainer();
        $this -> table = new arrtable($this -> tabledata, 'dev-table');
        //$this -> table -> set_tablesettings ('class="table table-hover"  id="dev-table"');
    }

    function set_tablesettings($string){
        $this -> table -> set_tablesettings ( $string );
    }

    function set_columns($columnlist){
        $this -> table -> set_columns($columnlist);
        // captionheader выделить шапку
        foreach ($this -> table ->columns as $key => $column){
            $this -> table -> set_column_property($key, 'captionheader', true);
        }
    }

    function set_columnNames($columnlist){
        if(is_array($columnlist)){
            $counter = 0;
            foreach($this -> table -> columns as $key => $column){
                if (isset($columnlist[$counter])){
                    $this -> table -> columns[$key]['caption'] = $columnlist[$counter];
                }
                $counter++;
            }
        }
    }

    function set_column_property($key, $option, $value){
        $this -> table ->set_column_property($key, $option, $value);
    }

    function setTableTitle($title){
        $this -> tableContainer = str_replace('{TableTitle}', $title, $this -> tableContainer);
    }
    function setFilterPlaceHolder($title){
        $this -> tableContainer = str_replace('{TableFilterPlaceHolder}', $title, $this -> tableContainer);
    }


    function generate(){
        $this -> table -> generate();
        $tempComtainer = $this -> tableContainer;
        $tempComtainer = str_replace('{Table}', $this -> table ->HTMLresult, $tempComtainer);
        $this -> content = $tempComtainer;
    }

    private function GetTableContainer(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/table_container.html';
        if (file_exists($_file_path))
        {
            $this -> tableContainer = file_get_contents($_file_path);
        }
    }
}

?>