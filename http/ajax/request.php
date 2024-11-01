<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 02.06.2018
 * Time: 14:55
 */

session_start();
header("http/1.0 200 Ok");
ini_set('default_charset', 'UTF-8');
error_reporting(E_ALL);


include $_SERVER["DOCUMENT_ROOT"].'/generator/settings/buyit_form_data.php';


$data = Array();
$data['status'] = 'success';

$FilePath = $_SERVER["DOCUMENT_ROOT"].'/generator/settings/cards/'.$_GET['card_name'].'.php';



If (file_exists($FilePath)){
    include $FilePath;

    $data['ButtonBuyValue'] = $BuyItFormData['ButtonBuyValue'][$_GET['lang']];
    $data['ButtonCancelValue'] = $BuyItFormData['ButtonCancelValue'][$_GET['lang']];
    $data['FormTitle'] = $CardData['PrimaryTitle'][$_GET['lang']];
    $data['LabelEventsDate'] = $BuyItFormData['LabelEventsDate'][$_GET['lang']];
    $data['LabelEnotherDate'] = $BuyItFormData['LabelEnotherDate'][$_GET['lang']];
    $data['LabelPlanedDate'] = $BuyItFormData['LabelPlanedDate'][$_GET['lang']];
    $data['DatePinkerLocalisation'] = $BuyItFormData['DatePinkerLocalisation'][$_GET['lang']];
    $data['LabelPlanedDate'] = $BuyItFormData['LabelPlanedDate'][$_GET['lang']];
    $data['LabelPeopleCount'] = $BuyItFormData['LabelPeopleCount'][$_GET['lang']];
    $data['LabelPhone'] = $BuyItFormData['LabelPhone'][$_GET['lang']];
    $data['LabelEmail'] = $BuyItFormData['LabelEmail'][$_GET['lang']];
    $data['LabelPhoneOrEmail'] = $BuyItFormData['LabelPhoneOrEmail'][$_GET['lang']];
    $data['LabelPricePerOnePerson'] = $BuyItFormData['LabelPricePerOnePerson'][$_GET['lang']];
    $data['LabelTotalPrice'] = $BuyItFormData['LabelTotalPrice'][$_GET['lang']];


    If (isset($CardData['EventsSettings']['EventsPricePerPerson'])) {
        If (count($CardData['EventsSettings']['EventsPricePerPerson']) > 0) {

            // цены
            $i = 0;
            foreach ($CardData['EventsSettings']['EventsPricePerPerson'] as $PriceData) {
                $i++;
                $data['EventsPricePerPerson'][$i]['Price'] = $PriceData['Price'];
                $data['EventsPricePerPerson'][$i]['Currency'] = $PriceData['Currency'][$_GET['lang']];
                $name = $PriceData['Name'][$_GET['lang']];
                $name = str_replace('{Price}', $PriceData['Price'], $name);
                $name = str_replace('{Currency}', $PriceData['Currency'][$_GET['lang']], $name);
                $data['EventsPricePerPerson'][$i]['Name'] = $name;
            }
        }
        Else{
            $data['EventsPricePerPerson'] = Array();
        }
    }
    Else{
        $data['EventsPricePerPerson'] = Array();
    }

    If (isset($CardData['EventsSettings']['EventsDate'])){
        If (count($CardData['EventsSettings']['EventsDate']) > 0){

            $i = 0;
            $data['EventsDate'] = Array();
            foreach ($CardData['EventsSettings']['EventsDate'] as $EventDate){
                if ( strtotime(date( "d.m.Y", strtotime( $EventDate ) )) >= strtotime(date( "d.m.Y")) && $i < 3)
                {
                    $i++;
                    $data['EventsDate'][$i] = $EventDate;
                }
            }

            /*
            If ( count($data['EventsDate'] ) == 0){
                $data['status'] = 'error';
                $data['message'] = $BuyItFormData['ErrorNoEventDate'][$_GET['lang']];
            }
            */
        }
        Else{
            $data['EventsDate'] = Array();
        }
    }
    Else{
        $data['EventsDate'] = Array();
    }


}
Else{
    $data['status'] = 'error';
    $data['message'] = $BuyItFormData['ErrorNoCardExists'][$_GET['lang']];
}

$json_object = json_encode($data);
echo $json_object;

?>