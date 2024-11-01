<?php
session_start();

require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/order_page.php');
require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/page_start_block.php');

if (isset($_GET['CardID'])){
    $CardID = $_GET['CardID'];
    if (preg_match('/^[1-9][0-9]*$/', $CardID)){
        // получить список этих из дбд
        $Querry = $mysqli->prepare("
              SELECT c.CardID
                FROM Card c
                WHERE c.CardID = ?
                LIMIT 1;
            ");
        $Querry->bind_param('i', $CardID);
        $Querry->execute();
        $result = GetResultArray($Querry);
        if (count($result) > 0){
            $page = new order_page($mysqli, $CardID);
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