<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 15.05.2018
 * Time: 20:24
 */


Class top_menu
{
    var $MenuData = Array();
    var $Lang = 'ru';
    var $DefaultLang = 'ru';
    // -- Темплеты --
    var $templete_top_navigation_menu = '';
    var $templete_top_navigation_menu_link = '';
    var $templete_top_navigation_menu_popup = '';
    var $templete_top_navigation_menu_popup_link = '';


    var $CONTENT = '';

    //конструктор
    function top_menu($MenuData, $Lang, $ActiveItem, $DefaultLang)
    {
        $this -> Lang = $Lang;
        $this -> DefaultLang = $DefaultLang;

        //Преобразователь ссылки для языка
        $LinkLangCorrector = '';
        if ($this -> DefaultLang != $this -> Lang){
            $LinkLangCorrector = '/'.$this -> Lang;
        }

        // записать данные для создания меню
        $this -> MenuData = $MenuData;

        // Прочитать шаблоны
        $this -> Get_templete_top_navigation_menu();
        $this -> Get_templete_top_navigation_menu_link();
        $this -> Get_templete_top_navigation_menu_popup();
        $this -> Get_templete_top_navigation_menu_popup_link();

        // подставить название в меню
        $this -> templete_top_navigation_menu = str_replace('{menu_caption}', $MenuData['MenuCaption'] ,$this -> templete_top_navigation_menu);

        //echo $this -> templete_top_navigation_menu;

        $TopMenuOptions = '';
        $Temp_TopMenuOption = '';

        $PopupMenuOptions = '';
        $Temp_PopupMenuOption = '';

        $active = '';
        $i = 0;

        foreach ($MenuData['Options'] as $rowdata){

            $Temp_TopMenuOption = '';
            $i++;
            if ($i == $ActiveItem){$active = ' active ';} else {$active = '';};

            if ($rowdata['Type'] == 'link'){
                $Temp_TopMenuOption = $this -> templete_top_navigation_menu_link;
                $Temp_TopMenuOption = str_replace('{link_caption}', $rowdata['value'][$Lang] , $Temp_TopMenuOption);
                $Temp_TopMenuOption = str_replace('{link_href}', $LinkLangCorrector.$rowdata['href'] , $Temp_TopMenuOption);
                $Temp_TopMenuOption = str_replace('{active}', $active, $Temp_TopMenuOption);
                $Temp_TopMenuOption = str_replace('{class}', $rowdata['class'] , $Temp_TopMenuOption);
                $Temp_TopMenuOption = str_replace('{attribute}', $rowdata['attribute'] , $Temp_TopMenuOption);
            }


            if ($rowdata['Type'] == 'popup'){
                $Temp_TopMenuOption = $this -> templete_top_navigation_menu_popup;
                $PopupMenuOptions = '';

                foreach ($rowdata['Options'] as $popup_option){
                    $Temp_PopupMenuOption = $this -> templete_top_navigation_menu_popup_link;
                    $Temp_PopupMenuOption = str_replace('{link_caption}', $popup_option['value'][$Lang] , $Temp_PopupMenuOption);
                    $Temp_PopupMenuOption = str_replace('{link_href}', $LinkLangCorrector.$popup_option['href'] , $Temp_PopupMenuOption);
                    $Temp_PopupMenuOption = str_replace('{class}', $popup_option['class'] , $Temp_PopupMenuOption);
                    $Temp_PopupMenuOption = str_replace('{attribute}', $popup_option['attribute'] , $Temp_PopupMenuOption);
                    $PopupMenuOptions .= $Temp_PopupMenuOption;
                }

                $Temp_TopMenuOption = str_replace('{popup_caption}', $rowdata['PopupCaption'][$Lang] , $Temp_TopMenuOption);
                $Temp_TopMenuOption = str_replace('{top_navigation_menu_popup_options}', $PopupMenuOptions , $Temp_TopMenuOption);
                $Temp_TopMenuOption = str_replace('{active}', $active, $Temp_TopMenuOption);

                if ($Lang == 'ru'){
                    $Temp_TopMenuOption = str_replace('{PopupHref}', $rowdata['PopupHref'], $Temp_TopMenuOption);
                }else{
                    $Temp_TopMenuOption = str_replace('{PopupHref}', $rowdata['PopupHref'], $Temp_TopMenuOption);
                }

            }

            $TopMenuOptions .= $Temp_TopMenuOption;

        }

        // подставить опции в меню
        $this -> templete_top_navigation_menu = str_replace('{top_navigation_menu_options}', $TopMenuOptions ,$this -> templete_top_navigation_menu);

        $this -> CONTENT = $this -> templete_top_navigation_menu;
    }



    // методы чтения шаблонов
    private function Get_templete_top_navigation_menu(){
        $_file_path = 'templete/top_navigation_menu.html';
        if (file_exists($_file_path))
        {
            $this -> templete_top_navigation_menu = file_get_contents($_file_path);
        }
    }
    private function Get_templete_top_navigation_menu_link(){
        $_file_path = 'templete/top_navigation_menu_link.html';
        if (file_exists($_file_path))
        {
            $this -> templete_top_navigation_menu_link = file_get_contents($_file_path);
        }
    }
    private function Get_templete_top_navigation_menu_popup(){
        $_file_path = 'templete/top_navigation_menu_popup.html';
        if (file_exists($_file_path))
        {
            $this -> templete_top_navigation_menu_popup = file_get_contents($_file_path);
        }
    }
    private function Get_templete_top_navigation_menu_popup_link(){
        $_file_path = 'templete/top_navigation_menu_popup_link.html';
        if (file_exists($_file_path))
        {
            $this -> templete_top_navigation_menu_popup_link = file_get_contents($_file_path);
        }
    }

}





?>