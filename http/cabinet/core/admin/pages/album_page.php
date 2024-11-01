<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 15.05.2018
 * Time: 20:24
 */

Class album_page
{
    var $mysqli;
    var $PageID;

    // Язык
    var $Lang = 'ru';
    var $DefaultLang = 'ru';

    // данные
    var $Top_menu_data = Array();
    var $Carousel_data = Array();
    var $PrimaryTitle_data = Array();
    var $Album_data = Array();

    var $Primary_title = '';
    var $Primary_title_descryption = '';
    var $Album = Array();

    // -- Темплеты --
    var $page_templete = '';
    var $templete_current_page = '';
    var $templete_primary_title = '';

    var $CONTENT = Array();

    //конструктор
    function album_page($mysqli, $PageID, $Lang)
    {
        $this -> mysqli = $mysqli;
        $this -> PageID = $PageID;
        $this -> Lang = $Lang;
        $this -> DefaultLang = $_SESSION['default_language'];

    }

    function generate($TopMenuActive = 0)
    {
        // Прочитать шаблон главной страницы
        $this -> GetPageTemplete();
        $this -> GetMainPageTemplete();
        $this -> GetMainPagePrimaryTitleTemplete();
        $this -> GetCardAdvantageTemplete();

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

        // создать и подставить главное меню
        // Подключить класс главного меню

        require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/class_top_menu.php');
        $top_menu = new top_menu($this->mysqli, $this -> Lang, $TopMenuActive);
        $this -> page_templete = str_replace('{navigation_menu_bar}', $top_menu -> CONTENT, $this -> page_templete);

        // получить данные главной страницы из бд
        $Querry = $this->mysqli->prepare("
            SELECT *
                FROM PagePrimaryTitle ppt
                WHERE ppt.PageID = ? AND ppt.LangID = ?
        ");
        $Querry->bind_param('ii', $this->PageID, $this -> Lang);
        $Querry->execute();
        $result = GetResultArray($Querry);
        $this -> PrimaryTitle_data = $result[0];

        // подставить данные в заголовок главной страницы
        $this -> templete_primary_title = str_replace('{main_page_primary_title}', $this -> PrimaryTitle_data['PrimaryTitle'] , $this -> templete_primary_title);
        $this -> templete_primary_title = str_replace('{main_page_primary_title_descryption}', $this -> PrimaryTitle_data['PrimaryTitleDescryption'] , $this -> templete_primary_title);
        $this -> templete_current_page = str_replace('{page_primary_title}', $this -> templete_primary_title, $this -> templete_current_page);

        // создать и подставить альбом главной страницы
        require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/admin/pages/album.php');
        $album = new album($this -> mysqli, $this->PageID, $this -> Lang);
        $this -> templete_current_page = str_replace('{page_album}', $album -> CONTENT, $this -> templete_current_page);

        $this -> page_templete = str_replace('{page_templete_title}', $this -> PrimaryTitle_data['page_templete_title'], $this -> page_templete);
        $this -> page_templete = str_replace('{page_templete_description}', $this -> PrimaryTitle_data['page_templete_description'], $this -> page_templete);
        $this -> page_templete = str_replace('{page_templete_keywords}', $this -> PrimaryTitle_data['page_templete_keywords'], $this -> page_templete);

        $this -> page_templete = str_replace('{og:title}', $this -> PrimaryTitle_data['page_templete_title'], $this -> page_templete);
        $this -> page_templete = str_replace('{og:description}', $this -> PrimaryTitle_data['page_templete_description'], $this -> page_templete);
        $this -> page_templete = str_replace('{og:image}', 'http://coolgeorgia.com/images/slider/signaghi-coolgeorgiatravel.jpg', $this -> page_templete);

        $this -> page_templete = str_replace('{og:url}', 'http://CoolGeorgia.com', $this -> page_templete);

        $this -> page_templete = str_replace('{page_content}', $this -> templete_current_page, $this -> page_templete);
        $this -> page_templete = str_replace('{PageLang}', $this -> Lang, $this -> page_templete);

        $this->page_templete = str_replace('{advantage}', $this->templete_card_page_advantage, $this -> page_templete);

        require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/translator.php');
        $translator = new translator($this->mysqli, $this -> Lang);
        $this -> CONTENT = $translator->translate($this -> page_templete);
        //$this -> CONTENT = $this -> page_templete;
    }

    // методы чтения шаблонов
    private function GetPageTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/pages/page_templete.html';
        if (file_exists($_file_path))
        {
            $this -> page_templete = file_get_contents($_file_path);
        }
    }
    private function GetMainPageTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/pages/all_cards_page.html';
        if (file_exists($_file_path))
        {
            $this -> templete_current_page = file_get_contents($_file_path);
        }
    }
    private function GetMainPagePrimaryTitleTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/pages/main_page_primary_title.html';
        if (file_exists($_file_path))
        {
            $this -> templete_primary_title = file_get_contents($_file_path);
        }
    }

    private function GetCardAdvantageTemplete()
    {
        $_file_path = $_SERVER["DOCUMENT_ROOT"] . '/cabinet/templete/pages/card_page_advantage.html';
        if (file_exists($_file_path)) {
            $this->templete_card_page_advantage = file_get_contents($_file_path);
        }
    }
}
?>