<?php
/**
 * Created by PhpStorm.
 * User: FlynnTaggart
 * Date: 07.03.2020
 * Time: 15:56
 */

class PageContentData
{
    private $mysqli;
    var $PageID;
    var $Lang;
    var $CONTENT;

    //конструктор
    function PageContentData($mysqli, $PageID, $Lang)
    {

        $this -> mysqli = $mysqli;
        $this->PageID = $PageID;
        $this->Lang = $Lang;
        $this -> getData();
    }

    function getData(){
        // получить данные из бд
        $Querry = $this -> mysqli->prepare("
            SELECT c.DATA
                FROM PageContentData c 
                WHERE PageID = ? and  c.LangID = ?;
        ");
        $Querry->bind_param('ii', $this->PageID, $this->Lang);
        $Querry->execute();
        $result = GetResultArray($Querry);
        $this->CONTENT = $result[0]['DATA'];
    }

}
