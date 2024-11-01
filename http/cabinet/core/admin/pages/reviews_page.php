<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 15.05.2018
 * Time: 20:24
 */

Class reviews_page
{
    var $mysqli;
    var $PageID;

    // Язык
    var $Lang = 'ru';
    var $DefaultLang = 'ru';

    // данные
    var $PrimaryTitle_data = Array();
    var $Form = Array();

    // -- Темплеты --
    var $page_templete = '';
    var $templete_reviews_page = '';
    var $templete_primary_title = '';

    var $CONTENT = Array();

    //конструктор
    function reviews_page($mysqli, $PageID, $Lang)
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

        //Преобразователь ссылки для языка
        $LinkLangCorrector = '';
        if ($this -> DefaultLang != $this -> Lang){
            $LinkLangCorrector = '/'.$this -> Lang;
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
        $Querry->bind_param('ii', $this->PageID, $this->Lang);
        $Querry->execute();
        $result = GetResultArray($Querry);
        $this->PrimaryTitle_data = $result[0];

        $FormQuerry = $this->mysqli->prepare("
            SELECT *
                FROM PageReviewsTranslation ppt
                WHERE ppt.LangID = ?
        ");
        $FormQuerry->bind_param('i', $this->Lang);
        $FormQuerry->execute();
        $FormResult = GetResultArray($FormQuerry);
        $this->Form = $FormResult[0]["FormTranslator"];

        // подставить данные в заголовок главной страницы
        $this->templete_primary_title = str_replace('{main_page_primary_title}', $this->PrimaryTitle_data['PrimaryTitle'], $this->templete_primary_title);
        $this->templete_primary_title = str_replace('{main_page_primary_title_descryption}', $this->PrimaryTitle_data['PrimaryTitleDescryption'], $this->templete_primary_title);
        $this->templete_reviews_page = str_replace('{page_primary_title}', $this->templete_primary_title, $this->templete_reviews_page);
        $this->templete_reviews_page = str_replace('{form}', $this->Form, $this->templete_reviews_page);

        $this->page_templete = str_replace('{page_templete_title}', $this->PrimaryTitle_data['page_templete_title'], $this->page_templete);
        $this->page_templete = str_replace('{page_templete_description}', $this->PrimaryTitle_data['page_templete_description'], $this->page_templete);
        $this->page_templete = str_replace('{page_templete_keywords}', $this->PrimaryTitle_data['page_templete_keywords'], $this->page_templete);
        $this->page_templete = str_replace('{og:title}', $this->PrimaryTitle_data['page_templete_title'], $this->page_templete);
        $this->page_templete = str_replace('{og:description}', $this->PrimaryTitle_data['page_templete_description'], $this->page_templete);
        $this->page_templete = str_replace('{og:image}', '/images/contacts.png', $this->page_templete);
        $this->page_templete = str_replace('{og:url}', '://CoolGeorgia.com', $this->page_templete);

        $this -> page_templete = str_replace('{page_content}', $this -> templete_reviews_page, $this -> page_templete);
        $this -> CONTENT = $this -> page_templete;
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
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/pages/reviews_page.html';
        if (file_exists($_file_path))
        {
            $this -> templete_reviews_page = file_get_contents($_file_path);
        }
    }
    private function GetMainPagePrimaryTitleTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/pages/main_page_primary_title.html';
        if (file_exists($_file_path))
        {
            $this -> templete_primary_title = file_get_contents($_file_path);
        }
    }
}
?>