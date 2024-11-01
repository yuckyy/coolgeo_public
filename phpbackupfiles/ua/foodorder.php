<?php

session_start();



// if ($_SESSION['captcha'] = 1) {
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
            INSERT INTO BookingFood ( Name, address, email, phone) 
            VALUES ('$username' ,'$country' ,'$email','$phone')"
);
if ($driver == 1) {
    $driver = 'Самовывоз';
} else {
    $driver = 'Доставка';
};
// var_dump($result);
// die;
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
foreach ($_SESSION['cart'] as $item) {
    $name .= $item["name"] . '('.$item["count"].') ,';
    // $count .= $item["count"];
}
$txt3 = "%0A%0A Заказ еды: " . "%0A" . "%0A" . "Имя :" .
    $username . "%0A" . "Заказ (Количество):" .
    $name . "%0A" ."Адрес :" . $country . "%0A" .
    "Комментарий :" .
    $text . "%0A" . "Почта :" . $email .  "%0A" .
    $driver;
$token = "5803970806:AAFwhRnFMIeCfES3PaAeurfVhGzyBI1QVRk";
$chat_id = "-837025408";

$sendToTelegram = fopen("https://api.telegram.org/bot{$token}/sendMessage?chat_id={$chat_id}&parse_mode=html&text={$txt3}", "r");
////////////////////////////////////////////////ENDBOT////////////////////////
unset($_SESSION['cart']);
session_destroy($_SESSION['cart']);
$_SESSION['allcount'] = 0;
header('Location: https://coolgeorgia.com/page/restaurancheckoutsueccess.php');
echo "<br>";
echo $username;
echo "<br>";
echo $result;
echo "<br>";
print_r($maxid);
die;
// } else {
//     header('Location: https://coolgeorgia.com/page/carordersuccess.php');
//     die;
// }

// https://api.telegram.org/bot5803970806:AAFwhRnFMIeCfES3PaAeurfVhGzyBI1QVRk/sendMessage?chat_id=-837025408&text=%D0%92%D1%81%D0%B5%D0%BC%20%D0%BF%D1%80%D0%B8%D0%B2%D0%B5%D1%82!