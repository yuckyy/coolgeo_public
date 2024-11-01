<?php

header('Content-Type: text/html; charset=UTF-8');
// подключиться к бд
require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/config.php');


$dir = $_SERVER["DOCUMENT_ROOT"].'/generator/settings/cards';
$files = scandir($dir);

// получить список языков
$Querry = $mysqli->prepare("
                SELECT ll.Lang, ll.LangID
                    FROM LangList ll
                    ORDER BY ll.RowOrder
            ");
$Querry->execute();
$result = GetResultArray($Querry);
$LangList = array();
foreach ($result as $lang){
    $LangList[$lang['Lang']] = $lang['LangID'];
}

/*
echo '<pre>';
print_r($LangList);
echo '</pre>';
*/

$Card = Array();
$CardOptionsList = Array();
$CardOptionsData = Array();
$CardSettings = Array();
$PagePrimaryTitle = Array();

$OptionID = 0;

foreach ($files as $file){
    if (strpos($file, '.php')){
        $CardData = Array();
        require_once ($_SERVER["DOCUMENT_ROOT"].'/generator/settings/cards/'.$file);

        $html_file = str_replace('.php', '.html', $file);
        // получить альбомы из бд
        $Querry = $mysqli->prepare("
            SELECT c.CardID, p.PageID, p.FileName
              FROM Card c
                  INNER JOIN Page p ON c.PageID = p.PageID
                WHERE p.FileName = ?
            ");
        $Querry->bind_param('s', $html_file);
        $Querry->execute();
        $result = GetResultArray($Querry);
        if (isset($result[0])){

            $CardID = $result[0]['CardID'];
            $PageID = $result[0]['PageID'];

            $Card[$CardID]['CardID'] = $CardID;
            $Card[$CardID]['PageID'] = $PageID;
            $Card[$CardID]['Name'] = $CardData['PrimaryTitle']['ru'];
            $Card[$CardID]['ShowAdditionalLinks'] = $CardData['ShowAdditionalLinks'];
            $Card[$CardID]['AdditionalLinksType'] = $CardData['AdditionalLinksType'];
            $Card[$CardID]['CardImageSrc'] = $CardData['Options'][0]['ImageSrc'];

            $RowOrder = 0;
            foreach ($CardData['Options'] as $option){
                $OptionID++;
                $RowOrder++;

                $temp_OptionsList = array();
                $temp_OptionsList['OptionID'] = $OptionID;
                $temp_OptionsList['CardID'] = $CardID;
                $temp_OptionsList['RowOrder'] = $RowOrder;
                array_push($CardOptionsList, $temp_OptionsList);

                foreach ($LangList as $Lang => $LangID){
                    $temp_OptionsData = array();
                    $temp_OptionsData['OptionID'] = $OptionID;
                    $temp_OptionsData['LangID'] = $LangID;
                    $temp_OptionsData['ImageSrc'] = $option['ImageSrc'];
                    if (isset($option['ImageAlt'][$Lang])){
                        $temp_OptionsData['ImageAlt'] = $option['ImageAlt'][$Lang];
                    }
                    $temp_OptionsData['Title'] = $option['Title'][$Lang];
                    $temp_OptionsData['Descryption'] = $option['Descryption'][$Lang];
                    array_push($CardOptionsData, $temp_OptionsData);
                }
            }

            foreach ($LangList as $Lang => $LangID){
                $temp_CardSettings = array();
                $temp_CardSettings['CardID'] = $CardID;
                $temp_CardSettings['LangID'] = $LangID;
                $temp_CardSettings['PrimaryTitle'] = $CardData['PrimaryTitle'][$Lang];
                $temp_CardSettings['ShortTitle'] = '';
                $temp_CardSettings['PrimaryTitleDescryption'] = $CardData['PrimaryTitleDescryption'][$Lang];
                $temp_CardSettings['RouteTitle'] = $CardData['RouteTitle'][$Lang];
                $temp_CardSettings['RouteText'] = $CardData['RouteText'][$Lang];;
                $temp_CardSettings['CardDescryption'] = '';
                $temp_CardSettings['CardButtonDetails'] = '';
                $temp_CardSettings['CardButtonBuy'] = '';
                $temp_CardSettings['CardDetailsShort'] = '';
                $temp_CardSettings['CardDetailsShortPriceID'] = '';
                $temp_CardSettings['CardImageSrc'] = '';
                $temp_CardSettings['CardImageAlt'] = '';
                array_push($CardSettings, $temp_CardSettings);

                $temp_PagePrimaryTitle['PageID'] = $PageID;
                $temp_PagePrimaryTitle['LangID'] = $LangID;
                $temp_PagePrimaryTitle['PrimaryTitle'] = $CardData['PrimaryTitle'][$Lang];
                $temp_PagePrimaryTitle['PrimaryTitleDescryption'] = $CardData['PrimaryTitleDescryption'][$Lang];
                $temp_PagePrimaryTitle['page_templete_title'] = $CardData['page_templete_title'][$Lang];
                $temp_PagePrimaryTitle['page_templete_description'] = $CardData['page_templete_description'][$Lang];
                $temp_PagePrimaryTitle['page_templete_keywords'] = $CardData['page_templete_keywords'][$Lang];
                array_push($PagePrimaryTitle, $temp_PagePrimaryTitle);
            }

        }
    }
}


// пройтись по $CardOptionsList
$Querry = $mysqli->prepare("
                UPDATE Card SET 
                    ShowAdditionalLinks = ?,
                    AdditionalLinksType = ?, 
                    CardImageSrc = ?
                  WHERE CardID = ? 
            ");
foreach ($Card as $C){
    $Querry->bind_param('sssi',$C['ShowAdditionalLinks'], $C['AdditionalLinksType'], $C['CardImageSrc'], $C['CardID'] );
    $Querry->execute();
}


/*
    $Card[$CardID]['ShowAdditionalLinks'] = $CardData['ShowAdditionalLinks'];
    $Card[$CardID]['AdditionalLinksType'] = $CardData['AdditionalLinksType'];
    $Card[$CardID]['CardImageSrc'] = $CardData['Options'][0]['ImageSrc'];
*/

/*
// очистить таблицы
$Querry = $mysqli->prepare("
                  DELETE FROM CardSettings;
            ");
$Querry->execute();
$Querry = $mysqli->prepare("
                  DELETE FROM CardOptionsData;
            ");
$Querry->execute();
$Querry = $mysqli->prepare("
                  DELETE FROM CardOptionsList;
            ");
$Querry->execute();
$Querry = $mysqli->prepare("
                  DELETE ppt 
                        FROM PagePrimaryTitle ppt
                          INNER JOIN Page p ON ppt.PageID = p.PageID AND p.PageTypeID = 3
            ");
$Querry->execute();

// пройтись по $CardOptionsList
$Querry = $mysqli->prepare("
                  insert into CardOptionsList (OptionID, CardID, RowOrder)
                      values (?, ?, ?) 
            ");
foreach ($CardOptionsList as $CardOption){
    $Querry->bind_param('iii',$CardOption['OptionID'], $CardOption['CardID'], $CardOption['RowOrder'] );
    $Querry->execute();
}

// пройтись по $CardOptionsList
$Querry = $mysqli->prepare("
                  insert into CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption)
                      values (?, ?, ?, ?, ?, ?) 
            ");
foreach ($CardOptionsData as $CardOptionData){
    $Querry->bind_param('iissss',$CardOptionData['OptionID'], $CardOptionData['LangID'], $CardOptionData['ImageSrc'], $CardOptionData['ImageAlt'], $CardOptionData['Title'], $CardOptionData['Descryption'] );
    $Querry->execute();
}

// пройтись по $CardSettings
$Querry = $mysqli->prepare("
                  insert into CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, 
                                            CardButtonDetails, CardButtonBuy, CardDetailsShort, CardDetailsShortPriceID, CardImageSrc, CardImageAlt)
                      values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) 
            ");
foreach ($CardSettings as $CardSetting){
    $Querry->bind_param('iissssssssss',
        $CardSetting['CardID'], $CardSetting['LangID'],$CardSetting['ShortTitle'],
            $CardSetting['RouteTitle'],$CardSetting['RouteText'],$CardSetting['CardDescryption'],
        $CardSetting['CardButtonDetails'], $CardSetting['CardButtonBuy'],$CardSetting['CardDetailsShort'],$CardSetting['CardDetailsShortPriceID'],
        $CardSetting['CardImageSrc'], $CardSetting['CardImageAlt']
    );
    $Querry->execute();
}

// пройтись по $PagePrimaryTitle
$Querry = $mysqli->prepare("
                 insert into PagePrimaryTitle (PageID, LangID, PrimaryTitle, PrimaryTitleDescryption, page_templete_title, page_templete_description, page_templete_keywords)
                  values (?, ?, ?, ?, ?, ?, ?) 
            ");
foreach ($PagePrimaryTitle as $PT){
    $Querry->bind_param('iisssss',$PT['PageID'], $PT['LangID'], $PT['PrimaryTitle'], $PT['PrimaryTitleDescryption'], $PT['page_templete_title'], $PT['page_templete_description'], $PT['page_templete_keywords']);
    $Querry->execute();
}

*/


/*
echo '<pre>';
print_r($CardOptionsList);
print_r($CardOptionsData);
print_r($CardSettings);
print_r($PagePrimaryTitle);
echo '</pre>';
*/
?>