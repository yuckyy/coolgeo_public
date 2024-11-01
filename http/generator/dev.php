<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 15.05.2018
 * Time: 20:13
 */


ini_set('default_charset', 'UTF-8');

// Подключить классы

//страницы
include 'core/class_main_page.php';
include 'core/class_all_cards_page.php';

// контролы
include 'core/class_top_menu.php';
include 'core/class_carousel.php';
include 'core/class_album.php';
include 'core/class_card_page.php';
include 'core/class_contacts_page.php';
include 'core/class_team_page.php';
include 'core/class_reviews.php';
include 'core/class_reviews_pagelist.php';

// Подключить настройки
include 'settings/top_menu_data.php';

//главная
include 'settings/main_page/main_page_carousel_data.php';
include 'settings/main_page/main_page_primary_title.php';
include 'settings/main_page/main_page_album_data.php';
// все экскурсии
include 'settings/excursions/excoursions_page_primary_title.php';
include 'settings/excursions/excoursions_page_album_data.php';
// все туры
include 'settings/tours/tours_page_primary_title.php';
include 'settings/tours/tours_page_album_data.php';
// все свадьбы
include 'settings/wedding/wedding_page_primary_title.php';
include 'settings/wedding/wedding_page_album_data.php';
// карточка
include 'settings/other_excursions_link_blocks.php';
include 'settings/other_tours_link_blocks.php';
// наша команда
include 'settings/team/team_page_data.php';
// партнерам
include 'settings/to-partners/to-partners_page_date.php';
// контакты
include 'settings/contacts/contacts_page_primary_title.php';
// отзывы
include 'settings/reviews/reviews_page_primary_title.php';

$LangArray = Array(
    Array(
        "lang" => "ru",
        "DefaultLang" => 'ru'
    ),
    Array(
        "lang" => "en",
        "DefaultLang" => 'ru'
    ),

    Array(
        "lang" => "he",
        "DefaultLang" => 'ru'
    ),
    Array(
        "lang" => "ua",
        "DefaultLang" => 'ru'
    )

);

$rootpath = '../';
$cardpath = 'page/';
$langpath = '';
$filepath = '';
$filename = '';



//$testobject = new reviews_pagelist(1);
//echo $testobject -> CONTENT;


$Reviews = new reviews_page('ru');
$Reviews -> DefaultLang = $current['DefaultLang'];
$Reviews -> Top_menu_data = $TopMenuData;
$Reviews -> PrimaryTitle_data = $ReviewsPagePrimaryTitleData;
$Reviews -> ActiveItem = 7;
$Reviews -> generate();

echo $Reviews -> CONTENT;
/*
$pagepath = $filepath.$cardpath.'reviews.html';
$fp = fopen($pagepath, "w"); // ("r" - считывать "w" - создавать "a" - добовлять к тексту), мы создаем файл
fwrite($fp, $Reviews -> CONTENT);
fclose ($fp);
*/


/*
foreach ($LangArray as $current){
    if ($current['lang'] != $current['DefaultLang']){$langpath = $current['lang'].'/';} else {$langpath = '';};
    $filepath = $rootpath.$langpath;

    // Сформировать главную страницу
    $MainPage = new main_page($current['lang']);
    $MainPage -> DefaultLang = $current['DefaultLang'];
    $MainPage -> Top_menu_data = $TopMenuData;
    $MainPage -> Carousel_data = $MainPageCarouselData;
    $MainPage -> PrimaryTitle_data = $MainPagePrimaryTitleData;
    $MainPage -> Album_data = $MainPageAlbumData;
    $MainPage -> generate();
    $pagepath = $filepath.'index.html';
    $fp = fopen($pagepath, "w"); // ("r" - считывать "w" - создавать "a" - добовлять к тексту), мы создаем файл
    fwrite($fp, $MainPage -> CONTENT);
    fclose ($fp);

    // Сформировать страницу "все экскурсии"
    $AllExcoursions = new all_cards_page($current['lang']);
    $AllExcoursions -> DefaultLang = $current['DefaultLang'];
    $AllExcoursions -> Top_menu_data = $TopMenuData;
    $AllExcoursions -> PrimaryTitle_data = $ExcoursionsPagePrimaryTitleData;
    $AllExcoursions -> Album_data = $ExcoursionsPageAlbumData;
    $AllExcoursions -> ActiveItem = 2;
    $AllExcoursions -> generate();
    $pagepath = $filepath.$cardpath.'excursions.html';
    $fp = fopen($pagepath, "w"); // ("r" - считывать "w" - создавать "a" - добовлять к тексту), мы создаем файл
    fwrite($fp, $AllExcoursions -> CONTENT);
    fclose ($fp);

    // Сформировать страницу "все туры"
    $AllTours = new all_cards_page($current['lang']);
    $AllTours -> DefaultLang = $current['DefaultLang'];
    $AllTours -> Top_menu_data = $TopMenuData;
    $AllTours -> PrimaryTitle_data = $ToursPagePrimaryTitleData;
    $AllTours -> Album_data = $ToursPageAlbumData;
    $AllTours -> ActiveItem = 3;
    $AllTours -> generate();
    $pagepath = $filepath.$cardpath.'multi-day-tours.html';
    $fp = fopen($pagepath, "w"); // ("r" - считывать "w" - создавать "a" - добовлять к тексту), мы создаем файл
    fwrite($fp, $AllTours -> CONTENT);
    fclose ($fp);

    // Сформировать страницу "свадьбы"
    $wedding = new all_cards_page($current['lang']);
    $wedding -> DefaultLang = $current['DefaultLang'];
    $wedding -> Top_menu_data = $TopMenuData;
    $wedding -> PrimaryTitle_data = $WeddingPagePrimaryTitleData;
    $wedding -> Album_data = $WeddingPageAlbumData;
    $wedding -> ActiveItem = 4;
    $wedding -> generate();
    $pagepath = $filepath.$cardpath.'wedding-in-georgia.html';
    $fp = fopen($pagepath, "w"); // ("r" - считывать "w" - создавать "a" - добовлять к тексту), мы создаем файл
    fwrite($fp, $wedding -> CONTENT);
    fclose ($fp);

    $filename = substr($filename, 0, strlen($filename)-4).'.html';
    $Team = new team_page($current['lang']);
    $Team -> CardPageName = $filename;
    $Team -> DefaultLang = $current['DefaultLang'];
    $Team -> Top_menu_data = $TopMenuData;
    $Team -> ActiveItem = 5;
    $Team -> CardData = $TeamPageData;
    $Team -> OtherExcursionsData = $other_excursions_data;
    $Team -> OtherToursData = $other_tours_data;
    $Team -> generate();
    $pagepath = $filepath.$cardpath.'about-us.html';
    $fp = fopen($pagepath, "w"); // ("r" - считывать "w" - создавать "a" - добовлять к тексту), мы создаем файл
    fwrite($fp, $Team -> CONTENT);
    fclose ($fp);

    $filename = substr($filename, 0, strlen($filename)-4).'.html';
    $Partners = new team_page($current['lang']);
    $Partners -> CardPageName = $filename;
    $Partners -> DefaultLang = $current['DefaultLang'];
    $Partners -> Top_menu_data = $TopMenuData;
    $Partners -> ActiveItem = 5;
    $Partners -> CardData = $PartnersPageData;
    $Partners -> OtherExcursionsData = $other_excursions_data;
    $Partners -> OtherToursData = $other_tours_data;
    $Partners -> generate();
    $pagepath = $filepath.$cardpath.'to-partners.html';
    $fp = fopen($pagepath, "w"); // ("r" - считывать "w" - создавать "a" - добовлять к тексту), мы создаем файл
    fwrite($fp, $Partners -> CONTENT);
    fclose ($fp);


    // Контакты
    $Contacts = new contacts_page($current['lang']);
    $Contacts -> DefaultLang = $current['DefaultLang'];
    $Contacts -> Top_menu_data = $TopMenuData;
    $Contacts -> PrimaryTitle_data = $ContactsPagePrimaryTitleData;
    $Contacts -> ActiveItem = 6;
    $Contacts -> generate();
    $pagepath = $filepath.$cardpath.'contacts.html';
    $fp = fopen($pagepath, "w"); // ("r" - считывать "w" - создавать "a" - добовлять к тексту), мы создаем файл
    fwrite($fp, $Contacts -> CONTENT);
    fclose ($fp);

    // Контакты
    $Reviews = new reviews_page($current['lang']);
    $Reviews -> DefaultLang = $current['DefaultLang'];
    $Reviews -> Top_menu_data = $TopMenuData;
    $Reviews -> PrimaryTitle_data = $ReviewsPagePrimaryTitleData;
    $Reviews -> ActiveItem = 7;
    $Reviews -> generate();
    $pagepath = $filepath.$cardpath.'reviews.html';
    $fp = fopen($pagepath, "w"); // ("r" - считывать "w" - создавать "a" - добовлять к тексту), мы создаем файл
    fwrite($fp, $Reviews -> CONTENT);
    fclose ($fp);


    // Сформировать страницы карточек
    $dir    = 'settings/cards';
    $files = scandir($dir);
    foreach ($files as $filename){
        if(substr($filename, strlen($filename)-4, 4) == '.php'){

            include 'settings/cards/'.$filename;
            $filename = substr($filename, 0, strlen($filename)-4).'.html';
            $TempCard = new card_page($current['lang']);
            $TempCard -> CardPageName = $filename;
            $TempCard -> DefaultLang = $current['DefaultLang'];
            $TempCard -> Top_menu_data = $TopMenuData;

            if($CardData['AdditionalLinksType'] == 'excursions'){
                $TempCard -> ActiveItem = 2;
            }else{
                $TempCard -> ActiveItem = 3;
            }
            $TempCard -> CardData = $CardData;
            $TempCard -> OtherExcursionsData = $other_excursions_data;
            $TempCard -> OtherToursData = $other_tours_data;
            $TempCard -> generate();
            $pagepath = $filepath.$cardpath.$filename;
            $fp = fopen($pagepath, "w"); // ("r" - считывать "w" - создавать "a" - добовлять к тексту), мы создаем файл
            fwrite($fp, $TempCard -> CONTENT);
            fclose ($fp);

        }

    }
}

*/

/*
    // Сформировать главную страницу
    $MainPage = new main_page('ru');
    $MainPage -> DefaultLang = 'en';
    $MainPage -> Top_menu_data = $TopMenuData;
    $MainPage -> Carousel_data = $MainPageCarouselData;
    $MainPage -> PrimaryTitle_data = $MainPagePrimaryTitleData;
    $MainPage -> Album_data = $MainPageAlbumData;
    $MainPage -> generate();
    $filepath = '../index.html';
    $fp = fopen($filepath, "w"); // ("r" - считывать "w" - создавать "a" - добовлять к тексту), мы создаем файл
    fwrite($fp, $MainPage -> CONTENT);
    fclose ($fp);

    // Сформировать страницу "все экскурсии"
    $AllExcoursions = new all_cards_page('ru');
    $AllExcoursions -> DefaultLang = 'en';
    $AllExcoursions -> Top_menu_data = $TopMenuData;
    $AllExcoursions -> PrimaryTitle_data = $ExcoursionsPagePrimaryTitleData;
    $AllExcoursions -> Album_data = $ExcoursionsPageAlbumData;
    $AllExcoursions -> ActiveItem = 2;
    $AllExcoursions -> generate();
    $filepath = '../page/excursions.html';
    $fp = fopen($filepath, "w"); // ("r" - считывать "w" - создавать "a" - добовлять к тексту), мы создаем файл
    fwrite($fp, $AllExcoursions -> CONTENT);
    fclose ($fp);


    // Сформировать страницу "все туры"
    $AllTours = new all_cards_page('ru');
    $AllTours -> DefaultLang = 'en';
    $AllTours -> Top_menu_data = $TopMenuData;
    $AllTours -> PrimaryTitle_data = $ToursPagePrimaryTitleData;
    $AllTours -> Album_data = $ToursPageAlbumData;
    $AllTours -> ActiveItem = 3;
    $AllTours -> generate();
    $filepath = '../page/multi-day-tours.html';
    $fp = fopen($filepath, "w"); // ("r" - считывать "w" - создавать "a" - добовлять к тексту), мы создаем файл
    fwrite($fp, $AllTours -> CONTENT);
    fclose ($fp);

    // Карточка
    $TempCard = new card_page('ru');
    $TempCard -> DefaultLang = 'ru';
    $TempCard -> Top_menu_data = $TopMenuData;
    $TempCard -> ActiveItem = 2;
    $TempCard -> CardData = $CardData;
    $TempCard -> OtherExcursionsData = $other_excursions_data;
    $TempCard -> OtherToursData = $other_tours_data;
    $TempCard -> generate();
    echo $TempCard -> CONTENT;
*/

?>