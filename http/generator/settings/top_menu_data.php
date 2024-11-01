<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 15.05.2018
 * Time: 22:51
 */

$TopMenuData = Array(
    // Заголовок меню
    "MenuCaption" => "Cool Georgia Travel",
    // Опции меню
    "Options" => Array(

        // Главная
        Array(
            "Type" => "link",
            "href" => "/",
            "class" => "",
            "attribute" => '',
            "value" => Array(
                "ru" => "Главная",
                "en" => "Main",
                "he" => "עקרי",
                "ua" => "Головна",
            )
        ),

        // Экскурсии
        Array(
            "Type" => "link",
            "href" => "/page/excursions.html",
            "class" => "",
            "attribute" => '',
            "value" =>  Array(
                "ru" => "Экскурсии",
                "en" => "Excursions",
                "he" => "טיולים",
                "ua" => "Екскурсії",
            )

        ),

        // Туры в грузию (выпадалочка)
        Array(
            "Type" => "popup",
            // заголовок выпадалки
            "PopupCaption" => Array(
                "ru" => "Туры в Грузию",
                "en" => "Tours to Georgia",
                "he" => "טיולים לגיאורגיה",
                "ua" => "Туры в Грузію"
            ),
            "PopupHref" => "/page/multi-day-tours.html",
            //опции выпадалочки
            "Options" => Array(
                Array(
                    "Type" => "link",
                    "href" => "/page/multi-day-tours.html",
                    "class" => "",
                    "attribute" => '',
                    "value" => Array(
                        "ru" => "Многодневные туры",
                        "en" => "Multi-day tours",
                        "he" => "סיורים מרובי יום",
                        "ua" => "Багатоденні тури",
                    )
                ),
                Array(
                    "Type" => "link",
                    "href" => "/page/individual-tours.html",
                    "class" => "",
                    "attribute" => '',
                    "value" => Array(
                        "ru" => "Индивидуальные туры",
                        "en" => "Individual tours",
                        "he" => "Индивидуальные туры",
                        "ua" => "Індивідуальні тури",
                    )
                )
            )
        ),

        //Свадьба в грузии
        Array(
            "Type" => "link",
            "href" => "/page/wedding-in-georgia.html",
            "class" => "",
            "attribute" => '',
            "value" =>Array(
                "ru" => "Свадьба в Грузии",
                "en" => "Wedding in Georgia",
                "he" => "Свадьба в Грузии",
                "ua" => "Весілля в Грузії",
            )

        ),

        //О нас
        Array(
            "Type" => "popup",
            "PopupCaption" => Array(
                "ru" => "О нас",
                "en" => "About us",
                "he" => "О нас",
                "ua" => "Про нас",
            ),
            "PopupHref" => "/page/about-us.html",
            "Options" => Array(
                Array(
                    "Type" => "link",
                    "href" => "/page/about-us.html",
                    "class" => "",
                    "attribute" => '',
                    "value" => Array(
                        "ru" => "Наша команда",
                        "en" => "Our team",
                        "he" => "Наша команда",
                        "ua" => "Наша команда",
                    )
                ),
                Array(
                    "Type" => "link",
                    "href" => "/page/to-partners.html",
                    "class" => "",
                    "attribute" => '',
                    "value" => Array(
                        "ru" => "Партнерам",
                        "en" => "For Partners",
                        "he" => "Партнерам",
                        "ua" => "Партнерам",
                    )
                ),
                Array(
                    "Type" => "link",
                    "href" => "/page/reviews.html",
                    "class" => "",
                    "attribute" => '',
                    "value" => Array(
                        "ru" => "Отзывы",
                        "en" => "Отзывы",
                        "he" => "Отзывы",
                        "ua" => "Отзывы",
                    )
                )



            )
        ),
        //Контакты
        Array(
            "Type" => "link",
            "href" => "/page/contacts.html",
            "class" => "",
            "attribute" => '',
            "value" =>Array(
                "ru" => "Контакты",
                "en" => "Contacts",
                "he" => "Контакты",
                "ua" => "Контакти",
            )

        ),
        //Отзывы
        Array(
            "Type" => "link",
            "href" => "/page/reviews.html",
            "class" => "",
            "attribute" => '',
            "value" =>Array(
                "ru" => "Отзывы",
                "en" => "Reviews",

                "he" => "Контакты",
                "ua" => "Контакти",
            )

        ),
        //Языки
        Array(
            "Type" => "popup",
            "PopupHref" => "#",
            "PopupCaption" => Array(
                "ru" => '<img src="/images/flags/rus.jpg" alt="ru"> <img src="/images/flags/vel.jpg" alt="en">',
                "en" => '<img src="/images/flags/rus.jpg" alt="ru"> <img src="/images/flags/vel.jpg" alt="en">',
                "he" => '<img src="/images/flags/rus.jpg" alt="ru"> <img src="/images/flags/vel.jpg" alt="en">',
                "ua" => '<img src="/images/flags/rus.jpg" alt="ru"> <img src="/images/flags/vel.jpg" alt="en">',
            ),
            "Options" => Array(
                Array(
                    "Type" => "link",
                    "href" => "#ru",
                    "class" => "lang-button",
                    "attribute" => 'lang="ru"',
                    "value" => Array(
                        "ru" => '<img src="/images/flags/rus.jpg" alt="ru"> Русский',
                        "en" => '<img src="/images/flags/rus.jpg" alt="ru"> Русский',
                        "he" => '<img src="/images/flags/rus.jpg" alt="ru"> Русский',
                        "ua" => '<img src="/images/flags/rus.jpg" alt="ru"> Русский',
                    )
                ),
                Array(
                    "Type" => "link",
                    "href" => "#en",
                    "class" => "lang-button",
                    "attribute" => 'lang="en"',
                    "value" => Array(
                        "ru" => '<img src="/images/flags/vel.jpg" alt="en"> English',
                        "en" => '<img src="/images/flags/vel.jpg" alt="en"> English',
                        "he" => '<img src="/images/flags/vel.jpg" alt="en" English',
                        "ua" => '<img src="/images/flags/vel.jpg" alt="en"> English',
                    )
                ),

            )
        ),

    )
);

?>