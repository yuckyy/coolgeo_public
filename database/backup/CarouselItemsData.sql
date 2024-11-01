create table CarouselItemsData
(
    CarouselID      int  not null,
    ItemID          int  not null,
    LangID          int  not null,
    ImageSrc        text null,
    ImageAlt        text null,
    ItemCaption     text null,
    ItemDescryption text null,
    primary key (CarouselID, LangID, ItemID),
    constraint FK_CarouselItemsData_CarouselID
        foreign key (CarouselID) references Carousel (CarouselID),
    constraint FK_CarouselItemsData_ItemID
        foreign key (ItemID) references CarouselItems (ItemID),
    constraint FK_CarouselItemsData_LangID
        foreign key (LangID) references LangList (LangID)
)
    collate = utf8_general_ci
    avg_row_length = 1489;

INSERT INTO gbua_cgdb.CarouselItemsData (CarouselID, ItemID, LangID, ImageSrc, ImageAlt, ItemCaption, ItemDescryption) VALUES (1, 1, 1, '/images/slider/tbilisi-coolgeorgiatravel4.jpg', 'Отдых в Грузии c Cool Georgia Travel', 'Хочешь отдохнуть в Грузии? - Приглашаем к нам в гости!', 'Почувствуй жизнь и вкус Грузии и она навсегда останется в твоём сердце');
INSERT INTO gbua_cgdb.CarouselItemsData (CarouselID, ItemID, LangID, ImageSrc, ImageAlt, ItemCaption, ItemDescryption) VALUES (1, 2, 1, '/images/slider/kakhetia-coolgeorgiatravel4.jpg', 'Туры в Грузию c Cool Georgia Travel', 'Отдых в Грузии - это наслаждение и увлекательное путешествие!', 'Мы подготовили интересные экскурсионные туры разной продолжительности, чтобы показать тебе все достопримечательности нашей страны');
INSERT INTO gbua_cgdb.CarouselItemsData (CarouselID, ItemID, LangID, ImageSrc, ImageAlt, ItemCaption, ItemDescryption) VALUES (1, 3, 1, '/images/slider/signaghi-coolgeorgiatravel4.jpg', 'Экскурсии по Грузии c Cool Georgia Travel', 'А теперь просто выбери то, что хочеться увидеть и попробовать!', 'Здесь на нашем сайте ты обязательно найдешь для себя что-то интресное');
INSERT INTO gbua_cgdb.CarouselItemsData (CarouselID, ItemID, LangID, ImageSrc, ImageAlt, ItemCaption, ItemDescryption) VALUES (1, 1, 2, '/images/slider/tbilisi-coolgeorgiatravel4.jpg', 'Resting in Georgia with Cool Georgia Travel', 'Do you want to rest in Georgia? - We invite you to be our guest!', 'Feel the life and taste of Georgia and it will forever remain in your heart');
INSERT INTO gbua_cgdb.CarouselItemsData (CarouselID, ItemID, LangID, ImageSrc, ImageAlt, ItemCaption, ItemDescryption) VALUES (1, 2, 2, '/images/slider/kakhetia-coolgeorgiatravel4.jpg', 'Tours to Georgia with Cool Georgia Travel', 'Rest in Georgia is a pleasure and an exciting trip!', 'We prepared interesting excursion tours of different duration to show you all the sights of our country');
INSERT INTO gbua_cgdb.CarouselItemsData (CarouselID, ItemID, LangID, ImageSrc, ImageAlt, ItemCaption, ItemDescryption) VALUES (1, 3, 2, '/images/slider/signaghi-coolgeorgiatravel4.jpg', 'Excursions in Georgia with Cool Georgia Travel', 'And now just choose what you want to see and try!', 'Here on our website you will find for yourself something interesting');
INSERT INTO gbua_cgdb.CarouselItemsData (CarouselID, ItemID, LangID, ImageSrc, ImageAlt, ItemCaption, ItemDescryption) VALUES (1, 1, 3, '/images/slider/tbilisi-coolgeorgiatravel4.jpg', 'חגים בגאורגיה', 'אתה רוצה לנוח בגאורגיה? - אנו מזמינים אתכם להיות אורח שלנו!', 'להרגיש את החיים ואת הטעם של גאורגיה וזה יהיה לנצח להישאר בלב שלך');
INSERT INTO gbua_cgdb.CarouselItemsData (CarouselID, ItemID, LangID, ImageSrc, ImageAlt, ItemCaption, ItemDescryption) VALUES (1, 2, 3, '/images/slider/kakhetia-coolgeorgiatravel4.jpg', 'טיולים לגיאורגיה', 'מנוחה בגאורגיה היא תענוג ומסע מרגש!', 'הכנו טיולים וסיורים מעניינים להראות לך את כל המראות של המדינה שלנו');
INSERT INTO gbua_cgdb.CarouselItemsData (CarouselID, ItemID, LangID, ImageSrc, ImageAlt, ItemCaption, ItemDescryption) VALUES (1, 3, 3, '/images/slider/signaghi-coolgeorgiatravel4.jpg', 'טיולים בגיאורגיה', 'ועכשיו פשוט לבחור מה אתה רוצה לראות ולנסות!', 'כאן באתר שלנו תוכלו למצוא לעצמכם משהו מעניין');
INSERT INTO gbua_cgdb.CarouselItemsData (CarouselID, ItemID, LangID, ImageSrc, ImageAlt, ItemCaption, ItemDescryption) VALUES (1, 1, 4, '/images/slider/tbilisi-coolgeorgiatravel4.jpg', 'Відпочинок у Грузії з Cool Georgia Travel', 'Хочешь відпочити в Грузії? - Запрошуємо до нас у гості!', 'Відчуй життя та смак Грузії і вона назавжди залишиться у твоєму серці');
INSERT INTO gbua_cgdb.CarouselItemsData (CarouselID, ItemID, LangID, ImageSrc, ImageAlt, ItemCaption, ItemDescryption) VALUES (1, 2, 4, '/images/slider/kakhetia-coolgeorgiatravel4.jpg', 'Тури до Грузії з Cool Georgia Travel', 'Відпочинок в Грузії - це насолода та захоплююча подорож!', 'Ми підготували цікаві екскурсійні тури різної тривалості, щоб показати тобі всі визначні пам\'ятки нашої країни');
INSERT INTO gbua_cgdb.CarouselItemsData (CarouselID, ItemID, LangID, ImageSrc, ImageAlt, ItemCaption, ItemDescryption) VALUES (1, 3, 4, '/images/slider/signaghi-coolgeorgiatravel4.jpg', 'Екскурсії по Грузії з Cool Georgia Travel', 'А зараз лише обери те, що бажаєшь побачити й спробувати!', 'Тут, на нашому сайті, ви обов`язково знайдете щось цікаве для себе');
