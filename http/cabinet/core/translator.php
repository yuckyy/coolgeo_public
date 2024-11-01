<?php

// класс пользователя
Class translator
{
    private $mysqli;

    private $Lang;
    private $MetaData = Array();

    //конструктор
    function translator($mysqli, $Lang)
    {
        $this -> mysqli = $mysqli;
        $this -> Lang = $Lang;
        $this -> getMetaData();
    }

    function getMetaData(){
        $Querry = $this -> mysqli->prepare("
            SELECT MetaData, Translation
                FROM CabinetPageTranslation
                WHERE LangID = ?;
            ");
        $Querry->bind_param('i', $this->Lang);
        $Querry->execute();
        $result = GetResultArray($Querry);
        if($result){
            foreach ($result as $row){
                $this -> MetaData[trim($row['MetaData'])]=$row['Translation'];
            }
        }
    }

    function translate($Content){
        foreach ($this -> MetaData as $MetaData => $Translation){
            $Content = str_replace($MetaData, $Translation, $Content);
        }
        return $Content;
    }
}

?>