<?php

//сессия
session_start();

$data = array();
$data['status'] = 'success';

$action = '';
$BookingID = 0;

// подключиться к бд
require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/config.php');

if (!isset($_SESSION['authentication'])){
    $data['status'] = 'error';
    $data['status'] = 'Не авторизованный пользователь!';
}else{
    // проверить есть ли роль "генератор сайта"
    $LoginQuerry = $mysqli->prepare("
            SELECT gr.RoleID
                FROM Users u
                  LEFT JOIN UserGroups ug ON u.UserID = ug.UserID
                  LEFT JOIN GroupRoles gr ON ug.GroupID = gr.GroupID
                WHERE u.UserID = ?
                    AND gr.RoleID in (8,9)
                GROUP BY gr.RoleID
                LIMIT 1;
        ");
    $LoginQuerry->bind_param('i', $_SESSION['authentication']['UserID']);
    $LoginQuerry->execute();
    $result = GetResultArray($LoginQuerry);
    if (count($result)>0){

        switch ($_SERVER['REQUEST_METHOD']) {
            case 'GET':
                $action = $_GET['action'];
                if (isset($_GET['BookingID'])){
                    $BookingID =  $_GET['BookingID'];
                }
                break;
            case 'POST':
                $action = $_POST['action'];
                if (isset($_POST['BookingID'])){
                    $BookingID =  $_POST['BookingID'];
                }
                break;
        }
        $data['action'] = $action;



        if ($action == 'show_ChangeStatus'){
            // подключить класс бронирования
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/booking.php');
            $Booking = new booking($mysqli, $BookingID);

            // подключить контрол селекта
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/select.php');
            $Select = new select('BookingStatusID', $Booking->StatusList, $Booking->BookingStatusID);

            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
            $translator = new translator($mysqli, $_SESSION['language']);
            $data['FormHeader'] = $translator->translate('{ChangeStatusFormHeader}');
            $data['StatusLabel'] = $translator->translate('{Статус}');
            $data['ButtonClose'] = $translator->translate('{FormButtonClose}');
            $data['ButtonOK'] = $translator->translate('{FormButtonOK}');

            $data['StatusSelect'] = $Select->CONTENT;
        }

        if ($action == 'save_ChangeStatus'){
            // подключить класс бронирования
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/booking.php');

            if (isset($_GET['BookingID']) && isset($_GET['BookingStatusID']) ){
                $Booking = new booking($mysqli, $BookingID);
                $Booking->changeStatus($_GET['BookingStatusID']);
                $data['StatusName'] = $Booking->BookingStatusIDName;
            }else{
                $data['status'] = 'error';
                $data['message'] = 'Error: missing property;';
            }
        }


        if ($action == 'show_ChangeDateStart' || $action == 'show_ChangeDateEnd'){
            // подключить класс бронирования
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/booking.php');
            $Booking = new booking($mysqli, $BookingID);

            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
            $translator = new translator($mysqli, $_SESSION['language']);
            $data['FormHeader'] = $translator->translate('{ChangePeriodFormHeader}');
            $data['DateFromLabel'] = $translator->translate('{DateFromLabel}');
            $data['DateToLabel'] = $translator->translate('{DateToLabel}');

            $data['ButtonClose'] = $translator->translate('{FormButtonClose}');
            $data['ButtonOK'] = $translator->translate('{FormButtonOK}');
            $data['DateBooking'] = $Booking->DateBooking;
            $data['DateBookingEnd'] = $Booking->DateBookingEnd;
        }

        if ($action == 'save_ChangeDateStart' || $action == 'save_ChangeDateEnd'){
            // подключить класс бронирования
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/booking.php');

            if (isset($_GET['BookingID']) && isset($_GET['DateBooking']) && isset($_GET['DateBookingEnd']) ){
                $Booking = new booking($mysqli, $BookingID);
                $Booking->changePeriod($_GET['DateBooking'], $_GET['DateBookingEnd']);
                $data['DateBooking'] = $Booking->DateBooking;
                $data['DateBookingEnd'] = $Booking->DateBookingEnd;
            }else{
                $data['status'] = 'error';
                $data['message'] = 'Error: missing property;';
            }
        }


        if ($action == 'show_ChangeService' || $action == 'show_ChangePeopleCount' || $action == 'show_ChangeHotelID' || $action == 'show_ChangeCurrencyID' || $action == 'show_ChangeAmountCorrection' ){
            // подключить класс бронирования
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/booking.php');
            $Booking = new booking($mysqli, $BookingID);

            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
            $translator = new translator($mysqli, $_SESSION['language']);
            $data['FormHeader'] = $translator->translate('{ChangeBookingFormHeader}');
            $data['serviceLabel'] = $translator->translate('{Услуга}');
            $data['peopleCountLabel'] = $translator->translate('{Человек}');
            $data['hotelLabel'] = $translator->translate('{Отель}');
            $data['amountCurrencyLabel'] = $translator->translate('{Валюта}');
            $data['AmountCorrectionLabel'] = $translator->translate('{Корректировка}');

            // подключить контрол селекта
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/select.php');
            $serviceSelect = new select('CardIDValue', $Booking->CardList, $Booking->CardID);
            $data['serviceSelect'] = $serviceSelect->CONTENT;
            $data['PeopleCount'] = $Booking->PeopleCount;
            $data['TotalAmountCorrection'] = $Booking->TotalAmountCorrection;
            $hotelSelect = new select('HotelIDValue', $Booking->Card->HotelList, $Booking->HotelID);
            $data['hotelSelect'] = $hotelSelect->CONTENT;
            $amountCurrencySelect = new select('CurrencyIDValue', $Booking->Card->CurrencyList, $Booking->TotalAmountCurrency);
            $data['amountCurrencySelect'] = $amountCurrencySelect->CONTENT;
            $data['ButtonClose'] = $translator->translate('{FormButtonClose}');
            $data['ButtonOK'] = $translator->translate('{FormButtonOK}');
            $data['DateBooking'] = $Booking->DateBooking;
            $data['DateBookingEnd'] = $Booking->DateBookingEnd;
        }

        if ($action == 'save_ChangeService' || $action == 'save_ChangePeopleCount' || $action == 'save_ChangeHotelID' || $action == 'save_ChangeCurrencyID' || $action == 'save_ChangeAmountCorrection' ){
            // подключить класс бронирования
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/booking.php');

            if (isset($_GET['BookingID']) && isset($_GET['CardID']) && isset($_GET['PeopleCount']) && isset($_GET['HotelID']) && isset($_GET['TotalAmountCurrency']) && isset($_GET['TotalAmountCorrection']) ){
                $Booking = new booking($mysqli, $BookingID);
                $Booking->changeBooking($_GET['CardID'], $_GET['PeopleCount'], $_GET['HotelID'], $_GET['TotalAmountCurrency'], $_GET['TotalAmountCorrection']);

                $data['CardID'] = $Booking->Card->Name;
                $data['PeopleCount'] = $Booking->PeopleCount;
                $data['HotelID'] = $Booking->Card->HotelList[$Booking->HotelID]['Name'];
                $data['TotalAmountCurrency'] =  $Booking->Card->CurrencyList[$Booking->TotalAmountCurrency]['Name'] ;
                $data['TotalAmountCorrection'] = $Booking->TotalAmountCorrection;
                $data['TotalAmount'] = $Booking->TotalAmount;
                $data['BaseAmount'] = $Booking->BaseAmount;

            }else{
                $data['status'] = 'error';
                $data['message'] = 'Error: missing property;';
            }
        }


        if ($action == 'show_ChangeHotelListID' || $action == 'show_ChangeHotelRoomsCount' ){
            // подключить класс бронирования
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/booking.php');
            $Booking = new booking($mysqli, $BookingID);

            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
            $translator = new translator($mysqli, $_SESSION['language']);

            $data['FormHeader'] = $translator->translate('{ChangeHotelListFormHeader}');
            $data['hotelListLabel'] = $translator->translate('{Отель}');
            $data['hotelRoomsCountLabel'] = $translator->translate('{Номеров}');
            $data['ButtonClose'] = $translator->translate('{FormButtonClose}');
            $data['ButtonOK'] = $translator->translate('{FormButtonOK}');

            // подключить контрол селекта
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/select.php');
            $hotelListSelect = new select('HotelRoomsCountValue', $Booking->HotelList, $Booking->HotelListID);
            $data['hotelListSelect'] = $hotelListSelect->CONTENT;
            $data['HotelRoomsCount'] = $Booking->HotelRoomsCount;
        }

        if ($action == 'save_ChangeHotelListID' || $action == 'save_ChangeHotelRoomsCount' ){
            // подключить класс бронирования
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/booking.php');

            if (isset($_GET['BookingID']) && isset($_GET['HotelListID']) && isset($_GET['HotelRoomsCount'])){
                $Booking = new booking($mysqli, $BookingID);
                $Booking->changeHotelList($_GET['HotelListID'], $_GET['HotelRoomsCount']);

                $data['HotelListName'] = $Booking->HotelListName;
                $data['HotelRoomsCount'] = $Booking->HotelRoomsCount;

            }else{
                $data['status'] = 'error';
                $data['message'] = 'Error: missing property;';
            }
        }

        if ($action == 'show_ChangeOperatorNotes'){
            // подключить класс бронирования
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/booking.php');
            $Booking = new booking($mysqli, $BookingID);

            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
            $translator = new translator($mysqli, $_SESSION['language']);

            $data['FormHeader'] = $translator->translate('{ChangeOperatorNotesFormHeader}');
            $data['operatorNotesLabel'] = $translator->translate('{Особые отметки}');
            $data['ButtonClose'] = $translator->translate('{FormButtonClose}');
            $data['ButtonOK'] = $translator->translate('{FormButtonOK}');
            $data['OperatorNotes'] = $Booking->OperatorNotes;
        }

        if ($action == 'save_ChangeOperatorNotes'){
            // подключить класс бронирования
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/booking.php');

            if (isset($_GET['BookingID']) && isset($_GET['OperatorNotes'])){
                $Booking = new booking($mysqli, $BookingID);
                $Booking->changeOperatorNotes($_GET['OperatorNotes']);
                $data['OperatorNotes'] = $Booking->OperatorNotes;
            }else{
                $data['status'] = 'error';
                $data['message'] = 'Error: missing property;';
            }
        }

        if ($action == 'show_ChangePassportSurName' || $action == 'show_ChangePassportName' || $action == 'show_ChangePassportMiddleName'
            || $action == 'show_ChangePassportSerial' || $action == 'show_ChangePassportIssuedBy' || $action == 'show_ChangePassportIssuedDate'){
            // подключить класс бронирования
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/booking.php');
            $Booking = new booking($mysqli, $BookingID);
            //переводчик
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
            $translator = new translator($mysqli, $_SESSION['language']);
            // подключить класс пользователя
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/user.php');
            $User = new user($mysqli);
            $UserData = $User->GetById($Booking->UserID);

            $data['UserData'] = $UserData;

            $data['PasportSurName'] = $UserData['PasportSurName'];
            $data['PasportName'] = $UserData['PasportName'];
            $data['PasportMiddleName'] = $UserData['PasportMiddleName'];
            $data['PasportSerial'] = $UserData['PasportSerial'];
            $data['PasportIssuedBy'] = $UserData['PasportIssuedBy'];
            $data['PasportIssuedDate'] = $Booking->getDateFromDB($UserData['PasportIssuedDate']);

            $data['FormHeader'] = $translator->translate('{ChangePassportFormHeader}');
            $data['PasportSurNameLabel'] = $translator->translate('{Фамилия}');
            $data['PasportNameLabel'] = $translator->translate('{Имя}');
            $data['PasportMiddleNameLabel'] = $translator->translate('{Отчество}');
            $data['PasportSerialLabel'] = $translator->translate('{Паспорт, серия, номер}');
            $data['PasportIssuedByLabel'] = $translator->translate('{Кем выдан}');
            $data['PasportIssuedDateLabel'] = $translator->translate('{Когда выдан}');

            $data['ButtonClose'] = $translator->translate('{FormButtonClose}');
            $data['ButtonOK'] = $translator->translate('{FormButtonOK}');
        }

        if ($action == 'save_ChangePassportSurName' || $action == 'save_ChangePassportName' || $action == 'save_ChangePassportMiddleName'
            || $action == 'save_ChangePassportSerial' || $action == 'save_ChangePassportIssuedBy' || $action == 'save_ChangePassportIssuedDate'){
            // подключить класс бронирования
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/booking.php');
            // подключить класс пользователя
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/user.php');

            if (isset($_GET['BookingID']) && isset($_GET['PasportSurName']) && isset($_GET['PasportName']) && isset($_GET['PasportMiddleName'])
                && isset($_GET['PasportSerial']) && isset($_GET['PasportIssuedBy']) && isset($_GET['PasportIssuedDate']) ){
                $Booking = new booking($mysqli, $BookingID);
                $User = new user($mysqli);
                $User->changePassport($Booking->UserID, $_GET['PasportSurName'], $_GET['PasportName'], $_GET['PasportMiddleName'], $_GET['PasportSerial'], $_GET['PasportIssuedBy'], $_GET['PasportIssuedDate']);
                $UserData = $User->GetById($Booking->UserID);

                $data['PasportSurName'] = $UserData['PasportSurName'];
                $data['PasportName'] = $UserData['PasportName'];
                $data['PasportMiddleName'] = $UserData['PasportMiddleName'];
                $data['PasportSerial'] = $UserData['PasportSerial'];
                $data['PasportIssuedBy'] = $UserData['PasportIssuedBy'];
                $data['PasportIssuedDate'] = $Booking->getDateFromDB($UserData['PasportIssuedDate']);
            }else{
                $data['status'] = 'error';
                $data['message'] = 'Error: missing property;';
            }
        }

        if ($action == 'show_SendMessage'){
            // подключить класс бронирования
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/booking.php');
            $Booking = new booking($mysqli, $BookingID);

            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
            $translator = new translator($mysqli, $_SESSION['language']);

            if (strlen($Booking->UserEmail) != 0){
                $data['FormHeader'] = $translator->translate('{SendMessageFormHeader}');
                $data['ButtonClose'] = $translator->translate('{FormButtonClose}');
                $data['ButtonOK'] = $translator->translate('{FormButtonSend}');
                $data['messageLabel'] = $translator->translate('{messageLabel}');
            } else {
                $data['status'] = 'error';
                $data['message'] = $translator->translate('{Ощибка: Email не указан}');;
            }
        }

        if ($action == 'save_SendMessage'){

            // подключить класс бронирования
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/booking.php');
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
            $translator = new translator($mysqli, $_SESSION['language']);

            if (isset($_GET['BookingID']) && isset($_GET['Message']) ){
                $Booking = new booking($mysqli, $BookingID);

                if (strlen($Booking->UserEmail) != 0){

                    $to = $Booking->UserEmail;
                    $subject = "Сообщение от оператора CoolGeorgia";

                    $message = "
                                <html>
                                    <head>
                                    </head>
                                    <body>
                                        <h1>Сообщение от оператора CoolGeorgia</h1>
                            
                                        <p>{message}</p>
                                        <br><br><br><br><br><br>
                                        <p>C уважением ваш CoolGeorgia.</p>
                                    </body>
                                </html>
                            ";
                    $message = str_replace('{message}', $_GET['Message'], $message);

                    // Always set content-type when sending HTML email
                    $headers = "MIME-Version: 1.0" . "\r\n";
                    $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
                    $headers .= 'From: <infocoolgeorgia@gmail.com>' . "\r\n";

                    $mail_output =  mail($to,$subject,$message,$headers);

                    if(!$mail_output){
                        $data['status'] = 'error';
                        $data['message'] = $translator->translate('{Ощибка: Ошибка отправки письма.}');;
                    }

                } else {
                    $data['status'] = 'error';
                    $data['message'] = $translator->translate('{Ощибка: Email не указан}');
                }

            }else{
                $data['status'] = 'error';
                $data['message'] = 'Error: missing property;';
            }
        }

        if ($action == 'show_CallBack_Edit_form'){

            // подключить класс бронирования
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/callback.php');
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
            $translator = new translator($mysqli, $_SESSION['language']);

            if (isset($_GET['CallBackID']) ){
                $callback = new call_back($mysqli, $_GET['CallBackID']);
                // подключить контрол селекта
                require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/select.php');
                $Select = new select('CallBackID', $callback->StatusList, $callback->CallBackStatusID);
                $data['CallBackSelect'] = $translator->translate($Select->CONTENT);
                $data['CallBackNotes'] = $translator->translate($callback->Notes);
                $data['FormHeader'] = $translator->translate('{CallBackEditFormHeader}');
                $data['CallBackLabel'] = $translator->translate('{CallBackStatusLabel}');
                $data['messageLabel'] = $translator->translate('{CallBackNotesLabel}');
                $data['ButtonClose'] = $translator->translate('{FormButtonClose}');
                $data['ButtonOK'] = $translator->translate('{FormButtonOK}');
            }else{
                $data['status'] = 'error';
                $data['message'] = 'Error: missing property;';
            }
        }

        if ($action == 'save_CallBack_Edit_form'){

            // подключить класс бронирования
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/callback.php');
            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
            $translator = new translator($mysqli, $_SESSION['language']);
            if (isset($_GET['CallBackID']) && isset($_GET['CallBackStatusID']) && isset($_GET['Notes'])){
                $callback = new call_back($mysqli, $_GET['CallBackID']);
                $callback->CallBackStatusID = $_GET['CallBackStatusID'];
                $callback->Notes = $_GET['Notes'];
                $callback->save();
                $data['statusName'] = $translator->translate($callback->StatusList[$callback->CallBackStatusID]['Name']);
            }else{
                $data['status'] = 'error';
                $data['message'] = 'Error: missing property;';
            }
        }


    }else{
        $data['status'] = 'error';
        $data['message'] = 'Error: Access denied;';
    }
}





$json_object = json_encode($data);
echo $json_object;
?>