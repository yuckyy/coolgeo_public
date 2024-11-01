<?php

//сессия
session_start();

$data = array();
$data['status'] = 'success';

$action = '';
switch ($_SERVER['REQUEST_METHOD']) {
    case 'GET':
        $action = $_GET['action'];
        break;
    case 'POST':
        $action = $_POST['action'];
        break;
}
$data['action'] = $action;

// подключиться к бд
require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/config.php');

// Кнопка запуска обновления
if ($action == 'login') {
    require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/user.php');

    // получить логин и пароль
    $login = $_GET['login'];
    $password = $_GET['password'];

    // пользователь
    $user = new user($mysqli);
    $result = $user->LogIn($login, $password);

    if (!$result) {
        $data['status'] = 'error';
        $data['message'] = 'Неправильный логин или пароль';
    } else {
        if (isset($_SESSION['RefererPage'])) {
            $data['redirect_url'] = $_SESSION['RefererPage'];
            unset($_SESSION['RefererPage']);
        } else {
            $data['redirect_url'] = '/cabinet/';
        }
    }
}

// сменить язык
if ($action == 'ChangeLang') {
    // получить язык
    $lang = $_GET['lang'];

    $Querry = $mysqli->prepare("SELECT ll.LangID, ll.Lang FROM LangList ll WHERE ll.Lang = ? AND Active = 1;");
    $Querry->bind_param('s', $lang);
    $Querry->execute();
    $result = GetResultArray($Querry);
    $LangID = $result[0]['LangID'];
    if (!$result) {
        $data['status'] = 'error';
        $data['message'] = 'Нет такого языка!';
    } else {

        $Querry = $mysqli->prepare("SELECT ll.LangID, ll.Lang FROM LangList ll");
        $Querry->execute();
        $result = GetResultArray($Querry);
        $domain = '';
        if (isset($_SERVER['HTTPS']) &&
            ($_SERVER['HTTPS'] == 'on' || $_SERVER['HTTPS'] == 1) ||
            isset($_SERVER['HTTP_X_FORWARDED_PROTO']) &&
            $_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https') {
            $domain = 'https://' . $_SERVER['HTTP_HOST'];
        } else {
            $domain = 'http://' . $_SERVER['HTTP_HOST'];
        }

        $referer = $_SERVER['HTTP_REFERER'];
        foreach ($result as $LangLoop) {
            $TempDomainWithLang = $domain . '/' . $LangLoop['Lang'] . '/';
            $referer = str_replace($TempDomainWithLang, '', $referer);
        }
        $referer = str_replace($domain, '', $referer);
        if (substr($referer, 0, 1) == '/') {
            $referer = substr($referer, 1, strlen($referer) - 1);
        }

        $MySqliQuerry = $mysqli->prepare("SELECT value FROM Settings WHERE `Key` = ? LIMIT 1");
        $Key = 'default_language';
        $MySqliQuerry->bind_param('s', $Key);
        $MySqliQuerry->execute();
        $result = GetResultArray($MySqliQuerry);
        $default_language = $result[0]['value'];
        $data['HTTP_REFERER'] = $_SERVER['HTTP_REFERER'];
        $data['domain'] = $domain . '/cabinet';
        if (!stristr($_SERVER['HTTP_REFERER'], $domain . '/cabinet')) {
            if ($LangID != $default_language) {
                $data['redirect_url'] = $domain . '/' . $lang . '/' . $referer;
            } else {
                $data['redirect_url'] = $domain . '/' . $referer;
            }
        } else {
            $data['redirect_url'] = $_SERVER['HTTP_REFERER'];
        }

        $_SESSION['language'] = $LangID;

    }
}

if ($action == 'useradd') {
    if (!isset($_SESSION['authentication'])) {
        $data['status'] = 'error';
        $data['status'] = 'Не авторизованный пользователь!';
    } else {
        require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/user.php');

        // умолчания
        $login = '';
        $username = '';
        $password = '';
        // прочитать данные которые пришли
        if (isset($_GET['login'])) {
            $login = $_GET['login'];
        }
        if (isset($_GET['username'])) {
            $username = $_GET['username'];
        }
        if (isset($_GET['password'])) {
            $password = $_GET['password'];
        }
        // проверить длинну данных
        if (strlen($login) < 4) {
            $data['status'] = 'error';
            $data['message'] = 'Логин слишком короткий';
            $json_object = json_encode($data);
            echo $json_object;
            die();
        }
        if (strlen($username) < 1) {
            $data['status'] = 'error';
            $data['message'] = 'На введено имя';
            $json_object = json_encode($data);
            echo $json_object;
            die();
        }
        if (strlen($password) < 1) {
            $data['status'] = 'error';
            $data['message'] = 'На введен пароль';
            $json_object = json_encode($data);
            echo $json_object;
            die();
        }

        $result = array();
        $LoginQuerry = $mysqli->prepare("SELECT Login from Users WHERE (`Login` = ?) LIMIT 1");
        $LoginQuerry->bind_param('s', $login);
        $LoginQuerry->execute();
        $result = GetResultArray($LoginQuerry);
        if (count($result) == 0) {
            // пользователь
            $user = new user($mysqli);
            $result = $user->Register($username, $login, $password);
        } else {
            $data['status'] = 'error';
            $data['message'] = 'Есть такой логин';
            $json_object = json_encode($data);
            echo $json_object;
            die();
        }

    }
}

if ($action == 'userchangepassword') {
    if (!isset($_SESSION['authentication'])) {
        $data['status'] = 'error';
        $data['status'] = 'Не авторизованный пользователь!';
    } else {
        require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/user.php');
        // умолчания
        $password = '';
        $userid = '';
        // прочитать данные которые пришли
        if (isset($_GET['password'])) {
            $password = $_GET['password'];
        }
        if (isset($_GET['userid'])) {
            $userid = $_GET['userid'];
        }
        if (strlen($password) < 1) {
            $data['status'] = 'error';
            $data['message'] = 'На введен пароль';
            $json_object = json_encode($data);
            echo $json_object;
            die();
        }
        $result = array();
        $LoginQuerry = $mysqli->prepare("SELECT Login from Users WHERE (`UserID` = ?) LIMIT 1");
        $LoginQuerry->bind_param('i', $userid);
        $LoginQuerry->execute();
        $result = GetResultArray($LoginQuerry);
        if (count($result) != 0) {
            // пользователь
            $user = new user($mysqli);
            $result = $user->ChangePassword($userid, $password);
        } else {
            $data['status'] = 'error';
            $data['message'] = 'Нет такого пользователя';
            $json_object = json_encode($data);
            echo $json_object;
            die();
        }
    }
}

if ($action == 'userdelete') {
    if (!isset($_SESSION['authentication'])) {
        $data['status'] = 'error';
        $data['status'] = 'Не авторизованный пользователь!';
    } else {
        require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/user.php');
        // умолчания
        $password = '';
        $userid = '';
        // прочитать данные которые пришли
        if (isset($_GET['userid'])) {
            $userid = $_GET['userid'];
        }
        $result = array();
        $LoginQuerry = $mysqli->prepare("SELECT Login from Users WHERE (`UserID` = ?) LIMIT 1");
        $LoginQuerry->bind_param('i', $userid);
        $LoginQuerry->execute();
        $result = GetResultArray($LoginQuerry);
        if (count($result) != 0) {
            // пользователь
            $user = new user($mysqli);
            $result = $user->Delete($userid);
        } else {
            $data['status'] = 'error';
            $data['message'] = 'Нет такого пользователя';
            $json_object = json_encode($data);
            echo $json_object;
            die();
        }
    }
}

if ($action == 'PageUpdate') {
    if (!isset($_SESSION['authentication'])) {
        $data['status'] = 'error';
        $data['status'] = 'Не авторизованный пользователь!';
    } else {
        // проверить есть ли роль "генератор сайта"
        $LoginQuerry = $mysqli->prepare("
            SELECT gr.RoleID
                FROM Users u
                  LEFT JOIN UserGroups ug ON u.UserID = ug.UserID
                  LEFT JOIN GroupRoles gr ON ug.GroupID = gr.GroupID
                WHERE u.UserID = ?
                    AND gr.RoleID = 16
                GROUP BY gr.RoleID
                LIMIT 1;
        ");
        $LoginQuerry->bind_param('i', $_SESSION['authentication']['UserID']);
        $LoginQuerry->execute();
        $result = GetResultArray($LoginQuerry);
        if (count($result) > 0) {
            $PageID = -1;
            if (isset($_GET['PageID'])) {
                $PageID = $_GET['PageID'];
            }
            if ($PageID != -1) {
                require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/admin/PageUpdater.php');

                $Querry = $mysqli->prepare("
                    SELECT ll.LangID, ll.Lang, ll.Active
                        FROM LangList ll
                        WHERE ll.Active = 1
                        ORDER BY ll.RowOrder
                ");
                $Querry->execute();
                $LangList = GetResultArray($Querry);
                foreach ($LangList as $CurrentLang) {
                    $PageUpdater = new PageUpdater($mysqli, $PageID, $CurrentLang['LangID']);
                    $PageUpdater->generate();

                    $rootpath = $_SERVER["DOCUMENT_ROOT"];
                    $pagepath = '';
                    if ($PageUpdater->PageFileName != 'index.html') {
                        $pagepath = $rootpath . '/' . $PageUpdater->LangCorrector . 'page/' . $PageUpdater->PageFileName;
                    } else {
                        $pagepath = $rootpath . '/' . $PageUpdater->LangCorrector . $PageUpdater->PageFileName;
                    }

                    $fp = fopen($pagepath, "w"); // ("r" - считывать "w" - создавать "a" - добовлять к тексту), мы создаем файл
                    fwrite($fp, $PageUpdater->CONTENT);
                    fclose($fp);
                }
            }
        } else {
            $data['status'] = 'error';
            $data['status'] = 'Нет доступа к этому методу!';
        }
    }
}

if ($action == 'getBookingCost') {
    if (!isset($_SESSION['authentication'])) {
        $data['status'] = 'error';
        $data['status'] = 'Не авторизованный пользователь!';
    } else {
        require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/admin/card.php');
        if (isset($_POST['CardID'])) {
            $card = new card($mysqli, $_POST['CardID']);
            $data['CostData'] = $card->getCost($_POST);
        }
    }
}

if ($action == 'createOrder') {
    $data['formData'] = $_POST;

    if (isset($_POST['Name']) && isset($_POST['Phone']) && isset($_POST['Email'])) {

        $Name = $_POST['Name'];
        $Phone = $_POST['Phone'];
        $Email = $_POST['Email'];

        require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/user.php');
        // пользователь
        $user = new user($mysqli);
        $UserData = $user->GetByLogin($_POST['Phone']);
        if ($UserData) {
            $UserId = $UserData['UserID'];
        } else {
            $UserId = $user->Register($Name, $Phone, $Phone);
            $user->changeEmail($UserId, $Email);
        }


        require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/booking.php');
        $user = new user($mysqli);
        if ($_POST['Name'] != $_SESSION['authentication']['Name']) {
            $user->changeName($UserId, $_POST['Name']);
        }
        if ($_POST['Phone'] != $_SESSION['authentication']['Phone']) {
            $user->changePhone($UserId, $_POST['Phone']);
        }
        if ($_POST['Email'] != $_SESSION['authentication']['Email']) {
            $user->changeEmail($UserId, $_POST['Email']);
        }

        $booking = new booking($mysqli);
        $booking->UserID = $UserId;
        if (isset($_POST['OrderDate'])) {
            $booking->DateBooking = $_POST['OrderDate'];
        }
        if (isset($_POST['CardID'])) {
            $booking->CardID = $_POST['CardID'];
        }
        $booking->BookingStatusID = 1;
        $booking->Operator = null;
        if (isset($_POST['PeopleCount'])) {
            $booking->PeopleCount = $_POST['PeopleCount'];
        }
        if (isset($_POST['HotelID'])) {
            $booking->HotelID = $_POST['HotelID'];
        }
        if (isset($_POST['Notes'])) {
            $booking->Notes = $_POST['Notes'];
        }

        require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/admin/card.php');
        $card = new card($mysqli, $_POST['CardID']);
        $CostData = $card->getCost($_POST);
        $booking->TotalAmount = $CostData['BookingCost'];
        $booking->TotalAmountCurrency = $CostData['BookingCurrency'];
        $booking->UserLangID = $_SESSION['language'];

        $booking->UserReview = null;
        $booking->UserReviewDate = null;
        $booking->UserReviewStatusID = null;
        $booking->ReviewOperatorApproved = null;
        $booking->saveBooking();

        //------------------------------------------------------------
        $EnterpriceEmail = 'infocoolgeorgia@gmail.com';

        if (isset($_POST['Email'])) {
            $Email = $_POST['Email'];
        } else {
            $Email = '';
        }
        $EventDate = $booking->DateBooking;
        $PeopleCount = $booking->PeopleCount;
        $PriceCurrency = $card->CurrencyList[$booking->TotalAmountCurrency]['Name'];
        if (isset($_POST['Phone'])) {
            $Phone = $_POST['Phone'];
        } else {
            $Phone = '';
        }
        $EventTitle = $card->Name;
        $TotalPrice = $booking->TotalAmount;
        $EventNotes = $booking->Notes;

        $MailToArray = array();
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

        if (isset($_POST['Email'])) {
            $headers .= 'From: <' . $Email . '>' . "\r\n";
        } else {
            $headers .= 'From: <Visitor@CoolGeorgia.com>' . "\r\n";
        }

        $mail_output = mail($to, $subject, $message, $headers);
        //echo '$mail_output: '.$mail_output;
        //------------------------------------------------------------

        if (isset($_SESSION['authentication']['UserID'])) {
            $data['locationHref'] = '/cabinet/page/booking_details.php?BookingID=' . $booking->BookingID;
        } else {
            $data['locationHref'] = '/cabinet/page/unlogined_booking_details.php?BookingID=' . $booking->BookingID;
        }
    } else {
        $data['status'] = 'error';
        $data['status'] = 'Invalid Data!';
    }


}


if ($action == 'RegistrationSendCode') {
    if (isset($_GET['Phone'])) {
        if (preg_match('^\+[1-9]{1}[0-9]{3,14}$^', $_GET['Phone'])) {

            $client = new SoapClient ('http://turbosms.in.ua/api/wsdl.html');
            // Данные авторизации
            $auth = array(
                'login' => 'CoolGeorgia',
                'password' => 'tPSo5w'
            );
            // Авторизируемся на сервере
            $result = $client->Auth($auth);
            $code1 = rand(10, 99);
            $code2 = rand(10, 99);
            $code3 = rand(10, 99);
            $code = $code1 . $code2 . $code3;
            $_SESSION['regidtration_data']['smspassword'] = $code;

            switch ($_SESSION['language']) {
                case 'ua':
                    $message = 'CoolGeorgia, пароль: ';
                    break;
                case 'ru':
                    $message = 'CoolGeorgia, пароль: ';
                    break;
                case 'en':
                    $data['descryption'] = 'CoolGeorgia, password: ';
                    break;
                default:
                    $message = 'CoolGeorgia, пароль: ';
                    break;
            }
            $message .= $code;
            // Отправляем сообщение на несколько номеров.
            // Номера разделены запятыми без пробелов.
            $sender = 'CoolGeorgia';

            /*
            if (strpos($_GET['Phone'], '+380') === false){
                $sender = 'Msg';
            }
            */

            $sms = array(
                //'sender' => 'CoolGeorgia',
                'sender' => $sender,
                'destination' => $_GET['Phone'],
                'text' => $message
            );
            $result = $client->SendSMS($sms);
        }
    }
}

if ($action == 'RegistrationCheckCode') {
    if (isset($_GET['SmsCode'])) {
        if ($_GET['SmsCode'] != $_SESSION['regidtration_data']['smspassword']) {
            $data['status'] = 'error';
        } else {
            require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/user.php');
            $user = new user($mysqli);
            $login = $_GET['Phone'];
            $password = $_GET['Password'];

            $Querry = $mysqli->prepare("
                    SELECT u.UserID
                        FROM Users u
                        WHERE u.Login = ?
                ");
            $Querry->bind_param('s', $login);
            $Querry->execute();
            $result = GetResultArray($Querry);
            if ($result) {
                $UserID = $result[0]['UserID'];
                $result = $user->ChangePassword($UserID, $password);
            } else {
                $UserID = $user->Register('', $login, $password);
                $result = $user->changePhone($UserID, $login);
            }
            $result = $user->LogIn($login, $password);

            if (isset($_SESSION['RefererPage'])) {
                $data['redirect_url'] = $_SESSION['RefererPage'];
                unset($_SESSION['RefererPage']);
            } else {
                $data['redirect_url'] = '/cabinet/';
            }
        }
    }
}

if ($action == 'CallbackFormOpen') {
    require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/translator.php');
    $translator = new translator($mysqli, $_SESSION['language']);
    $data['FormHeader'] = $translator->translate('{CallbackFormHeader}');
    $data['ButtonClose'] = $translator->translate('{FormButtonClose}');
    $data['ButtonOK'] = $translator->translate('{FormButtonCallback}');
    $data['messageLabel'] = $translator->translate('{PhoneLabel}');

    if (isset($_SESSION['authentication']['UserID'])) {
        require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/user.php');
        $user = new user($mysqli);
        $UserData = $user->GetById($_SESSION['authentication']['UserID']);
        $data['Phone'] = $UserData['Phone'];
    }
}

if ($action == 'GetCallBack') {
    require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/callback.php');
    if (isset($_GET['Phone']) && isset($_GET['CardID']) && isset($_GET['LangID'])) {
        $call_back = new call_back($mysqli);
        $call_back->Phone = $_GET['Phone'];
        $call_back->CardID = $_GET['CardID'];
        $call_back->LangID = $_GET['LangID'];
        $call_back->CallBackStatusID = 1;
        $call_back->save();
        $data['call_back'] = $call_back;

    }
}

if ($action == 'show_CallBack_message_form') {
    require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/translator.php');
    $translator = new translator($mysqli, $_SESSION['language']);
    $data['FormHeader'] = $translator->translate('{CallbackMessageFormHeader}');
    $data['ButtonClose'] = $translator->translate('{FormButtonSuccess}');
    $data['Message'] = $translator->translate('{CallBackMessage}');
}

if ($action == 'show_order_message_form') {
    require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/translator.php');
    $translator = new translator($mysqli, $_SESSION['language']);
    $data['FormHeader'] = $translator->translate('{BookingMessageFormHeader}');
    $data['ButtonClose'] = $translator->translate('{FormButtonSuccess}');
    $data['Message'] = $translator->translate('{BookingSuccessMessage}');
}

if ($action == 'getReviews') {
    $Querry = $mysqli->prepare("SELECT * from Reviews Where IsPrint = '1' ");
    $Querry->execute();
    $results = GetResultArray($Querry);
    $pageData2 = '';
    $pageData = '';
    foreach ($results as $result) {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/pages/partials/reviews.html';
        if (file_exists($_file_path)) {
            $pageData = file_get_contents($_file_path);
        }
        $pageData = str_replace('{name_user}', $result['NameUser'], $pageData);
        $pageData = str_replace('{reviews_date}', $result['ReviewsDate'], $pageData);
        $pageData = str_replace('{country_city}', $result['CountryCity'], $pageData);
        $pageData = str_replace('{TitleText}', $result['TitleText'], $pageData);
        $pageData = str_replace('{Text}', $result['Text'], $pageData);
        $pageData .= '
        
        ';
        $pageData2 .= $pageData;
    };
    $data['reviews'] = htmlspecialchars_decode($pageData2);
}

if ($action == 'getCars') {

    $Querry = $mysqli->prepare("SELECT c.CarsID, cod.ShortTitle, cod.CardDescryption, cod.CardDetailsShort, cod.CardDescription_Text, c.image, c.1day, c.3days,c.8days,c.31days,c.CarsCity,cc.Name,c.CountPersons,c.EngineVolume,c.DriverPrice
                FROM Cars c
                         LEFT JOIN CarsSettings cod on c.CarsID=cod.CarsID and cod.LangID = ?
                         LEFT JOIN CarsCityData cc ON cc.CarsCityID = c.CarsCity AND cc.LangID = cod.LangID
                         LEFT JOIN CarsClassData cc1 ON cc1.CarsClassID = c.CarsClass AND cc1.LangID = cod.LangID
                         LEFT JOIN CarsKppData ck ON ck.CarsKppID = c.CarsKpp and ck.LangID = cod.LangID
                         LEFT JOIN CarsTypeKuzovData ctk ON ctk.CarsTypeKuzovID = c.CarsTypeKuzov AND ctk.LangID = cod.LangID
                         LEFT JOIN CarsPrivodData cp ON c.CarsPrivod = cp.CarsPrivodID AND cp.LangID = cod.LangID
                #          LEFT JOIN (SELECT bc.CarID AS CarID
                #                     FROM BookingCars bc
                #                     WHERE (?  NOT BETWEEN bc.startdate AND bc.finaldate
                #                         and ? NOT BETWEEN bc.startdate AND bc.finaldate
                #                         AND bc.BookingStatus <> 1)
                #                        OR bc.CarID IS NULL
                #                     GROUP BY CarID) bcg ON bcg.CarID = c.CarsID
                
                  WHERE  (c.CarsCity =  c.CarsCity)
                    AND  (c.`show` = 1)
                  AND (10 = 10 or c.CarsClass =  10)
                  AND (10 = 10 or c.CarsKpp = 10)
                  AND (10 = 10 or c.CarsTypeKuzov = 10)
                  AND (10 = 10 or c.CarsPrivod = 10)");

    $Querry->bind_param('i', $_SESSION['language']);
    $Querry->execute();
    $results = GetResultArray($Querry);

    require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/translator.php');
    $translator = new translator($mysqli, $_SESSION['language']);
    $translator_button_result = $translator->translate('{card_button_buy}');
    require_once($_SERVER["DOCUMENT_ROOT"] . '/cabinet/core/link_cars_translator.php');
    $cars_href = new getCarsHref($mysqli, $_SESSION['language']);
    $full_cars_href = $cars_href->getCarsIDFullHref();

    foreach ($results as $result) {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/pages/partials/cars_page_option.html';
        if (file_exists($_file_path)) {
            $pageData = file_get_contents($_file_path);
        }
        $pageData = str_replace('{CarsFullHref}', $full_cars_href.$result['CarsID'], $pageData);
        $pageData = str_replace('{image_src}', $result['image'], $pageData);
        $pageData = str_replace('{short_title}', $result['ShortTitle'], $pageData);
        $pageData = str_replace('{CardDescryption}', $result['CardDescryption'], $pageData);
        $pageData = str_replace('{CountPersons}', $result['CountPersons'], $pageData);
        $pageData = str_replace('{EngineVolume}', $result['EngineVolume'], $pageData);
        $pageData = str_replace('{1day}', $result['1day'], $pageData);
        $pageData = str_replace('{3days}', $result['3days'], $pageData);
        $pageData = str_replace('{8days}', $result['8days'], $pageData);
        $pageData = str_replace('{31days}', $result['31days'], $pageData);
        $pageData = str_replace('{card_button_buy}', $translator_button_result, $pageData);
        $pageData2 .= $pageData;
    };
    $data['cars'] = htmlspecialchars_decode($pageData2);

//    function getCarsHref()
//    {
//        $this -> href_translator = 'a';
//    }


}


$json_object = json_encode($data);
echo $json_object;
?>