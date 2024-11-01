<?php

class getCarsHref
{
    private $mysqli;

    private $Lang;

    //конструктор
    function getCarsHref($mysqli, $Lang)
    {
        $this -> mysqli = $mysqli;
        $this -> Lang = $Lang;
    }
    private $href_translator;

    function getCarsIDFullHref()
    {

        if (require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/config.php')) {
            $Querry = $this -> mysqli->prepare("
            SELECT Lang from LangList where LangID = ? LIMIT 1");
            $Querry->bind_param('i', ((!empty($this -> Lang) ? $this -> Lang : 2)));
            $Querry->execute();
            $results = GetResultArray($Querry);

            foreach ($results as $lang){
                $url = ((!empty($_SERVER['HTTPS'])) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] .'/cabinet/page/order_cars.php?CarsID=' ;
            }

            $this->href_translator = $url;
        }


        return $this->href_translator;
    }

}

?>