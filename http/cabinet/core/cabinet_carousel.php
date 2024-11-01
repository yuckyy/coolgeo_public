<?php
Class cabinet_carousel
{
    var $Data;
    var $LinkLangCorrector;
    var $CarouselID;

    // -- Темплеты --
    var $templete_cabinet_carousel = '';
    var $templete_cabinet_carousel_indicator = '';
    var $templete_cabinet_carousel_item = '';
    var $CONTENT = Array();

    //конструктор
    function cabinet_carousel($Data, $LinkLangCorrector, $CarouselID)
    {
        $this -> Data = $Data;
        $this -> LinkLangCorrector = $LinkLangCorrector;
        $this->CarouselID = $CarouselID;
        $this -> generate();
    }

    function generate()
    {
        // Прочитать шаблон главной страницы
        $this -> GetCabinetCarouselTemplete();
        $this -> GetCabinetCarouselIndicatorTemplete();
        $this -> GetCabinetCarouselItemTemplete();

        $index = 0;
        $indicators = '';
        $items = '';
        $active = 'active';
        foreach ($this -> Data as $item){
            if ($index > 0 ){
                $active = '';
            }
            $temp_indicator = $this->templete_cabinet_carousel_indicator;
            $temp_indicator = str_replace('{index}', $index, $temp_indicator);
            $temp_indicator = str_replace('{active}', $active, $temp_indicator);
            $indicators .= $temp_indicator;

            $temp_item = $this->templete_cabinet_carousel_item;
            $temp_item = str_replace('{active}', $active, $temp_item);
            $temp_item = str_replace('{image_src}', $item['CardImageSrc'], $temp_item);
            $temp_item = str_replace('{image_alt}', $item['PrimaryTitle'], $temp_item);
            $temp_item = str_replace('{title}', $item['PrimaryTitle'], $temp_item);
            $details_href = '/'.$this -> LinkLangCorrector.'page/'.$item['FileName'];
            $temp_item = str_replace('{item_href}', $details_href, $temp_item);
            $items .= $temp_item;
            $index++;

        }

        $carousel = $this->templete_cabinet_carousel;
        $carousel = str_replace('{indicators}', $indicators, $carousel);
        $carousel = str_replace('{items}', $items, $carousel);
        $carousel = str_replace('{CarouselID}', $this->CarouselID, $carousel);


        // записать в контент
        $this -> CONTENT = $carousel;
    }

    // методы чтения шаблонов
    private function GetCabinetCarouselTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/cabinet_carousel.html';
        if (file_exists($_file_path))
        {
            $this -> templete_cabinet_carousel = file_get_contents($_file_path);
        }
    }
    private function GetCabinetCarouselIndicatorTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/cabinet_carousel_indicator.html';
        if (file_exists($_file_path))
        {
            $this -> templete_cabinet_carousel_indicator = file_get_contents($_file_path);
        }
    }
    private function GetCabinetCarouselItemTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/cabinet_carousel_item.html';
        if (file_exists($_file_path))
        {
            $this -> templete_cabinet_carousel_item = file_get_contents($_file_path);
        }
    }

}
?>