<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 15.05.2018
 * Time: 20:24
 */


Class album
{
    var $mysqli;
    var $PageID;
    var $AlbumData = Array();
    var $Lang = 'ru';
    var $DefaultLang = 'ru';

    // -- Темплеты --
    var $templete_main_page_album = '';
    var $templete_main_page_album_card = '';
    var $templete_main_page_album_button_more = '';

    var $CONTENT = '';

    //конструктор
    function album($mysqli, $PageID, $Lang)
    {
        $this -> mysqli = $mysqli;
        $this -> PageID = $PageID;
        $this -> Lang = $Lang;
        $this -> DefaultLang = $_SESSION['default_language'];
        // записать данные для создания меню
        //$this -> AlbumData = $AlbumData;

        // Прочитать шаблоны
        $this -> Get_templete_main_page_album();
        $this -> Get_templete_main_page_album_button_more();
        $this -> Get_templete_main_page_album_card();

        //Преобразователь ссылки для языка
        $LinkLangCorrector = '';
        if ($this -> DefaultLang != $this -> Lang){
            $Querry = $this->mysqli->prepare("
                    SELECT ll.Lang
                        FROM LangList ll
                        WHERE ll.LangID = ?
                ");
            $Querry->bind_param('i', $this -> Lang);
            $Querry->execute();
            $result = GetResultArray($Querry);
            $LinkLangCorrector = $result[0]['Lang'].'/';
        }

        $temp_album = '';
        $temp_card = '';

        $abmum_cards = '';
        $abmums = '';

        // получить альбомы из бд
        $Querry = $this->mysqli->prepare("
                SELECT pa.AlbumID, pa.RowOrder, pa.AllowButtonMore, pad.LangID, pad.AlbumCaption, pad.AlbumDescryption, pad.AlbumButtonMoreValue, pp.FileName AS 'MoreFileName'
                    FROM PageAlbum pa
                      LEFT JOIN PageAlbumData pad ON pa.AlbumID = pad.AlbumID AND pad.LangID = ?
                      LEFT JOIN Page pp ON pa.ButtonMorePageID = pp.PageID
                    WHERE pa.PageID = ?
                    ORDER BY pa.RowOrder;
            ");
        $Querry->bind_param('ii', $this -> Lang, $this->PageID);
        $Querry->execute();
        $this -> AlbumData = GetResultArray($Querry);

        //

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
            $LangList[$lang['LangID']] = $lang['Lang'];
        }

        foreach ($this -> AlbumData as $album_data){
            $temp_album = $this -> templete_main_page_album;

            // подставить заголовок и описание альбома
            $temp_album = str_replace('{album_caption}', $album_data['AlbumCaption'] , $temp_album);
            $temp_album = str_replace('{album_caption_descryption}', $album_data['AlbumDescryption'] , $temp_album);

            if(strlen(trim($album_data['MoreFileName'])) != 0){
                $linkHref = '/'.$LinkLangCorrector.'page/'.$album_data['MoreFileName'];
            } else {
                $linkHref = '/'.$LinkLangCorrector.$album_data['MoreFileName'];
            }

            if ($album_data['AllowButtonMore']){
                $temp_album = str_replace('{button_more}', $this -> templete_main_page_album_button_more , $temp_album);
                $temp_album = str_replace('{album_button_more_value}', $album_data['AlbumButtonMoreValue'] , $temp_album);
                $temp_album = str_replace('{album_button_more_href}', $linkHref , $temp_album);
            }else{
                $temp_album = str_replace('{button_more}', '' , $temp_album);
            }

            // получить альбомы из бд
            $Querry = $this->mysqli->prepare("
                    SELECT pac.CardID, pac.RowOrder, cs.ImagaSrc, cs.ImageAlt, cs.CardDescryption, cs.ButtonDetails, cs.ButtonBuy, cs.CardDetailsShort, 
                            cs.Coast as 'CardDetailsShortPrice', p.FileName
                        FROM PageAlbumCard pac
                          INNER JOIN Card c ON pac.CardID = c.CardID
                          INNER JOIN CardSettings cs ON c.CardID = cs.CardID AND cs.LangID = ?
                          INNER JOIN Page p ON c.PageID = p.PageID
                        WHERE pac.AlbumID = ?
                        ORDER BY pac.RowOrder;
                ");
            $Querry->bind_param('ii', $this -> Lang, $album_data['AlbumID']);
            $Querry->execute();
            $album_data['Cards'] = GetResultArray($Querry);

            require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/admin/card.php');


            // сформировать карточки альбома
            $abmum_cards = '';
//            var_dump($album_data['Cards']);
            if($album_data['Cards'] !== NULL){
                foreach ($album_data['Cards'] as $card_data){
                    $temp_card = $this -> templete_main_page_album_card;

                    //подставить данные карточек
                    $temp_card = str_replace('{image_src}', $card_data['ImagaSrc'], $temp_card);
                    $temp_card = str_replace('{image_title}', $card_data['ImageAlt'], $temp_card);
                    $temp_card = str_replace('{image_alt}', 'http://coolgeorgia.com '.$card_data['ImageAlt'], $temp_card);

                    $temp_card = str_replace('{card_descryption}', $card_data['CardDescryption'], $temp_card);
                    $temp_card = str_replace('{button_details}', $card_data['ButtonDetails'], $temp_card);
                    $temp_card = str_replace('{button_buy}', $card_data['ButtonBuy'], $temp_card);
                    $temp_card = str_replace('{card_details_short}', $card_data['CardDetailsShort'], $temp_card);

                    $card = new card($this->mysqli, $card_data['CardID']);
                    $BookingFormData=array();
                    $base_cost = $card->getBaseAmount($BookingFormData);
                    $temp_card = str_replace('{card_details_short_price}', $base_cost['BookingCost'].' '.$base_cost['BookingCurrencyName'], $temp_card);


                    $hreforderpage = "/cabinet/page/order.php?CardID=".$card_data['CardID'];
                    $temp_card = str_replace('{hreforderpage}', $hreforderpage, $temp_card );

                    if(strlen(trim($card_data['FileName'])) != 0){
                        $linkHref = '/'.$LinkLangCorrector.'page/'.$card_data['FileName'];
                    } else {
                        $linkHref = '/'.$LinkLangCorrector.$card_data['FileName'];
                    }

                    $temp_card = str_replace('{button_details_href}', $linkHref, $temp_card);
                    $temp_card = str_replace('{button_more_href}', '', $temp_card);

                    $filename = str_replace('.html', '', $card_data['FileName']);
                    $temp_card = str_replace('{cartpage}', $filename, $temp_card);
                    $temp_card = str_replace('{langpage}', $LangList[$this -> Lang], $temp_card);
                    $temp_card = str_replace('{CardID}', $card_data['CardID'], $temp_card);

                    $abmum_cards .= $temp_card;
                }
                $temp_album = str_replace('{album_cards}', $abmum_cards , $temp_album);
                $abmums .= $temp_album;
            }else if ($album_data !== NULL){
                foreach ($album_data as $card_data){
                    $temp_card = $this -> templete_main_page_album_card;

                    //подставить данные карточек
                    $temp_card = str_replace('{image_src}', $card_data['ImagaSrc'], $temp_card);
                    $temp_card = str_replace('{image_title}', $card_data['ImageAlt'], $temp_card);
                    $temp_card = str_replace('{image_alt}', 'http://coolgeorgia.com '.$card_data['ImageAlt'], $temp_card);

                    $temp_card = str_replace('{card_descryption}', $card_data['CardDescryption'], $temp_card);
                    $temp_card = str_replace('{button_details}', $card_data['ButtonDetails'], $temp_card);
                    $temp_card = str_replace('{button_buy}', $card_data['ButtonBuy'], $temp_card);
                    $temp_card = str_replace('{card_details_short}', $card_data['CardDetailsShort'], $temp_card);

                    $card = new card($this->mysqli, $card_data['CardID']);
                    $BookingFormData=array();
                    $base_cost = $card->getBaseAmount($BookingFormData);
                    $temp_card = str_replace('{card_details_short_price}', $base_cost['BookingCost'].' '.$base_cost['BookingCurrencyName'], $temp_card);


                    $hreforderpage = "/cabinet/page/order.php?CardID=".$card_data['CardID'];
                    $temp_card = str_replace('{hreforderpage}', $hreforderpage, $temp_card );

                    if(strlen(trim($card_data['FileName'])) != 0){
                        $linkHref = '/'.$LinkLangCorrector.'page/'.$card_data['FileName'];
                    } else {
                        $linkHref = '/'.$LinkLangCorrector.$card_data['FileName'];
                    }

                    $temp_card = str_replace('{button_details_href}', $linkHref, $temp_card);
                    $temp_card = str_replace('{button_more_href}', '', $temp_card);

                    $filename = str_replace('.html', '', $card_data['FileName']);
                    $temp_card = str_replace('{cartpage}', $filename, $temp_card);
                    $temp_card = str_replace('{langpage}', $LangList[$this -> Lang], $temp_card);
                    $temp_card = str_replace('{CardID}', $card_data['CardID'], $temp_card);

                    $abmum_cards .= $temp_card;
                }
                $temp_album = str_replace('{album_cards}', $abmum_cards , $temp_album);
                $abmums .= $temp_album;
            }

        }

        require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
        $translator = new translator($mysqli, $this -> Lang);

        $this -> CONTENT = $translator->translate($abmums);

    }

    // методы чтения шаблонов
    private function Get_templete_main_page_album(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/pages/main_page_album.html';
        if (file_exists($_file_path))
        {
            $this -> templete_main_page_album = file_get_contents($_file_path);
        }
    }
    private function Get_templete_main_page_album_card(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/pages/main_page_album_card.html';
        if (file_exists($_file_path))
        {
            $this -> templete_main_page_album_card = file_get_contents($_file_path);
        }
    }

    private function Get_templete_main_page_album_button_more(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/pages/main_page_album_button_more.html';
        if (file_exists($_file_path))
        {
            $this -> templete_main_page_album_button_more = file_get_contents($_file_path);
        }
    }

}

?>