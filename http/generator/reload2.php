<?php

header('Content-Type: text/html; charset=UTF-8');
// подключиться к бд
require_once ($_SERVER["DOCUMENT_ROOT"].'/cabinet/core/config.php');


$Cards = Array(
    Array(
        "ImagaSrc" => "/images/wedding/wend_1_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Свадьба в Кахетии",
            "en" => "Wedding in Kakheti",
            "he" => "Свадьба в Кахетии",
            "ua" => "Весілля в Кахетії",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Свадьба в Кахетии.</b> Город влюблённых - Сигнахи. ЗАГС здесь работает круглосуточно. Вас ждет край любви, виноградники и алазанская долина!",
            "en" => "<b>Wedding in Kakheti.</b> The city of lovers is Sighnaghi. The Registry Office works here round the clock. The edge of love, vineyards and Alazani Valley are waiting for you!",
            "he" => "<b>Свадьба в Кахетии.</b> Город влюблённых - Сигнахи. ЗАГС здесь работает круглосуточно. Вас ждет край любви, виноградники и алазанская долина!",
            "ua" => "<b>Весілля в Кахетії.</b> Місто закоханих - Сигнагі. ЗАГС працює цілодобово. Край кохання, виноградники та Алазанська долина чекають на вас!",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/wedding-in-kaheti-3days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "3 дня",
            "en" => "3 days",
            "he" => "3 дня",
            "ua" => "3 дні",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "1500$",
            "en" => "1500$",
            "he" => "1500$",
            "ua" => "1500$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/wedding/wed_2_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Свадьба в Казбек",
            "en" => "Wedding in Kazbeg",
            "he" => "Свадьба в Казбек",
            "ua" => "Весілля у Казбегі",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Свадьба в Казбек.</b> Настоящие высокие грузинские горы! Невероятные виды для самых важных фото в жизни каждой новой семьи.",
            "en" => "<b>Wedding in Kazbeg.</b> These realy high Georgian mountains! Incredible views from beautifule places for the most important photos in the life of each new family.",
            "he" => "<b>Свадьба в Казбек.</b> Настоящие высокие грузинские горы! Невероятные виды для самых важных фото в жизни каждой новой семьи.",
            "ua" => "<b>Весілля у Казбегі.</b> Ці дійсно високі грузинські гори! Неймовірні види з красивих місць для найважливіших фотографій у житті кожної родини.",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/wedding-in-kazbeg-3days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "3 дня",
            "en" => "3 days",
            "he" => "3 дня",
            "ua" => "3 дні",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "1500$",
            "en" => "1500$",
            "he" => "1500$",
            "ua" => "1500$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/wedding/wed_3_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Свадьба в Тбилиси",
            "en" => "Wedding in Tbilisi",
            "he" => "Свадьба в Тбилиси",
            "ua" => "Весілля в Тбілісі",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Свадьба в Тбилиси.</b> Грузия - идеальное место, чтобы начать свою семью здесь! Красота и духовность Тбилиси и Мцхеты помогут в этом",
            "en" => "<b>Wedding in Tbilisi.</b> Georgia is an ideal place to start your family here! The beauty and spirituality of old towns Tbilisi and Mtskheta and Georgian hospitality will help in this.",
            "he" => "<b>Свадьба в Тбилиси.</b> Грузия - идеальное место, чтобы начать свою семью здесь! Красота и духовность Тбилиси и Мцхеты помогут в этом.",
            "ua" => "<b>Весілля в Тбілісі.</b> Грузія - ідеальне місце, щоб розпочати свою сім'ю тут! Краса та духовність Тбілісі і Мцхеті допоможуть у цьому.",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/wedding-in-tbilisi-3days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "3 дня",
            "en" => "3 days",
            "he" => "3 дня",
            "ua" => "3 дні",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "1350$",
            "en" => "1350$",
            "he" => "1350$",
            "ua" => "1350$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/wedding/wed_1_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Свадьба в Кахетиии. Кварели.",
            "en" => "Wedding in Kakheti.",
            "he" => "Свадьба в Кахетии",
            "ua" => "Весілля в Кахетії",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Свадьба в Кахетии.</b> Проживание в отеле среди виноградников, роспись и ресторан на территории отеля, интересная программа развлений для гостей. Рассчитано на <b>10 человек</b>",
            "en" => "<b>Wedding in Kakheti..</b> Accommodation in a hotel among vineyards, marriage registration and restaurant on the territory of hotel, an interesting program for guests. Calculated for <b>10 persons</b>",
            "he" => "<b>Свадьба в Кахетии.</b> Проживание в отеле среди виноградников, роспись и ресторан на территории отеля, интересная программа развлений для гостей. Рассчитано на <b>10 человек</b>",
            "ua" => "<b>Весілля в Кахетії.</b> Проживання в готелі серед виноградників, шлюбна реєстрація і ресторан на території готелю, цікава програма для гостей. Розраховано на <b>10 осіб</b>",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/wedding-in-kaheti-3days-all-inclusive.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "3 дня",
            "en" => "3 days",
            "he" => "3 дня",
            "ua" => "3 дні",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "6000$",
            "en" => "6000$",
            "he" => "6000$",
            "ua" => "6000$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/tours/tour_3days_kaheti_2_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Выходные в Грузии. Кахетия",
            "en" => "Weekends in Georgia. Kakheti",
            "he" => "Выходные в Грузии. Кахетия",
            "ua" => "Вихідні в Грузії. Кахетія",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Выходные в Грузии. Кахетия.</b> Идеальный вариант отдохнуть от будней в другом мире, где свобода, горы и вино. И это место вы найдете здесь. <br><br><b>Всё включено</b>",
            "en" => "<b>Weekends in Georgia. Kakheti.</b> The ideal option to relax from everyday life in another world, where freedom, mountains and wine. And this place you will find here. <p><b>All inclusive </b></p>",
            "he" => "<b>Выходные в Грузии. Кахетия.</b> Идеальный вариант отдохнуть от будней в другом мире, где свобода, горы и вино. И это место вы найдете здесь. <br><br><b>Всё включено</b>",
            "ua" => "<b>Вихідні в Грузії. Кахетія.</b> Ідеальний варіант відпочити від буднів в іншому світі, де свобода, гори та вино. І це місце ви знайдете саме тут. <p><b>Все включено</b></p>",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/tour-kaheti-3days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "3 дня",
            "en" => "3 days",
            "he" => "3 дня",
            "ua" => "3 дні",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "240$",
            "en" => "240$",
            "he" => "240$",
            "ua" => "240$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/cards/tour_weekend_kazbeg_2_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Выходные в Грузии. Казбек с Cool Georgia",
            "en" => "Weekends in Georgia. Kazbegi with Cool Georgia",
            "he" => "Выходные в Грузии. Казбек с Cool Georgia",
            "ua" => "Вихідні в Грузії. Казбегі із Cool Georgia",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Выходные в Грузии. Казбек.</b> Возможность освободить голову и наполнить её позитивными, правильными мыслями. Горы Грузии располагают к этому! <br><br><b>Всё включено</b>",
            "en" => "<b>Weekends in Georgia. Kazbegi.</b> Good idea to empty your head and fill it with positive and right thoughts. The mountains of Georgia can help you in this!  <p><b>All inclusive </b></p>",
            "he" => "<b>Выходные в Грузии. Казбек.</b> Возможность освободить голову и наполнить её позитивными, правильными мыслями. Горы Грузии располагают к этому! <br><br><b>Всё включено</b>",
            "ua" => "<b>Вихідні в Грузії. Казбегі.</b> Можливість звільнити голову та наповнити її позитивними, добрими думками. Гори Грузії спонукають до цього! <p><b>Все включено</b></p>",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/tour-kazbeg-3-days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "3 дня",
            "en" => "3 days",
            "he" => "3 дня",
            "ua" => "3 дні",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "240$",
            "en" => "240$",
            "he" => "240$",
            "ua" => "240$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/cards/tour_4day_borjomi_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Тур в Грузию на 4 дня. Боржоми, Ахалцихе, Вардзия",
            "en" => "Tour to Georgia for 4 days. Borjomi, Akhaltsikhe, Vardzia",
            "he" => "Тур в Грузию на 4 дня. Боржоми, Ахалцихе, Вардзия",
            "ua" => "Тур до Грузії на 4 дні. Боржомі, Ахалцихе, Вардзія",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Тур в Грузию на 4 дня. Боржоми, Ахалцихе, Вардзия.</b> Для тех, кто уже не первый раз в Грузии и хотел бы увидеть не только столицу и её окрестности. <br><br><b>Всё включено</b>",
            "en" => "<b>Tour to Georgia for 4 days. Borjomi, Akhaltsikhe, Vardzia.</b> For those who are not the first time in Georgia and would like to see not only the capital and its environs.  <p><b>All inclusive </b></p>",
            "he" => "<b>Тур в Грузию на 4 дня. Боржоми, Ахалцихе, Вардзия.</b> Для тех, кто уже не первый раз в Грузии и хотел бы увидеть не только столицу и её окрестности. <br><br><b>Всё включено</b>",
            "ua" => "<b>Тур до Грузії на 4 дні. Боржомі, Ахалцихе, Вардзія.</b> Для тих, хто вже не перший раз в Грузії і хотів би побачити не тільки столицю та околиці Тбілісі. <p><b>Все включено</b></p>",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/tour-borjomi-vardzia-4-days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "4 дня",
            "en" => "4 days",
            "he" => "4 дня",
            "ua" => "4 дні",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "320$",
            "en" => "320$",
            "he" => "320$",
            "ua" => "320$",
        )
    ),

    Array(
        "ImagaSrc" => "/images/cards/tour_tbilisi_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Тбилиси и его окрестности",
            "en" => "Tbilisi and its environs",
            "he" => "Тбилиси и его окрестности",
            "ua" => "Тбілісі та його околиці",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Тбилиси и его окрестности.</b> Облегченная экскурсионная программа для близкого знакомства со столицей Грузии, традициями и культурой страны. <br><br><b>Всё включено</b>",
            "en" => "<b>Tbilisi and its environs.</b> A light excursion program for a close acquaintance with the capital of Georgia Tbilisi, the ancient city of Mtskheta, the traditions and culture of the country. <br><br><b>All inclusive</b>",
            "he" => "<b>Тбилиси и его окрестности.</b> Облегченная экскурсионная программа для близкого знакомства со столицей Грузии, традициями и культурой страны. <br><br><b>Всё включено</b>",
            "ua" => "<b>Тбілісі та його околиці.</b> Полегшена екскурсійна програма для близького знайомства зі столицею Грузії, давнім містом Мцхета, традиціями і культурою країни. <P><b>Все включено</b></p>",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/tour-around-tbilisi-5-days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "5 дней",
            "en" => "5 days",
            "he" => "5 дней",
            "ua" => "5 днів",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "320$",
            "en" => "320$",
            "he" => "320$",
            "ua" => "320$",
        )
    ),
    Array(
        "ImagaSrc" =>  "/images/cards/tour_5days_kazbeg_500x300.jpg", //"/images/cards/tour_kaheti_5days_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Тбилиси и его окрестности. Поездка в Кахетиею",
            "en" => "описание картинки",
            "he" => "Тбилиси и его окрестности. Поездка в Кахетиею",
            "ua" => "Тбілісі і його околиці. Поїздка до Кахетії",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Тбилиси и его окрестности. Поездка в Кахетиею. </b> Близкое знакомство с Тбилиси и Кахетией: город влюбленных Сигнахи, культовый монастырь Бодбе, а так же винный завод <br><br><b>Всё включено</b>",
            "en" => "<b>Tbilisi and its environs. A trip to Kakhetiia. </b> Close acquaintance with Tbilisi and Kakheti: the city of love - Sighnaghi, the cult monastery of Bodbe, and visit  to the winery <br><br><b>All inclusive</b>",
            "he" => "<b>Тбилиси и его окрестности. Поездка в Кахетиею. </b> Близкое знакомство с Тбилиси и Кахетией: город влюбленных Сигнахи, культовый монастырь Бодбе, а так же винный завод <br><br><b>Всё включено</b>",
            "ua" => "<b>Тбілісі і його околиці. Поїздка до Кахетії. </b> Близьке знайомство з Тбілісі і Кахетією: місто закоханих Сигнахі, культовий монастир Бодбе, а також візит до винного заводу <p><b>Все включено</b></p>",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/tour-around-tbilisi-kaheti-5-days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "5 дней",
            "en" => "5 days",
            "he" => "5 дней",
            "ua" => "5 днів",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "435$",
            "en" => "435$",
            "he" => "435$",
            "ua" => "435$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/tours/tour_5days_tbilisi_batumi_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Тур в Грузию на 5 дней. Горы и Море",
            "en" => "Tour to Georgia for 5 days. Mountains and the Sea",
            "he" => "Тур в Грузию на 5 дней. Горы и Море",
            "ua" => "Тур в Грузію на 5 днів. Гори і Море",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Тур в Грузию на 5 дней. Горы и Море.</b> Возможность увидеть всю Грузию. Знакомство с Тбилиси, Боржоми, Кутаиси, Батуми и Черное море, кулинарный мастер-класс.<br><br><b>Всё включено</b>",
            "en" => "<b>Tour to Georgia for 5 days. Mountains and the Sea.</b> The opportunity to see the whole of Georgia. Acquaintance with Tbilisi, Borjomi, Kutaisi, Batumi and the Black Sea, a culinary master-class.<br><br><b>All inclusive</b>",
            "he" => "<b>Тур в Грузию на 5 дней. Горы и Море.</b> Возможность увидеть всю Грузию. Знакомство с Тбилиси, Боржоми, Кутаиси, Батуми и Черное море, кулинарный мастер-класс.<br><br><b>Всё включено</b>",
            "ua" => "<b>Тур в Грузію на 5 днів. Гори і Море.</b> Можливість побачити всю Грузію. Знайомство з Тбілісі, Боржомі, Кутаїсі, Батумі і Чорне море, кулінарний майстер-клас.<p><b>Все включено</b></p>",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/tour-tbilisi-batumi-5-days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "5 дней",
            "en" => "5 days",
            "he" => "5 дней",
            "ua" => "5 днів",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "450$",
            "en" => "450$",
            "he" => "450$",
            "ua" => "450$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/cards/tour_5days_bakuriani_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Зимний тур в Грузию на 5 дней. Бакуриани",
            "en" => "Winter tour to Georgia for 5 days. Bakuriani",
            "he" => "Зимний тур в Грузию на 5 дней. Бакуриани",
            "ua" => "Зимовий тур до Грузії на 5 днів. Бакуріані",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Зимний тур в Грузию на 5 дней. Бакуриани.</b> Зимний отдых в Бакуриани отлично подходит для семейного отдыха с детьми. Несложные трассы, спуски с гор и много-много веселья. <br><br><b>Всё включено</b>",
            "en" => "<b>Winter tour to Georgia for 5 days. Bakuriani.</b> Winter holidays in Bakuriani are great for families with children. Uncomplicated trails, descents from the mountains and lots of fun. <br><br><b>All inclusive</b>",
            "he" => "<b>Зимний тур в Грузию на 5 дней. Бакуриани.</b> Зимний отдых в Бакуриани отлично подходит для семейного отдыха с детьми. Несложные трассы, спуски с гор и много-много веселья. <br><br><b>Всё включено</b>",
            "ua" => "<b>Зимовий тур до Грузії на 5 днів. Бакуріані.</b> Відпочинок у Бакуріані відмінно підходить для сімейного відпочинку з дітьми. Нескладні траси, спуски з гір і багато-багато веселощів. <p><b>Все включено</b></p>",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/tour-to-bakuriani-5-days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "5 дней",
            "en" => "5 days",
            "he" => "5 дней",
            "ua" => "5 днів",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "447$",
            "en" => "447$",
            "he" => "447$",
            "ua" => "447$",
        )
    ),

    Array(
        "ImagaSrc" => "/images/cards/tour_5days_gudauri_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Зимний тур в Грузию на 5 дней. Гудаури",
            "en" => "Winter tour to Georgia for 5 days. Gudauri",
            "he" => "Зимний тур в Грузию на 5 дней. Гудаури",
            "ua" => "Зимовий тур до Грузії на 5 днів. Гудаурі",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Зимний тур в Грузию на 6 дней. Тбилиси и Гудаури.</b> Зимний активный отдых в Тбилиси. Поездка в Гудаури - трассы различной сложности, спуски с гор на лыжах, сноубордах и т.д. <br><br><b>Всё включено</b>",
            "en" => "<b>Winter tour to Georgia for 6 days. Gudauri.</b> Winter active holidays in Tbilisi. Travel to Gudauri - trails of various complexity, descents from the mountains on skis, snowboards and others. <br><br><b>All inclusive</b>",
            "he" => "<b>Зимний тур в Грузию на 6 дней. Гудаури.</b> Зимний активный отдых в Тбитлиси. Поездка в Гудаури - трассы различной сложности, спуски с гор на лыжах, сноубордах и многое другое. <br><br><b>Всё включено</b>",
            "ua" => "<b>Зимовий тур до Грузії на 6 днів. Гудаурі.</b> Зимовий активний відпочинок у Тбілісі. Поїздка до Гудаурі - траси різної складності, спуски з гір на лижах, сноубордах та інше <p><b>Все включено</b></p>",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/tour-to-gudauri-5-days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "6 дней",
            "en" => "6 days",
            "he" => "6 дней",
            "ua" => "6 днів",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "550$",
            "en" => "550$",
            "he" => "550$",
            "ua" => "550$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/tours/tour-new-year-5-days_500x300_55.jpg",
        "ImageAlt" => Array(
            "ru" => "Новогодний тур в Грузию на 5 дней. Тбилиси, Мцхета, Гудаури",
            "en" => "New Year and Christmas tour to Georgia for 5 days. Tbilisi, Mtskheta, Gudauri",
            "he" => "Новогодний тур в Грузию на 5 дней. Тбилиси, Мцхета, Гудаури",
            "ua" => "Новорічний тур до Грузії на 5 днів. Тбилісі, Мцхета, Гудаурі",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Новогодний тур в Грузию на 5 дней. Тбилиси, Мцхета и Гудаури.</b> Праздничный Тбилиси. Древняя Мцхета. Поездка в Гудаури - спуски с гор на лыжах, сноубордах и т.д. <br><br><b>Всё включено</b>",
            "en" => "<b>New Year's tour to Georgia for 5 days. Tbilisi, Mtskheta and Gudauri.</b> Festive Tbilisi. Ancient Mtskheta. A trip to Gudauri - downhill skiing, snowboarding and others. <br><br><b>All inclusive</b>",
            "he" => "<b>Новогодний тур в Грузию на 5 дней. Тбилиси, Мцхета и Гудаури.</b> Праздничный Тбилиси. Древняя Мцхета. Поездка в Гудаури - спуски с гор на лыжах, сноубордах и т.д. <br><br><b>Всё включено</b>",
            "ua" => "<b>Новорічний тур в Грузію на 5 днів. Тбілісі, Мцхета і Гудаурі.</b> Святковий Тбілісі. Давня Мцхета. Поїздка в Гудаурі - спуски з гір на лижах, сноубордах та інше <p><b>Все включено</b></p>",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/tour-new-year-5-days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "5 дней",
            "en" => "5 days",
            "he" => "5 дней",
            "ua" => "5 днів",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "445$",
            "en" => "445$",
            "he" => "445$",
            "ua" => "445$",
        )
    ),

    Array(
        "ImagaSrc" => "/images/cards/tour_7days_gurman_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Кулинарный тур в Грузию на 7 дней",
            "en" => "Culinary tour to Georgia for 7 days",
            "he" => "Кулинарный тур в Грузию на 7 дней",
            "ua" => "Кулинарный тур до Грузії на 7 днів",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Кулинарный тур в Грузию на 7 дней.</b> Отдых для настоящих гурманов. Возможность попробовать все грузинские блюда в разных районах Грузии и научиться их готовить. <br><br><b>Всё включено</b>",
            "en" => "<b>Culinary tour to Georgia for 7 days.</b> This rest for real gourmets. The opportunity to try all Georgian dishes in different regions of Georgia and learn how to prepare them. <br><br><b>All inclusive</b>",
            "he" => "<b>Кулинарный тур в Грузию на 7 дней.</b> Отдых для настоящих гурманов. Возможность попробовать все грузинские блюда в разных районах Грузии и научиться их готовить. <br><br><b>Всё включено</b>",
            "ua" => "<b>Кулинарный тур до Грузії на 7 днів.</b> Цей відпочинок для справжніх гурманів. Можливість спробувати всі грузинські страви в різних регіонах Грузії та навчитися їх готувати. <p><b>Все включено</b></p>",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/tour-culinary-around-georgia-7-days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "7 дней",
            "en" => "7 days",
            "he" => "7 дней",
            "ua" => "7 днів",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "600$",
            "en" => "600$",
            "he" => "600$",
            "ua" => "600$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Отдых в Грузии на 7 дней. Горы и Море",
            "en" => "Rest in Georgia. Mountains and the Sea",
            "he" => "Отдых в Грузии на 7 дней. Горы и Море",
            "ua" => "Відпочинок в Грузії на 7 днів. Гори та море",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Отдых в Грузии на 7 дней. Горы и Море. </b>Увидеть всю Грузию! Путешествие по всей стране от Тбилиси и до Батуми. Так же знакомство с Боржоми и Кутаиси. <br><br><b>Всё включено</b>",
            "en" => "<b>Rest in Georgia for 7 days. Mountains and the Sea. </b>To see the whole of Georgia! Travel all over the country from Tbilisi to Batumi. Also an acquaintance with Borjomi and Kutaisi.. <br><br><b>All inclusive</b>",
            "he" => "<b>Отдых в Грузии на 7 дней. Горы и Море. </b>Увидеть всю Грузию! Путешествие по всей стране от Тбилиси и до Батуми. Так же знакомство с Боржоми и Кутаиси. <br><br><b>Всё включено</b>",
            "ua" => "<b>Відпочинок в Грузії на 7 днів. Гори та море. </b>Побачити всю Грузію! Подорож по всій країні від Тбілісі до Батумі. Також знайомство із відомими містами - Боржомі та Кутаїсі. <p><b>Все включено</b></p>",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/tour-tbilisi-batumi-7-days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "7 дней",
            "en" => "7 days",
            "he" => "7 дней",
            "ua" => "7 днів",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "650$",
            "en" => "650$",
            "he" => "650$",
            "ua" => "650$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/cards/tour_8days_2_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Отдых в Грузии на 8 дней недорого",
            "en" => "Rest in Georgia for 8 days. Unexpensive",
            "he" => "Отдых в Грузии на 8 дней недорого",
            "ua" => "Відпочинок в Грузії на 8 днів. Недорого",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Отдых в Грузии на 8 дней недорого.</b> Насыщенная программа: тбилисские серные бани, кулинарный мастер-класс, дегустация вина, и весёлое путешествие по стране. <br><br><b>Всё включено</b>",
            "en" => "<b>Rest in Georgia for 8 days. Unexpensive.</b> Saturated program: Tbilisi sulfur baths, culinary master class, wine tasting, and a funny journey around the country. <br><br><b>All inclusive</b>",
            "he" => "<b>Отдых в Грузии на 8 дней недорого.</b> Насыщенная программа: тбилисские серные бани, кулинарный мастер-класс, дегустация вина, и весёлое путешествие по стране. <br><br><b>Всё включено</b>",
            "ua" => "<b>Відпочинок в Грузії на 8 днів. Недорого.</b> Насичена програма:  сірчані лазні Тбілісі, кулінарний майстер-клас, дегустація вин та весела подорож по всій країні. <p><b>Все включено</b></p>",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/tour-around-georgia-8-days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "8 дней",
            "en" => "8 days",
            "he" => "8 дней",
            "ua" => "8 днів",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "600$",
            "en" => "600$",
            "he" => "600$",
            "ua" => "600$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/cards/tour_9days_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Тур в Грузию на 10 дней",
            "en" => "Tour to Georgia for 10 days",
            "he" => "Тур в Грузию на 10 дней",
            "ua" => "Тур до Грузії на 10 днів",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Тур в Грузию на 10 дней.</b> Вся Грузия! Горы, виноградники, древние исторические города и святые места, а также погреться на солнце возле моря в Батуми. <br><br><b>Всё включено</b>",
            "en" => "<b>Tour to Georgia for 10 days.</b> All of Georgia! Mountains, vineyards, ancient historical cities and holy places, also the opportunity to sunbathe under the sun near the sea in Batumi.. <br><br><b>All inclusive</b>",
            "he" => "<b>Тур в Грузию на 10 дней.</b> Вся Грузия! Горы, виноградники, древние исторические города и святые места, а также погреться на солнце возле моря в Батуми. <br><br><b>Всё включено</b>",
            "ua" => "<b>Тур до Грузії на 10 днів.</b> Вся Грузія! Гори, виноградники, стародавні історичні та святі місця, також можливість засмагнути під сонцем біля Чорного моря в Батумі. <p><b>Все включено</b></p>",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/tour-tbilisi-batumi-10-days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "10 дней",
            "en" => "10 days",
            "he" => "10 дней",
            "ua" => "10 днів",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "900$",
            "en" => "900$",
            "he" => "900$",
            "ua" => "900$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/cards/armenia_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Тур в Грузию и Армению на 6 дней",
            "en" => "Tour to Georgia and Armenia for 6 days",
            "he" => "Тур в Грузию и Армению на 6 дней",
            "ua" => "Тур до Грузії та Вірменії на 6 днів",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Тур в Грузию и Армению на 6 дней.</b> Возможность увидеть сразу две страны Кавказа - Грузия и Армения. Мы покажем Вам все самые интересные места. <br><br><b>Всё включено</b>",
            "en" => "<b>Tour to Georgia and Armenia for 6 days.</b> The opportunity to see two countries of the Caucasus - Georgia and Armenia. We will show you all the most interesting places.. <br><br><b>All inclusive</b>",
            "he" => "<b>Тур в Грузию и Армению на 6 дней.</b> Возможность увидеть сразу две страны Кавказа - Грузия и Армения. Мы покажем Вам все самые интересные места. <br><br><b>Всё включено</b>",
            "ua" => "<b>Тур до Грузії та Вірменії на 6 днів.</b> Можливість побачити дві країни Кавказу - Грузію та Вірменії. Ми покажемо вам всі найцікавіші та найпривабливіші місця. <p><b>Все включено</b></p>",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/tour-to-armenia-6-days.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "6 дней",
            "en" => "6 days",
            "he" => "6 дней",
            "ua" => "6 днів",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "540$",
            "en" => "540$",
            "he" => "540$",
            "ua" => "540$",
        )
    ),

    Array(
        "ImagaSrc" => "/images/cards/tbilisi_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Экскурсия по Тбилиси",
            "en" => "Excursion to Tbilisi",
            "he" => "Экскурсия по Тбилиси",
            "ua" => "Екскурсія по Тбілісі",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Экскурсия по Тбилиси</b>. Самый насыщенный тур! Все лучшие места столицы и много интересных историй о Грузии за один день.",
            "en" => "<b>Excursion to Tbilisi</b>. The most interest tour! All the best places in the capital and a lot of interesting stories about Georgia in one day.",
            "he" => "<b>Экскурсия по Тбилиси</b>. Самый насыщенный тур! Все лучшие места столицы и много интересных историй о Грузии за один день.",
            "ua" => "<b>Екскурсія по Тбілісі</b>. Найбільш насичений тур! Усі кращі місця столиці та багато цікавих історій про Грузію за один день.",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/excursion-in-tbilisi.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "12 часов",
            "en" => "12 hours",
            "he" => "12 часов",
            "ua" => "12 годин",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "20$",
            "en" => "20$",
            "he" => "20$",
            "ua" => "20$",
        )
    ),

    Array(
        "ImagaSrc" => "/images/cards/mtskheta_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Экскурсия в Мцхету из Тбилиси",
            "en" => "Excursion to Mtskheta from Tbilisi",
            "he" => "Экскурсия в Мцхету из Тбилиси",
            "ua" => "Екскурсія до Мцхети з Тбілісі",
        ),
        "CardDescryption" => Array(
            "ru" => '<b>Экскурсия в первую столицу Грузии - Мцхета</b>. Этот город называют "Вторым Иерусалимом". Вы посетите древние действующие монастыри.',
            "en" => '<b>Excursion to the first capital of Georgia - Mtskheta</b>. This city is called the "Second Jerusalem". You will visit the ancient working monasteries.',
            "he" => '<b>Экскурсия в первую столицу Грузии - Мцхета</b>. Этот город называют "Вторым Иерусалимом". Вы посетите древние действующие монастыри.',
            "ua" => '<b>Екскурсія до першої столиці Грузії - Мцхета</b>. Це місто називається "другим Єрусалимом". Ви відвідаєте стародавні діючі монастирі.',
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/excursion-to-mtskheta.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "5 часов",
            "en" => "5 hours",
            "he" => "5 часов",
            "ua" => "5 годин",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "18$",
            "en" => "18$",
            "he" => "18$",
            "ua" => "18$",
        ),
    ),

    Array(
        "ImagaSrc" => "/images/cards/ex_tbilisi_mtskheta_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Экскурсия в Мцхету и Тбилиси с CoolGeorgia",
            "en" => "Excursion to Mtskheta and Tbilisi with CoolGeorgia",
            "he" => "Экскурсия в Мцхету и Тбилиси с CoolGeorgia",
            "ua" => ">Екскурсія до Мцхети та Тбілісі з CoolGeorgia",
        ),
        "CardDescryption" => Array(
            "ru" => '<b>Экскурсия в две столицы: древняя Мцхета и современный Тбилиси</b>. Близкое знакомство с Тбилиси, а также Джвари, Мцхета, монастыри и храмы',
            "en" => '<b>Excursion to two capitals: ancient Mtskheta and modern Tbilisi</b>. Close acquaintance with Tbilisi, also with Jvari, Mtskheta, monasteries and temples',
            "he" => '<b>Экскурсия в две столицы: древняя Мцхета и современный Тбилиси</b>. Близкое знакомство с Тбилиси, а также Джвари, Мцхета, монастыри и храмы',
            "ua" => '<b>Екскурсія до стародавньої Мцхети та сучасного Тбілісі</b>. Тісне знайомство з Тбілісі, а також Джварі, Мцхетою, монастирями та храмами',
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/excursion-to-tbilisi-and-mtskheta.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "12 часов",
            "en" => "12 hours",
            "he" => "12 часов",
            "ua" => "12 годин",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "35$",
            "en" => "35$",
            "he" => "35$",
            "ua" => "35$",
        ),
    ),
    Array(
        "ImagaSrc" => "/images/cards/kazbeg_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Экскурсия в Казбек",
            "en" => "Excursion to Kazbegi",
            "he" => "Экскурсия в Казбек",
            "ua" => "Екскурсія до Казбегі",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Экскурсия в Казбек (Степанцминда).</b> Лучшие виды на великие грузинские горы, Гудаури, Казбек, подъём к храму Гергети на джипах",
            "en" => "<b>Excursion to Kazbegi (Stepantsminda).</b> The best views on the greate Georgian mountains, Gudauri, Kazbegi, climbing to the Gergety Temple with jeeps",
            "he" => "<b>Экскурсия в Казбек (Степанцминда).</b> Лучшие виды на великие грузинские горы, Гудаури, Казбек, подъём к храму Гергети на джипах",
            "ua" => "<b>Екскурсія до Казбегі (Степанцмінда).</b> Кращі види на могутні грузинські гори, Гудаурі, Казбегі, підйом до храму Гергеті на джипах",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/excursion-in-kazbeg.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "14 часов",
            "en" => "14 hours",
            "he" => "14 часов",
            "ua" => "14 годин",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "48$",
            "en" => "48$",
            "he" => "48$",
            "ua" => "48$",
        ),
    ),
    Array(
        "ImagaSrc" => "/images/excoursions/mtskheta_1/excursion_mtskheta_2_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Экскурсия в Мцхету - Уплисцихе - Гори",
            "en" => "Excursion to Mtskheta - Uplistsikhe - Gori",
            "he" => "Экскурсия в Мцхету - Уплисцихе - Гори",
            "ua" => "Екскурсія до Мцхети - Уплисцихе - Горі",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Экскурсия в Мцхету - Уплисцихе - Гори.</b> Мцхета, собор Светицховели, монастыри Джвари, Самтавро и Шио-мгвиме, города Уплисцихе, Гори.",
            "en" => "<b>Excursion to Mtskheta - Uplistsikhe - Gori.</b> Mtskheta, Svetitskhoveli Cathedral, monasteries of Jvari, Samtavro and Shio-mgvime, the towns Uplistsikhe and Gori.",
            "he" => "<b>Экскурсия в Мцхету - Уплисцихе - Гори.</b> Мцхета, собор Светицховели, монастыри Джвари, Самтавро и Шио-мгвиме, города Уплисцихе, Гори.",
            "ua" => "<b>Екскурсія до Мцхети - Уплисцихе - Горі.</b> Мцхета, собор Светіцховелі, монастирі Джварі, Самтавро і Шио-Мгвіме, міста Уплисцихе, Горі.",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/excursion-to-mtskheta-upliscihe-gori.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "12 часов",
            "en" => "12 hours",
            "he" => "12 часов",
            "ua" => "12 годин",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "30$",
            "en" => "30$",
            "he" => "30$",
            "ua" => "30$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/excoursions/ex_gudauri_3_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Экскурсия в Гудаури",
            "en" => "Excursion to Gudauri",
            "he" => "Экскурсия в Гудаури",
            "ua" => "Екскурсія в Гудаурі",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Экскурсия в Гудаури.</b> Получите удовольствие и наполните легкие чистым горным воздухом, а глаза порадуйте лучшими видами на горы.",
            "en" => "<b>Excursion to Gudauri.</b> Enjoy and fill the lungs with clean mountain air, and your eyes will be happy from the best views of the mountains.",
            "he" => "<b>Экскурсия в Гудаури.</b> Получите удовольствие и наполните легкие чистым горным воздухом, а глаза порадуйте лучшими видами на горы.",
            "ua" => "<b>Екскурсія в Гудаурі.</b> Отримайте задоволення і наповніть легені чистим гірським повітрям, а очі нехай радіють від кращих видів на гори.",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/excursion-to-gudauri.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "14 часов",
            "en" => "14 hours",
            "he" => "14 часов",
            "ua" => "14 годин",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "40$",
            "en" => "40$",
            "he" => "40$",
            "ua" => "40$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/excoursions/ex_bakuriani_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Экскурсия в Бакуриани",
            "en" => "Excursion to Bakuriani",
            "he" => "Экскурсия в Бакуриани",
            "ua" => "Екскурсія в Бакуріані",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Экскурсия в Бакуриани.</b> Отлично подходит для семейного зимнего отдыха с детьми. Есть всё, чтобы сделать этот день незабываемым.",
            "en" => "<b>Excursion to Bakuriani.</b> Great for a family winter vacation with children. There is everything to make this day unforgettable.",
            "he" => "<b>Экскурсия в Бакуриани.</b> Отлично подходит для семейного зимнего отдыха с детьми. Есть всё, чтобы сделать этот день незабываемым.",
            "ua" => "<b>Екскурсія в Бакуріані.</b> Дуже добре підходить для сімейного зимового відпочинку з дітьми. Є все, щоб зробити цей день незабутнім.",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/excursion-to-bakuriani.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "14 часов ",
            "en" => "14 hours ",
            "he" => "14 часов ",
            "ua" => "14 годин ",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "50$",
            "en" => "50$",
            "he" => "50$",
            "ua" => "50$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/cards/kaheti_1_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Экскурсия в Кахетию из Тбилиси",
            "en" => "Excursion to Kakheti from Tbilisi",
            "he" => "Экскурсия в Кахетию из Тбилиси",
            "ua" => "Екскурсія до Кахетії із Тбілісі",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Экскурсия в Кахетию.</b> Край виноделия, город Телави, дом-музей Чавчавадзе, винный завод Шуми, город Сигнахи, монастырь Бодбе.",
            "en" => "<b>Excursion to Kakheti.</b> Region of winemaking, Telavi city, Chavchavadze's house museum, wine factory of Shumi, Sighnaghi city, Bodbe monastery.",
            "he" => "<b>Экскурсия в Кахетию.</b> Край виноделия, город Телави, дом-музей Чавчавадзе, винный завод Шуми, город Сигнахи, монастырь Бодбе.",
            "ua" => "<b>Екскурсія до Кахетії.</b> Край виноробства, місто Телаві, будинок-музей Чавчавадзе, винний завод Шумі, місто Сигнахі, монастир Бодбе.",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/excursion-to-kaheti-winery-shumi.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "13 часов",
            "en" => "13 hours",
            "he" => "13 часов",
            "ua" => "13 годин",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "45$",
            "en" => "45$",
            "he" => "45$",
            "ua" => "45$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/cards/borjomi_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Экскурсия в Боржоми, Ахалцихе, Вардзия",
            "en" => "Excursion to Borjomi, Akhaltsikhe, Vardzia",
            "he" => "Экскурсия в Боржоми, Ахалцихе, Вардзия",
            "ua" => "Екскурсія в Боржомі, Ахалцихе, Вардзія",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Экскурсия в Боржоми, Ахалцихе, Вардзия.</b> Город Боржоми, осмотр крепости Рабат IX века, замок Хертвиси, пещерный город Вардзия.",
            "en" => "<b>Excursion to Borjomi, Akhaltsikhe, Vardzia.</b> Borjomi city, visit to fortress of Rabat IX century, castle Hervivzi, cave town Vardzia.",
            "he" => "<b>Экскурсия в Боржоми, Ахалцихе, Вардзия.</b> Город Боржоми, осмотр крепости Рабат IX века, замок Хертвиси, пещерный город Вардзия.",
            "ua" => "<b>Екскурсія в Боржомі, Ахалцихе, Вардзія.</b> Місто Боржомі, відвідування фортеці Рабат IX століття, замок Хервівци, печерне місто Вардзія.",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/excursion-to-borjomi-vardzia.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "13 часов",
            "en" => "13 hours",
            "he" => "13 часов",
            "ua" => "13 часов",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "55$",
            "en" => "55$",
            "he" => "55$",
            "ua" => "55$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/excoursions/maps/europeans_1_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => 'Экускурсия в Дманиси - Первые европейцы',
            "en" => 'Excursion to Dmanisi - The First Europeans',
            "he" => 'Экускурсия в Дманиси - Первые европейцы',
            "ua" => 'Екскурсія до Дманісі - Перші європейці',
        ),
        "CardDescryption" => Array(
            "ru" => '<b>Экускурсия в Дманиси - "Первые европейцы". </b>  Интересная экскурсия, богатая посещением древних исторических мест и рассказами о них.',
            "en" => '<b>Excursion to Dmanisi - "The First Europeans". </b>  An interesting excursion, rich in visiting ancient historic sites and stories about them.',
            "he" => '<b>Экускурсия в Дманиси - "Первые европейцы". </b>  Интересная экскурсия, богатая посещением древних исторических мест и рассказами о них.',
            "ua" => '<b>Екскурсія до Дманісі - "Перші європейці". </b>  Цікава екскурсія, багата на відвідування старовинних історичних пам\'яток та розповідей про них.',
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/excursion-to-dmanisi-first-europeans.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "12 часов",
            "en" => "12 hours",
            "he" => "12 часов",
            "ua" => "12 годин",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "42$",
            "en" => "42$",
            "he" => "42$",
            "ua" => "42$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/excoursions/david_gareja/david_gareja_3_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Экускурсия в монастырь Давид-Гареджа",
            "en" => "описание картинки",
            "he" => "описание картинки",
            "ua" => "Екскурсія в монастир Давид-Гареджі",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Экускурсия в монастырь Давид-Гареджа.</b> Поездка к границе Грузии и Азербайджана. Осмотр комплекса пещерных монастырей VI века",
            "en" => "<b>Excursion to the monastery of David-Gareja.</b> A trip to the border of Georgia and Azerbaijan. Visit to the complex of cave monasteries of the VI century",
            "he" => "<b>Экускурсия в монастырь Давид-Гареджа.</b> Поездка к границе Грузии и Азербайджана. Осмотр комплекса пещерных монастырей VI века",
            "ua" => "<b>Екскурсія в монастир Давид-Гареджі.</b> Поїздка до кордону Грузії та Азербайджану. Відвідування комплексу печерних монастирів VI століття",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/excursion-to-monastery-david-gareja.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "7 часов",
            "en" => "7 hours",
            "he" => "7 часов",
            "ua" => "7 годин",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "36$",
            "en" => "36$",
            "he" => "36$",
            "ua" => "36$",
        )
    ),
    Array(
        "ImagaSrc" => "/images/cards/hareba_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Экскурсия в Кахетию",
            "en" => "Excursion to Kakhetia",
            "he" => "Экскурсия в Кахетию",
            "ua" => "Екскурсія до Кахетії",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Экскурсия в Кахетию.</b> Винный край, город-крепость Уджарма, Телави, Сигнахи, виды на Алазанскую долину, винный завод Хареба.",
            "en" => "<b>Excursion to Kakhetia.</b> Land of the wine, fortress of Ujarma, Telavi, Sighnaghi, views of the Alazan valley, Khareba winery.",
            "he" => "<b>Экскурсия в Кахетию.</b> Винный край, город-крепость Уджарма, Телави, Сигнахи, виды на Алазанскую долину, винный завод Хареба.",
            "ua" => "<b>Екскурсія до Кахетії.</b> Винний край, місто-фортеця Уджарма, Телаві, Сигнахі, види на Алазанську долину, винний завод Хареба.",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/excursion-to-kaheti-winery-hareba.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "13 часов",
            "en" => "13 hours",
            "he" => "13 часов",
            "ua" => "13 годин",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "55$",
            "en" => "55$",
            "he" => "55$",
            "ua" => "55$",
        )

    ),
    Array(
        "ImagaSrc" => "/images/cards/rafting_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Рафтинг в Грузии",
            "en" => "Rafting in Georgia",
            "he" => "Рафтинг в Грузии",
            "ua" => "Рафтинг у Грузії",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Рафтинг в Грузии.</b> Рафтинг для активного проведения отдыха с разными уровнями сложности. Проходит на реке Кура возле Хертвиси.",
            "en" => "<b>Rafting in Georgia.</b> Rafting for active recreation with different levels of complexity. Passes on the Kura River near Hertvisi.",
            "he" => "<b>Рафтинг в Грузии.</b> Рафтинг для активного проведения отдыха с разными уровнями сложности. Проходит на реке Кура возле Хертвиси.",
            "ua" => "<b>Рафтинг у Грузії.</b> Рафтинг для активного проведення відпочинку із різними рівнями складності. Проходить по річці Кура поблизу Хертвісі.",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/rafting-in-georgia.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "10 часов",
            "en" => "10 hours",
            "he" => "10 часов",
            "ua" => "10 годин",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "75$",
            "en" => "75$",
            "he" => "75$",
            "ua" => "75$",
        )
    ),


    Array(
        "ImagaSrc" => "/images/cards/armenia_500x300.jpg",
        "ImageAlt" => Array(
            "ru" => "Двухдневный тур в Армению",
            "en" => "Two-days tour to Armenia",
            "he" => "Двухдневный тур в Армению",
            "ua" => "Дводенний тур до Вірменії",
        ),
        "CardDescryption" => Array(
            "ru" => "<b>Двухдневный тур в Армению.</b> Знакомство со столицей Армении - Ереваном, прогулка по городу Дилижан и наслаждение видами озера Севан.",
            "en" => "<b>Two-days tour to Armenia.</b> Acquaintance with the capital of Armenia - Yerevan, walk around the city of Dilijan and enjoy the views of Lake Sevan.",
            "he" => "<b>Двухдневный тур в Армению.</b> Знакомство со столицей Армении - Ереваном, прогулка по городу Дилижан и наслаждение видами озера Севан.",
            "ua" => "<b>Дводенний тур до Вірменії.</b> Знайомство зі столицією Вірменії - Єреваном, прогулянка по місту Дилижан та насолода видами озера Севан.",
        ),
        "ButtonDetails" => Array(
            "ru" => "Подробнее",
            "en" => "Details",
            "he" => "Подробнее",
            "ua" => "Детальніше",
        ),
        "ButtonBuy" => Array(
            "ru" => "Заказать",
            "en" => "To order",
            "he" => "Заказать",
            "ua" => "Замовити",
        ),
        "ButtonDetailsHref" => "/page/excursion-to-armenia.html",
        "ButtonBuyHref" => "/page/contacts.html",
        "CardDetailsShort" => Array(
            "ru" => "2 дня",
            "en" => "2 days",
            "he" => "2 дня",
            "ua" => "2 дні",
        ),
        "CardDetailsShortPrice" => Array(
            "ru" => "150$",
            "en" => "150$",
            "he" => "150$",
            "ua" => "150$",
        )
    ),
);

$cardarr['Свадьба в Кахетии'] = 30;
$cardarr['Свадьба в Казбек'] = 32;
$cardarr['Свадьба в Тбилиси'] = 33;
$cardarr['Свадьба в Кахетиии. Кварели.'] = 31;
$cardarr['Выходные в Грузии. Кахетия'] = 21;
$cardarr['Выходные в Грузии. Казбек с Cool Georgia'] = 22;
$cardarr['Тур в Грузию на 4 дня. Боржоми, Ахалцихе, Вардзия'] = 19;
$cardarr['Тбилиси и его окрестности'] = 17;
$cardarr['Тбилиси и его окрестности. Поездка в Кахетиею'] = 18;
$cardarr['Тур в Грузию на 5 дней. Горы и Море'] = 24;
$cardarr['Зимний тур в Грузию на 5 дней. Бакуриани'] = 28;
$cardarr['Зимний тур в Грузию на 5 дней. Гудаури'] = 29;
$cardarr['Новогодний тур в Грузию на 5 дней. Тбилиси, Мцхета, Гудаури'] = 23;
$cardarr['Кулинарный тур в Грузию на 7 дней'] = 20;
$cardarr['Отдых в Грузии на 7 дней. Горы и Море'] = 25;
$cardarr['Отдых в Грузии на 8 дней недорого'] = 16;
$cardarr['Тур в Грузию на 10 дней'] = 26;
$cardarr['Тур в Грузию и Армению на 6 дней'] = 27;
$cardarr['Экскурсия по Тбилиси'] = 2;
$cardarr['Экскурсия в Мцхету из Тбилиси'] = 11;
$cardarr['Экскурсия в Мцхету и Тбилиси с CoolGeorgia'] = 13;
$cardarr['Экскурсия в Казбек'] = 1;
$cardarr['Экскурсия в Мцхету - Уплисцихе - Гори'] = 12;
$cardarr['Экскурсия в Гудаури'] = 7;
$cardarr['Экскурсия в Бакуриани'] = 4;
$cardarr['Экскурсия в Кахетию из Тбилиси'] = 9;
$cardarr['Экскурсия в Боржоми, Ахалцихе, Вардзия'] = 5;
$cardarr['Экускурсия в Дманиси - Первые европейцы'] = 6;
$cardarr['Экускурсия в монастырь Давид-Гареджа'] = 10;
$cardarr['Экскурсия в Кахетию'] = 8;
$cardarr['Рафтинг в Грузии'] = 15;
$cardarr['Двухдневный тур в Армению'] = 3;


// получить список языков
$Querry = $mysqli->prepare("
                SELECT ll.Lang, ll.LangID
                    FROM LangList ll
                    ORDER BY ll.RowOrder
            ");
$Querry->execute();
$result = GetResultArray($Querry);
$LangList = array();
foreach ($result as $lang){
    $LangList[$lang['Lang']] = $lang['LangID'];
}


$Querry = $mysqli->prepare("
                UPDATE CardSettings SET 
                    ShortTitle = ?,
                    ImagaSrc = ?, 
                    ImageAlt = ?,
                    CardDescryption = ?,
                    ButtonDetails = ?,
                    ButtonBuy = ?,
                    CardDetailsShort = ?,
                    Coast = ?
                  WHERE CardID = ? AND LangID = ?            
            ");
foreach ($LangList as $Lang => $LangID){
    foreach ($Cards as $cd){
        $Querry->bind_param('ssssssssii', $cd['ImageAlt'][$Lang],$cd['ImagaSrc'],$cd['ImageAlt'][$Lang],$cd['CardDescryption'][$Lang],$cd['ButtonDetails'][$Lang],$cd['ButtonBuy'][$Lang],
            $cd['CardDetailsShort'][$Lang],$cd['CardDetailsShortPrice'][$Lang], $cardarr[$cd['ImageAlt']['ru']], $LangID) ;
        $Querry->execute();
    }
}





?>