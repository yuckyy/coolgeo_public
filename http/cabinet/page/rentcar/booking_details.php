<?php
session_start();

require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/rentcar/booking_details_page.php');
require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/page_start_block.php');

if (isset($_GET['BookingID'])){
    $BookingID = $_GET['BookingID'];
    
    if (preg_match('/^[1-9][0-9]*$/', $BookingID)){
        // получить список этих из дбд
        $Querry = $mysqli->prepare("
              SELECT c.id AS BookingID
                FROM BookingCars c
                WHERE c.id = ?
                LIMIT 1;
            ");
        $Querry->bind_param('i', $BookingID);
        $Querry->execute();
        $result = GetResultArray($Querry);
        if (count($result) > 0){
            $page = new booking_details_page($mysqli, $BookingID);
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