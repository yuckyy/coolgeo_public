<?php

session_start();



if ($_SESSION['captcha'] = 1) {
    ////////////////////////////////////////////////////////////////////////
    $db_host = 'mysql316.1gb.ua';
    $db_name = 'gbua_cgdb';
    $db_user = 'gbua_cgdb';
    $db_pass = 'V4CN-6X-wNNN';

    $mysqli = new mysqli($db_host, $db_user, $db_pass, $db_name);
    $mysqli->set_charset("utf8");
    $idcar = $_POST['idcar'];
    $username = $_POST['username'];
    $email = $_POST['email'];
    $country = $_POST['country'];
    $phone = $_POST['phone'];
    $text = $_POST['text'];
    $startdate = date("Y-m-d", strtotime($_POST['startdate']));
    $finaldate = date("Y-m-d", strtotime($_POST['finaldate']));
    $starttime = $_POST['starttime'];
    $finaltime = $_POST['finaltime'];
    $total = $_POST['total'];
    $driver = $_POST['checkcar'];
    if (isset($_POST['idcar'])) {
        $idcar = $_POST['idcar'];
        $UserDataCarName = "SELECT c.ShortTitle 
                FROM CarsSettings c
                WHERE c.CarsID = $idcar";
        $resulttUserData3 = mysqli_query($mysqli, $UserDataCarName);
        while ($row = mysqli_fetch_array($resulttUserData3)) {
            foreach ($row as $key => $value)
                $UserData4 = $key;
            $CarsName = $row['ShortTitle'];
        };
    } else {
        $idcar = $_SESSION['carid'];
        $UserDataCarName = "SELECT c.ShortTitle 
                    FROM CarsSettings c   
                    WHERE c.CarsID = $idcar";
        $resulttUserData3 = mysqli_query($mysqli, $UserDataCarName);
        while ($row = mysqli_fetch_array($resulttUserData3)) {
            foreach ($row as $key => $value)
                $UserData4 = $key;
            $CarsName = $row['ShortTitle'];
        };
    }
    $path2[3] = $_SESSION['carid'];

    $UserData = "SELECT c.Owner 
            FROM Cars c
            WHERE c.CarsID = $idcar";
    $resulttUserData2 = mysqli_query($mysqli, $UserData);
    while ($row = mysqli_fetch_array($resulttUserData2)) {
        foreach ($row as $key => $value)
            $UserData = $key;
        $owner = $row['Owner'];
    };

    $OwnerName = "SELECT c.Name 
            FROM Users c
            WHERE c.UserID = $owner";
    $resulttOwnerName = mysqli_query($mysqli, $OwnerName);
    while ($row = mysqli_fetch_array($resulttOwnerName)) {
        foreach ($row as $key => $value)
            $OwnerNameData = $key;
        $ownername = $row['Name'];
    };

    $UserDataTelegram = "SELECT TelegramToken, TelegramChatId
            FROM Owners c
                LEFT JOIN Cars cod on c.UserID=cod.Owner 
                WHERE CarsID = $idcar";
    $resulttUserDataTelegram = mysqli_query($mysqli, $UserDataTelegram);
    while ($row = mysqli_fetch_array($resulttUserDataTelegram)) {
        foreach ($row as $key => $value)
            $UserDataTelegram = $key;
        $TelegramToken = $row['TelegramToken'];
        $TelegramChatId = $row['TelegramChatId'];
    };
    if (!$mysqli) {
        die("Connection failed: " . mysqli_connect_error());
    }
    date_default_timezone_set('Europe/Kiev');
    $mysqltime = date('d-m-Y', time());
    $result = $mysqli->query(
        "
            INSERT INTO BookingCars ( name, email ,country , phone, description, startdate, finaldate, time, column1, driver, CarID, starttime, finaltime,TotalAmount, BookingStatus) 
            VALUES ('$username' ,'$email' ,'$country','$phone','$text','$startdate','$finaldate','$mysqltime','$CarsName', '$driver', '$idcar','$starttime', '$finaltime','$total',1)"
    );
    if ($driver == 1) {
        $driver = 'Да, нужен';
    } else {
        $driver = 'Нет, не нужен';
    };
    if (!$result) {
        echo "error result";
    };

    //////////////////////////////////////////BOT///////////////////////////
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
    $ownername = preg_replace(
        "/(\t|\n|\v|\f|\r| |\xC2\x85|\xc2\xa0|\xe1\xa0\x8e|\xe2\x80[\x80-\x8D]|\xe2\x80\xa8|\xe2\x80\xa9|\xe2\x80\xaF|\xe2\x81\x9f|\xe2\x81\xa0|\xe3\x80\x80|\xef\xbb\xbf)+/",
        "_",
        $ownername
    );
    $txt3 = "%0A%0A Аренда Авто: " . "%0A" . "%0A" . "Имя :" .
        $username . "%0A" .  "Страна,город :" . $country . "%0A" .
        "Авто: " . $CarsName . "%0A" . "Владелец авто: " . $owner .
        "," . $ownername . "%0A" . "Водитель: " . $driver . "%0A" . "Комментарий :" .
        $text . "%0A" . "Почта :" . $email .  "%0A" . "Дата и время подачи :" .
        "("  . $startdate . ")" . " в " . "$starttime" .
        "%0A" . "Дата и время возврата :" . "("  . $finaldate . ")" .
        " в " . "$finaltime" .  "%0A" . "Итого :" .
        "$total" . "$%0A";
    $token = "5298230401:AAE05-cQImr3qlRvzKuTK_aY3-oDjOfylzQ";
    $chat_id = "chat_id=-1001346181300";

    $sendToTelegram = fopen("https://api.telegram.org/bot{$TelegramToken}/sendMessage?chat_id={$TelegramChatId}&parse_mode=html&text={$txt3}", "r");
    ////////////////////////////////////////////////ENDBOT////////////////////////


    $url = 'https://payze.io/api/v1';

    $apiKey = '3A5E1B352C9C49B1B1EA0883F641596E';
    $apiSecret = '4BCB2C755998416F8788FBD1A3E74329';

    $data = [
        'method' => 'justPay',
        'apiKey' => $apiKey,
        'apiSecret' => $apiSecret,
        'data' => [
            'amount' => $total,
//            'currency' => 'USD',
            'callback' => 'https://coolgeorgia.com/page/carordersuccess.php',
            'callbackError' => 'https://coolgeorgia.com/page/carordersuccess.php',
            'preauthorize' => false,
            'lang' => 'EN',
        ],
    ];

    $jsonData = json_encode($data);

    $opts = [
        'http' => [
            'method' => 'POST',
            'header' => "Content-Type: application/json\r\n"
                . "Accept: application/json\r\n",
            'content' => $jsonData,
        ],
    ];

    $context = stream_context_create($opts);

    $response = file_get_contents($url, false, $context);

    if ($response !== false) {
        $responseData = json_decode($response, true);
        $transactionUrl = $responseData['response']['transactionUrl'];
        var_dump($responseData['response']['transactionUrl']);
        header('Location:'.$transactionUrl);
    } else {
        echo "Ошибка при выполнении запроса к API Payze.";
    }
    die;
} else {
    header('Location: https://coolgeorgia.com/page/carordersuccess.php');
    die;
}
