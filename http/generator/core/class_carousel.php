<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 15.05.2018
 * Time: 20:24
 */


Class carousel
{
    var $CarouselData = Array();
    var $Lang = 'ru';
    // -- Темплеты --
    var $templete_main_page_carousel = '';
    var $templete_main_page_carousel_item = '';
    var $templete_main_page_carousel_slide = '';

    var $CONTENT = '';

    //конструктор
    function carousel($CarouselData, $Lang)
    {
        // записать данные для создания меню
        $this -> CarouselData = $CarouselData;

        // Прочитать шаблоны
        $this -> Get_templete_main_page_carousel();
        $this -> Get_templete_main_page_carousel_item();
        $this -> Get_templete_main_page_carousel_slide();

        // подставить названия кнопок
        $this -> templete_main_page_carousel = str_replace('{carousel_previous_button}', $CarouselData['PreviousButton'][$Lang] , $this -> templete_main_page_carousel);
        $this -> templete_main_page_carousel = str_replace('{carousel_next_button}', $CarouselData['NextButton'][$Lang] , $this -> templete_main_page_carousel);

        // наборные списки
        $carousel_sliders = '';
        $carousel_items = '';
        $temp_slide = '';
        $temp_item = '';
        $i = 0;

        foreach ($CarouselData['Items'] as $CaroseilItem){

            $temp_slide = $this -> templete_main_page_carousel_slide;
            $temp_item = $this -> templete_main_page_carousel_item;

            // заполнить слайд
            $temp_slide = str_replace('{slide_number}', $i, $temp_slide);
            if ($i == 0){$temp_slide = str_replace('{active}', 'active', $temp_slide);}
            if ($i != 0){$temp_slide = str_replace('{active}', '', $temp_slide);}

            // заполнить итем
            $temp_item = str_replace('{item_caption}', $CaroseilItem['ItemCaption'][$Lang], $temp_item);
            $temp_item = str_replace('{item_descryption}', $CaroseilItem['ItemDescryption'][$Lang], $temp_item);
            $temp_item = str_replace('{image_src}', $CaroseilItem['ImageSrc'], $temp_item);
            $temp_item = str_replace('{image_alt}', $CaroseilItem['ImageAlt'][$Lang], $temp_item);
            if ($i == 0){$temp_item = str_replace('{active}', 'active', $temp_item);}
            if ($i != 0){$temp_item = str_replace('{active}', '', $temp_item);}



            $carousel_sliders .= $temp_slide;
            $carousel_items .= $temp_item;

            $i++;
        }

        // подставить слайды в карусель
        $this -> templete_main_page_carousel = str_replace('{main_page_carousel_slides}', $carousel_sliders ,$this -> templete_main_page_carousel);
        // подставить итемы в карусель
        $this -> templete_main_page_carousel = str_replace('{main_page_carousel_items}', $carousel_items ,$this -> templete_main_page_carousel);


        $this -> CONTENT = $this -> templete_main_page_carousel;
    }



    // методы чтения шаблонов
    private function Get_templete_main_page_carousel(){
        $_file_path = 'templete/main_page_carousel.html';
        if (file_exists($_file_path))
        {
            $this -> templete_main_page_carousel = file_get_contents($_file_path);
        }
    }
    private function Get_templete_main_page_carousel_item(){
        $_file_path = 'templete/main_page_carousel_item.html';
        if (file_exists($_file_path))
        {
            $this -> templete_main_page_carousel_item = file_get_contents($_file_path);
        }
    }
    private function Get_templete_main_page_carousel_slide(){
        $_file_path = 'templete/main_page_carousel_slide.html';
        if (file_exists($_file_path))
        {
            $this -> templete_main_page_carousel_slide = file_get_contents($_file_path);
        }
    }

}





?>