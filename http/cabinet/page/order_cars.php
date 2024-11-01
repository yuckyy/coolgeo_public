<?php
session_start();

require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/cars_order_page.php');
require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/cars_page_start_block.php');

if (isset($_GET['CarsID'])){
    $CarsID = $_GET['CarsID'];
    if (preg_match('/^[1-9][0-9]*$/', $CarsID)){
        // получить список этих из дбд
        $Querry = $mysqli->prepare("
              SELECT c.CarsID
                FROM Cars c
                WHERE c.CarsID = ?
                LIMIT 1;
            ");
        $Querry->bind_param('i', $CarsID);
        $Querry->execute();
        $result = GetResultArray($Querry);
        if (count($result) > 0){
            $page = new cars_order_page($mysqli, $CarsID);
            $page -> generate();
            echo $page -> CONTENT;
        } else {
            header('location: /');
        }
    }else {
        header('location: /');
    }
}else {
    header('location: /');
}



?>