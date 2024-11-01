<?php
/*КЛЮЧИ*/
$tokencaptcha = $_POST['g-recaptcha-response'];
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "https://www.google.com/recaptcha/api/siteverify");
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query(array('secret' => '6LfD-QYcAAAAAGj2anYYs5kLiSMG1rtT3PNsO2fZ', 'response' => $tokencaptcha)));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($ch);
        curl_close($ch);
        $arrResponse = json_decode($response, true);
        // var_dump($arrResponse);
        // var_dump($tokencaptcha);
        // die;

session_start();

// var_dump($_SESSION['captcha']);
// die;
//if($arrResponse["score"] >= 0.5) {
    ////////////////////////////////////////////////////////////////////////
    $db_host = 'mysql316.1gb.ua';
    $db_name = 'gbua_cgdb';
    $db_user = 'gbua_cgdb';
    $db_pass = 'V4CN-6X-wNNN';

    $mysqli = new mysqli($db_host, $db_user, $db_pass, $db_name);
    $mysqli->set_charset("utf8");

    $username = mysqli_real_escape_string($mysqli, $_POST['username']);
    $email = mysqli_real_escape_string($mysqli, $_POST['email']);
    $country = mysqli_real_escape_string($mysqli, $_POST['country']);
    $text = mysqli_real_escape_string($mysqli, $_POST['text']);
    $rating = mysqli_real_escape_string($mysqli, $_POST['rating']);
    $heading = mysqli_real_escape_string($mysqli, $_POST['heading']);
    
    if (!$mysqli) {
        die("Connection failed: " . mysqli_connect_error());
    }
    date_default_timezone_set('Europe/Kiev');

    $mysqltime = date('Y-m-d H:i:s', time());

    $result = $mysqli->query(
        "
INSERT INTO Reviews ( NameUser, CountryCity,Email,Stars,TitleText,Text ,ReviewsDate) 
VALUES ('$username' ,'$country' ,'$email','$rating','$heading','$text' ,'$mysqltime')"
    );
    if (!$result) {
        echo "error result";
    };

    //////////////////////////////////////////BOT///////////////////////////
    //$_SESSION['last_access'] == $CardID;
    //$_SESSION['BookingIDD'] == $BookingIDD;
    //print_r($_SESSION);




    //    echo "id: " . $row['Notes'] . "<br>\n";
    //    echo "userdetails:" . $row['PeopleCount'] . "<br>\n";
    //    echo "orderdetails:" . $row['TotalAmount'] . "<br>\n";
    //    echo "state:" . $row['Name'] . "<br>\n";
    //    echo "info:" . $row['DateBooking'] . "<br>\n";


    $username = preg_replace(
        "/(\t|\n|\v|\f|\r| |\xC2\x85|\xc2\xa0|\xe1\xa0\x8e|\xe2\x80[\x80-\x8D]|\xe2\x80\xa8|\xe2\x80\xa9|\xe2\x80\xaF|\xe2\x81\x9f|\xe2\x81\xa0|\xe3\x80\x80|\xef\xbb\xbf)+/",
        "_",
        $username
    );
    $country = preg_replace(
        "/(\t|\n|\v|\f|\r| |\xC2\x85|\xc2\xa0|\xe1\xa0\x8e|\xe2\x80[\x80-\x8D]|\xe2\x80\xa8|\xe2\x80\xa9|\xe2\x80\xaF|\xe2\x81\x9f|\xe2\x81\xa0|\xe3\x80\x80|\xef\xbb\xbf)+/",
        "_",
        $country
    );

    $text = preg_replace(
        "/(\t|\n|\v|\f|\r| |\xC2\x85|\xc2\xa0|\xe1\xa0\x8e|\xe2\x80[\x80-\x8D]|\xe2\x80\xa8|\xe2\x80\xa9|\xe2\x80\xaF|\xe2\x81\x9f|\xe2\x81\xa0|\xe3\x80\x80|\xef\xbb\xbf)+/",
        "_",
        $text
    );

    $txt3 = "%0A%0A ОТЗЫВ: " . "%0A" . "%0A" . "Имя :" . $username . "%0A" .  "Страна,город :" . $country . "%0A" . "Отзыв :" . $text . "%0A" . "Почта :" . $email .  "%0A" . "Оценка :" . "("  . $rating . ")"  .  "%0A";
    print_r($txt3);




    $token = "5298230401:AAE05-cQImr3qlRvzKuTK_aY3-oDjOfylzQ";

    $chat_id = "chat_id=-1001346181300";
    //$txt1 = $EventTitle . " " . $EventDate . " " . $PeopleCount . " " . $PriceCurrency . $Phone . $Email . $Email .$TotalPrice .$EventNotes;
    $sendToTelegram = fopen("https://api.telegram.org/bot{$token}/sendMessage?{$chat_id}&parse_mode=html&text={$txt3}", "r");
    //    if($sendToTelegram){
    //        echo $subject . "<br>" . "Good" ."<br>";
    //
    //    }else{
    //        echo $subject . "<br>" . "Bad" ."<br>";
    //
    //    };
    //
    //
    //    echo $subject . "<br>" . "Good" ."<br>";





    ////////////////////////////////////////////////ENDBOT////////////////////////




    header('Location: https://coolgeorgia.com/page/callbacksuccess.php');
//    echo "<br>";
//    echo $username;
//    echo "<br>";
//    echo $result;
//    echo "<br>";
//    print_r($maxid);
    die;
//} else {
//    header('Location: https://coolgeorgia.com/page/callbacksuccess.php');
//    die;
//}
