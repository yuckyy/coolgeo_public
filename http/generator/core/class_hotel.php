<?php
/**
 * Created by PhpStorm.
 * User: yucky
 * Date: 15.05.2018
 * Time: 20:24
 */


Class hotel_page
{
    var $AlbumData = Array();
    var $Lang = 'ru';
    var $DefaultLang = 'ru';

    // -- Темплеты --
    var $templete_main_page_album = '';
    var $templete_main_page_album_card = '';
    var $templete_main_page_album_button_more = '';

    var $CONTENT = '';

    //конструктор
    function hotel_page($AlbumData, $Lang, $DefaultLang)
    {
        $this -> Lang = $Lang;
        $this -> DefaultLang = $DefaultLang;
        // записать данные для создания меню
        $this -> AlbumData = $AlbumData;

        // Прочитать шаблоны
        $this -> Get_templete_main_page_album();
        $this -> Get_templete_main_page_album_button_more();
        $this -> Get_templete_main_page_album_card();

        //Преобразователь ссылки для языка
        $LinkLangCorrector = '';
        if ($this -> DefaultLang != $this -> Lang){
            $LinkLangCorrector = '/'.$this -> Lang;
        }

        $temp_album = '';
        $temp_card = '';

        $abmum_cards = '';
        $abmums = '';

        foreach ($this -> AlbumData as $album_data){
            $temp_album = $this -> templete_main_page_album;

            // подставить заголовок и описание альбома
            $temp_album = str_replace('{album_caption}', $album_data['AlbumCaption'][$Lang] , $temp_album);
            $temp_album = str_replace('{album_caption_descryption}', $album_data['AlbumDescryption'][$Lang] , $temp_album);

            if ($album_data['AllowButtonMore']){
                $temp_album = str_replace('{button_more}', $this -> templete_main_page_album_button_more , $temp_album);
                $temp_album = str_replace('{album_button_more_value}', $album_data['AlbumButtonMoreValue'][$Lang] , $temp_album);
                $temp_album = str_replace('{album_button_more_href}', $LinkLangCorrector.$album_data['AlbumButtonMoreHref'][$Lang] , $temp_album);
            }else{
                $temp_album = str_replace('{button_more}', '' , $temp_album);
            }


            // сформировать карточки альбома
            $abmum_cards = '';
            foreach ($album_data['Cards'] as $card_data){
                $temp_card = $this -> templete_main_page_album_card;

                //подставить данные карточек
                $temp_card = str_replace('{image_src}', $card_data['ImagaSrc'], $temp_card);
                $temp_card = str_replace('{image_title}', $card_data['ImageAlt'][$Lang], $temp_card);
                $temp_card = str_replace('{image_alt}', 'http://coolgeorgia.com '.$card_data['ImageAlt'][$Lang], $temp_card);

                $temp_card = str_replace('{card_descryption}', $card_data['CardDescryption'][$Lang], $temp_card);
                $temp_card = str_replace('{button_details}', $card_data['ButtonDetails'][$Lang], $temp_card);
                $temp_card = str_replace('{button_buy}', $card_data['ButtonBuy'][$Lang], $temp_card);
                $temp_card = str_replace('{card_details_short}', $card_data['CardDetailsShort'][$Lang], $temp_card);
                $temp_card = str_replace('{card_details_short_price}', $card_data['CardDetailsShortPrice'][$Lang], $temp_card);


                $temp_card = str_replace('{button_details_href}', $LinkLangCorrector.$card_data['ButtonDetailsHref'], $temp_card);
                $temp_card = str_replace('{button_more_href}', $LinkLangCorrector.$card_data['ButtonBuyHref'], $temp_card);

                $path = $card_data['ButtonDetailsHref'];
                $filename = substr(strrchr($path, "/"), 1);
                $filename = str_replace('.html', '', $filename);

                $temp_card = str_replace('{cartpage}', $filename, $temp_card);
                $temp_card = str_replace('{langpage}', $this -> Lang, $temp_card);



                $abmum_cards .= $temp_card;
            }

            $temp_album = str_replace('{album_cards}', $abmum_cards , $temp_album);

            $abmums .= $temp_album;
        }

        $this -> CONTENT = $abmums;
    }

    // методы чтения шаблонов
    private function Get_templete_main_page_album(){
        $_file_path = 'templete/main_page_album.html';
        if (file_exists($_file_path))
        {
            $this -> templete_main_page_album = file_get_contents($_file_path);
        }
    }
    private function Get_templete_main_page_album_card(){
        $_file_path = 'templete/main_page_album_card.html';
        if (file_exists($_file_path))
        {
            $this -> templete_main_page_album_card = file_get_contents($_file_path);
        }
    }

    private function Get_templete_main_page_album_button_more(){
        $_file_path = 'templete/main_page_album_button_more.html';
        if (file_exists($_file_path))
        {
            $this -> templete_main_page_album_button_more = file_get_contents($_file_path);
        }
    }

}





?>