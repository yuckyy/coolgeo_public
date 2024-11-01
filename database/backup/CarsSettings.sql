create table CarsSettings
(
    CarsID                     int  not null,
    LangID                     int  not null,
    ShortTitle                 text null,
    CardDescryption            text null,
    ButtonBuy                  text null,
    CardDetailsShort           text null,
    CardDetailsShortPriceID    text null,
    ImageSrc                   text null,
    ImageAlt                   text null,
    CardDescription_ImageSrc   text null,
    CardDescriptionImage_alt   text null,
    CardDescriptionImage_title text null,
    CardDescription_Text       text null,
    primary key (CarsID, LangID),
    constraint FK_CarsSettings_CarsID
        foreign key (CarsID) references Cars (CarsID),
    constraint FK_CarsSettings_LangID
        foreign key (LangID) references LangList (LangID)
)
    collate = utf8_general_ci
    avg_row_length = 3627;

INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (1, 1, 'FORD Escape (2012) белый', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>

', null, null, null, '/images/cars/Cars_500_300_1_2.png', null, null, null, null, 'описание характеристик машины
');
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (1, 2, 'FORD Escape (2012) white', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>

', null, null, null, '/images/cars/Cars_500_300_1_2.png', null, null, null, null, 'description of the characteristics of the machine');
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (1, 4, 'FORD Escape (2012) білий', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>

', null, null, null, '/images/cars/Cars_500_300_1_2.png', null, null, null, null, 'опис характеристик машини');
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (2, 1, 'FORD Escape (2010)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>

', null, null, null, '/images/cars/Cars_500_300_1_2.png', null, null, null, null, 'описание характеристик машины
');
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (2, 2, 'FORD Escape (2010)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>

', null, null, null, '/images/cars/Cars_500_300_1_2.png', null, null, null, null, 'description of the characteristics of the machine');
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (2, 4, 'FORD Escape (2010)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_1_2.png', null, null, null, null, 'опис характеристик машини');
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (3, 1, 'Mazda 5 Minivan (2013)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_3.png', null, null, null, null, 'описание характеристик машины
');
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (3, 2, 'Mazda 5 Minivan (2013)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_3.png', null, null, null, null, 'description of the characteristics of the machine');
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (3, 4, 'Mazda 5 Minivan (2013)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_3.png', null, null, null, null, 'опис характеристик машини');
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (4, 1, 'HONDA INSIGHT (2009)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, 'описание характеристик машини');
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (4, 2, 'HONDA INSIGHT (2009)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, 'description of the characteristics of the machine');
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (4, 4, 'HONDA INSIGHT (2009)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (5, 1, 'TOYOTA PRIUS (2008)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (5, 2, 'TOYOTA PRIUS (2008)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (5, 4, 'TOYOTA PRIUS (2008)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (6, 1, 'TOYOTA PRIUS (2009)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (6, 2, 'TOYOTA PRIUS (2009)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (6, 4, 'TOYOTA PRIUS (2009)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (7, 1, 'Mazda 6 (2015) синий', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_7.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (7, 2, 'Mazda 6 (2015) blue', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_7.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (7, 4, 'Mazda 6 (2015) синій', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_7.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (8, 1, 'Mazda 6 (2015) черный', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_7.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (8, 2, 'Mazda 6 (2015) black', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_7.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (8, 3, 'Mazda 6 (2015) чорний', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_7.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (9, 1, 'Mazda 6 (2015) серый', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_7.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (9, 2, 'Mazda 6 (2015) grey', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_7.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (9, 4, 'Mazda 6 (2015) сірий', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_7.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (10, 1, 'Mazda 3 (2015)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (10, 2, 'Mazda 3 (2015)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (10, 4, 'Mazda 3 (2015)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (11, 1, 'Mazda 3 хетчбэк (2015)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (11, 2, 'Mazda 3 hatchback (2015)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (11, 4, 'Mazda 3 хетсбек (2015)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (12, 1, 'Mazda 3 седан (2015)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_12.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (12, 2, 'Mazda 3 sedan (2015)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_12.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (12, 4, 'Mazda 3 сдан (2015)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_12.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (13, 1, 'Mazda 3 (2016)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (13, 2, 'Mazda 3 (2016)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (13, 4, 'Mazda 3 (2016)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (14, 1, 'Mazda CX-5 (2015)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_14.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (14, 2, 'Mazda CX-5 (2015)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_14.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (14, 4, 'Mazda CX-5 (2015)', '<div class="col-3 text-center">БЕНЗИН</div>', null, null, null, '/images/cars/Cars_500_300_14.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (15, 1, 'Jeep compas (2016)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_15.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (15, 2, 'Jeep compas (2016)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_15.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (15, 4, 'Jeep compas (2016)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_15.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (16, 1, 'SUBARU forester (2015)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_16.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (16, 2, 'SUBARU forester (2015)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_16.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (16, 4, 'SUBARU forester (2015)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_16.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (17, 1, 'Jeep Renegade trailhawk (2016)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_17.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (17, 2, 'Jeep Renegade trailhawk (2016)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_17.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (17, 4, 'Jeep Renegade trailhawk (2016)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_17.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (18, 1, 'Honda CRV (2012)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_18.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (18, 2, 'Honda CRV (2012)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_18.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (18, 4, 'Honda CRV (2012)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/Cars_500_300_18.png', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (19, 1, 'Volkswagen jetta (2016)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (19, 2, 'Volkswagen jetta (2016)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (19, 4, 'Volkswagen jetta (2016)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (20, 1, 'Toyota rav 4 (2018)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (20, 2, 'Toyota rav 4 (2018)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (20, 4, 'Toyota rav 4 (2018)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (21, 1, 'Chevrolet volt (2013)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (21, 2, 'Chevrolet volt (2013)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (21, 4, 'Chevrolet volt (2013)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (22, 1, 'Hyndai ix35 (2016)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (22, 2, 'Hyndai ix35 (2016)', '<div class="col-3 text-center">БЕНЗИН</div>
<div class="col-3 text-center">АВТОМАТ</div>
<div class="col-3 text-center">4</div>
<div class="col-3 text-center">2,5</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (22, 4, 'Hyndai ix35 (2016)', '<div class="col-3 text-center">БЕНЗИН</div>', null, null, null, '/images/cars/prius.jpeg
', null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (23, 1, 'Mercedes Vito', null, null, null, null, null, null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (23, 2, 'Mercedes Vito', null, null, null, null, null, null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (23, 4, 'Mercedes Vito', null, null, null, null, null, null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (24, 1, 'Mercedes R350', null, null, null, null, null, null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (24, 2, 'Mercedes R350', null, null, null, null, null, null, null, null, null, null);
INSERT INTO gbua_cgdb.CarsSettings (CarsID, LangID, ShortTitle, CardDescryption, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImageSrc, ImageAlt, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (24, 4, 'Mercedes R350', null, null, null, null, null, null, null, null, null, null);
