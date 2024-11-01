<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 03.06.2018
 * Time: 19:32
 */

    session_start();
    header("http/1.0 200 Ok");
    ini_set('default_charset', 'UTF-8');
    error_reporting(E_ALL);

    include "../generator/settings/buyit_form_data.php";

    $data = Array();
    $data['status'] = 'success';

    $EnterpriceEmail = $BuyItFormData['EnterpriceEmail'];
    $RussianEmail = $BuyItFormData['RussianEmail'];

    $Email = $_GET['Email'];
    $EventDate = $_GET['EventDate'];
    $PeopleCount = $_GET['PeopleCount'];
    $PeoplePrice = $_GET['PeoplePrice'];
    $PriceCurrency = $_GET['PriceCurrency'];
    $Phone = $_GET['Phone'];
    $EventTitle = $_GET['EventTitle'];
    $TotalPrice = $_GET['TotalPrice'];

    $secret="6LdDIF4UAAAAAKYeaQcQHuqxE22rIeZ6BIDA7JA_";
    $captcha=$_GET["captcha"];

    $verify=file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret={$secret}&response={$captcha}");
    $captcha_success=json_decode($verify);
    if ($captcha_success->success == true) {
        //This user was not verified by recaptcha.

        $MailToArray = Array();
        array_push($MailToArray, $EnterpriceEmail);
        /*
        if (strpos($Phone, '+7') !== false){
            array_push($MailToArray, $RussianEmail);
        }
        */
        $MailTo = implode(',', $MailToArray);

//        $data['mail_To'] = $MailTo;
//        $data['mail_Phone'] = $Phone;
//        $data['mail_strpos'] = strpos($Phone, '+7');

        $to = $MailTo; //"somebody@example.com, somebodyelse@example.com";
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
                    <p><b>Стоимость: </b><span>$PeoplePrice</span></p>
                    <p><b>Валюта: </b> <span>$PriceCurrency</span></p>
                    <p><b>Телефон: </b><span>$Phone</span></p>
                    <p><b>Почта: </b><span>$Email</span></p>
                    <p><b>Итоговая сумма: </b><span>$TotalPrice</span></p>
        
        
                </body>
            </html>
            ";

        // Always set content-type when sending HTML email
        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

        // More headers
        $headers .= 'From: <Visitor@CoolGeorgia.com>' . "\r\n";
        //$headers .= 'Cc: myboss@example.com' . "\r\n";

        $mail_output =  mail($to,$subject,$message,$headers);
        $data['mail_output'] = $mail_output;


    }
    else {
        $data['status'] = 'error';
        $data['message'] = 'CaptchaError';
    }


    $json_object = json_encode($data);
    echo $json_object;

?>