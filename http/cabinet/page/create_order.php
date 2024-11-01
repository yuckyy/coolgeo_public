<?php
session_start();

require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/page_start_block.php');
require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/user.php');




if (isset($_POST['CardID'])){

    if (isset($_POST['Name']) && isset($_POST['Phone']) && isset($_POST['Email'])){

//        $token = "5298230401:AAE05-cQImr3qlRvzKuTK_aY3-oDjOfylzQ";
//        $chat_id = "chat_id=- 541725525";
//
//        $txt1 = $_POST['Name'];
//
//
//
//
//
//
////$txt1 = $EventTitle . " " . $EventDate . " " . $PeopleCount . " " . $PriceCurrency . $Phone . $Email . $Email .$TotalPrice .$EventNotes;
//
//
//
//        $sendToTelegram = fopen("https://api.telegram.org/bot{$token}/sendMessage?{$chat_id}&parse_mode=html&text={$txt1}","r");
//        if($sendToTelegram){
//            echo $txt1 . "<br>" . "Good" ."<br>";
//        }else{
//            echo $txt1 . "<br>" . "Bad" ."<br>";
//        };
//
//        echo $message;
//        echo $txt1 . "<br>" . "Good" ."<br>";

        require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/booking.php');
        $user = new user($mysqli);
        if ($_POST['Name'] != $_SESSION['authentication']['Name']){
            $user->changeName($_SESSION['authentication']['UserID'], $_POST['Name']);
        }
        if ($_POST['Phone'] != $_SESSION['authentication']['Phone']){
            $user->changePhone($_SESSION['authentication']['UserID'], $_POST['Phone']);
        }
        if ($_POST['Email'] != $_SESSION['authentication']['Email']){
            $user->changeEmail($_SESSION['authentication']['UserID'], $_POST['Email']);
        }

        $booking = new booking($mysqli);
        $booking -> UserID = $_SESSION['authentication']['UserID'];
        if (isset($_POST['OrderDate'])){
            $booking -> DateBooking = $_POST['OrderDate'];
        }
        if (isset($_POST['CardID'])){
            $booking -> CardID = $_POST['CardID'];
        }
        $booking -> BookingStatusID = 1;
        $booking -> Operator = null;
        if (isset($_POST['PeopleCount'])){
            $booking -> PeopleCount = $_POST['PeopleCount'];
        }
        if (isset($_POST['HotelID'])){
            $booking -> HotelID = $_POST['HotelID'];
        }
        if (isset($_POST['Notes'])){
            $booking -> Notes = $_POST['Notes'];
        }

        require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/admin/card.php');
        $card = new card($mysqli, $_POST['CardID']);
        $CostData = $card->getCost($_POST);
        $booking -> TotalAmount = $CostData['BookingCost'];
        $booking -> TotalAmountCurrency = $CostData['BookingCurrency'];
        $booking -> UserLangID = $_SESSION['language'];

        $booking -> UserReview = null;
        $booking -> UserReviewDate = null;
        $booking -> UserReviewStatusID = null;
        $booking -> ReviewOperatorApproved = null;
        $booking -> saveBooking();

        //------------------------------------------------------------
        $EnterpriceEmail = 'infocoolgeorgia@gmail.com';

        if (isset($_POST['Email'])){
            $Email = $_POST['Email'];
        }else{
            $Email = '';
        }
        $EventDate = $booking -> DateBooking;
        $PeopleCount = $booking -> PeopleCount;
        $PriceCurrency = $card->CurrencyList[$booking -> TotalAmountCurrency]['Name']  ;
        if (isset($_POST['Phone'])){
            $Phone = $_POST['Phone'];
        } else {
            $Phone = '';
        }
        $EventTitle = $card -> Name;
        $TotalPrice = $booking -> TotalAmount;
        $EventNotes = $booking -> Notes;

        $MailToArray = Array();
        array_push($MailToArray, $EnterpriceEmail);
        /*
        if (strpos($Phone, '+7') !== false){
            array_push($MailToArray, $RussianEmail);
        }
        */
        $MailTo = implode(',', $MailToArray);


        $to = 'infocoolgeorgia@gmail.com'; //$MailTo; //"somebody@example.com, somebodyelse@example.com";
        $subject = "Phone: $Phone; Email: $Email; TotalPrice: $TotalPrice";

        $message = "
            <html>
                <head>
                </head>
                <body>
                    <h1>Бронирование с сайта CoolGeorgia.com !!!</h1>
        
                    <p><b>Что бронируют: </b><span>$EventTitle</span></p>
                    <p><b>Дата: </b><span>$EventDate</span></p>
                    <p><b>Количество человек: </b><span>$PeopleCount</span></p>
                    <p><b>Валюта: </b> <span>$PriceCurrency</span></p>
                    <p><b>Телефон: </b><span>$Phone</span></p>
                    <p><b>Почта: </b><span>$Email</span></p>
                    <p><b>Итоговая сумма: </b><span>$TotalPrice</span></p>
                    <p><b>Примечания: </b><span>$EventNotes</span></p>
                </body>
            </html>
        ";



        // Always set content-type when sending HTML email
        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

        if (isset($_POST['Email'])){
            $headers .= 'From: <'.$Email.'>' . "\r\n";
        }else{
            $headers .= 'From: <Visitor@CoolGeorgia.com>' . "\r\n";
        }

        $mail_output =  mail($to,$subject,$message,$headers);
        //echo '$mail_output: '.$mail_output;
        //------------------------------------------------------------

        header('location: /cabinet/page/booking_details.php?BookingID='.$booking -> BookingID);
        die();
    } else {
        header('location: '.$_SERVER['HTTP_REFERER']);
        die();
    }



}


?>