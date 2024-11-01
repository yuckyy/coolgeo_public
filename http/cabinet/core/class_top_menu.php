<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 15.05.2018
 * Time: 20:24
 */


Class top_menu
{
    var $mysqli;

    //var $MenuData = Array();
    var $Lang = '';
    var $DefaultLang = '';
    // -- Темплеты --
    var $templete_top_navigation_menu = '';
    var $templete_top_navigation_menu_link = '';
    var $templete_top_navigation_menu_popup = '';
    var $templete_top_navigation_menu_popup_link = '';


    var $CONTENT = '';

    //конструктор
    function top_menu($mysqli, $Lang, $ActiveItem)
    {

        $this->mysqli = $mysqli;
        $this -> Lang = $Lang;
        $this -> DefaultLang = $_SESSION['default_language'];

        // Прочитать шаблоны
        $this -> Get_templete_top_navigation_menu();
        $this -> Get_templete_top_navigation_menu_link();
        $this -> Get_templete_top_navigation_menu_popup();
        $this -> Get_templete_top_navigation_menu_popup_link();

        // подставить название в меню
        $this -> templete_top_navigation_menu = str_replace('{menu_caption}', 'Cool Georgia Travel' ,$this -> templete_top_navigation_menu);

        // Получить спискок меню первого уровня
        $MySQLiQuery = $mysqli->prepare("
            SELECT mmo.OptionID, mmod.LangID, ll.Lang, mmo.RowNumber, mmod.Name
                FROM MainMenuOption mmo
                  LEFT JOIN MainMenuOptionData mmod ON mmo.OptionID=mmod.OptionID AND mmod.LangID = ?
                  LEFT JOIN LangList ll ON ll.LangID = mmod.LangID
                WHERE mmod.Show = '1'
                ORDER BY mmo.RowNumber
        ");
        $MySQLiQuery->bind_param('i', $this->Lang);
        $MySQLiQuery->execute();
        $result = GetResultArray($MySQLiQuery);

        // Подготовить запрос по ссылкам меню первого уровня
        $OptionLinksQuery = $mysqli->prepare("
            SELECT mmld.LinkID, mmld.LangID, ll.Lang, mmld.Caption, mml.PageID, mml.Href, mml.class, mml.attribute, p.FileName
                FROM MainMenuOptionLink mmol
                  LEFT JOIN MainMenuLink mml ON mml.LinkID = mmol.LinkID
                  LEFT JOIN MainMenuLinkData mmld ON mmld.LinkID = mmol.LinkID AND mmld.LangID = ?
                  LEFT JOIN Page p ON p.PageID = mml.PageID
                  LEFT JOIN LangList ll ON ll.LangID = mmld.LangID
                WHERE mmol.OptionID = ?;
        ");

        $TopMenuOptions = '';
        foreach($result as $Row){
            $OptionLinksQuery->bind_param('ii', $this->Lang, $Row['OptionID']);
            $OptionLinksQuery->execute();
            $links = GetResultArray($OptionLinksQuery);

            //Преобразователь ссылки для языка
            $LinkLangCorrector = '';
            if ($this -> DefaultLang != $this -> Lang){
                $LinkLangCorrector = $Row['Lang'].'/';
            }

            // если есть настроенные сслыки
            if (count($links) > 0){
                // если только одна ссылка то простая ссылка
                if (count($links) == 1){
                    $temp_TopMenuOption = $this -> templete_top_navigation_menu_link;
                    $temp_TopMenuOption = str_replace('{link_caption}', $Row['Name'] , $temp_TopMenuOption);

                    if (strlen($links[0]['PageID']) != 0){
                        if(strlen(trim($links[0]['FileName'])) != 0){
                            if ($links[0]['FileName'] != 'index.html'){
                                $linkHref = '/'.$LinkLangCorrector.'page/'.$links[0]['FileName'];
                            }else{
                                $linkHref = '/'.$LinkLangCorrector.$links[0]['FileName'];
                            }
                        } else {
                            $linkHref = '/'.$LinkLangCorrector.$links[0]['Href'];
                        }
                    } else {
                        $linkHref = $links[0]['Href'];
                    }

                    $active = '';
                    if ($Row['OptionID'] == $ActiveItem){
                        $active = ' active ';
                    }
                    $temp_TopMenuOption = str_replace('{link_href}', $linkHref, $temp_TopMenuOption);
                    $temp_TopMenuOption = str_replace('{active}', $active, $temp_TopMenuOption);
                    $temp_TopMenuOption = str_replace('{class}', $links[0]['class'] , $temp_TopMenuOption);
                    $temp_TopMenuOption = str_replace('{attribute}', $links[0]['attribute'] , $temp_TopMenuOption);
                    $TopMenuOptions .= $temp_TopMenuOption;
                }
                // если больше одной то попап
                if (count($links) > 1){
                    $temp_TopMenuOption = $this -> templete_top_navigation_menu_popup;
                    $PopupMenuOptions = '';
                    foreach ($links as $popup_option){
                        $temp_PopupMenuOption = $this -> templete_top_navigation_menu_popup_link;
                        $temp_PopupMenuOption = str_replace('{link_caption}',  $popup_option['Caption'], $temp_PopupMenuOption);
                        if(strlen(trim($popup_option['FileName'])) != 0){
                            if ($popup_option['FileName'] != 'index.html'){
                                $linkHref = '/'.$LinkLangCorrector.'page/'.$popup_option['FileName'];
                            } else {
                                $linkHref = '/'.$LinkLangCorrector.$popup_option['FileName'];
                            }

                        } else {
                            $linkHref = '/'.$LinkLangCorrector.$popup_option['Href'];
                        }
                        $temp_PopupMenuOption = str_replace('{link_href}', $linkHref , $temp_PopupMenuOption);
                        $temp_PopupMenuOption = str_replace('{class}', $popup_option['class'] , $temp_PopupMenuOption);
                        $temp_PopupMenuOption = str_replace('{attribute}', $popup_option['attribute'] , $temp_PopupMenuOption);
                        $PopupMenuOptions .= $temp_PopupMenuOption;
                    }
                    $active = '';
                    if ($Row['OptionID'] == $ActiveItem){
                        $active = ' active ';
                    }
                    $temp_TopMenuOption = str_replace('{popup_caption}', $Row['Name'] , $temp_TopMenuOption);
                    $temp_TopMenuOption = str_replace('{top_navigation_menu_popup_options}', $PopupMenuOptions , $temp_TopMenuOption);
                    $temp_TopMenuOption = str_replace('{active}', $active, $temp_TopMenuOption);
                    $TopMenuOptions .= $temp_TopMenuOption;

                }
            }
        }
        // подставить опции в меню
        $this -> templete_top_navigation_menu = str_replace('{top_navigation_menu_options}', $TopMenuOptions ,$this -> templete_top_navigation_menu);

        $this -> CONTENT = $this -> templete_top_navigation_menu;
    }



    // методы чтения шаблонов
    private function Get_templete_top_navigation_menu(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/top_navigation_menu.html'; 
        if (file_exists($_file_path))
        {
            $this -> templete_top_navigation_menu = file_get_contents($_file_path);
        }
    }
    private function Get_templete_top_navigation_menu_link(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/top_navigation_menu_link.html';
        if (file_exists($_file_path))
        {
            $this -> templete_top_navigation_menu_link = file_get_contents($_file_path);
        }
    }
    private function Get_templete_top_navigation_menu_popup(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/top_navigation_menu_popup.html';
        if (file_exists($_file_path))
        {
            $this -> templete_top_navigation_menu_popup = file_get_contents($_file_path);
        }
    }
    private function Get_templete_top_navigation_menu_popup_link(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/top_navigation_menu_popup_link.html';
        if (file_exists($_file_path))
        {
            $this -> templete_top_navigation_menu_popup_link = file_get_contents($_file_path);
        }
    }

}





?>