<?php
session_start();

require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/booking_details_page.php');
require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/page_start_block.php');
if (!isset($_GET['BookingID'])) {
    $Emaill = $_SESSION['authentication']['Email'];
    $Namee = ($_SESSION['authentication']['Name']);
    $Phonee = $_SESSION['authentication']['Phone'];
    $UserIDD = $_SESSION['authentication']['UserID'];


    $sql = "select  b.Notes, b.PeopleCount, b.TotalAmount, c.Name, b.DateBooking
    FROM Booking b
      LEFT JOIN Card c ON c.CardID = b.CardID
  WHERE b.BookingID = (SELECT MAX(d.BookingID) FROM Booking d )";

    $resultt = mysqli_query($mysqli, $sql);

    while ($row = mysqli_fetch_array($resultt)) {


        //    echo "id: " . $row['Notes'] . "<br>\n";
        //    echo "userdetails:" . $row['PeopleCount'] . "<br>\n";
        //    echo "orderdetails:" . $row['TotalAmount'] . "<br>\n";
        //    echo "state:" . $row['Name'] . "<br>\n";
        //    echo "info:" . $row['DateBooking'] . "<br>\n";


        $Namee = preg_replace(
            "/(\t|\n|\v|\f|\r| |\xC2\x85|\xc2\xa0|\xe1\xa0\x8e|\xe2\x80[\x80-\x8D]|\xe2\x80\xa8|\xe2\x80\xa9|\xe2\x80\xaF|\xe2\x81\x9f|\xe2\x81\xa0|\xe3\x80\x80|\xef\xbb\xbf)+/",
            "_",
            $Namee
        );
        $row['Name'] = preg_replace(
            "/(\t|\n|\v|\f|\r| |\xC2\x85|\xc2\xa0|\xe1\xa0\x8e|\xe2\x80[\x80-\x8D]|\xe2\x80\xa8|\xe2\x80\xa9|\xe2\x80\xaF|\xe2\x81\x9f|\xe2\x81\xa0|\xe3\x80\x80|\xef\xbb\xbf)+/",
            "_",
            $row['Name']
        );

        $row['Notes'] = preg_replace(
            "/(\t|\n|\v|\f|\r| |\xC2\x85|\xc2\xa0|\xe1\xa0\x8e|\xe2\x80[\x80-\x8D]|\xe2\x80\xa8|\xe2\x80\xa9|\xe2\x80\xaF|\xe2\x81\x9f|\xe2\x81\xa0|\xe3\x80\x80|\xef\xbb\xbf)+/",
            "_",
            $row['Notes']
        );

        $txt3 = "%0A%0A НОВЫЙ ЗАКАЗ: " . "%0A" . "%0A" . "Что бронируют :" . $row['Name'] . "%0A" . "Кол-во человек :" . $row['PeopleCount'] . "%0A" . "Дата :" . $row['DateBooking'] . "%0A" . "Телефон :" . "+" . $Phonee . "%0A" . "Почта :" . $Emaill . "%0A" . "Имя :" . $Namee . "%0A" . "Сумма :" . $row['TotalAmount'] . "$" . "%0A" . "Примечания :" . $row['Notes'];


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

    }
} else {
    if (isset($_GET['BookingID'])) {
        $BookingID = $_GET['BookingID'];

        if (preg_match('/^[1-9][0-9]*$/', $BookingID)) {
            // получить список этих из дбд
            $Querry = $mysqli->prepare("
                  SELECT c.BookingID, c.UserID
                    FROM Booking c
                    WHERE c.BookingID = ?
                    LIMIT 1;
                ");
            $Querry->bind_param('i', $BookingID);
            $Querry->execute();
            $result = GetResultArray($Querry);
            if (count($result) > 0) {
                $UserID = $result[0]['UserID'];
                if ($UserID == $_SESSION['authentication']['UserID']) {
                    $page = new booking_details_page($mysqli, $BookingID);
                    $page->generate();
                    echo $page->CONTENT;
                } else {
                    header('location: /');
                }
            } else {
                header('location: /');
            }
        } else {
            header('location: /');
        }
    } else {
        header('location: /');
    }
}
