<?php

// класс пользователя
Class PageUpdater
{
    private $mysqli;
    var $PageID;
    var $PageTypeID;
    var $PageFileName;
    var $TopMenuActive;
    var $Lang;
    var $DefaultLang;
    var $LangCorrector = '';

    var $CONTENT;

    //конструктор
    function PageUpdater($mysqli, $PageID, $Lang)
    {
        $this -> mysqli = $mysqli;
        $this -> PageID = $PageID;
        $this -> Lang = $Lang;
    }

    // Сгенерировать страницу
    function generate(){
        $this -> getPage();

        switch ($this->PageTypeID) {
            case 1:
                // Главная
                require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/admin/pages/main_page.php');
                $page = new main_page($this->mysqli, $this->PageID, $this -> Lang);
                $page -> generate($this->TopMenuActive);
                $this -> CONTENT = $page -> CONTENT;
                break;
            case 2:
                // Альбомы
                require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/admin/pages/album_page.php');
                $page = new album_page($this->mysqli, $this->PageID, $this -> Lang);
                $page -> generate($this->TopMenuActive);
                $this -> CONTENT = $page -> CONTENT;
                break;
            case 3:
                //Карточка
                require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/admin/pages/card_page.php');
                $page = new card_page($this->mysqli, $this->PageID, $this -> Lang);
                $page -> generate($this->TopMenuActive);
                $this -> CONTENT = $page -> CONTENT;
                break;
            case 4:
                //Отзывы
                require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/admin/pages/reviews_page.php');
                $page = new reviews_page($this->mysqli, $this->PageID, $this -> Lang);
                $page -> generate($this->TopMenuActive);
                $this -> CONTENT = $page -> CONTENT;
                break;
            case 5:
                //Контакты
                require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/admin/pages/contacts_page.php');
                $page = new contacts_page($this->mysqli, $this->PageID, $this -> Lang);
                $page -> generate($this->TopMenuActive);
                $this -> CONTENT = $page -> CONTENT;
                break;
            case 6:
                //Отели
                require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/admin/pages/hotel.php');
                $page = new hotel_page($this->mysqli, $this->PageID, $this -> Lang);
                $page -> generate($this->TopMenuActive);
                $this -> CONTENT = $page -> CONTENT;
                break;
            case 7:
                //Машины
                require_once($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/admin/pages/cars.php');
                $page = new cars($this->mysqli, $this->PageID, $this -> Lang);
                $page -> generate($this->TopMenuActive);
                $this -> CONTENT = $page -> CONTENT;
                break;
        }
    }

    function getPage(){
        // проверить есть ли роль "генератор сайта"
        $Querry = $this->mysqli->prepare("
            SELECT p.PageTypeID, p.FileName, p.TopMenuActive
                FROM Page p
                WHERE p.PageID = ?
                LIMIT 1;
        ");
        $Querry->bind_param('i', $this->PageID);
        $Querry->execute();
        $result = GetResultArray($Querry);
        $this -> PageTypeID = $result[0]['PageTypeID'];
        $this -> TopMenuActive = $result[0]['TopMenuActive'];
        $this -> PageFileName = $result[0]['FileName'];

        $this -> DefaultLang = $_SESSION['default_language'];

        //Преобразователь ссылки для языка
        if ($this -> DefaultLang != $this -> Lang){
            $Querry = $this->mysqli->prepare("
                    SELECT ll.Lang
                        FROM LangList ll
                        WHERE ll.LangID = ?
                ");
            $Querry->bind_param('i', $this -> Lang);
            $Querry->execute();
            $result = GetResultArray($Querry);
            $this -> LangCorrector = '/'.$result[0]['Lang'].'/';
        }
    }

}

?>