<?php
Class select
{
    var $Name;
    var $Data;
    var $ActiveValue;
    var $Disabled;

    // -- Темплеты --
    var $templete_select = '';
    var $templete_option = '';
    var $CONTENT = Array();

    //конструктор
    function select($Name, $Data, $ActiveValue, $Disabled = false)
    {
        $this -> Name = $Name;
        $this -> Data = $Data;
        $this -> ActiveValue = $ActiveValue;
        $this -> Disabled = $Disabled;
        $this -> generate();
    }

    function generate()
    {
        // Прочитать шаблон главной страницы
        $this -> GetSelectTemplete();
        $this -> GetOptionTemplete();

        $this->templete_select = str_replace('{name}', $this->Name, $this->templete_select);

        $options = '';
        foreach ($this->Data as $value => $data){
            if (is_array($data)){
                $name = $data['Name'];
            } else {
                $name = $data;
            }

            $tempoption = $this->templete_option;
            $tempoption = str_replace('{value}', $value, $tempoption);
            $tempoption = str_replace('{name}', $name, $tempoption);
            if ($value == $this->ActiveValue){
                $tempoption = str_replace('{selected}', 'selected="selected"', $tempoption);
            }else{
                $tempoption = str_replace('{selected}', '', $tempoption);
            }
            $options .= $tempoption;
        }

        $this->templete_select = str_replace('{options}', $options, $this->templete_select);
        if ($this -> Disabled){
            $this->templete_select = str_replace('{disabled}', 'disabled', $this->templete_select);
        }else{
            $this->templete_select = str_replace('{disabled}', '', $this->templete_select);
        }

        // записать в контент
        $this -> CONTENT = $this -> templete_select;
    }

    // методы чтения шаблонов
    private function GetSelectTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/select.html';
        if (file_exists($_file_path))
        {
            $this -> templete_select = file_get_contents($_file_path);
        }
    }
    private function GetOptionTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/select_option.html';
        if (file_exists($_file_path))
        {
            $this -> templete_option = file_get_contents($_file_path);
        }
    }

}
?>