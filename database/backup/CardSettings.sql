create table CardSettings
(
    CardID                     int  not null,
    LangID                     int  not null,
    ShortTitle                 text null,
    RouteTitle                 text null,
    RouteText                  text null,
    CardDescryption            text null,
    ButtonDetails              text null,
    ButtonBuy                  text null,
    CardDetailsShort           text null,
    CardDetailsShortPriceID    text null,
    ImagaSrc                   text null,
    ImageAlt                   text null,
    Coast                      text null,
    CoastsTitle                text null,
    CoastsText                 text null,
    IncludesTitle              text null,
    IncludesText               text null,
    AdditionalTitle            text null,
    AdditionalText             text null,
    CardDescription_ImageSrc   text null,
    CardDescriptionImage_alt   text null,
    CardDescriptionImage_title text null,
    CardDescription_Text       text null,
    primary key (CardID, LangID),
    constraint FK_CardSettings_CardID
        foreign key (CardID) references Card (CardID),
    constraint FK_CardSettings_LangID
        foreign key (LangID) references LangList (LangID)
)
    collate = utf8_general_ci
    avg_row_length = 3627;

INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (1, 1, 'Экскурсия в Казбек', 'Маршрут экскурсии в Казбек с Cool Georgia Travel:', '<img style="width: 100%;" title="Экскурсия в Казбег" src="/images/excoursions/maps/ex_kazbeg_en_1110.jpg" alt="">', '<b>Экскурсия в Казбек (Степанцминда).</b> Лучшие виды на великие грузинские горы, Гудаури, Казбек, подъём к храму Гергети на джипах', 'Детали', 'Бронировать', '14 часов', '', '/images/cards/kazbeg_500x300.jpg', 'Экскурсия в Казбек', '55$', 'Стоимость', '<ul>
                    <li><b>65$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 14 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Подъём к храму Гергети на джипе</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_kazbek_500x220_0.png', 'Экскурсия в Казбек - Cool Georgia Travel', 'Экскурсия в Казбек - Cool Georgia Travel', '<b>Стоимость: от 40$</b>  за 1 человека

<p> Стоимость <b> зависит от количества человек в группе </b>:чем больше людей, тем дешевле! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;"class="text-center" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;"class="text-center">195</td>
                                <td style="padding: 6px !important;"class="text-center">98</td>
                                <td style="padding: 6px !important;"class="text-center">65</td>
                                <td style="padding: 6px !important;"class="text-center">53</td>
                                <td style="padding: 6px !important;"class="text-center">45</td>
                                <td style="padding: 6px !important;"class="text-center">45</td>
                                <td style="padding: 6px !important;"class="text-center">40</td>
                            </tr>
                   
                        </tbody>
                    </table>

В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Подъём к храму Гергети на джипе</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}
				
				');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (1, 2, 'Excursion to Kazbegi', 'Route of excursion to Kazbeg with Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Kazbeg" src="/images/excoursions/maps/ex_kazbeg_en_1110.jpg" alt="">', '<b>Excursion to Kazbegi (Stepantsminda).</b> The best views on the greate Georgian mountains, Gudauri, Kazbegi, climbing to the Gergety Temple with jeeps', 'Details', 'To order', '14 hours', '', '/images/cards/kazbeg_500x300.jpg', 'Excursion to Kazbegi', '55$', 'Cost', '<ul>
                    <li><b>65$</b> for 1 person</li>
                </ul>    
                    <p><b>The tour will take place in case if a group of at least 3 people gathers!</b></p>
                    <p>Total duration of the tour - 14 hours </p>
                    <p><b>Meeting point:</b> Metro Rustaveli, 09:00 </p>', 'Included in cost', '<ul>
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Ascent to the Gergeti temple with a jeep</li>
                </ul>', 'Additional charges', ' <ul>
                <li>Dinner</li>
            </ul>
            <h4>To have with you:</h4>
            <ul>
                <li>Comfortable clothes and shoes</li>
                <li>Drinking water</li>
            </ul>', '/images/excoursions/ex_kazbek_500x220_0.png', 'Excursion to Kazbegi - Cool Georgia Travel', 'Excursion to Kazbegi - Cool Georgia Travel', '<b>Cost: 65$</b>  for 1 person

<p> The cost <b> is depends on the count of persons in the group </b>:then more people so cheaper! </p>				
				<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;"class="text-center" scope="col">Group</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 pers, $</td>
                                <td style="padding: 6px !important;"class="text-center">195</td>
                                <td style="padding: 6px !important;"class="text-center">98</td>
                                <td style="padding: 6px !important;"class="text-center">65</td>
                                <td style="padding: 6px !important;"class="text-center">53</td>
                                <td style="padding: 6px !important;"class="text-center">45</td>
                                <td style="padding: 6px !important;"class="text-center">45</td>
                                <td style="padding: 6px !important;"class="text-center">40</td>
                            </tr>
                   
                        </tbody>
                    </table>

THE COST INCLUDES:<ul class="list-ok">
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Ascent to the Gergeti temple with a jeep</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (1, 3, 'Экскурсия в Казбек', 'Маршрут экскурсии в Казбек с Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Kazbeg" src="/images/excoursions/maps/ex_kazbeg_en_1110.jpg" alt="">', '<b>Экскурсия в Казбек (Степанцминда).</b> Лучшие виды на великие грузинские горы, Гудаури, Казбек, подъём к храму Гергети на джипах', 'Детали', 'Бронировать', '14 часов', '', '/images/cards/kazbeg_500x300.jpg', 'Экскурсия в Казбек', '55$', 'Стоимость', '<ul>
                    <li><b>65$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 14 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>
                ', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Подъём к храму Гергети на джипе</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_kazbek_500x220_0.png', 'Экскурсия в Казбек - Cool Georgia Travel', 'Экскурсия в Казбек - Cool Georgia Travel', '<b>Стоимость: от 40$</b>  за 1 человека

<p> Стоимость <b> зависит от количества человек в группе </b>:чем больше людей, тем дешевле! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;"class="text-center" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;"class="text-center">195</td>
                                <td style="padding: 6px !important;"class="text-center">98</td>
                                <td style="padding: 6px !important;"class="text-center">65</td>
                                <td style="padding: 6px !important;"class="text-center">53</td>
                                <td style="padding: 6px !important;"class="text-center">45</td>
                                <td style="padding: 6px !important;"class="text-center">45</td>
                                <td style="padding: 6px !important;"class="text-center">40</td>
                            </tr>
                   
                        </tbody>
                    </table>

В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Подъём к храму Гергети на джипе</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}
				
				');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (1, 4, 'Екскурсія до Казбегі', 'Маршрут екскурсії в Казбек з Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Kazbeg" src="/images/excoursions/maps/ex_kazbeg_en_1110.jpg" alt="">', '<b>Екскурсія до Казбегі (Степанцмінда).</b> Кращі види на могутні грузинські гори, Гудаурі, Казбегі, підйом до храму Гергеті на джипах', 'Деталi', 'Замовити', '14 годин', '', '/images/cards/kazbeg_500x300.jpg', 'Екскурсія до Казбегі', '55$', 'Вартість', '<ul>
                    <li><b>65$</b> за 1 людину</li>
                </ul>    
                    <p><b>Екскурсія здійснюється тільки у випадку, коли збирається не менш ніж 3 людини! </b></p>
                    <p>Загальна тривалість туру - 14 годин </p>
                    <p><b>Місце зустрічі:</b> метро Руставелі, 09:00 </p>
', 'У вартість включено', '<ul>
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    <li> Підйом до храму Гергети на джипі </li>
                </ul>
', 'Додаткова оплата', '<ul>
                <li>Обід</li>
            </ul>
            <h4>З собою мати:</h4>
            <ul>
                <li>Зручний одяг і взуття </li>
                <li>Питна вода</li>
            </ul>
', '/images/excoursions/ex_kazbek_500x220_0.png', 'Екскурсія до Казбегі - Cool Georgia Travel', 'Екскурсія до Казбегі - Cool Georgia Travel', '<b>Вартість: від 40$</b> за 1 людину

<p> Вартість <b> залежить від кількості людей у ​​групі </b>: чим більше людей, тим дешевше! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;"class="text-center" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;"class="text-center">195</td>
                                <td style="padding: 6px !important;"class="text-center">98</td>
                                <td style="padding: 6px !important;"class="text-center">65</td>
                                <td style="padding: 6px !important;"class="text-center">53</td>
                                <td style="padding: 6px !important;"class="text-center">45</td>
                                <td style="padding: 6px !important;"class="text-center">45</td>
                                <td style="padding: 6px !important;"class="text-center">40</td>
                            </tr>
                   
                        </tbody>
                    </table>

 У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    <li> Підйом до храму Гергети на джипі </li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (2, 1, 'Экскурсия по Тбилиси', 'Маршрут экскурсии по Тбилиси с Cool Georgia Travel:', '<img style="width: 100%;" title="Экскурсия по Тбилиси с Cool Georgia" src="/images/excoursions/maps/ex_tbilisi_1110_en.jpg" alt="">', '<b>Экскурсия по Тбилиси</b>. Все лучшие места столицы и много интересных историй о Грузии за один день.', 'Детали', 'Бронировать', '8 часов', '', '/images/cards/tbilisi_500x300.jpg', 'Экскурсия по Тбилиси', '30$', 'Стоимость', '<ul>
                    <li><b>60 GEL</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случае, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 4-5 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:30 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                </ul>', 'Дополнительная оплата', '<ul>
  <li>Входные билеты на указанные объекты</li>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_tbilisi_500x220_0.png', 'Экскурсия по Тбилиси - Cool Georgia Travel', 'Экскурсия по Тбилиси - Cool Georgia Travel', '<b>Стоимость: 22$  </b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><a href="tel: +995598001461">+995 598 00 14 61</a></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (2, 2, 'Excursion to Tbilisi', 'Route of excursion around Tbilisi with Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion around Tbilisi" src="/images/excoursions/maps/ex_tbilisi_1110_en.jpg" alt="">', '<b>Excursion to Tbilisi</b>. All the best places in the capital and a lot of interesting stories about Georgia in one day.', 'Details', 'To order', '8 hours', '', '/images/cards/tbilisi_500x300.jpg', 'Excursion to Tbilisi', '30$', 'Cost', '<ul>
                    <li><b>60 GEL</b> for 1 person</li>
                </ul>    
                    <p><b>The tour will take place in case if a group of at least 3 people gathers!</b></p>
                    <p>Total duration of the tour - 4-5 hours </p>
                    <p><b>Meeting point:</b> Metro Rustaveli, 09:00 </p>', 'Included in cost', '<ul>
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                </ul>', 'Additional charges', ' <ul>
 <li>Entrance tickets to the above objects</li>
                <li>Dinner</li>
            </ul>
            <h4>To have with you:</h4>
            <ul>
                <li>Comfortable clothes and shoes</li>
                <li>Drinking water</li>
            </ul>', '/images/excoursions/ex_tbilisi_500x220_0.png', 'Excursion to Tbilisi - Cool Georgia Travel', 'Excursion to Tbilisi - Cool Georgia Travel', '<b>Cost: 22$  </b>  for 1 person<br> THE COST INCLUDES:<ul class="list-ok">
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><a href="tel: +995598001461">+995 598 00 14 61</a></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (2, 3, 'Экскурсия по Тбилиси', 'Маршрут экскурсии по Тбилиси с Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion around Tbilisi" src="/images/excoursions/maps/ex_tbilisi_1110_en.jpg" alt="">', '<b>Экскурсия по Тбилиси</b>. Все лучшие места столицы и много интересных историй о Грузии за один день.', 'Детали', 'Бронировать', '8 часов', '', '/images/cards/tbilisi_500x300.jpg', 'Экскурсия по Тбилиси', '30$', 'Стоимость', '<ul>
                    <li><b>60 GEL</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случае, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 4-5 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                </ul>', 'Дополнительная оплата', '<ul>
 <li>Входные билеты на указанные объекты</li>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_tbilisi_500x220_0.png', 'Экскурсия по Тбилиси - Cool Georgia Travel', 'Экскурсия по Тбилиси - Cool Georgia Travel', '<b>Стоимость: 22$ </b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><a href="tel: +995598001461">+995 598 00 14 61</a></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (2, 4, 'Екскурсія по Тбілісі', 'Маршрут екскурсії по Тбілісі з Cool Georgia Travel:', '<img style="width: 100%;" title="Екскурсія по Тбілісі з Cool Georgia" src="/images/excoursions/maps/ex_tbilisi_1110_en.jpg" alt="">', '<b>Екскурсія по Тбілісі</b>. Усі кращі місця столиці та багато цікавих історій про Грузію за один день.', 'Деталi', 'Замовити', '8 годин', '', '/images/cards/tbilisi_500x300.jpg', 'Екскурсія по Тбілісі', '30$', 'Вартість', '<ul>
                    <li><b>60 GEL</b> за 1 людину </li>
                </ul>    
                    <p><b> Екскурсія здійснюється тільки у випадку, коли збирається не менш ніж 3 людини!</b></p>
                    <p> Загальна тривалість туру - 4-5 годин </p>
                    <p><b> Місце зустрічі:</b> метро Руставелі, 09:00 </p>
', 'У вартість включено', '<ul>
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                </ul>
', 'Додаткова оплата', '<ul>
 <li> Вхідні квитки до зазначених об\'єктів </li>
                <li>Обід</li>
            </ul>
            <h4>З собою мати:</h4>
            <ul>
                <li>Зручний одяг і взуття </li>
                <li>Питна вода</li>
            </ul>
', '/images/excoursions/ex_tbilisi_500x220_0.png', 'Екскурсія по Тбілісі - Cool Georgia Travel', 'Екскурсія по Тбілісі - Cool Georgia Travel', '<b>Вартість: 22$ </b> за 1 людину<br> У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><a href="tel: +995598001461">+995 598 00 14 61</a></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (3, 1, 'Двухдневный тур в Армению', 'Маршрут экскурсии  в Армению с Cool Georgia Travel:', '<img style="width: 100%;" title="Экскурсия в Армению из Тбилиси" src="/images/excoursions/maps/ex_armenia_1110.jpg" alt="">', '<b>Двухдневный тур в Армению.</b> Знакомство со столицей Армении - Ереваном, прогулка по городу Дилижан и наслаждение видами озера Севан.', 'Детали', 'Бронировать', '2 дня', '', '/images/excoursions/armenia/new_ex_armenia_0_500x300.png', 'Двухдневный тур в Армению', '225$', 'Стоимость', '<ul>
                    <li><b>235$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 2 дня </p>
                    <p><b>Место встречи:</b> метро Руставели, 08:00 </p>', 'В стоимость включено', '<ul>
                    <li>Проживание в городе Ереван (1 ночь в отеле 3*)</li>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида-тамады на протяжении всего путешествия</li>
					<li>Входные билеты на указанные объекты</li>
					<li>Дегустация коньяка на заводе Арарат</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Питание</li>
                <li>виза в Армению (гражданам Украины и России виза не нужна)</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/armenia/new_ex_Armenia_1_500x243.png', 'Двухдневный тур в Армению - Cool Georgia Travel', 'Двухдневный тур в Армению - Cool Georgia Travel', '<b>Стоимость: 235$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Проживание в городе Ереван (1 ночь в отеле 3*)</li>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
					<li>Дегустация коньяка на заводе Арарат</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (3, 2, 'Two-days tour to Armenia', 'Route of excursion to Armenia with Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Armenia from Tbilisi" src="/images/excoursions/maps/ex_armenia_1110.jpg" alt="">', '<b>Two-days tour to Armenia.</b> Acquaintance with the capital of Armenia - Yerevan, walk around the city of Dilijan and enjoy the views of Lake Sevan.', 'Details', 'To order', '2 days', '', '/images/excoursions/armenia/new_ex_armenia_0_500x300.png', 'Two-days tour to Armenia', '225$', 'Cost', '<ul>
                    <li><b>235$</b> for 1 person</li>
                </ul>    
                    <p><b>The tour will take place in case if a group of at least 3 people gathers!</b></p>
                    <p>Total duration of the tour - 2 days </p>
                    <p><b>Meeting point:</b> Metro Rustaveli, 08:00 </p>', 'Included in cost', '<ul>
                    <li>Accommodation in Yerevan (1 night in 3 star hotel)</li>
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
					<li> Entrance tickets </li>
					<li> Cognac tasting at Ararat factory </li>
                </ul>', 'Additional charges', ' <ul>
                <li>Food</li>
                <li>visa to Armenia (citizens of Ukraine and Russia do not need a visa)</li>
            </ul>
            <h4>With you to have:</h4>
            <ul>
                <li>Comfortable clothes and shoes</li>
                <li>Drinking water</li>
            </ul>', '/images/excoursions/armenia/new_ex_Armenia_1_500x243.png', 'Two-days tour to Armenia - Cool Georgia Travel', 'Two-days tour to Armenia - Cool Georgia Travel', '<b>Cost: 235$</b>  for 1 person<br> THE COST INCLUDES:<ul class="list-ok">
                    <li>Accommodation in Yerevan (1 night in 3 star hotel)</li>
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
					<li> Cognac tasting at Ararat factory </li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (3, 3, 'Двухдневный тур в Армению', 'Маршрут экскурсии в Армению с Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Armenia from Tbilisi" src="/images/excoursions/maps/ex_armenia_1110.jpg" alt="">', '<b>Двухдневный тур в Армению.</b> Знакомство со столицей Армении - Ереваном, прогулка по городу Дилижан и наслаждение видами озера Севан.', 'Детали', 'Бронировать', '2 дня', '', '/images/excoursions/armenia/new_ex_armenia_0_500x300.png', 'Двухдневный тур в Армению', '225$', 'Стоимость', '<ul>
                    <li><b>235$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 2 дня </p>
                    <p><b>Место встречи:</b> метро Руставели, 08:00 </p>', 'В стоимость включено', '<ul>
                    <li>Проживание в городе Ереван (1 ночь в отеле 3*)</li>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида-тамады на протяжении всего путешествия</li>
					<li>Входные билеты на указанные объекты</li>
					<li>Дегустация коньяка на заводе Арарат</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Питание</li>
                <li>виза в Армению (гражданам Украины и России виза не нужна)</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/armenia/new_ex_Armenia_1_500x243.png', 'Двухдневный тур в Армению - Cool Georgia Travel', 'Двухдневный тур в Армению - Cool Georgia Travel', '<b>Стоимость: 235$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Проживание в городе Ереван (1 ночь в отеле 3*)</li>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
					<li>Дегустация коньяка на заводе Арарат</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (3, 4, 'Дводенний тур до Вірменії', 'Маршрут екскурсії до Вірменії з Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Armenia from Tbilisi" src="/images/excoursions/maps/ex_armenia_1110.jpg" alt="">', '<b>Дводенний тур до Вірменії.</b> Знайомство зі столицією Вірменії - Єреваном, прогулянка по місту Дилижан та насолода видами озера Севан.', 'Деталi', 'Замовити', '2 дні', '', '/images/excoursions/armenia/new_ex_armenia_0_500x300.png', 'Дводенний тур до Вірменії', '225$', 'Вартість', '<ul>
                    <li><b>235$</b> за 1 людину </li>
                </ul>    
                    <p><b> Екскурсія здійснюється тільки у випадку, коли збирається не менш ніж 3 людини!</b></p>
                    <p> Загальна тривалість туру - 2 дні </p>
                    <p><b> Місце зустрічі:</b> метро Руставелі, 08:00 </p>
', 'У вартість включено', '<ul>
                    <li> Проживання в місті Єреван (1 ніч в готелі 3 *) </li>
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда-тамади на протязі всієї подорожі </li>
					<Li> Вхідні квитки на зазначені об\'єкти </li>
					<Li> Дегустація коньяку на заводі Арарат </li>
                </ul>
', 'Додаткова оплата', '<ul>
                <li>Харчування</li>
                <li>віза до Вірменії  (громадянам України та Росії віза не потрібна)</li>
            </ul>
            <h4>З собою мати:</h4>
            <ul>
                <li>Зручний одяг і взуття</li>
                <li>Питна вода</li>
            </ul>
', '/images/excoursions/armenia/new_ex_Armenia_1_500x243.png', 'Дводенний тур до Вірменії - Cool Georgia Travel', 'Дводенний тур до Вірменії - Cool Georgia Travel', '<b>Вартість: 235$</b> за 1 людину<br> У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                    <li> Проживання в місті Єреван (1 ніч в готелі 3 *) </li>
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда-тамади на протязі всієї подорожі </li>
					<Li> Дегустація коньяку на заводі Арарат </li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (4, 1, 'Экскурсия в Бакуриани', 'Маршрут экскурсии в Бакуриани с Cool Georgia Travel:', '<img style="width: 100%;" title="Экскурсия в Бакуриани" src="/images/excoursions/maps/ex_bakuriani_1110.jpg" alt="">', '<b>Экскурсия в Бакуриани.</b> Отлично подходит для семейного зимнего отдыха с детьми. Есть всё, чтобы сделать этот день незабываемым.', 'Детали', 'Бронировать', '14 часов ', '', '/images/excoursions/ex_bakuriani_500x300.jpg', 'Экскурсия в Бакуриани', '50$', 'Стоимость', '<ul>
                    <li><b>60$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 14 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Подъем на на канатной дороге на трассу (1 раз)</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
                <li>Канатная дорога</li>
                <li>Полет на пароплане</li>
                <li>Инструктор</li>
                <li>Аренда спортивного снаряжения</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_bakuriani_500x200_0.png', 'Экскурсия в Бакуриани - Cool Georgia Travel', 'Экскурсия в Бакуриани - Cool Georgia Travel', '<b>Стоимость: 60$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Подъем на на канатной дороге на трассу (1 раз)</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (4, 2, 'Excursion to Bakuriani', 'Route of excursion to Bakuriani with Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Bakuriani" src="/images/excoursions/maps/ex_bakuriani_1110.jpg" alt="">', '<b>Excursion to Bakuriani.</b> Great for a family winter vacation with children. There is everything to make this day unforgettable.', 'Details', 'To order', '14 hours ', '', '/images/excoursions/ex_bakuriani_500x300.jpg', 'Excursion to Bakuriani', '50$', 'Cost', '<ul>
                    <li><b>60$</b> for 1 person</li>
                </ul>    
                     <p><b>The tour will take place in case if a group of at least 3 people gathers!</b></p>
                    <p>The total duration of the tour is 14 hours </p>
                    <p><b>Meeting point:</b> Metro Rustaveli, 09:00 </p>', 'Included in cost', '<ul>
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Entrance tickets to the above objects</li>
                    <li>Rise on the cable car to the track (1 time)</li>
                </ul>', 'Additional charges', '<ul>
                <li>Обед</li>
                <li>Rise on the cable car to the track</li>
                <li>Paragliding</li>
                <li>Instructor</li>
                <li>Sport equipment rent</li>
            </ul>
            <h4>To have with you:</h4>
            <ul>
                <li>Comfortable clothes and shoes</li>
                <li>Drinking water</li>
            </ul>', '/images/excoursions/ex_bakuriani_500x200_0.png', 'Excursion to Bakuriani - Cool Georgia Travel', 'Excursion to Bakuriani - Cool Georgia Travel', '<b>Cost: 60$</b>  for 1 person<br> THE COST INCLUDES:<ul class="list-ok">
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Entrance tickets to the above objects</li>
                    <li>Rise on the cable car to the track (1 time)</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (4, 3, 'Экскурсия в Бакуриани', 'Маршрут экскурсии в Бакуриани с Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Bakuriani" src="/images/excoursions/maps/ex_bakuriani_1110.jpg" alt="">', '<b>Экскурсия в Бакуриани.</b> Отлично подходит для семейного зимнего отдыха с детьми. Есть всё, чтобы сделать этот день незабываемым.', 'Детали', 'Бронировать', '14 часов ', '', '/images/excoursions/ex_bakuriani_500x300.jpg', 'Экскурсия в Бакуриани', '50$', 'Стоимость', '<ul>
                    <li><b>60$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 14 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Подъем на на канатной дороге на трассу (1 раз)</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
                <li>Канатная дорога</li>
                <li>Полет на пароплане</li>
                <li>Инструктор</li>
                <li>Аренда спортивного снаряжения</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_bakuriani_500x200_0.png', 'Экскурсия в Бакуриани - Cool Georgia Travel', 'Экскурсия в Бакуриани - Cool Georgia Travel', '<b>Стоимость: 60$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Подъем на на канатной дороге на трассу (1 раз)</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (4, 4, 'Екскурсія в Бакуріані', 'Маршрут екскурсії в Бакуріані з Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Bakuriani" src="/images/excoursions/maps/ex_bakuriani_1110.jpg" alt="">', '<b>Екскурсія в Бакуріані.</b> Дуже добре підходить для сімейного зимового відпочинку з дітьми. Є все, щоб зробити цей день незабутнім.', 'Деталi', 'Замовити', '14 годин ', '', '/images/excoursions/ex_bakuriani_500x300.jpg', 'Екскурсія в Бакуріані', '50$', 'Вартість', '<ul>
                    <li><b>60$</b> за 1 людину </li>
                </ul>    
                    <p><b> Екскурсія здійснюється тільки у випадку, коли збирається не менш ніж 3 людини! </b></p>
                    <p> Загальна тривалість туру - 14 годин </p>
                    <p><b> Місце зустрічі:</b> метро Руставелі, 09:00 </p>
', 'У вартість включено', '<ul>
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    <li> Підйом канатною дорогою на трасу (1 раз) </li>
                </ul>
', 'Додаткова оплата', '<ul>
                <li>Обід</li>
                <li>Канатна дорога</li>
                <li>Політ на параплані </li>
                <li>Інструктор</li>
                <li>Аренда спортивного снарядження</li>
            </ul>
            <h4>З собою мати:</h4>
            <ul>
                <li>Зручний одяг і взуття</li>
                <li>Питна вода</li>
            </ul>
', '/images/excoursions/ex_bakuriani_500x200_0.png', 'Екскурсія в Бакуріані - Cool Georgia Travel', 'Екскурсія в Бакуріані - Cool Georgia Travel', '<b>Вартість: 60$</b> за 1 людину<br> У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    <li> Підйом канатною дорогою на трасу (1 раз) </li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (5, 1, 'Экскурсия в Боржоми, Ахалцихе, Вардзия', 'Маршрут экскурсии в Боржоми-Ахалцихе-Вардзия с Cool Georgia Travel:', '<img style="width: 100%;" title="Экскурсия в Боржоми-Ахалцихе-Вардзия" src="/images/excoursions/maps/ex_borjomi_vardzia_1110.jpg" alt="">', '<b>Экскурсия в Боржоми, Ахалцихе, Вардзия.</b> Город Боржоми, осмотр крепости Рабат IX века, замок Хертвиси, пещерный город Вардзия.', 'Детали', 'Бронировать', '13 часов', '', '/images/cards/borjomi_500x300.jpg', 'Экскурсия в Боржоми, Ахалцихе, Вардзия', '55$', 'Стоимость', '<ul>
                    <li><b>75$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - около 13 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Входные билеты на указанные объекты</li>
				<li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_borjomi_0_500x220.png', 'Экскурсия в Боржоми, Ахалцихе, Вардзия - Cool Georgia Travel', 'Экскурсия в Боржоми, Ахалцихе, Вардзия - Cool Georgia Travel', '<b>Стоимость: 75$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (5, 2, 'Excursion to Borjomi, Akhaltsikhe, Vardzia', 'Route of excursion to Borjomi-Akhaltsikhe-Vardzia with Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Borjomi-Akhaltsikhe-Vardzia" src="/images/excoursions/maps/ex_borjomi_vardzia_1110.jpg" alt="">', '<b>Excursion to Borjomi, Akhaltsikhe, Vardzia.</b> Borjomi city, visit to fortress of Rabat IX century, castle Hervivzi, cave town Vardzia.', 'Details', 'To order', '13 hours', '', '/images/cards/borjomi_500x300.jpg', 'Excursion to Borjomi, Akhaltsikhe, Vardzia', '55$', 'Cost', '<ul>
                    <li><b>75$</b> for 1 person</li>
                </ul>    
                    <p><b>The tour will take place in case if a group of at least 3 people gathers!</b></p>
                    <p>Total duration of the tour - 13 hours </p>
                    <p><b>Meeting point:</b> Metro Rustaveli, 09:00 </p>', 'Included in cost', '<ul>
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                   
                </ul>', 'Additional charges', '<ul>
                 <li>Entrance tickets to the above objects</li>
				<li>Dinner</li>
            </ul>
            <h4>To have with you:</h4>
            <ul>
                <li>Comfortable clothes and shoes</li>
                <li>Drinking water</li>
            </ul>', '/images/excoursions/ex_borjomi_0_500x220.png', 'Excursion to Borjomi, Akhaltsikhe, Vardzia - Cool Georgia Travel', 'Excursion to Borjomi, Akhaltsikhe, Vardzia - Cool Georgia Travel', '<b>Cost: 75$</b>  for 1 person<br> THE COST INCLUDES:<ul class="list-ok">
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (5, 3, 'Экскурсия в Боржоми, Ахалцихе, Вардзия', 'Маршрут экскурсии в Боржоми-Ахалцихе-Вардзия с Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Borjomi-Akhaltsikhe-Vardzia" src="/images/excoursions/maps/ex_borjomi_vardzia_1110.jpg" alt="">', '<b>Экскурсия в Боржоми, Ахалцихе, Вардзия.</b> Город Боржоми, осмотр крепости Рабат IX века, замок Хертвиси, пещерный город Вардзия.', 'Детали', 'Бронировать', '13 часов', '', '/images/cards/borjomi_500x300.jpg', 'Экскурсия в Боржоми, Ахалцихе, Вардзия', '55$', 'Стоимость', '<ul>
                    <li><b>75$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - около 13 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Входные билеты на указанные объекты</li>
				<li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_borjomi_0_500x220.png', 'Экскурсия в Боржоми, Ахалцихе, Вардзия - Cool Georgia Travel', 'Экскурсия в Боржоми, Ахалцихе, Вардзия - Cool Georgia Travel', '<b>Стоимость: 75$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                   
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (5, 4, 'Екскурсія в Боржомі, Ахалцихе, Вардзія', 'Маршрут екскурсії в Боржомі-Ахалцихе-Вардзія з Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Borjomi-Akhaltsikhe-Vardzia" src="/images/excoursions/maps/ex_borjomi_vardzia_1110.jpg" alt="">', '<b>Екскурсія в Боржомі, Ахалцихе, Вардзія.</b> Місто Боржомі, відвідування фортеці Рабат IX століття, замок Хервівци, печерне місто Вардзія.', 'Деталi', 'Замовити', '13 часов', '', '/images/cards/borjomi_500x300.jpg', 'Екскурсія в Боржомі, Ахалцихе, Вардзія', '55$', 'Вартість', '<ul>
                    <li><b>75$</b> за 1 людину </li>
                </ul>    
                    <p><b> Екскурсія здійснюється тільки у випадку, коли збирається не менш ніж 3 людини! </b></p>
                    <p> Загальна тривалість туру – близько 13 годин </p>
                    <p><b> Місце зустрічі:</b> метро Руставелі, 09:00 </p>
', 'У вартість включено', '<ul>
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    
                </ul>
', 'Додаткова оплата', '<ul>
                <li> Вхідні квитки до зазначених об\'єктів </li>
				<li>Обід</li>
            </ul>
            <h4>З собою мати:</h4>
            <ul>
                <li>Зручний одяг і взуття </li>
                <li>Питна вода</li>
            </ul>
', '/images/excoursions/ex_borjomi_0_500x220.png', 'Екскурсія в Боржомі, Ахалцихе, Вардзія - Cool Georgia Travel', 'Екскурсія в Боржомі, Ахалцихе, Вардзія - Cool Georgia Travel', '<b>Вартість: 75$</b> за 1 людину<br> У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (6, 1, 'Экускурсия в Дманиси - Первые европейцы', 'Маршрут экскурсии в Дманиси - Первые европейцы с Cool Georgia Travel:', '<img style="width: 100%;" title="Экскурсия в Дманиси - Первые европейцы" src="/images/excoursions/maps/ex_dmanisi_1110.jpg" alt="">', '<b>Экускурсия в Дманиси - "Первые европейцы". </b>  Интересная экскурсия, богатая посещением древних исторических мест и рассказами о них.', 'Детали', 'Бронировать', '12 часов', '', '/images/excoursions/maps/europeans_1_500x300.jpg', 'Экускурсия в Дманиси - Первые европейцы', '42$', 'Стоимость', '<ul>
                    <li><b>52$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 12 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_dmanisi_500x220_0.png', 'Экускурсия в Дманиси - Первые европейцы - Cool Georgia Travel', 'Экускурсия в Дманиси - Первые европейцы - Cool Georgia Travel', '<b>Стоимость: 52$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (6, 2, 'Excursion to Dmanisi - The First Europeans', 'Route of excursion to Dmanisi - Fist Europeans with Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Dmanisi - fist europeans" src="/images/excoursions/maps/ex_dmanisi_1110.jpg" alt="">', '<b>Excursion to Dmanisi - "The First Europeans". </b>  An interesting excursion, rich in visiting ancient historic sites and stories about them.', 'Details', 'To order', '12 hours', '', '/images/excoursions/maps/europeans_1_500x300.jpg', 'Excursion to Dmanisi - The First Europeans', '42$', 'Cost', '<ul>
                    <li><b>52$</b> for 1 person</li>
                </ul>    
                    <p><b>The tour will take place in case if a group of at least 3 people gathers!</b></p>
                    <p>Total duration of the tour - 12 hours </p>
                    <p><b>Meeting point:</b> Metro Rustaveli, 09:00 </p>', 'Included in cost', '<ul>
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Entrance tickets to the above objects</li>
                </ul>', 'Additional charges', '<ul>
                <li>Dinner</li>
            </ul>
            <h4>To have with you:</h4>
            <ul>
                <li>Comfortable clothes and shoes</li>
                <li>Drinking water</li>
            </ul>', '/images/excoursions/ex_dmanisi_500x220_0.png', 'Excursion to Dmanisi - The First Europeans - Cool Georgia Travel', 'Excursion to Dmanisi - The First Europeans - Cool Georgia Travel', '<b>Cost: 52$</b>  for 1 person<br> THE COST INCLUDES:<ul class="list-ok">
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Entrance tickets to the above objects</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (6, 3, 'Экускурсия в Дманиси - Первые европейцы', 'Маршрут экскурсии в Дманиси - Первые европейцы с Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Dmanisi - fist europeans" src="/images/excoursions/maps/ex_dmanisi_1110.jpg" alt="">', '<b>Экускурсия в Дманиси - "Первые европейцы". </b>  Интересная экскурсия, богатая посещением древних исторических мест и рассказами о них.', 'Детали', 'Бронировать', '12 часов', '', '/images/excoursions/maps/europeans_1_500x300.jpg', 'Экускурсия в Дманиси - Первые европейцы', '42$', 'Стоимость', '<ul>
                    <li><b>52$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 12 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_dmanisi_500x220_0.png', 'Экускурсия в Дманиси - Первые европейцы - Cool Georgia Travel', 'Экускурсия в Дманиси - Первые европейцы - Cool Georgia Travel', '<b>Стоимость: 52$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (6, 4, 'Екскурсія до Дманісі - Перші європейці', 'Маршрут екскурсії в Дманісі - Перші європейці з Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Dmanisi - fist europeans" src="/images/excoursions/maps/ex_dmanisi_1110.jpg" alt="">', '<b>Екскурсія до Дманісі - "Перші європейці". </b>  Цікава екскурсія, багата на відвідування старовинних історичних пам\'яток та розповідей про них.', 'Деталi', 'Замовити', '12 годин', '', '/images/excoursions/maps/europeans_1_500x300.jpg', 'Екскурсія до Дманісі - Перші європейці', '42$', 'Вартість', '<ul>
                    <li><b>52$</b> за 1 людину </li>
                </ul>    
                    <p><b> Екскурсія здійснюється тільки у випадку, коли збирається не менш ніж 3 людини! </b></p>
                    <p> Загальна тривалість туру  - 12 годин </p>
                    <p><b> Місце зустрічі:</b> метро Руставелі, 09:00 </p>
', 'У вартість включено', '<ul>
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    <li> Вхідні квитки до зазначених об\'єктів </li>
                </ul>
', 'Додаткова оплата', '<ul>
                <li>Обід</li>
            </ul>
            <h4>З собою мати:</h4>
            <ul>
                <li>Зручний одяг і взуття </li>
                <li>Питна вода</li>
            </ul>
', '/images/excoursions/ex_dmanisi_500x220_0.png', 'Екскурсія до Дманісі - Перші європейці - Cool Georgia Travel', 'Екскурсія до Дманісі - Перші європейці - Cool Georgia Travel', '<b>Вартість: 52$</b> за 1 людину<br> У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    <li> Вхідні квитки до зазначених об\'єктів </li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (7, 1, 'Экскурсия в Гудаури', 'Маршрут экскурсии в Гудаури с Cool Georgia Travel:', '<img style="width: 100%;" title="Экскурсия в Гудаури" src="/images/excoursions/maps/ex_gudauri_1110.jpg" alt="">', '<b>Экскурсия в Гудаури.</b> Получите удовольствие и наполните легкие чистым горным воздухом, а глаза порадуйте лучшими видами на горы.', 'Детали', 'Бронировать', '14 часов', '', '/images/excoursions/ex_gudauri_3_500x300.jpg', 'Экскурсия в Гудаури', '40$', 'Стоимость', '<ul>
                    <li><b>50$</b> за 1 человека</li>
                </ul>    
                     <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 14 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Подъем на на канатной дороге на трассу (1 раз)</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
                <li>Канатная дорога</li>
                <li>Полет на пароплане</li>
                <li>Инструктор</li>
                <li>Аренда спортивного снаряжения</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_gudauri_500x220_0.png', 'Экскурсия в Гудаури - Cool Georgia Travel', 'Экскурсия в Гудаури - Cool Georgia Travel', '<b>Стоимость: 50$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Подъем на на канатной дороге на трассу (1 раз)</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (7, 2, 'Excursion to Gudauri', 'Route of excursion to Gudauri with Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Gudauri" src="/images/excoursions/maps/ex_gudauri_1110.jpg" alt="">', '<b>Excursion to Gudauri.</b> Enjoy and fill the lungs with clean mountain air, and your eyes will be happy from the best views of the mountains.', 'Details', 'To order', '14 hours', '', '/images/excoursions/ex_gudauri_3_500x300.jpg', 'Excursion to Gudauri', '40$', 'Cost', '<ul>
                    <li><b>50$</b> for 1 person</li>
                </ul>    
                     <p><b>The tour will take place in case if a group of at least 3 people gathers!</b></p>
                    <p>The total duration of the tour is 14 hours </p>
                    <p><b>Meeting point:</b> Metro Rustaveli, 09:00 </p>', 'Included in cost', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Подъем на на канатной дороге на трассу (1 раз)</li>
                </ul>', 'Additional charges', '<ul>
                <li>Обед</li>
                <li>Rise on the cable car to the track</li>
                <li>Paragliding</li>
                <li>Instructor</li>
                <li>Sport equipment rent</li>
            </ul>
            <h4>To have with you:</h4>
            <ul>
                <li>Comfortable clothes and shoes</li>
                <li>Drinking water</li>
            </ul>', '/images/excoursions/ex_gudauri_500x220_0.png', 'Excursion to Gudauri - Cool Georgia Travel', 'Excursion to Gudauri - Cool Georgia Travel', '<b>Cost: 50$</b>  for 1 person<br> THE COST INCLUDES:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Подъем на на канатной дороге на трассу (1 раз)</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (7, 3, 'Экскурсия в Гудаури', 'Маршрут экскурсии в Гудаури с Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Gudauri" src="/images/excoursions/maps/ex_gudauri_1110.jpg" alt="">', '<b>Экскурсия в Гудаури.</b> Получите удовольствие и наполните легкие чистым горным воздухом, а глаза порадуйте лучшими видами на горы.', 'Детали', 'Бронировать', '14 часов', '', '/images/excoursions/ex_gudauri_3_500x300.jpg', 'Экскурсия в Гудаури', '40$', 'Стоимость', '<ul>
                    <li><b>50$</b> за 1 человека</li>
                </ul>    
                     <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 14 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Подъем на на канатной дороге на трассу (1 раз)</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
                <li>Канатная дорога</li>
                <li>Полет на пароплане</li>
                <li>Инструктор</li>
                <li>Аренда спортивного снаряжения</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_gudauri_500x220_0.png', 'Экскурсия в Гудаури - Cool Georgia Travel', 'Экскурсия в Гудаури - Cool Georgia Travel', '<b>Стоимость: 50$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Подъем на на канатной дороге на трассу (1 раз)</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (7, 4, 'Екскурсія в Гудаурі', 'Маршрут екскурсії в Гудаурі з Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Gudauri" src="/images/excoursions/maps/ex_gudauri_1110.jpg" alt="">', '<b>Екскурсія в Гудаурі.</b> Отримайте задоволення і наповніть легені чистим гірським повітрям, а очі нехай радіють від кращих видів на гори.', 'Деталi', 'Замовити', '14 годин', '', '/images/excoursions/ex_gudauri_3_500x300.jpg', 'Екскурсія в Гудаурі', '40$', 'Вартість', '<ul>
                    <li><b>50$</b> за 1 людину </li>
                </ul>    
                     <p><b> Екскурсія здійснюється тільки у випадку, коли збирається не менш ніж 3 людини! </b></p>
                    <p> Загальна тривалість туру - 14 годин </p>
                    <p><b> Місце зустрічі:</b> метро Руставелі, 09:00 </p>
', 'У вартість включено', '<ul>
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    <li> Підйом канатною дорогою на трасу (1 раз) </li>
                </ul>
', 'Додаткова оплата', '<ul>
                <li>Обід</li>
                <li>Канатна дорога</li>
                <li>Політ на параплані </li>
                <li>Інструктор</li>
                <li>Аренда спортивного снарядження</li>
            </ul>
            <h4>З собою мати:</h4>
            <ul>
                <li>Зручний одяг і взуття</li>
                <li>Питна вода</li>
            </ul>
', '/images/excoursions/ex_gudauri_500x220_0.png', 'Екскурсія в Гудаурі - Cool Georgia Travel', 'Екскурсія в Гудаурі - Cool Georgia Travel', '<b>Вартість: 50$</b> за 1 людину<br> У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    <li> Підйом канатною дорогою на трасу (1 раз) </li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (8, 1, 'Экскурсия в Кахетию', 'Маршрут экскурсии в Кахетию с Cool Georgia Travel:', '<img style="width: 100%;" title="Экскурсия в Кахетию" src="/images/excoursions/maps/ex_hareba_en_1110.jpg" alt="">', '<b>Экскурсия в Кахетию.</b> Винный край, город-крепость Уджарма, Телави, Сигнахи, виды на Алазанскую долину, винный завод Хареба.', 'Детали', 'Бронировать', '13 часов', '', '/images/cards/hareba_500x300.jpg', 'Экскурсия в Кахетию', '55$', 'Стоимость', '<ul>
                    <li><b>65$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случае, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 13 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>', 'Дополнительная оплата', ' <ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_hareba_0_500x220.png', 'Экскурсия в Кахетию - Cool Georgia Travel', 'Экскурсия в Кахетию - Cool Georgia Travel', '<b>Стоимость: 65$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (8, 2, 'Excursion to Kakhetia', 'Route of excursion to Kaheti with Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Kaheti" src="/images/excoursions/maps/ex_hareba_en_1110.jpg" alt="">', '<b>Excursion to Kakhetia.</b> Land of the wine, fortress of Ujarma, Telavi, Sighnaghi, views of the Alazan valley, Khareba winery.', 'Details', 'To order', '13 hours', '', '/images/cards/hareba_500x300.jpg', 'Excursion to Kakhetia', '55$', 'Cost', '<ul>
                    <li><b>65$</b> for 1 person</li>
                </ul>    
                    <p><b>The tour will take place in case if a group of at least 3 people gathers!</b></p>
                    <p>Total duration of the tour - 13 hours </p>
                    <p><b>Meeting point:</b> Metro Rustaveli, 09:00 </p>', 'Included in cost', '<ul>
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Entrance tickets to the above objects</li>
                </ul>', 'Additional charges', '<ul>
                <li>Dinner</li>
            </ul>
            <h4>To have with you:</h4>
            <ul>
                <li>Comfortable clothes and shoes</li>
                <li>Drinking water</li>
            </ul>', '/images/excoursions/ex_hareba_0_500x220.png', 'Excursion to Kakhetia - Cool Georgia Travel', 'Excursion to Kakhetia - Cool Georgia Travel', '<b>Cost: 65$</b>  for 1 person<br> THE COST INCLUDES:<ul class="list-ok">
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Entrance tickets to the above objects</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (8, 3, 'Экскурсия в Кахетию', 'Маршрут экскурсии в Кахетию с Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Kaheti" src="/images/excoursions/maps/ex_hareba_en_1110.jpg" alt="">', '<b>Экскурсия в Кахетию.</b> Винный край, город-крепость Уджарма, Телави, Сигнахи, виды на Алазанскую долину, винный завод Хареба.', 'Детали', 'Бронировать', '13 часов', '', '/images/cards/hareba_500x300.jpg', 'Экскурсия в Кахетию', '55$', 'Стоимость', '<ul>
                    <li><b>65$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случае, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 13 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_hareba_0_500x220.png', 'Экскурсия в Кахетию - Cool Georgia Travel', 'Экскурсия в Кахетию - Cool Georgia Travel', '<b>Стоимость: 65$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (8, 4, 'Екскурсія до Кахетії', 'Маршрут екскурсії в Кахетію з Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Kaheti" src="/images/excoursions/maps/ex_hareba_en_1110.jpg" alt="">', '<b>Екскурсія до Кахетії.</b> Винний край, місто-фортеця Уджарма, Телаві, Сигнахі, види на Алазанську долину, винний завод Хареба.', 'Деталi', 'Замовити', '13 годин', '', '/images/cards/hareba_500x300.jpg', 'Екскурсія до Кахетії', '55$', 'Вартість', '<ul>
                    <li><b>65$</b> за 1 людину </li>
                </ul>    
                    <p><b> Екскурсія здійснюється тільки у випадку, коли збирається не менш ніж 3 людини! </b></p>
                    <p> Загальна тривалість туру - 13 годин </p>
                    <p><b> Місце зустрічі:</b> метро Руставелі, 09:00 </p>
', 'У вартість включено', '<ul>
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    <li> Вхідні квитки до зазначених об\'єктів </li>
                </ul>
', 'Додаткова оплата', '<ul>
                <li>Обід</li>
            </ul>
            <h4>З собою мати:</h4>
            <ul>
                <li>Зручний одяг і взуття </li>
                <li>Питна вода</li>
            </ul>
', '/images/excoursions/ex_hareba_0_500x220.png', 'Екскурсія до Кахетії - Cool Georgia Travel', 'Екскурсія до Кахетії - Cool Georgia Travel', '<b>Вартість: 65$</b> за 1 людину<br> У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    <li> Вхідні квитки до зазначених об\'єктів </li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (9, 1, 'Экскурсия в Кахетию из Тбилиси', 'Маршрут экскурсии в Кахетию с Cool Georgia Travel:', '<img style="width: 100%;" title="Экскурсия в Кахетию" src="/images/excoursions/maps/ex_shumi_1110.jpg" alt="">', '<b>Экскурсия в Кахетию.</b> Край виноделия, город Телави, дом-музей Чавчавадзе, винный завод Шуми, город Сигнахи, монастырь Бодбе.', 'Детали', 'Бронировать', '13 часов', '', '/images/cards/kaheti_1_500x300.jpg', 'Экскурсия в Кахетию из Тбилиси', '45$', 'Стоимость', '<ul>
                    <li><b>55$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 13 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_kaxeti_500x220_0.png', 'Экскурсия в Кахетию из Тбилиси - Cool Georgia Travel', 'Экскурсия в Кахетию из Тбилиси - Cool Georgia Travel', '<b>Стоимость: 55$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (9, 2, 'Excursion to Kakheti from Tbilisi', 'Route of excursion to Kaheti with Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Kaheti" src="/images/excoursions/maps/ex_shumi_1110.jpg" alt="">', '<b>Excursion to Kakheti.</b> Region of winemaking, Telavi city, Chavchavadze\'s house museum, wine factory of Shumi, Sighnaghi city, Bodbe monastery.', 'Details', 'To order', '13 hours', '', '/images/cards/kaheti_1_500x300.jpg', 'Excursion to Kakheti from Tbilisi', '45$', 'Cost', '<ul>
                    <li><b>55$</b> for 1 person</li>
                </ul>    
                    <p><b>The tour will take place in case if a group of at least 3 people gathers!</b></p>
                    <p>Total duration of the tour - 13 hours </p>
                    <p><b>Meeting point:</b> Metro Rustaveli, 09:00 </p>', 'Included in cost', '<ul>
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Entrance tickets to the above objects</li>
                </ul>', 'Additional charges', '<ul>
                <li>Dinner</li>
            </ul>
            <h4>To have with you:</h4>
            <ul>
                <li>Comfortable clothes and shoes</li>
                <li>Drinking water</li>
            </ul>', '/images/excoursions/ex_kaxeti_500x220_0.png', 'Excursion to Kakheti from Tbilisi - Cool Georgia Travel', 'Excursion to Kakheti from Tbilisi - Cool Georgia Travel', '<b>Cost: 55$</b>  for 1 person<br> THE COST INCLUDES:<ul class="list-ok">
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Entrance tickets to the above objects</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (9, 3, 'Экскурсия в Кахетию из Тбилиси', 'Маршрут экскурсии в Кахетию с Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Kaheti" src="/images/excoursions/maps/ex_shumi_1110.jpg" alt="">', '<b>Экскурсия в Кахетию.</b> Край виноделия, город Телави, дом-музей Чавчавадзе, винный завод Шуми, город Сигнахи, монастырь Бодбе.', 'Детали', 'Бронировать', '13 часов', '', '/images/cards/kaheti_1_500x300.jpg', 'Экскурсия в Кахетию из Тбилиси', '45$', 'Стоимость', '<ul>
                    <li><b>55$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 13 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_kaxeti_500x220_0.png', 'Экскурсия в Кахетию из Тбилиси - Cool Georgia Travel', 'Экскурсия в Кахетию из Тбилиси - Cool Georgia Travel', '<b>Стоимость: 55$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (9, 4, 'Екскурсія до Кахетії із Тбілісі', 'Маршрут екскурсии в Кахетію з Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Kaheti" src="/images/excoursions/maps/ex_shumi_1110.jpg" alt="">', '<b>Екскурсія до Кахетії.</b> Край виноробства, місто Телаві, будинок-музей Чавчавадзе, винний завод Шумі, місто Сигнахі, монастир Бодбе.', 'Деталi', 'Замовити', '13 годин', '', '/images/cards/kaheti_1_500x300.jpg', 'Екскурсія до Кахетії із Тбілісі', '45$', 'Вартість', '<ul>
                    <li><b>55$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 13 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>
', 'У вартість включено', '<ul>
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    <li> Вхідні квитки до зазначених об\'єктів </li>
                </ul>
', 'Додаткова оплата', '<ul>
                <li>Обід</li>
            </ul>
            <h4>З собою мати:</h4>
            <ul>
                <li>Зручний одяг і взуття </li>
                <li>Питна вода</li>
            </ul>
', '/images/excoursions/ex_kaxeti_500x220_0.png', 'Екскурсія до Кахетії із Тбілісі - Cool Georgia Travel', 'Екскурсія до Кахетії із Тбілісі - Cool Georgia Travel', '<b>Вартість: 55$</b> за 1 людину<br> У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    <li> Вхідні квитки до зазначених об\'єктів </li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (10, 1, 'Экускурсия в монастырь Давид-Гареджа', 'Маршрут экскурсии в монастырь Давид-Гареджи с Cool Georgia Travel:', '<img style="width: 100%;" title="Экскурсия в монастырь Давид-Гареджи из Тбилиси" src="/images/excoursions/maps/ex_david_gareji_1110.jpg" alt="">', '<b>Экускурсия в монастырь Давид-Гареджа.</b> Поездка к границе Грузии и Азербайджана. Осмотр комплекса пещерных монастырей VI века', 'Детали', 'Бронировать', '7 часов', '', '/images/excoursions/david_gareja/david_gareja_3_500x300.jpg', 'Экускурсия в монастырь Давид-Гареджа', '36$', 'Стоимость', '<ul>
                    <li><b>46$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 7 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_garedji_500x220_0.png', 'Экускурсия в монастырь Давид-Гареджа - Cool Georgia Travel', 'Экускурсия в монастырь Давид-Гареджа - Cool Georgia Travel', '<b>Стоимость: 46$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (10, 2, 'описание картинки', 'Route of excursion to monastery David Geraji with Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to monastery David Geraji from Tbilisi" src="/images/excoursions/maps/ex_david_gareji_1110.jpg" alt="">', '<b>Excursion to the monastery of David-Gareja.</b> A trip to the border of Georgia and Azerbaijan. Visit to the complex of cave monasteries of the VI century', 'Details', 'To order', '7 hours', '', '/images/excoursions/david_gareja/david_gareja_3_500x300.jpg', 'Excursion to the monastery of David-Gareja', '36$', 'Cost', '<ul>
                    <li><b>46$</b> for 1 person</li>
                </ul>    
                    <p><b>The tour will take place in case if a group of at least 3 people gathers!</b></p>
                    <p>Total duration of the tour - 7 hours </p>
                    <p><b>Meeting point:</b> Metro Rustaveli, 09:00 </p>', 'Included in cost', '<ul>
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Entrance tickets to the above objects</li>
                </ul>', 'Additional charges', ' <ul>
                <li>Dinner</li>
            </ul>
            <h4>To have with you:</h4>
            <ul>
                <li>Comfortable clothes and shoes</li>
                <li>Drinking water</li>
            </ul>', '/images/excoursions/ex_garedji_500x220_0.png', 'Excursion to the monastery of David-Gareja - Cool Georgia Travel', 'Excursion to the monastery of David-Gareja - Cool Georgia Travel', '<b>Cost: 46$</b>  for 1 person<br> THE COST INCLUDES:<ul class="list-ok">
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Entrance tickets to the above objects</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (10, 3, 'описание картинки', 'Маршрут экскурсии в монастырь Давид-Гареджи с Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to monastery David Geraji from Tbilisi" src="/images/excoursions/maps/ex_david_gareji_1110.jpg" alt="">', '<b>Экускурсия в монастырь Давид-Гареджа.</b> Поездка к границе Грузии и Азербайджана. Осмотр комплекса пещерных монастырей VI века', 'Детали', 'Бронировать', '7 часов', '', '/images/excoursions/david_gareja/david_gareja_3_500x300.jpg', 'Экускурсия в монастырь Давид-Гареджа', '36$', 'Стоимость', '<ul>
                    <li><b>46$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 7 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_garedji_500x220_0.png', 'Экускурсия в монастырь Давид-Гареджа - Cool Georgia Travel', 'Экускурсия в монастырь Давид-Гареджа - Cool Georgia Travel', '<b>Стоимость: 46$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (10, 4, 'Екскурсія в монастир Давид-Гареджі', 'Маршрут экскурсії в монастир Давид-Гареджі з Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to monastery David Geraji from Tbilisi" src="/images/excoursions/maps/ex_david_gareji_1110.jpg" alt="">', '<b>Екскурсія в монастир Давид-Гареджі.</b> Поїздка до кордону Грузії та Азербайджану. Відвідування комплексу печерних монастирів VI століття', 'Деталi', 'Замовити', '7 годин', '', '/images/excoursions/david_gareja/david_gareja_3_500x300.jpg', 'Екскурсія в монастир Давид-Гареджі', '36$', 'Вартість', '<ul>
                    <li><b>46$</b> за 1 людину </li>
                </ul>    
                    <p><b> Екскурсія здійснюється тільки у випадку, коли збирається не менш ніж 3 людини! </b></p>
                    <p> Загальна тривалість туру - 7 годин </p>
                    <p><b> Місце зустрічі:</b> метро Руставелі, 09:00 </p>
', 'У вартість включено', '<ul>
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    <li> Вхідні квитки до зазначених об\'єктів </li>
                </ul>
', 'Додаткова оплата', '<ul>
                <li>Обід</li>
            </ul>
            <h4>З собою мати:</h4>
            <ul>
                <li>Зручний одяг і взуття </li>
                <li>Питна вода</li>
            </ul>
', '/images/excoursions/ex_garedji_500x220_0.png', 'Екскурсія в монастир Давид-Гареджі - Cool Georgia Travel', 'Екскурсія в монастир Давид-Гареджі - Cool Georgia Travel', '<b>Вартість: 46$</b> за 1 людину<br> У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    <li> Вхідні квитки до зазначених об\'єктів </li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (11, 1, 'Экскурсия в Мцхету из Тбилиси', 'Маршрут экскурсии в Мцхету с Cool Georgia Travel:', '<img style="width: 100%;" title="Экскурсия в Мцхету" src="/images/excoursions/maps/ex_mtskheta_1_1110.jpg" alt="">', '<b>Экскурсия в первую столицу Грузии - Мцхета</b>. Этот город называют "Вторым Иерусалимом". Вы посетите древние действующие монастыри.', 'Детали', 'Бронировать', '5 часов', '', '/images/cards/mtskheta_500x300.jpg', 'Экскурсия в Мцхету из Тбилиси', '22$', 'Стоимость', '<ul>
                    <li><b>32$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 5 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_mtskheta_500x200_0.png', 'Экскурсия в Мцхету из Тбилиси - Cool Georgia Travel', 'Экскурсия в Мцхету из Тбилиси - Cool Georgia Travel', '<b>Стоимость: 32$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (11, 2, 'Excursion to Mtskheta from Tbilisi', 'Route of excursion to Mtskheta with Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Mtskheta" src="/images/excoursions/maps/ex_mtskheta_1_1110.jpg" alt="">', '<b>Excursion to the first capital of Georgia - Mtskheta</b>. This city is called the "Second Jerusalem". You will visit the ancient working monasteries.', 'Details', 'To order', '5 hours', '', '/images/cards/mtskheta_500x300.jpg', 'Excursion to Mtskheta from Tbilisi', '22$', 'Cost', '<ul>
                    <li><b>32$</b> for 1 person</li>
                </ul>    
                    <p><b>The tour will take place in case if a group of at least 3 people gathers!</b></p>
                    <p>Total duration of the tour - 5 hours </p>
                    <p><b>Meeting point:</b> Metro Rustaveli, 09:00 </p>', 'Included in cost', '<ul>
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                </ul>', 'Additional charges', '<ul>
                <li>Dinner</li>
            </ul>
            <h4>To have with you:</h4>
            <ul>
                <li>Comfortable clothes and shoes</li>
                <li>Drinking water</li>
            </ul>', '/images/excoursions/ex_mtskheta_500x200_0.png', 'Excursion to Mtskheta from Tbilisi - Cool Georgia Travel', 'Excursion to Mtskheta from Tbilisi - Cool Georgia Travel', '<b>Cost: 32$</b>  for 1 person<br> THE COST INCLUDES:<ul class="list-ok">
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (11, 3, 'Экскурсия в Мцхету из Тбилиси', 'Маршрут экскурсии в Мцхету с Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Mtskheta" src="/images/excoursions/maps/ex_mtskheta_1_1110.jpg" alt="">', '<b>Экскурсия в первую столицу Грузии - Мцхета</b>. Этот город называют "Вторым Иерусалимом". Вы посетите древние действующие монастыри.', 'Детали', 'Бронировать', '5 часов', '', '/images/cards/mtskheta_500x300.jpg', 'Экскурсия в Мцхету из Тбилиси', '22$', 'Стоимость', '<ul>
                    <li><b>32$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 5 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_mtskheta_500x200_0.png', 'Экскурсия в Мцхету из Тбилиси - Cool Georgia Travel', 'Экскурсия в Мцхету из Тбилиси - Cool Georgia Travel', '<b>Стоимость: 32$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (11, 4, 'Екскурсія до Мцхети з Тбілісі', 'Маршрут екскурсії в Мцхету з Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Mtskheta" src="/images/excoursions/maps/ex_mtskheta_1_1110.jpg" alt="">', '<b>Екскурсія до першої столиці Грузії - Мцхета</b>. Це місто називається "другим Єрусалимом". Ви відвідаєте стародавні діючі монастирі.', 'Деталi', 'Замовити', '5 годин', '', '/images/cards/mtskheta_500x300.jpg', 'Екскурсія до Мцхети з Тбілісі', '22$', 'Вартість', '<ul>
                    <li><b>32$</b> за 1 людину </li>
                </ul>    
                    <p><b> Екскурсія здійснюється тільки у випадку, коли збирається не менш ніж 3 людини! </b></p>
                    <p> Загальна тривалість туру - 5 годин </p>
                    <p><b> Місце зустрічі:</b> метро Руставелі, 09:00 </p>
', 'У вартість включено', '<ul>
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                </ul>
', 'Додаткова оплата', '<ul>
                <li>Обід</li>
            </ul>
            <h4>З собою мати:</h4>
            <ul>
                <li>Зручний одяг і взуття </li>
                <li>Питна вода</li>
            </ul>
', '/images/excoursions/ex_mtskheta_500x200_0.png', 'Екскурсія до Мцхети з Тбілісі - Cool Georgia Travel', 'Екскурсія до Мцхети з Тбілісі - Cool Georgia Travel', '<b>Вартість: 32$</b> за 1 людину<br> У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (12, 1, 'Экскурсия в Мцхету - Уплисцихе - Гори', 'Маршрут экскурсии в Мцхету - Уплисцихе - Гори с Cool Georgia Travel:', '<img style="width: 100%;" title="Экскурсия в Мцхету-Уплисцихе-Гори" src="/images/excoursions/maps/ex_mtskheta_big_en_1110.jpg" alt="">', '<b>Экскурсия в Мцхету - Уплисцихе - Гори.</b> Мцхета, собор Светицховели, монастыри Джвари, Самтавро и Шио-мгвиме, города Уплисцихе, Гори.', 'Детали', 'Бронировать', '12 часов', '', '/images/excoursions/mtskheta_1/excursion_mtskheta_2_500x300.jpg', 'Экскурсия в Мцхету - Уплисцихе - Гори', '45$', 'Стоимость', '<ul>
                    <li><b>55$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 12 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/upliscihe_500x220_0.png', 'Экскурсия в Мцхету - Уплисцихе - Гори - Cool Georgia Travel', 'Экскурсия в Мцхету - Уплисцихе - Гори - Cool Georgia Travel', '<b>Стоимость: 55$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (12, 2, 'Excursion to Mtskheta - Uplistsikhe - Gori', 'Route of excursion to Mtskheta - Uplistsikhe - Gori with Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Mtskheta-Upliscihe-Gori" src="/images/excoursions/maps/ex_mtskheta_big_en_1110.jpg" alt="">', '<b>Excursion to Mtskheta - Uplistsikhe - Gori.</b> Mtskheta, Svetitskhoveli Cathedral, monasteries of Jvari, Samtavro and Shio-mgvime, the towns Uplistsikhe and Gori.', 'Details', 'To order', '12 hours', '', '/images/excoursions/mtskheta_1/excursion_mtskheta_2_500x300.jpg', 'Excursion to Mtskheta - Uplistsikhe - Gori', '45$', 'Cost', '<ul>
                    <li><b>55$</b> for 1 person</li>
                </ul>    
                    <p><b>The tour will take place in case if a group of at least 3 people gathers!</b></p>
                    <p>Total duration of the tour - 12 hours </p>
                    <p><b>Meeting point:</b> Metro Rustaveli, 09:00 </p>', 'Included in cost', '<ul>
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    
                </ul>', 'Additional charges', '<ul>
                <li>Dinner</li>
            </ul>
            <h4>To have with you:</h4>
            <ul>
                <li>Comfortable clothes and shoes</li>
                <li>Drinking water</li>
            </ul>', '/images/excoursions/upliscihe_500x220_0.png', 'Excursion to Mtskheta - Uplistsikhe - Gori - Cool Georgia Travel', 'Excursion to Mtskheta - Uplistsikhe - Gori - Cool Georgia Travel', '<b>Cost: 55$</b>  for 1 person<br> THE COST INCLUDES:<ul class="list-ok">
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Entrance tickets to the above objects</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (12, 3, 'Экскурсия в Мцхету - Уплисцихе - Гори', 'Маршрут экскурсии в Мцхету - Уплисцихе - Гори с Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Mtskheta-Upliscihe-Gori" src="/images/excoursions/maps/ex_mtskheta_big_en_1110.jpg" alt="">', '<b>Экскурсия в Мцхету - Уплисцихе - Гори.</b> Мцхета, собор Светицховели, монастыри Джвари, Самтавро и Шио-мгвиме, города Уплисцихе, Гори.', 'Детали', 'Бронировать', '12 часов', '', '/images/excoursions/mtskheta_1/excursion_mtskheta_2_500x300.jpg', 'Экскурсия в Мцхету - Уплисцихе - Гори', '45$', 'Стоимость', '<ul>
                    <li><b>55$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 12 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/upliscihe_500x220_0.png', 'Экскурсия в Мцхету - Уплисцихе - Гори - Cool Georgia Travel', 'Экскурсия в Мцхету - Уплисцихе - Гори - Cool Georgia Travel', '<b>Стоимость: 55$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (12, 4, 'Екскурсія до Мцхети - Уплисцихе - Горі', 'Маршрут екскурсії в Мцхету - Уплісцихе - Горі з Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion to Mtskheta-Upliscihe-Gori" src="/images/excoursions/maps/ex_mtskheta_big_en_1110.jpg" alt="">', '<b>Екскурсія до Мцхети - Уплисцихе - Горі.</b> Мцхета, собор Светіцховелі, монастирі Джварі, Самтавро і Шио-Мгвіме, міста Уплисцихе, Горі.', 'Деталi', 'Замовити', '12 годин', '', '/images/excoursions/mtskheta_1/excursion_mtskheta_2_500x300.jpg', 'Екскурсія до Мцхети - Уплисцихе - Горі', '45$', 'Вартість', '<ul>
                    <li><b>55$</b> за 1 людину </li>
                </ul>    
                    <p><b> Екскурсія здійснюється тільки у випадку, коли збирається не менш ніж 3 людини! </b></p>
                    <p> Загальна тривалість туру - 12 годин </p>
                    <p><b> Місце зустрічі:</b> метро Руставелі, 09:00 </p>
', 'У вартість включено', '<ul>
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                </ul>
', 'Додаткова оплата', '<ul>
                <li>Обід</li>
            </ul>
            <h4>З собою мати:</h4>
            <ul>
                <li>Зручний одяг і взуття </li>
                <li>Питна вода</li>
            </ul>
', '/images/excoursions/upliscihe_500x220_0.png', 'Екскурсія до Мцхети - Уплисцихе - Горі - Cool Georgia Travel', 'Екскурсія до Мцхети - Уплисцихе - Горі - Cool Georgia Travel', '<b>Вартість: 55$</b> за 1 людину<br> У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
					<li> Вхідні квитки до зазначених об\'єктів </li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (13, 1, 'Экскурсия в Мцхету и Тбилиси с CoolGeorgia', 'Маршрут экскурсии по Тбилиси и поездка в Мцхету с Cool Georgia Travel:', '<img style="width: 100%;" title="Экскурсия по Тбилиси и поездка в Мцхету" src="/images/excoursions/maps/ex_tbilisi_mtskheta_1110.jpg" alt="">', '<b>Экскурсия в две столицы: древняя Мцхета и современный Тбилиси</b>. Близкое знакомство с Тбилиси, а также Джвари, Мцхета, монастыри и храмы', 'Детали', 'Бронировать', '12 часов', '', '/images/cards/ex_tbilisi_mtskheta_500x300.jpg', 'Экскурсия в Мцхету и Тбилиси с CoolGeorgia', '38$', 'Стоимость', '<ul>
                    <li><b>48$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 12 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_tbilisi_mtskheta500x220_0.png', 'Экскурсия в Мцхету и Тбилиси с CoolGeorgia - Cool Georgia Travel', 'Экскурсия в Мцхету и Тбилиси с CoolGeorgia - Cool Georgia Travel', '<b>Стоимость: 48$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (13, 2, 'Excursion to Mtskheta and Tbilisi with CoolGeorgia', 'Excursion route around Tbilisi and a trip to Mtskheta with Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion around Tbilisi and trip to Mtskheta" src="/images/excoursions/maps/ex_tbilisi_mtskheta_1110.jpg" alt="">', '<b>Excursion to two capitals: ancient Mtskheta and modern Tbilisi</b>. Close acquaintance with Tbilisi, also with Jvari, Mtskheta, monasteries and temples', 'Details', 'To order', '12 hours', '', '/images/cards/ex_tbilisi_mtskheta_500x300.jpg', 'Excursion to Mtskheta and Tbilisi with CoolGeorgia', '38$', 'Cost', '<ul>
                    <li><b>48$</b> for 1 person</li>
                </ul>    
                    <p><b>The tour will take place in case if a group of at least 3 people gathers!</b></p>
                    <p>Total duration of the tour - 12 hours </p>
                    <p><b>Meeting point:</b> Metro Rustaveli, 09:00 </p>', 'Included in cost', '<ul>
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Entrance tickets to the above objects</li>
                </ul>', 'Additional charges', '<ul>
                <li>Dinner</li>
            </ul>
            <h4>To have with you:</h4>
            <ul>
                <li>Comfortable clothes and shoes</li>
                <li>Drinking water</li>
            </ul>', '/images/excoursions/ex_tbilisi_mtskheta500x220_0.png', 'Excursion to Mtskheta and Tbilisi with CoolGeorgia - Cool Georgia Travel', 'Excursion to Mtskheta and Tbilisi with CoolGeorgia - Cool Georgia Travel', '<b>Cost: 48$</b>  for 1 person<br> THE COST INCLUDES:<ul class="list-ok">
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Entrance tickets to the above objects</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (13, 3, 'Экскурсия в Мцхету и Тбилиси с CoolGeorgia', 'Маршрут экскурсии по Тбилиси и поездка в Мцхету с Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion around Tbilisi and trip to Mtskheta" src="/images/excoursions/maps/ex_tbilisi_mtskheta_1110.jpg" alt="">', '<b>Экскурсия в две столицы: древняя Мцхета и современный Тбилиси</b>. Близкое знакомство с Тбилиси, а также Джвари, Мцхета, монастыри и храмы', 'Детали', 'Бронировать', '12 часов', '', '/images/cards/ex_tbilisi_mtskheta_500x300.jpg', 'Экскурсия в Мцхету и Тбилиси с CoolGeorgia', '38$', 'Стоимость', '<ul>
                    <li><b>48$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - 12 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/ex_tbilisi_mtskheta500x220_0.png', 'Экскурсия в Мцхету и Тбилиси с CoolGeorgia - Cool Georgia Travel', 'Экскурсия в Мцхету и Тбилиси с CoolGeorgia - Cool Georgia Travel', '<b>Стоимость: 48$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (13, 4, 'Екскурсія до Мцхети та Тбілісі з CoolGeorgia', 'Маршрут екскурсії по Тбілісі та подорож до Мцхети з Cool Georgia Travel:', '<img style="width: 100%;" title="Excursion around Tbilisi and trip to Mtskheta" src="/images/excoursions/maps/ex_tbilisi_mtskheta_1110.jpg" alt="">', '<b>Екскурсія до стародавньої Мцхети та сучасного Тбілісі</b>. Тісне знайомство з Тбілісі, а також Джварі, Мцхетою, монастирями та храмами', 'Деталi', 'Замовити', '12 годин', '', '/images/cards/ex_tbilisi_mtskheta_500x300.jpg', 'Екскурсія до Мцхети та Тбілісі з CoolGeorgia', '38$', 'Вартість', '<ul>
                    <li><b>48$</b> за 1 людину </li>
                </ul>    
                    <p><b> Екскурсія здійснюється тільки у випадку, коли збирається не менш ніж 3 людини! </b></p>
                    <p> Загальна тривалість туру - 12 годин </p>
                    <p><b> Місце зустрічі:</b> метро Руставелі, 09:00 </p>
', 'У вартість включено', '<ul><li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>   <li> Вхідні квитки до зазначених об\'єктів </li>
                </ul>
', 'Додаткова оплата', '<ul>
                <li>Обід</li>
            </ul>
            <h4>З собою мати:</h4>
            <ul>
                <li>Зручний одяг і взуття </li>
                <li>Питна вода</li>
            </ul>
', '/images/excoursions/ex_tbilisi_mtskheta500x220_0.png', 'Екскурсія до Мцхети та Тбілісі з CoolGeorgia - Cool Georgia Travel', 'Екскурсія до Мцхети та Тбілісі з CoolGeorgia - Cool Georgia Travel', '<b>Вартість: 48$</b> за 1 людину<br> У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok"><li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>   <li> Вхідні квитки до зазначених об\'єктів </li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (14, 1, 'Индивидуальный тур', 'Карта Грузии', '<img style="width: 100%;" title="Индивидуальный тур в Грузию" src="/images/tours/tours_maps/Individual_tour_1110.jpg" alt="">', '', 'Детали', 'Бронировать', '', '', '/images/tours/individual_tour_3_500x300.jpg', '', null, null, null, null, null, null, null, '/images/excoursions/individual_0_500x285.png', 'Индивидуальный тур - Cool Georgia Travel', 'Индивидуальный тур - Cool Georgia Travel', '<b>Каждый</b> человек <b>имеет свои</b> собственные <b>мечты и желания!</b> В Грузии Вы можете воплотить в реальность любые из них! Вам нужно всего лишь сказать нам, что именно вы хотите - и мы предложим Вам лучше варианты!
{card_buttons}

                         ');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (14, 2, 'Individual tour', 'Map of Georgia', '<img style="width: 100%;" title="Individual tour to Georgia" src="/images/tours/tours_maps/Individual_tour_1110.jpg" alt="">', '', 'Details', 'To order', '', '', '/images/tours/individual_tour_3_500x300.jpg', '', null, null, null, null, null, null, null, '/images/excoursions/individual_0_500x285.png', 'Individual tour - Cool Georgia Travel', 'Individual tour - Cool Georgia Travel', '<b>Each </b> person  <b>has their</b> own  <b>dreams and desires!</b> ВIn Georgia, you can turn any of them into reality! 
                        You just need to tell us what exactly you want - and we will offer you better options! {card_buttons}
');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (14, 3, 'Индивидуальный тур', 'Карта Грузии', '<img style="width: 100%;" title="Individual tour to Georgia" src="/images/tours/tours_maps/Individual_tour_1110.jpg" alt="">', '', 'Детали', 'Бронировать', '', '', '/images/tours/individual_tour_3_500x300.jpg', '', null, null, null, null, null, null, null, '/images/excoursions/individual_0_500x285.png', 'Индивидуальный тур - Cool Georgia Travel', 'Индивидуальный тур - Cool Georgia Travel', '<b>Каждый</b> человек <b>имеет свои</b> собственные <b>мечты и желания!</b> В Грузии Вы можете воплотить в реальность любые из них! Вам нужно всего лишь сказать нам, что именно вы хотите - и мы предложим Вам лучше варианты!{card_buttons}

                         ');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (14, 4, 'Iндивiдуальний тур', 'Карта Грузії', '<img style="width: 100%;" title="Individual tour to Georgia" src="/images/tours/tours_maps/Individual_tour_1110.jpg" alt="">', '', 'Деталi', 'Замовити', '', '', '/images/tours/individual_tour_3_500x300.jpg', '', null, null, null, null, null, null, null, '/images/excoursions/individual_0_500x285.png', 'Iндивiдуальний тур - Cool Georgia Travel', 'Iндивiдуальний тур - Cool Georgia Travel', '<b> Кожна </b> людина <b> має свої </b> власні <b> мрії і бажання! </b> У Грузії Ви можете втілити в реальність будь-які з них! Вам потрібно  лише сказати нам, чого саме ви бажаєте - і ми запропонуємо Вам найкращі варіанти!{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (15, 1, 'Рафтинг в Грузии', 'Рафтинг в Грузии с Cool Georgia Travel:', '<img style="width: 100%;" title="Рафтинг в Грузии" src="/images/excoursions/maps/ex_gudauri_1110.jpg" alt="">
', '<b>Рафтинг в Грузии.</b> Рафтинг для активного проведения отдыха с разными уровнями сложности. Проходит на реке Арагви возле Ананури.', 'Детали', 'Бронировать', '10 часов', '', '/images/excoursions/rafting01_1.jpg', 'Рафтинг в Грузии', '75$', 'Стоимость', '<ul>
                    <li><b>85$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - около 13 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                    <li>Рафтинг на реке Кура</li>
                    <li>Аренда спецснаряжения</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/rafting02.jpg', 'Рафтинг в Грузии - Cool Georgia Travel', 'Рафтинг в Грузии - Cool Georgia Travel', '<b>Стоимость: 85$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                    <li>Рафтинг на реке Арагви</li>
                    <li>Аренда спецснаряжения</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (15, 2, 'Rafting in Georgia', 'Route of Rafting in Georgia with Cool Georgia Travel:', '<img style="width: 100%;" title="Rafting in Georgia" src="/images/excoursions/maps/ex_gudauri_1110.jpg" alt="">', '<b>Rafting in Georgia.</b> Rafting for active recreation with different levels of complexity. Passes on the Aragvi River near Ananuri.', 'Details', 'To order', '10 hours', '', '/images/excoursions/rafting01_1.jpg', 'Rafting in Georgia', '75$', 'Cost', '<ul>
                    <li><b>85$</b> for 1 person</li>
                </ul>    
                    <p><b>The tour will take place in case if a group of at least 3 people gathers!</b></p>
                    <p>Total duration of the tour - 13 hours </p>
                    <p><b>Meeting point:</b> Metro Rustaveli, 09:00 </p>', 'Included in cost', '<ul>
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Entrance tickets to the above objects</li>
                    <li>Rafting on the Kura River</li>
                    <li>Rental of special equipment</li>
                </ul>', 'Additional charges', ' <ul>
                <li>Dinner</li>
            </ul>
            <h4>To have with you:</h4>
            <ul>
                <li>Comfortable clothes and shoes</li>
                <li>Drinking water</li>
            </ul>', '/images/excoursions/rafting02.jpg', 'Rafting in Georgia - Cool Georgia Travel', 'Rafting in Georgia - Cool Georgia Travel', '<b>Cost: 85$</b>  for 1 person <br> THE COST INCLUDES:<ul class="list-ok">
                    <li>Transport service under the program on comfortable transport</li>
                    <li>Guide services throughout the trip</li>
                    <li>Entrance tickets to the above objects</li>
                    <li>Rafting on the Aragvi River</li>
                    <li>Rental of special equipment</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (15, 3, 'Рафтинг в Грузии', 'Рафтинг в Грузии с Cool Georgia Travel:', '<img style="width: 100%;" title="Rafting in Georgia" src="/images/excoursions/maps/ex_gudauri_1110.jpg" alt="">', '<b>Рафтинг в Грузии.</b> Рафтинг для активного проведения отдыха с разными уровнями сложности. Проходит на реке Арагви возле Ананури.', 'Детали', 'Бронировать', '10 часов', '', '/images/excoursions/rafting01_1.jpg', 'Рафтинг в Грузии', '75$', 'Стоимость', '<ul>
                    <li><b>85$</b> за 1 человека</li>
                </ul>    
                    <p><b>Экскурсия состоится в случает, если собирается группа не менее 3х человек!</b></p>
                    <p>Общая продолжительность тура - около 13 часов </p>
                    <p><b>Место встречи:</b> метро Руставели, 09:00 </p>', 'В стоимость включено', '<ul>
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                    <li>Рафтинг на реке Кура</li>
                    <li>Аренда спецснаряжения</li>
                </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед</li>
            </ul>
            <h4>С собой иметь:</h4>
            <ul>
                <li>Удобная одежда и обувь</li>
                <li>Питьевая вода</li>
            </ul>', '/images/excoursions/rafting02.jpg', 'Рафтинг в Грузии - Cool Georgia Travel', 'Рафтинг в Грузии - Cool Georgia Travel', '<b>Стоимость: 85$</b>  за 1 человека<br> В СТОИМОСТЬ ВХОДИТ:<ul class="list-ok">
                    <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                    <li>Услуги гида на протяжении всего путешествия</li>
                    <li>Входные билеты на указанные объекты</li>
                    <li>Рафтинг на реке Арагви</li>
                    <li>Аренда спецснаряжения</li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
				{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (15, 4, 'Рафтинг у Грузії', 'Рафтинг в Грузії з Cool Georgia Travel:', '<img style="width: 100%;" title="Rafting in Georgia" src="/images/excoursions/maps/ex_gudauri_1110.jpg" alt="">', '<b>Рафтинг у Грузії.</b> Рафтинг для активного проведення відпочинку із різними рівнями складності. Проходить по річці Арагві поблизу Ананурі.', 'Деталi', 'Замовити', '10 годин', '', '/images/excoursions/rafting01_1.jpg', 'Рафтинг у Грузії', '75$', 'Вартість', '<ul>
                    <li><b>85$</b> за 1 людину </li>
                </ul>    
                    <p><b> Екскурсія здійснюється тільки у випадку, коли збирається не менш ніж 3 людини! </b></p>
                    <p> Загальна тривалість туру - близько 13 годин </p>
                    <p><b> Місце зустрічі:</b> метро Руставелі, 09:00 </p>
', 'У вартість включено', '<ul>
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    <li> Вхідні квитки на зазначені об\'єкти </li>
                    <li> Рафтинг на річці Кура </li>
                    <li> Оренда спецспорядження </li>
                </ul>
', 'Додаткова оплата', '<ul>
                <li>Обід</li>
            </ul>
            <h4>З собою мати:</h4>
            <ul>
                <li>Зручний одяг і взуття </li>
                <li>Питна вода</li>
            </ul>
', '/images/excoursions/rafting02.jpg', 'Рафтинг у Грузії - Cool Georgia Travel', 'Рафтинг у Грузії - Cool Georgia Travel', '<b>Вартість: 85$</b> за 1 людину<br> У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                    <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                    <li> Послуги гіда протягом всієї подорожі </li>
                    <li> Вхідні квитки на зазначені об\'єкти </li>
                    <li> Рафтинг на річці Арагвi </li>
                    <li> Оренда спецспорядження </li>
                </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (16, 1, 'Отдых в Грузии на 8 дней недорого', 'Маршрут Тура в Грузию на 8 дней с Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию на 8 дней" src="/images/tours/tours_maps/tour_8days_1110.jpg" alt="">', '<b>Отдых в Грузии на 8 дней.</b> Насыщенная программа: тбилисские серные бани, кулинарный мастер-класс, дегустация вина, и весёлое путешествие по стране. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '8 дней', '', '/images/cards/tour_8days_2_500x300.jpg', 'Отдых в Грузии на 8 дней', '550$', 'Стоимость', '<ul>
                <li><b> от 550$</b> за 1 человека (при размещении в отеле 3* )</li>
		</ul> 
		<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>
                <table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1325</td>
                                <td style="padding: 6px !important;">845</td>
                                <td style="padding: 6px !important;">745</td>
                                <td style="padding: 6px !important;">665</td>
                                <td style="padding: 6px !important;">605</td>
                                <td style="padding: 6px !important;">575</td>
                                <td style="padding: 6px !important;">550</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
				
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 700$</li>
                    <li>в отеле 5*  - доплата 1050$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 7 ночей в 3* отеле в Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Экскурсии по программе</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_8days_0_500x530.png', 'Отдых в Грузии на 8 дней недорого - Cool Georgia Travel', 'Отдых в Грузии на 8 дней недорого - Cool Georgia Travel', '<b>Стоимость: от 550$</b>  за 1 человека <br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 7 ночей в 3* отеле в Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Подъём на джипе к храму Гергети (Казбек)</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (16, 2, 'Rest in Georgia for 8 days. Unexpensive', 'Route of Tour to Georgia for 8 days with Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 8 days" src="/images/tours/tours_maps/tour_8days_1110.jpg" alt="">', '<b>Rest in Georgia for 8 days. Unexpensive.</b> Saturated program: Tbilisi sulfur baths, culinary master class, wine tasting, and a funny journey around the country. <br><br><b>All inclusive</b>', 'Details', 'To order', '8 days', '', '/images/cards/tour_8days_2_500x300.jpg', 'Rest in Georgia for 8 days', '550$', 'Cost', '<ul>
                <li>from <b>550$</b> for 1 person (for accommodation in hotel 3* )</li>
                 </ul>
<p> The cost <b> is depends on the count of persons in the group </b>: then more people so cheaper! </p>
				<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Group</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1325</td>
                                <td style="padding: 6px !important;">845</td>
                                <td style="padding: 6px !important;">745</td>
                                <td style="padding: 6px !important;">665</td>
                                <td style="padding: 6px !important;">605</td>
                                <td style="padding: 6px !important;">575</td>
                                <td style="padding: 6px !important;">550</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 4*  - surcharge 700$</li>
                    <li>in the hotel 5*  - surcharge 1050$</li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 7 nights in 3 star hotel in Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
				<li>Entrance tickets to the above objects</li>
                <li>Сulinary master classes</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', ' <ul>
                <li>Flight</li>
            </ul>
            <p>If you want, <b>you can increase the rest time in Georgia</b> due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', '/images/excoursions/tour_8days_0_500x530.png', 'Rest in Georgia for 8 days. Unexpensive - Cool Georgia Travel', 'Rest in Georgia for 8 days. Unexpensive - Cool Georgia Travel', '<b>Cost: from 550$</b>  for 1 person <br> *for accommodation in hotel 3*  <br>*<b>All inclusive</b> (without airtickets) <br>THE COST INCLUDES:<ul class="list-ok">
                <li>Accommodation: 7 nights in 3 star hotel in Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>Ascent on a jeep to the Gergeti temple (Kazbeg)</li>
                <li>Tbilisi sulfur baths</li>
                <li>Сulinary master classes</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (16, 3, 'Отдых в Грузии на 8 дней недорого', 'Маршрут Тура в Грузию на 8 дней с Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 8 days" src="/images/tours/tours_maps/tour_8days_1110.jpg" alt="">', '<b>Отдых в Грузии на 8 дней.</b> Насыщенная программа: тбилисские серные бани, кулинарный мастер-класс, дегустация вина, и весёлое путешествие по стране. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '8 дней', '', '/images/cards/tour_8days_2_500x300.jpg', 'Отдых в Грузии на 8 дней', '550$', 'Стоимость', '<ul>
                <li>от <b>550$</b> за 1 человека (при размещении в отеле 3* )</li>
                </ul>
	<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                              <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1325</td>
                                <td style="padding: 6px !important;">845</td>
                                <td style="padding: 6px !important;">745</td>
                                <td style="padding: 6px !important;">665</td>
                                <td style="padding: 6px !important;">605</td>
                                <td style="padding: 6px !important;">575</td>
                                <td style="padding: 6px !important;">550</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 700$</li>
                    <li>в отеле 5*  - доплата 1050$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 7 ночей в 3* отеле в Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_8days_0_500x530.png', 'Отдых в Грузии на 8 дней недорого - Cool Georgia Travel', 'Отдых в Грузии на 8 дней недорого - Cool Georgia Travel', '<b>Стоимость: от 550$</b>  за 1 человека <br> *при размещении в отеле 3*<br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 7 ночей в 3* отеле в Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Подъём на джипе к храму Гергети (Казбек)</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (16, 4, 'Відпочинок в Грузії на 8 днів. Недорого', 'Маршрут Туру в Грузію на 8 днів з Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 8 days" src="/images/tours/tours_maps/tour_8days_1110.jpg" alt="">', '<b>Відпочинок в Грузії на 8 днів. Недорого.</b> Насичена програма:  сірчані лазні Тбілісі, кулінарний майстер-клас, дегустація вин та весела подорож по всій країні. <p><b>Все включено</b></p>', 'Деталi', 'Замовити', '8 днів', '', '/images/cards/tour_8days_2_500x300.jpg', 'Відпочинок в Грузії на 8 днів', '550$', 'Вартість', '<ul>
                <li>від <b>550$</b> за 1 людину (при розміщенні в готелі 3* )</li>
                </ul>
<p> Вартість <b> залежить від кількості людей у ​​групі </b>: чим більше людей, тим дешевше! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                               <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1325</td>
                                <td style="padding: 6px !important;">845</td>
                                <td style="padding: 6px !important;">745</td>
                                <td style="padding: 6px !important;">665</td>
                                <td style="padding: 6px !important;">605</td>
                                <td style="padding: 6px !important;">575</td>
                                <td style="padding: 6px !important;">550</td>
                            </tr>
                   
                        </tbody>
                    </table>
				<p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:
                </i><ul>
                    <li>в готелі 4*  - доплата 700$</li>
                    <li>в готелі 5*  - доплата 1050$</li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>
                <li> Проживання: 7 ночей у 3* готелі в Тбілісі</li>
<li> Сніданок</li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
				<li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Кулінарний майстер-клас</li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li> </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', '/images/excoursions/tour_8days_0_500x530.png', 'Відпочинок в Грузії на 8 днів. Недорого - Cool Georgia Travel', 'Відпочинок в Грузії на 8 днів. Недорого - Cool Georgia Travel', '<b>Вартість: від 550$</b>  за 1 людину  <br> *при разміщенні у готелі 3*  <br>*<b>Все включено</b> (окрім авіаквитків) <br>У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                <li> Проживання: 7 ночей у 3* готелі в Тбілісі</li>
<li> Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Підйом на джипі до храму Гергети (Казбек) </li>
                <li> Тбіліські сірчані лазні </li>
                <li> Кулінарний майстер-клас</li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li> </ul>
				<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (17, 1, 'Тбилиси и его окрестности', 'Маршрут тура в Грузию на 5 дней с Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию на 5 дней" src="/images/tours/tours_maps/tour_5days_tbilisi_1110.jpg" alt="">', '<b>Тбилиси и его окрестности.</b> Облегченная экскурсионная программа для близкого знакомства со столицей Грузии, традициями и культурой страны. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '5 дней', '', '/images/cards/tour_tbilisi_500x300.jpg', 'Тбилиси и его окрестности', '310$', 'Стоимость', '<ul>
                <li><b> от 310$</b> за 1 человека (при размещении в отеле 3* )</li>
		</ul> 
		<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>
                <table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">680</td>
                                <td style="padding: 6px !important;">495</td>
                                <td style="padding: 6px !important;">435</td>
                                <td style="padding: 6px !important;">385</td>
                                <td style="padding: 6px !important;">350</td>
                                <td style="padding: 6px !important;">327</td>
                                <td style="padding: 6px !important;">310</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
				
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 400$</li>
                    <li>в отеле 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 4 ночи в 3* отеле в Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_tbilisi_5day_500x500.png', 'Тбилиси и его окрестности - Cool Georgia Travel', 'Тбилиси и его окрестности - Cool Georgia Travel', '<b>Стоимость: от 310$</b>  за 1 человека <br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:
<ul class="list-ok">
                <li>Проживание: 4 ночи в 3* отеле в Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (17, 2, 'Tbilisi and its environs', 'Route of Tour to Georgia for 5 days with Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 5 days" src="/images/tours/tours_maps/tour_5days_tbilisi_1110.jpg" alt="">', '<b>Tbilisi and its environs.</b> A light excursion program for a close acquaintance with the capital of Georgia Tbilisi, the ancient city of Mtskheta, the traditions and culture of the country. <br><br><b>All inclusive</b>', 'Details', 'To order', '5 days', '', '/images/cards/tour_tbilisi_500x300.jpg', 'Tbilisi and its environs', '310$', 'Cost', '<ul>
                <li>from <b>310$</b> for 1 person (for accommodation in hotel 3* )</li>
                 </ul>
<p> The cost <b> is depends on the count of persons in the group </b>: then more people so cheaper! </p>
				<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Group</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                              <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">680</td>
                                <td style="padding: 6px !important;">495</td>
                                <td style="padding: 6px !important;">435</td>
                                <td style="padding: 6px !important;">385</td>
                                <td style="padding: 6px !important;">350</td>
                                <td style="padding: 6px !important;">327</td>
                                <td style="padding: 6px !important;">310</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 4*  - surcharge 400$</li>
                    <li>in the hotel 5*  - surcharge 600$</li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 4 nights in 3 star hotel in Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
				<li>Entrance tickets to the above objects</li>
                <li>Culinary master class</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', '<ul>
                <li>Flight</li>
            </ul>
            <p>If you want, you can increase the rest time in Georgia due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', '/images/excoursions/tour_tbilisi_5day_500x500.png', 'Tbilisi and its environs - Cool Georgia Travel', 'Tbilisi and its environs - Cool Georgia Travel', '<b>Cost: from 310$</b>  for 1 person <br> *for accommodation in hotel 3*  <br>*<b>All inclusive</b> (without airtickets) <br>THE COST INCLUDES:<ul class="list-ok">
                <li>Accommodation: 4 nights in 3 star hotel in Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>Tbilisi sulfur baths</li>
                <li>Culinary master class</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (17, 3, 'Тбилиси и его окрестности', 'Маршрут тура в Грузию на 5 дней с Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 5 days" src="/images/tours/tours_maps/tour_5days_tbilisi_1110.jpg" alt="">', '<b>Тбилиси и его окрестности.</b> Облегченная экскурсионная программа для близкого знакомства со столицей Грузии, традициями и культурой страны. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '5 дней', '', '/images/cards/tour_tbilisi_500x300.jpg', 'Тбилиси и его окрестности', '310$', 'Стоимость', '<ul>
                <li>от <b>310$</b> за 1 человека (при размещении в отеле 3* )</li>
                </ul>
	<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">680</td>
                                <td style="padding: 6px !important;">495</td>
                                <td style="padding: 6px !important;">435</td>
                                <td style="padding: 6px !important;">385</td>
                                <td style="padding: 6px !important;">350</td>
                                <td style="padding: 6px !important;">327</td>
                                <td style="padding: 6px !important;">310</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 400$</li>
                    <li>в отеле 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 4 ночи в 3* отеле в Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_tbilisi_5day_500x500.png', 'Тбилиси и его окрестности - Cool Georgia Travel', 'Тбилиси и его окрестности - Cool Georgia Travel', '<b>Стоимость: от 310$</b>  за 1 человека <br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 4 ночи в 3* отеле в Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (17, 4, 'Тбілісі та його околиці', 'Маршрут туру в Грузію на 5 днів з Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 5 days" src="/images/tours/tours_maps/tour_5days_tbilisi_1110.jpg" alt="">', '<b>Тбілісі та його околиці.</b> Полегшена екскурсійна програма для близького знайомства зі столицею Грузії, давнім містом Мцхета, традиціями і культурою країни. <P><b>Все включено</b></p>', 'Деталi', 'Замовити', '5 днів', '', '/images/cards/tour_tbilisi_500x300.jpg', 'Тбілісі та його околиці', '310$', 'Вартість', '<ul>
                <li>від <b>310$</b> за 1 людину (при розміщенні в готелі 3* )</li>
                </ul>
<p> Вартість <b> залежить від кількості людей у ​​групі </b>: чим більше людей, тим дешевше! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">680</td>
                                <td style="padding: 6px !important;">495</td>
                                <td style="padding: 6px !important;">435</td>
                                <td style="padding: 6px !important;">385</td>
                                <td style="padding: 6px !important;">350</td>
                                <td style="padding: 6px !important;">327</td>
                                <td style="padding: 6px !important;">310</td>
                            </tr>
                   
                        </tbody>
                    </table>
				<p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:
                </i><ul>
                    <li>в готелі 4*  - доплата 400$</li>
                    <li>в готелі 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>
                <li> Проживання: 4 ночі в 3 * готелі в Тбілісі </li>
<li> Сніданок</li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
				<li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Кулінарний майстер-клас </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', '/images/excoursions/tour_tbilisi_5day_500x500.png', 'Тбілісі та його околиці - Cool Georgia Travel', 'Тбілісі та його околиці - Cool Georgia Travel', '<b>Вартість: від 310$</b>  за 1 людину  <br> *при разміщенні у готелі 3*  <br>*<b>Все включено</b> (окрім авіаквитків) <br>У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                <li> Проживання: 4 ночі в 3 * готелі в Тбілісі </li>
<li> Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Тбіліські сірчані лазні </li>
                <li> Кулінарний майстер-клас </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (18, 1, 'Тбилиси и его окрестности. Поездка в Кахетиею', 'Маршрут тура в Грузию на 5 дней с Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию на 5 дней" src="/images/tours/tours_maps/tour_5days_tbilisi_kaheti_1110.jpg" alt="">', '<b>Тбилиси и его окрестности. Поездка в Кахетиею. </b> Близкое знакомство с Тбилиси и Кахетией: город влюбленных Сигнахи, культовый монастырь Бодбе, а так же винный завод <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '5 дней', '', '/images/cards/tour_5days_kazbeg_500x300.jpg', 'Тбилиси и его окрестности. Поездка в Кахетиею', '380$', 'Стоимость', '<ul>
                <li><b> от 380$</b> за 1 человека (при размещении в отеле 3* )</li>
		</ul> 
		<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>
                <table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">750</td>
                                <td style="padding: 6px !important;">550</td>
                                <td style="padding: 6px !important;">460</td>
                                <td style="padding: 6px !important;">435</td>
                                <td style="padding: 6px !important;">425</td>
                                <td style="padding: 6px !important;">400</td>
                                <td style="padding: 6px !important;">380</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
				
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 400$</li>
                    <li>в отеле 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 4 ночи в 3* отеле в Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_5days_tbilisi_kaxetia_0_500x500.png', 'Тбилиси и его окрестности. Поездка в Кахетиею - Cool Georgia Travel', 'Тбилиси и его окрестности. Поездка в Кахетиею - Cool Georgia Travel', '<b>Стоимость: от 380$</b>  за 1 человека <br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 4 ночи в 3* отеле в Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (18, 2, 'описание картинки', 'Route of Tour to Georgia for 5 days with Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 5 days" src="/images/tours/tours_maps/tour_5days_tbilisi_kaheti_1110.jpg" alt="">', '<b>Tbilisi and its environs. A trip to Kakhetiia. </b> Close acquaintance with Tbilisi and Kakheti: the city of love - Sighnaghi, the cult monastery of Bodbe, and visit  to the winery <br><br><b>All inclusive</b>', 'Details', 'To order', '5 days', '', '/images/cards/tour_5days_kazbeg_500x300.jpg', 'описание картинки', '380$', 'Cost', '<ul>
                <li>from <b>380$</b> for 1 person (for accommodation in hotel 3* )</li>
                 </ul>
<p> The cost <b> is depends on the count of persons in the group </b>: then more people so cheaper! </p>
				<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Group</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                              <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                               <td style="padding: 6px !important;">750</td>
                                <td style="padding: 6px !important;">550</td>
                                <td style="padding: 6px !important;">460</td>
                                <td style="padding: 6px !important;">435</td>
                                <td style="padding: 6px !important;">425</td>
                                <td style="padding: 6px !important;">400</td>
                                <td style="padding: 6px !important;">380</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 4*  - surcharge 400$</li>
                    <li>in the hotel 5*  - surcharge 600$</li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 4 nights in 3 star hotel in Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
				<li>Entrance tickets to the above objects</li>
                <li>Culinary master class</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', '<ul>
                <li>Flight</li>
            </ul>
            <p>If you want, you can increase the rest time in Georgia due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', '/images/excoursions/tour_5days_tbilisi_kaxetia_0_500x500.png', 'описание картинки - Cool Georgia Travel', 'описание картинки - Cool Georgia Travel', '<b>Cost: from 380$</b>  for 1 person <br> *for accommodation in hotel 3* <br>*<b>All inclusive</b> (without airtickets) <br>THE COST INCLUDES:<ul class="list-ok">
                <li>Accommodation: 4 nights in 3 star hotel in Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>Tbilisi sulfur baths</li>
                <li>Culinary master class</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (18, 3, 'Тбилиси и его окрестности. Поездка в Кахетиею', 'Маршрут тура в Грузию на 5 дней с Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 5 days" src="/images/tours/tours_maps/tour_5days_tbilisi_kaheti_1110.jpg" alt="">', '<b>Тбилиси и его окрестности. Поездка в Кахетиею. </b> Близкое знакомство с Тбилиси и Кахетией: город влюбленных Сигнахи, культовый монастырь Бодбе, а так же винный завод <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '5 дней', '', '/images/cards/tour_5days_kazbeg_500x300.jpg', 'Тбилиси и его окрестности. Поездка в Кахетиею', '380$', 'Стоимость', '<ul>
                <li>от <b>380$</b> за 1 человека (при размещении в отеле 3* )</li>
                </ul>
	<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                              <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">750</td>
                                <td style="padding: 6px !important;">550</td>
                                <td style="padding: 6px !important;">460</td>
                                <td style="padding: 6px !important;">435</td>
                                <td style="padding: 6px !important;">425</td>
                                <td style="padding: 6px !important;">400</td>
                                <td style="padding: 6px !important;">380</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 400$</li>
                    <li>в отеле 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 4 ночи в 3* отеле в Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_5days_tbilisi_kaxetia_0_500x500.png', 'Тбилиси и его окрестности. Поездка в Кахетиею - Cool Georgia Travel', 'Тбилиси и его окрестности. Поездка в Кахетиею - Cool Georgia Travel', '<b>Стоимость: от 380$</b>  за 1 человека <br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 4 ночи в 3* отеле в Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (18, 4, 'Тбілісі і його околиці. Поїздка до Кахетії', 'Маршрут туру в Грузію на 5 днів з Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 5 days" src="/images/tours/tours_maps/tour_5days_tbilisi_kaheti_1110.jpg" alt="">', '<b>Тбілісі і його околиці. Поїздка до Кахетії. </b> Близьке знайомство з Тбілісі і Кахетією: місто закоханих Сигнахі, культовий монастир Бодбе, а також візит до винного заводу <p><b>Все включено</b></p>', 'Деталi', 'Замовити', '5 днів', '', '/images/cards/tour_5days_kazbeg_500x300.jpg', 'Тбілісі і його околиці. Поїздка до Кахетії', '380$', 'Вартість', '<ul>
                <li>від <b>380$</b> за 1 людину (при розміщенні в готелі 3* )</li>
                </ul>
<p> Вартість <b> залежить від кількості людей у ​​групі </b>: чим більше людей, тим дешевше! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">750</td>
                                <td style="padding: 6px !important;">550</td>
                                <td style="padding: 6px !important;">460</td>
                                <td style="padding: 6px !important;">435</td>
                                <td style="padding: 6px !important;">425</td>
                                <td style="padding: 6px !important;">400</td>
                                <td style="padding: 6px !important;">380</td>
                            </tr>
                   
                        </tbody>
                    </table>
				<p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:
                </i><ul>
                    <li>в готелі 4*  - доплата 400$</li>
                    <li>в готелі 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>
                <li> Проживання: 4 ночі в 3 * готелі в Тбілісі </li>
<li> Сніданок</li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
				<li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Кулінарний майстер-клас </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', '/images/excoursions/tour_5days_tbilisi_kaxetia_0_500x500.png', 'Тбілісі і його околиці. Поїздка до Кахетії - Cool Georgia Travel', 'Тбілісі і його околиці. Поїздка до Кахетії - Cool Georgia Travel', '<b>Вартість: від 380$</b>  за 1 людину <br> *при разміщенні у готелі 3*  <br>*<b>Все включено</b> (окрім авіаквитків) <br>У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                <li> Проживання: 4 ночі в 3 * готелі у Тбілісі </li>
<li> Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Тбіліські сірчані лазні </li>
                <li> Кулінарний майстер-клас </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (19, 1, 'Тур в Грузию на 4 дня. Боржоми, Ахалцихе, Вардзия', 'Маршрут тура в Грузию на 4 дня в Боржоми, Ахалцихе, Вардзия с Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию на 4 дня в Боржоми, Ахалцихе, Вардзия" src="/images/excoursions/maps/ex_borjomi_vardzia_1110.jpg" alt="">', '<b>Тур в Грузию на 4 дня. Боржоми, Ахалцихе, Вардзия.</b> Для тех, кто уже не первый раз в Грузии и хотел бы увидеть не только столицу и её окрестности. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '4 дня', '', '/images/cards/tour_4day_borjomi_500x300.jpg', 'Тур в Грузию на 4 дня. Боржоми, Ахалцихе, Вардзия', '310$', 'Стоимость', '<ul>
                <li><b> от 310$</b> за 1 человека (при размещении в отеле 3* )</li>
		</ul> 
		<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>
                <table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">685</td>
                                <td style="padding: 6px !important;">500</td>
                                <td style="padding: 6px !important;">440</td>
                                <td style="padding: 6px !important;">390</td>
                                <td style="padding: 6px !important;">355</td>
                                <td style="padding: 6px !important;">330</td>
                                <td style="padding: 6px !important;">310</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
				
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 300$</li>
                    <li>в отеле 5*  - доплата 450$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', ' <ul>
                <li>Проживание: 2 ночи в 3* отеле в самом центре Тбилиси,</li> 
                                1 ночь в городе Боржоми
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Подъём на канатных дорогах</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
                <li>Рафтинг (по желанию) </li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_4days_borjomi_0_500x500.png', 'Тур в Грузию на 4 дня. Боржоми, Ахалцихе, Вардзия - Cool Georgia Travel', 'Тур в Грузию на 4 дня. Боржоми, Ахалцихе, Вардзия - Cool Georgia Travel', '<b>Стоимость: от 310$</b>  за 1 человека <br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 2 ночи в 3* отелев самом центре Тбилиси,</li> 
                                1 ночь в городе Боржоми
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Подъём на канатных дорогах</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (19, 2, 'Tour to Georgia for 4 days. Borjomi, Akhaltsikhe, Vardzia', 'Route of Tour to Georgia for 4 days to Borjomi, Akhaltsikhe, Vardzia with Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 4 days to Borjomi, Akhaltsikhe, Vardzia" src="/images/excoursions/maps/ex_borjomi_vardzia_1110.jpg" alt="">', '<b>Tour to Georgia for 4 days. Borjomi, Akhaltsikhe, Vardzia.</b> For those who are not the first time in Georgia and would like to see not only the capital and its environs.  <p><b>All inclusive </b></p>', 'Details', 'To order', '4 days', '', '/images/cards/tour_4day_borjomi_500x300.jpg', 'Tour to Georgia for 4 days. Borjomi, Akhaltsikhe, Vardzia', '310$', 'Cost', '<ul>
                <li>from <b>310$</b> for 1 person (for accommodation in hotel 3* )</li>
                 </ul>
<p> The cost <b> is depends on the count of persons in the group </b>: then more people so cheaper! </p>
				<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Group</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                               <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">685</td>
                                <td style="padding: 6px !important;">500</td>
                                <td style="padding: 6px !important;">440</td>
                                <td style="padding: 6px !important;">390</td>
                                <td style="padding: 6px !important;">355</td>
                                <td style="padding: 6px !important;">330</td>
                                <td style="padding: 6px !important;">310</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 4*  - surcharge 300$</li>
                    <li>in the hotel 5*  - surcharge 450$</li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 2 nights in 3 star hotel in the midle of Tbilisi</li>
                                  1 night in Borjomi                 
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
				<li>Entrance tickets to the above objects</li>
                <li>Climbing the cable cars</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', ' <ul>
                <li>Flight</li>
                <li>Rafting (optional)</li>
            </ul>
            <p>If you want, you can increase the rest time in Georgia due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', '/images/excoursions/tour_4days_borjomi_0_500x500.png', 'Tour to Georgia for 4 days. Borjomi, Akhaltsikhe, Vardzia - Cool Georgia Travel', 'Tour to Georgia for 4 days. Borjomi, Akhaltsikhe, Vardzia - Cool Georgia Travel', '<b>Cost: from 310$</b>  for 1 person <br> *for accommodation in hotel 3* <br>*<b>All inclusive</b> (without airtickets) <br>THE COST INCLUDES:<ul class="list-ok">
                <li>Accommodation: 2 nights in 3 star hotel in the midle of Tbilisi</li>
                                  1 night in Borjomi                 
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>Climbing the cable cars</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (19, 3, 'Тур в Грузию на 4 дня. Боржоми, Ахалцихе, Вардзия', 'Маршрут тура в Грузию на 4 дня в Боржоми, Ахалцихе, Вардзия с Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 4 days to Borjomi, Akhaltsikhe, Vardzia" src="/images/excoursions/maps/ex_borjomi_vardzia_1110.jpg" alt="">', '<b>Тур в Грузию на 4 дня. Боржоми, Ахалцихе, Вардзия.</b> Для тех, кто уже не первый раз в Грузии и хотел бы увидеть не только столицу и её окрестности. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '4 дня', '', '/images/cards/tour_4day_borjomi_500x300.jpg', 'Тур в Грузию на 4 дня. Боржоми, Ахалцихе, Вардзия', '310$', 'Стоимость', '<ul>
                <li>от <b>310$</b> за 1 человека (при размещении в отеле 3* )</li>
                </ul>
	<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                               <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">685</td>
                                <td style="padding: 6px !important;">500</td>
                                <td style="padding: 6px !important;">440</td>
                                <td style="padding: 6px !important;">390</td>
                                <td style="padding: 6px !important;">355</td>
                                <td style="padding: 6px !important;">330</td>
                                <td style="padding: 6px !important;">310</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 300$</li>
                    <li>в отеле 5*  - доплата 450$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 2 ночи в 3* отеле в самом центре Тбилиси,</li> 
                                1 ночь в городе Боржоми
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Подъём на канатных дорогах</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
                <li>Рафтинг (по желанию) </li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_4days_borjomi_0_500x500.png', 'Тур в Грузию на 4 дня. Боржоми, Ахалцихе, Вардзия - Cool Georgia Travel', 'Тур в Грузию на 4 дня. Боржоми, Ахалцихе, Вардзия - Cool Georgia Travel', '<b>Стоимость: от 310$</b>  за 1 человека <br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 2 ночи в 3* отеле в самом центре Тбилиси,</li> 
                                1 ночь в городе Боржоми
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Подъём на канатных дорогах</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (19, 4, 'Тур до Грузії на 4 дні. Боржомі, Ахалцихе, Вардзія', 'Маршрут туру в Грузію на 4 дні в Боржомі, Ахалцихе, Вардзія з Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 4 days to Borjomi, Akhaltsikhe, Vardzia" src="/images/excoursions/maps/ex_borjomi_vardzia_1110.jpg" alt="">', '<b>Тур до Грузії на 4 дні. Боржомі, Ахалцихе, Вардзія.</b> Для тих, хто вже не перший раз в Грузії і хотів би побачити не тільки столицю та околиці Тбілісі. <p><b>Все включено</b></p>', 'Деталi', 'Замовити', '4 дні', '', '/images/cards/tour_4day_borjomi_500x300.jpg', 'Тур до Грузії на 4 дні. Боржомі, Ахалцихе, Вардзія', '310$', 'Вартість', '<ul>
                <li>від <b>310$</b> за 1 людину (при розміщенні в готелі 3* )</li>
                </ul>
<p> Вартість <b> залежить від кількості людей у ​​групі </b>: чим більше людей, тим дешевше! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">685</td>
                                <td style="padding: 6px !important;">500</td>
                                <td style="padding: 6px !important;">440</td>
                                <td style="padding: 6px !important;">390</td>
                                <td style="padding: 6px !important;">355</td>
                                <td style="padding: 6px !important;">330</td>
                                <td style="padding: 6px !important;">310</td>
                            </tr>
                   
                        </tbody>
                    </table>
				<p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:
                </i><ul>
                    <li>в готелі 4*  - доплата 300$</li>
                    <li>в готелі 5*  - доплата 450$</li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>
               <li> Проживання: 2 ночі в 3 * готелі в самом центре Тбилиси,</li> 
					  1 ніч в місті Боржомі
                <li> Сніданок</li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Підйом на канатних дорогах </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
<li>Рафтинг (за бажанням) </li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', '/images/excoursions/tour_4days_borjomi_0_500x500.png', 'Тур до Грузії на 4 дні. Боржомі, Ахалцихе, Вардзія - Cool Georgia Travel', 'Тур до Грузії на 4 дні. Боржомі, Ахалцихе, Вардзія - Cool Georgia Travel', '<b>Вартість: від 310$</b>  за 1 людину <br> *при разміщенні у готелі 3*  <br>*<b>Все включено</b> (окрім авіаквитків) <br>У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                <li> Проживання: 2 ночі в 3 * готелі в самом центре Тбилиси,</li> 
					  1 ніч в місті Боржомі
                <li> Сніданок</li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Підйом на канатних дорогах </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (20, 1, 'Кулинарный тур в Грузию на 7 дней', 'Маршрут кулинарного тура в Грузию на 7 дней с Cool Georgia Travel:', '<img style="width: 100%;" title="Кулинарный тур в Грузию на 7 дней" src="/images/tours/tours_maps/tour_7days_culinary_1110.jpg" alt="">', '<b>Кулинарный тур в Грузию на 7 дней.</b> Отдых для настоящих гурманов. Возможность попробовать все грузинские блюда в разных районах Грузии и научиться их готовить. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '7 дней', '', '/images/cards/tour_7days_gurman_500x300.jpg', 'Кулинарный тур в Грузию на 7 дней', '460$', 'Стоимость', '<ul>
                <li><b> от 460$</b> за 1 человека (при размещении в отеле 3* )</li>
		</ul> 
		<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>
                <table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1100</td>
                                <td style="padding: 6px !important;">700</td>
                                <td style="padding: 6px !important;">600</td>
                                <td style="padding: 6px !important;">540</td>
                                <td style="padding: 6px !important;">500</td>
                                <td style="padding: 6px !important;">480</td>
                                <td style="padding: 6px !important;">460</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
				
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 300$</li>
                    <li>в отеле 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 6 ночей в гостевом доме Guest House Zemeli</a> в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Все кулинарные мастер-классы, указанные в программе</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_7days_culinari_0_500x530.png', 'Кулинарный тур в Грузию на 7 дней - Cool Georgia Travel', 'Кулинарный тур в Грузию на 7 дней - Cool Georgia Travel', '<b>Стоимость: от 460$</b>  за 1 человека<br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 6 ночей в отеле 3* в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Подъём на джипе к храму Гергети (Казбег)</li>
                <li>Тбилисские серные бани</li>
                <li>Все кулинарные мастер-классы, указанные в программе</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (20, 2, 'Culinary tour to Georgia for 7 days', 'Route of Culinary tour to Georgia for 7 days with Cool Georgia Travel:', '<img style="width: 100%;" title="Culinary tour to Georgia for 7 days" src="/images/tours/tours_maps/tour_7days_culinary_1110.jpg" alt="">', '<b>Culinary tour to Georgia for 7 days.</b> This rest for real gourmets. The opportunity to try all Georgian dishes in different regions of Georgia and learn how to prepare them. <br><br><b>All inclusive</b>', 'Details', 'To order', '7 days', '', '/images/cards/tour_7days_gurman_500x300.jpg', 'Culinary tour to Georgia for 7 days', '460$', 'Cost', '<ul>
                <li>from <b>460$</b> for 1 person (for accommodation in hotel 3* )</li>
                 </ul>
<p> The cost <b> is depends on the count of persons in the group </b>: then more people so cheaper! </p>
				<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Group</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1100</td>
                                <td style="padding: 6px !important;">700</td>
                                <td style="padding: 6px !important;">600</td>
                                <td style="padding: 6px !important;">540</td>
                                <td style="padding: 6px !important;">500</td>
                                <td style="padding: 6px !important;">480</td>
                                <td style="padding: 6px !important;">460</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 4*  - surcharge 300$</li>
                    <li>in the hotel 5*  - surcharge 600$</li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 6 nights in 3 star hotel in the midle of Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
				<li>Entrance tickets to the above objects</li>
                <li>All culinary master classes indicated in the program</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', ' <ul>
                <li>Flight</li>
            </ul>
            <p>If you want, <b>you can increase the rest time in Georgia</b> due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', '/images/excoursions/tour_7days_culinari_0_500x530.png', 'Culinary tour to Georgia for 7 days - Cool Georgia Travel', 'Culinary tour to Georgia for 7 days - Cool Georgia Travel', '<b>Cost: from 460$</b>  for 1 person<br> *for accommodation in hotel 3*<br>*<b>All inclusive</b> (without airtickets) <br>THE COST INCLUDES:<ul class="list-ok">
                <li>Accommodation: 6 nights in 3 star hotel in the midle of Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>Ascent on a jeep to the Gergeti temple (Kazbeg)</li>
                <li>Tbilisi sulfur baths</li>
                <li>All culinary master classes indicated in the program</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (20, 3, 'Кулинарный тур в Грузию на 7 дней', 'Маршрут кулинарного тура в Грузию на 7 дней с Cool Georgia Travel:', '<img style="width: 100%;" title="Culinary tour to Georgia for 7 days" src="/images/tours/tours_maps/tour_7days_culinary_1110.jpg" alt="">', '<b>Кулинарный тур в Грузию на 7 дней.</b> Отдых для настоящих гурманов. Возможность попробовать все грузинские блюда в разных районах Грузии и научиться их готовить. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '7 дней', '', '/images/cards/tour_7days_gurman_500x300.jpg', 'Кулинарный тур в Грузию на 7 дней', '460$', 'Стоимость', '<ul>
                <li>от <b>460$</b> за 1 человека (при размещении в отеле 3* )</li>
                </ul>
	<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                              <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1100</td>
                                <td style="padding: 6px !important;">700</td>
                                <td style="padding: 6px !important;">600</td>
                                <td style="padding: 6px !important;">540</td>
                                <td style="padding: 6px !important;">500</td>
                                <td style="padding: 6px !important;">480</td>
                                <td style="padding: 6px !important;">460</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 300$</li>
                    <li>в отеле 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 6 ночей в гостевом доме в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Все кулинарные мастер-классы, указанные в программе</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_7days_culinari_0_500x530.png', 'Кулинарный тур в Грузию на 7 дней - Cool Georgia Travel', 'Кулинарный тур в Грузию на 7 дней - Cool Georgia Travel', '<b>Стоимость: от 460$</b>  за 1 человека<br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 6 ночей в отеле 3* в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Подъём на джипе к храму Гергети (Казбег)</li>
                <li>Тбилисские серные бани</li>
                <li>Все кулинарные мастер-классы, указанные в программе</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (20, 4, 'Кулинарный тур до Грузії на 7 днів', 'Маршрут кулінарного туру в Грузію на 7 днів з Cool Georgia Travel:', '<img style="width: 100%;" title="Culinary tour to Georgia for 7 days" src="/images/tours/tours_maps/tour_7days_culinary_1110.jpg" alt="">', '<b>Кулинарний тур до Грузії на 7 днів.</b> Цей відпочинок для справжніх гурманів. Можливість спробувати всі грузинські страви в різних регіонах Грузії та навчитися їх готувати. <p><b>Все включено</b></p>', 'Деталi', 'Замовити', '7 днів', '', '/images/cards/tour_7days_gurman_500x300.jpg', 'Кулинарный тур до Грузії на 7 днів', '460$', 'Вартість', '<ul>
                <li>від <b>460$</b> за 1 людину (при розміщенні в готелі 3* )</li>
                </ul>
<p> Вартість <b> залежить від кількості людей у ​​групі </b>: чим більше людей, тим дешевше! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1100</td>
                                <td style="padding: 6px !important;">700</td>
                                <td style="padding: 6px !important;">600</td>
                                <td style="padding: 6px !important;">540</td>
                                <td style="padding: 6px !important;">500</td>
                                <td style="padding: 6px !important;">480</td>
                                <td style="padding: 6px !important;">460</td>
                            </tr>
                   
                        </tbody>
                    </table>
				<p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:
                </i><ul>
                    <li>в готелі 4*  - доплата 300$</li>
                    <li>в готелі 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>
                <li> Проживання: 6 ночей у гостинному будинку в самом центре Тбилиси</li> 
<li> Сніданок</li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
				<li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Всi кулінарні майстер-класи, зазначені в програмі </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>  </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', '/images/excoursions/tour_7days_culinari_0_500x530.png', 'Кулинарный тур до Грузії на 7 днів - Cool Georgia Travel', 'Кулинарный тур до Грузії на 7 днів - Cool Georgia Travel', '<b>Вартість: від 460$</b>  за 1 людину<br> *при разміщенні у готелі 3* <br>*<b>Все включено</b> (окрім авіаквитків) <br>У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                <li> Проживання: 6 ночей у у готелі 3* у самому центрі Тбілісі</li> 
<li> Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Підйом на джипі до храму Гергети (Казбегі) </li>
                <li> Тбіліські сірчані лазні </li>
                <li> Всi кулінарні майстер-класи, зазначені в програмі </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>  </ul>
<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (21, 1, 'Выходные в Грузии. Кахетия', 'Маршрут тура в Грузию на выходные с Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию на выходные" src="/images/tours/tours_maps/tour_3days_kaheti_1110.jpg" alt="">', '<b>Выходные в Грузии. Кахетия.</b> Идеальный вариант отдохнуть от будней в другом мире, где свобода, горы и вино. И это место вы найдете здесь. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '3 дня', '', '/images/tours/tour_3days_kaheti_2_500x300.jpg', 'Выходные в Грузии. Кахетия', '210$', 'Стоимость', '<ul>
                <li><b> от 210$</b> за 1 человека (при размещении в отеле 3* )</li>
		</ul> 
		<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>
                <table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">580</td>
                                <td style="padding: 6px !important;">280</td>
                                <td style="padding: 6px !important;">260</td>
                                <td style="padding: 6px !important;">250</td>
                                <td style="padding: 6px !important;">240</td>
                                <td style="padding: 6px !important;">220</td>
                                <td style="padding: 6px !important;">210</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
				
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 200$</li>
                    <li>в отеле 5*  - доплата 300$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 2 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', ' <ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_3days_kaxeti_0_500x440.png', 'Выходные в Грузии. Кахетия - Cool Georgia Travel', 'Выходные в Грузии. Кахетия - Cool Georgia Travel', '<b>Стоимость: от 210$</b>  за 1 человека<br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 2 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (21, 2, 'Weekends in Georgia. Kakheti', 'Route of Tour to Georgia for the weekend with Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for the weekend" src="/images/tours/tours_maps/tour_3days_kaheti_1110.jpg" alt="">', '<b>Weekends in Georgia. Kakheti.</b> The ideal option to relax from everyday life in another world, where freedom, mountains and wine. And this place you will find here. <p><b>All inclusive </b></p>', 'Details', 'To order', '3 days', '', '/images/tours/tour_3days_kaheti_2_500x300.jpg', 'Weekends in Georgia. Kakheti', '210$', 'Cost', '<ul>
                <li>from <b>210$</b> for 1 person (for accommodation in hotel 3* )</li>
                 </ul>
<p> The cost <b> is depends on the count of persons in the group </b>: then more people so cheaper! </p>
				<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Group</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">$ Per 1</td>
                                <td style="padding: 6px !important;">580</td>
                                <td style="padding: 6px !important;">280</td>
                                <td style="padding: 6px !important;">260</td>
                                <td style="padding: 6px !important;">250</td>
                                <td style="padding: 6px !important;">240</td>
                                <td style="padding: 6px !important;">220</td>
                                <td style="padding: 6px !important;">210</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 4*  - surcharge 200$</li>
                    <li>in the hotel 5*  - surcharge 300$</li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 2 nights in 3 star hotel in the midle of Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
				<li>Entrance tickets to the above objects</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', ' <ul>
                <li>Flight</li>
            </ul>
            <p>If you want, you can increase the rest time in Georgia due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', '/images/excoursions/tour_3days_kaxeti_0_500x440.png', 'Weekends in Georgia. Kakheti - Cool Georgia Travel', 'Weekends in Georgia. Kakheti - Cool Georgia Travel', '<b>Cost: from 210$</b>  for 1 person<br> *for accommodation hotel 3*<br>*<b>All inclusive</b> (without airtickets) <br>THE COST INCLUDES:<ul class="list-ok">
                <li>Accommodation: 2 nights in 3 star hotel in the midle of Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (21, 3, 'Выходные в Грузии. Кахетия', 'Маршрут тура в Грузию на выходные с Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for the weekend" src="/images/tours/tours_maps/tour_3days_kaheti_1110.jpg" alt="">', '<b>Выходные в Грузии. Кахетия.</b> Идеальный вариант отдохнуть от будней в другом мире, где свобода, горы и вино. И это место вы найдете здесь. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '3 дня', '', '/images/tours/tour_3days_kaheti_2_500x300.jpg', 'Выходные в Грузии. Кахетия', '210$', 'Стоимость', '<ul>
                <li>от <b>210$</b> за 1 человека (при размещении в отеле 3* )</li>
                </ul>
	<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                 <td style="padding: 6px !important;">580</td>
                                <td style="padding: 6px !important;">280</td>
                                <td style="padding: 6px !important;">260</td>
                                <td style="padding: 6px !important;">250</td>
                                <td style="padding: 6px !important;">240</td>
                                <td style="padding: 6px !important;">220</td>
                                <td style="padding: 6px !important;">210</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 200$</li>
                    <li>в отеле 5*  - доплата 300$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 2 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', ' <ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_3days_kaxeti_0_500x440.png', 'Выходные в Грузии. Кахетия - Cool Georgia Travel', 'Выходные в Грузии. Кахетия - Cool Georgia Travel', '<b>Стоимость: от 210$</b>  за 1 человека<br> *при размещении в отеле 3*<br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 2 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (21, 4, 'Вихідні в Грузії. Кахетія', 'Маршрут туру в Грузію на вихідні з Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for the weekend" src="/images/tours/tours_maps/tour_3days_kaheti_1110.jpg" alt="">', '<b>Вихідні в Грузії. Кахетія.</b> Ідеальний варіант відпочити від буднів в іншому світі, де свобода, гори та вино. І це місце ви знайдете саме тут. <p><b>Все включено</b></p>', 'Деталi', 'Замовити', '3 дні', '', '/images/tours/tour_3days_kaheti_2_500x300.jpg', 'Вихідні в Грузії. Кахетія', '210$', 'Вартість', '<ul>
                <li>від <b>210$</b> за 1 людину (при розміщенні в готелі 3* )</li>
                </ul>
<p> Вартість <b> залежить від кількості людей у ​​групі </b>: чим більше людей, тим дешевше! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 люд, $</td>
                                 <td style="padding: 6px !important;">580</td>
                                <td style="padding: 6px !important;">280</td>
                                <td style="padding: 6px !important;">260</td>
                                <td style="padding: 6px !important;">250</td>
                                <td style="padding: 6px !important;">240</td>
                                <td style="padding: 6px !important;">220</td>
                                <td style="padding: 6px !important;">210</td>
                            </tr>
                   
                        </tbody>
                    </table>
				<p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:
                </i><ul>
                    <li>в готелі 4*  - доплата 200$</li>
                    <li>в готелі 5*  - доплата 300$</li>
                </ul>
                </li>
            </ul>
', 'У вартість включено`', '<ul>
                <li> Проживання: 2 ночі в 3 * готелі в самом центре Тбилиси</li> 
<li> Сніданок</li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
				<li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', '/images/excoursions/tour_3days_kaxeti_0_500x440.png', 'Вихідні в Грузії. Кахетія - Cool Georgia Travel', 'Вихідні в Грузії. Кахетія - Cool Georgia Travel', '<b>Вартість:від 210$</b>  за 1 людину<br> *при разміщенні у готелі 3*<br>*<b>Все включено</b> (окрім авіаквитків) <br>У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                <li> Проживання: 2 ночі в 3 * готелі в самом центре Тбилиси</li> 
<li> Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки до зазначених об\'єктів </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (22, 1, 'Выходные в Грузии. Казбек с Cool Georgia', 'Маршрут тура в Грузию на выходные в Казбек с Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию на выходные в Казбек" src="/images/excoursions/maps/ex_kazbeg_en_1110.jpg" alt="">', '<b>Выходные в Грузии. Казбек.</b> Возможность освободить голову и наполнить её позитивными, правильными мыслями. Горы Грузии располагают к этому! <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '3 дня', '', '/images/cards/tour_weekend_kazbeg_2_500x300.jpg', 'Выходные в Грузии. Казбек с Cool Georgia', '225$', 'Стоимость', '<ul>
                <li><b> от 225$</b> за 1 человека (при размещении в отеле 3* )</li>
		</ul> 
		<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>
                <table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">615</td>
                                <td style="padding: 6px !important;">410</td>
                                <td style="padding: 6px !important;">310</td>
                                <td style="padding: 6px !important;">280</td>
                                <td style="padding: 6px !important;">250</td>
                                <td style="padding: 6px !important;">235</td>
                                <td style="padding: 6px !important;">225</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
				
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 200$</li>
                    <li>в отеле 5*  - доплата 300$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 2 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', ' <ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_3days_Kazbek_0_500x480.png', 'Выходные в Грузии. Казбек с Cool Georgia - Cool Georgia Travel', 'Выходные в Грузии. Казбек с Cool Georgia - Cool Georgia Travel', '<b>Стоимость: от 225$</b>  за 1 человека<br> *при размещении в отеле 3*<br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 2 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Подъём к храму Гергети на джипе</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (22, 2, 'Weekends in Georgia. Kazbegi with Cool Georgia', 'Route of Tour to Georgia for the weekend to Kazbek with Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for the weekend to Kazbek" src="/images/excoursions/maps/ex_kazbeg_en_1110.jpg" alt="">', '<b>Weekends in Georgia. Kazbegi.</b> Good idea to empty your head and fill it with positive and right thoughts. The mountains of Georgia can help you in this!  <p><b>All inclusive </b></p>', 'Details', 'To order', '3 days', '', '/images/cards/tour_weekend_kazbeg_2_500x300.jpg', 'Weekends in Georgia. Kazbegi with Cool Georgia', '225$', 'Cost', '<ul>
                <li>from <b>225$</b> for 1 person (for accommodation in hotel 3* )</li>
                 </ul>
<p> The cost <b> is depends on the count of persons in the group </b>: then more people so cheaper! </p>
				<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Group</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                 <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">615</td>
                                <td style="padding: 6px !important;">410</td>
                                <td style="padding: 6px !important;">310</td>
                                <td style="padding: 6px !important;">280</td>
                                <td style="padding: 6px !important;">250</td>
                                <td style="padding: 6px !important;">235</td>
                                <td style="padding: 6px !important;">225</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 4*  - surcharge 200$</li>
                    <li>in the hotel 5*  - surcharge 300$</li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 2 nights in 3 star hotel in the midle of Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
				<li>Entrance tickets to the above objects</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', ' <ul>
                <li>Flight</li>
            </ul>
            <p>If you want, you can increase the rest time in Georgia due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', '/images/excoursions/tour_3days_Kazbek_0_500x480.png', 'Weekends in Georgia. Kazbegi with Cool Georgia - Cool Georgia Travel', 'Weekends in Georgia. Kazbegi with Cool Georgia - Cool Georgia Travel', '<b>Cost: from 225$</b>  for 1 person<br> *for accommodation in hotel 3*<br>*<b>All inclusive</b> (without airtickets) <br>THE COST INCLUDES:<ul class="list-ok">
                <li>Accommodation: 2 nights in 3 star hotel in the midle of Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>Ascent to the Gergeti temple in a jeep</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (22, 3, 'Выходные в Грузии. Казбек с Cool Georgia', 'Маршрут тура в Грузию на выходные в Казбек с Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for the weekend to Kazbek" src="/images/excoursions/maps/ex_kazbeg_en_1110.jpg" alt="">', '<b>Выходные в Грузии. Казбек.</b> Возможность освободить голову и наполнить её позитивными, правильными мыслями. Горы Грузии располагают к этому! <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '3 дня', '', '/images/cards/tour_weekend_kazbeg_2_500x300.jpg', 'Выходные в Грузии. Казбек с Cool Georgia', '225$', 'Стоимость', '<ul>
                <li>от <b>225$</b> за 1 человека (при размещении в отеле 3* )</li>
                </ul>
	<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                 <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                              <td style="padding: 6px !important;">615</td>
                                <td style="padding: 6px !important;">410</td>
                                <td style="padding: 6px !important;">310</td>
                                <td style="padding: 6px !important;">280</td>
                                <td style="padding: 6px !important;">250</td>
                                <td style="padding: 6px !important;">235</td>
                                <td style="padding: 6px !important;">225</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 200$</li>
                    <li>в отеле 5*  - доплата 300$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 2 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', ' <ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_3days_Kazbek_0_500x480.png', 'Выходные в Грузии. Казбек с Cool Georgia - Cool Georgia Travel', 'Выходные в Грузии. Казбек с Cool Georgia - Cool Georgia Travel', '<b>Стоимость: от 225$</b>  за 1 человека<br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 2 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Подъём к храму Гергети на джипе</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (22, 4, 'Вихідні в Грузії. Казбегі із Cool Georgia', 'Маршрут туру в Грузію на вихідні в Казбегі з Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for the weekend to Kazbek" src="/images/excoursions/maps/ex_kazbeg_en_1110.jpg" alt="">', '<b>Вихідні в Грузії. Казбегі.</b> Можливість звільнити голову та наповнити її позитивними, добрими думками. Гори Грузії спонукають до цього! <p><b>Все включено</b></p>', 'Деталi', 'Замовити', '3 дні', '', '/images/cards/tour_weekend_kazbeg_2_500x300.jpg', 'Вихідні в Грузії. Казбегі із Cool Georgia', '225$', 'Вартість', '<ul>
                <li>від <b>225$</b> за 1 людину (при розміщенні в готелі 3* )</li>
                </ul>
<p> Вартість <b> залежить від кількості людей у ​​групі </b>: чим більше людей, тим дешевше! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                 <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">615</td>
                                <td style="padding: 6px !important;">410</td>
                                <td style="padding: 6px !important;">310</td>
                                <td style="padding: 6px !important;">280</td>
                                <td style="padding: 6px !important;">250</td>
                                <td style="padding: 6px !important;">235</td>
                                <td style="padding: 6px !important;">225</td>
                            </tr>
                   
                        </tbody>
                    </table>
				<p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:
                </i><ul>
                    <li>в готелі 4*  - доплата 200$</li>
                    <li>в готелі 5*  - доплата 300$</li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>
                <li> Проживання: 2 ночі в 3 * готелі у самому центрі Тбілісі</li> 
<li> Сніданок</li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
				<li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', '/images/excoursions/tour_3days_Kazbek_0_500x480.png', 'Вихідні в Грузії. Казбегі із Cool Georgia - Cool Georgia Travel', 'Вихідні в Грузії. Казбегі із Cool Georgia - Cool Georgia Travel', '<b>Вартість: від 225$</b>  за 1 людину<br> *при разміщенні у готелі 3* <br>*<b>Все включено</b> (окрім авіаквитків) <br>У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                <li> Проживання: 2 ночі в 3 * готелі в самом центре Тбилиси</li> 
<li> Сніданок</li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Підйом до храму Гергети на джипі </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (23, 1, 'Новый Год в Грузии на 5 дней. Тбилиси, Мцхета, Гудаури. Всё включено!', 'Маршрут тура Новый Год в Грузии с Cool Georgia Travel:', '<img style="width: 100%;" title="Новый Год в Грузии на 5 дней" src="/images/tours/tours_maps/tour_5days_new_year_1110.jpg" alt="">', '<b>Новогодний тур в Грузию на 5 дней. Тбилиси, Мцхета и Гудаури.</b> Праздничный Тбилиси. Древняя Мцхета. Поездка в Гудаури - спуски с гор на лыжах, сноубордах и т.д. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '5 дней', '', '/images/tours/tour-new-year-5-days_500x300_55.jpg', 'Новогодний тур в Грузию на 5 дней. Тбилиси, Мцхета, Гудаури', '450$', 'Стоимость', '<ul>
                <li><b> от 450$</b> за 1 человека (при размещении в отеле 3* в центре Тбилиси)</li>
		</ul> 
		<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>
                <table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1000</td>
                                <td style="padding: 6px !important;">610</td>
                                <td style="padding: 6px !important;">575</td>
                                <td style="padding: 6px !important;">530</td>
                                <td style="padding: 6px !important;">510</td>
                                <td style="padding: 6px !important;">480</td>
                                <td style="padding: 6px !important;">450</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
				
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 400$</li>
                    <li>в отеле 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 4 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
				<li><b>Праздничное новогоднее застолье в грузинском стиле</b> на территории  Guest House Zemeli</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
                <li>Подъем на горнолыжную трассу (для желающих покататься)</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/tours/NY_1.jpg', 'Новогодний тур в Грузию на 5 дней. Тбилиси, Мцхета, Гудаури - Cool Georgia Travel', 'Новогодний тур в Грузию на 5 дней. Тбилиси, Мцхета, Гудаури - Cool Georgia Travel', '<b>Стоимость: от 450$</b>  за 1 человека<br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 4 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
				<li><b>Праздничное новогоднее застолье в грузинском стиле</b> на территории  Guest House Zemeli</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (23, 2, 'New Year and Christmas tour to Georgia for 5 days. Tbilisi, Mtskheta, Gudauri. All in', 'New Year Tour Route in Georgia with Cool Georgia Travel:', '<img style="width: 100%;" title="New Year Tour in Georgia for 5 days" src="/images/tours/tours_maps/tour_5days_new_year_1110.jpg" alt="">', '<b>New Year in Georgia for 5 days. Tbilisi, Mtskheta and Gudauri.</b> Festive Tbilisi. Ancient Mtskheta. A trip to Gudauri - downhill skiing, snowboarding and others. Culinary master-klass and New Year Party! <br><br><b>All inclusive</b>', 'Details', 'To order', '5 days', '', '/images/tours/tour-new-year-5-days_500x300_55.jpg', 'New Year and Christmas tour to Georgia for 5 days. Tbilisi, Mtskheta, Gudauri', '450$', 'Cost', '<ul>
                <li>from <b>450$</b> for 1 person (for accommodation in 3* hotel in the center of Tbilisi)</li>
                 </ul>
<p> The cost <b> is depends on the count of persons in the group </b>: then more people so cheaper! </p>
				<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Group</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                  <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1000</td>
                                <td style="padding: 6px !important;">610</td>
                                <td style="padding: 6px !important;">575</td>
                                <td style="padding: 6px !important;">530</td>
                                <td style="padding: 6px !important;">510</td>
                                <td style="padding: 6px !important;">480</td>
                                <td style="padding: 6px !important;">450</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 4*  - surcharge 400$</li>
                    <li>in the hotel 5*  - surcharge 600$</li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 4 nights in 3 star hotel in the midle of Tbilisi</li>
                <li>Breakfast</li>
				<li><b>New Year Party in Georgian stile</b> at the territory of Guest House Zemeli </li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
				<li>Entrance tickets to the above objects</li>
                <li>Culinary master class</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', '<ul>
                <li>Flight</li>
                <li>The rise on the ski slopes (for those who want to ride)</li>
            </ul>
            <p>If you want, you can increase the rest time in Georgia. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', '/images/tours/NY_1.jpg', 'New Year and Christmas tour to Georgia for 5 days. Tbilisi, Mtskheta, Gudauri - Cool Georgia Travel', 'New Year and Christmas tour to Georgia for 5 days. Tbilisi, Mtskheta, Gudauri - Cool Georgia Travel', '<b>Cost: from 450$</b>  for 1 person <br> *for accommodation in hotel 3* <br>*<b>All inclusive</b> (without airtickets) <br>THE COST INCLUDES:<ul class="list-ok">
                <li>Accommodation: 4 nights in 3 star hotel in the midle of Tbilisi</li>
                <li>Breakfast </li>
				<li><b>New Year Party in Georgian stile</b> at the territory of Guest House Zemeli </li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>Culinary master class</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (23, 3, 'Новый Год в Грузии на 5 дней. Тбилиси, Мцхета, Гудаури. Всё включено', 'Маршрут тура Новый Год в Грузии с Cool Georgia Travel:', '<img style="width: 100%;" title="New Year Tour in Georgia for 5 days" src="/images/tours/tours_maps/tour_5days_new_year_1110.jpg" alt="">', '<b>Новогодний тур в Грузию на 5 дней. Тбилиси, Мцхета и Гудаури.</b> Праздничный Тбилиси. Древняя Мцхета. Поездка в Гудаури - спуски с гор на лыжах, сноубордах и т.д. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '5 дней', '', '/images/tours/tour-new-year-5-days_500x300_55.jpg', 'Новогодний тур в Грузию на 5 дней. Тбилиси, Мцхета, Гудаури', '450$', 'Стоимость', '<ul>
                <li>от <b>450$</b> за 1 человека (при размещении в отеле 3* в центре Тбилиси )</li>
                </ul>
	<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1000</td>
                                <td style="padding: 6px !important;">610</td>
                                <td style="padding: 6px !important;">575</td>
                                <td style="padding: 6px !important;">530</td>
                                <td style="padding: 6px !important;">510</td>
                                <td style="padding: 6px !important;">480</td>
                                <td style="padding: 6px !important;">450</td>
                            </tr>
                   
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 400$</li>
                    <li>в отеле 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 4 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
				<li><b>Праздничное новогоднее застолье в грузинском стиле</b> на территории  Guest House Zemeli</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
                <li>Подъем на горнолыжную трассу (для желающих покататься)</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/tours/NY_1.jpg', 'Новогодний тур в Грузию на 5 дней. Тбилиси, Мцхета, Гудаури - Cool Georgia Travel', 'Новогодний тур в Грузию на 5 дней. Тбилиси, Мцхета, Гудаури - Cool Georgia Travel', '<b>Стоимость: от 450$</b>  за 1 человека <br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 4 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                				<li><b>Праздничное новогоднее застолье в грузинском стиле</b> на территории  Guest House Zemeli</li>
				<li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (23, 4, 'Новий Рік у Грузії на 5 днів. Тбилісі, Мцхета, Гудаурі', 'Маршрут туру Новий Рік  в Грузії з Cool Georgia Travel:', '<img style="width: 100%;" title="New Year Tour in Georgia for 5 days" src="/images/tours/tours_maps/tour_5days_new_year_1110.jpg" alt="">', '<b>Новорічний тур в Грузію на 5 днів. Тбілісі, Мцхета і Гудаурі.</b> Святковий Тбілісі. Давня Мцхета. Поїздка в Гудаурі - спуски з гір на лижах, сноубордах та інше <p><b>Все включено</b></p>', 'Деталi', 'Замовити', '5 днів', '', '/images/tours/tour-new-year-5-days_500x300_55.jpg', 'Новорічний тур до Грузії на 5 днів. Тбилісі, Мцхета, Гудаурі', '450$', 'Вартість', '<ul>
                <li>від <b>450$</b> за 1 людину (при розміщенні в готелі 3* у центрі Тбілісі)</li>
                </ul>
<p> Вартість <b> залежить від кількості людей у ​​групі </b>: чим більше людей, тим дешевше! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1000</td>
                                <td style="padding: 6px !important;">610</td>
                                <td style="padding: 6px !important;">575</td>
                                <td style="padding: 6px !important;">530</td>
                                <td style="padding: 6px !important;">510</td>
                                <td style="padding: 6px !important;">480</td>
                                <td style="padding: 6px !important;">450</td>
                            </tr>
                   
                   
                        </tbody>
                    </table>
				<p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:
                </i><ul>
                    <li>в готелі 4*  - доплата 400$</li>
                    <li>в готелі 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>
                <li> Проживання: 4 ночі в 3 * готелі в самом центре Тбилиси</li> 
<li> Сніданок</li>
<li> <b> Новорічна вечірка в грузинському стилі </b> на території  Guest House Zemeli</li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
				<li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Кулінарний майстер-клас </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
<li> Підйом на гірськолижну трасу (для бажаючих покататися)</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', '/images/tours/NY_1.jpg', 'Новорічний тур до Грузії на 5 днів. Тбилісі, Мцхета, Гудаурі - Cool Georgia Travel', 'Новорічний тур до Грузії на 5 днів. Тбилісі, Мцхета, Гудаурі - Cool Georgia Travel', '<b>Вартість: від 450$</b>  за 1 людину <br> *при разміщенні у готелі 3* <br>*<b>Все включено</b> (окрім авіаквитків) <br>У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                <li> Проживання: 4 ночі в 3 * готелі у самому центрі Тбілісі</li> 
				<li> Сніданок </li>
				<li> <b> Новорічна вечірка в грузинському стилі </b> на території  Guest House Zemeli</li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки до зазначених об\'єктів </li>
                <li> Кулінарний майстер-клас </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (24, 1, 'Тур в Грузию на 5 дней. Горы и Море', 'Маршрут тура в Грузию на 5 дней в Тбилиси и Батуми с Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию на 5 дней в Тбилиси и Батуми" src="/images/tours/tours_maps/tour_5days_tbilisi_batumi_1110.jpg" alt="">', '<b>Тур в Грузию на 5 дней. Горы и Море.</b> Возможность увидеть всю Грузию. Знакомство с Тбилиси, Боржоми, Кутаиси, Батуми и Черное море, кулинарный мастер-класс.<br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '5 дней', '', '/images/tours/tour_5days_tbilisi_batumi_500x300.jpg', 'Тур в Грузию на 5 дней. Горы и Море', '380$', 'Стоимость', '<ul>
                <li><b> от 380$</b> за 1 человека (при размещении в отеле 3* )</li>
		</ul> 
		<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>
                <table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">820</td>
                                <td style="padding: 6px !important;">620</td>
                                <td style="padding: 6px !important;">520</td>
                                <td style="padding: 6px !important;">470</td>
                                <td style="padding: 6px !important;">430</td>
                                <td style="padding: 6px !important;">400</td>
                                <td style="padding: 6px !important;">380</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
				
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 400$</li>
                    <li>в отеле 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание:
                 <ul>
                  <li>1 ночь в отеле 3* в Тбилиси;</li>
                  <li>1 ночь в отеле 3* в Боржоми;</li>
                  <li>2 ночи в отеле 3* в Батуми;</li>
                   </ul>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги водителя и гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_5days_tbilisi_batumi_0)_500x560.png', 'Тур в Грузию на 5 дней. Горы и Море - Cool Georgia Travel', 'Тур в Грузию на 5 дней. Горы и Море - Cool Georgia Travel', '<b>Стоимость: от 380$</b>  за 1 человека<br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание:
                 <ul>
                  <li>1 ночь в отеле 3* в Тбилиси;</li>
                  <li>1 ночь в отеле 3* в Боржоми;</li>
                  <li>2 ночи в отеле 3* в Батуми;</li>
                   </ul>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги водителя и гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (24, 2, 'Tour to Georgia for 5 days. Mountains and the Sea', 'Route of Tour to Georgia for 5 days to Tbilisi and Batumi with Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 5 days to Tbilisi and Batumi" src="/images/tours/tours_maps/tour_5days_tbilisi_batumi_1110.jpg" alt="">', '<b>Tour to Georgia for 5 days. Mountains and the Sea.</b> The opportunity to see the whole of Georgia. Acquaintance with Tbilisi, Borjomi, Kutaisi, Batumi and the Black Sea, a culinary master-class.<br><br><b>All inclusive</b>', 'Details', 'To order', '5 days', '', '/images/tours/tour_5days_tbilisi_batumi_500x300.jpg', 'Tour to Georgia for 5 days. Mountains and the Sea', '380$', 'Cost', '<ul>
                <li>from <b>380$</b> for 1 person (for accommodation in hotel 3* )</li>
                 </ul>
<p> The cost <b> is depends on the count of persons in the group </b>: then more people so cheaper! </p>
				<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Group</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                              <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                          <td style="padding: 6px !important;">820</td>
                                <td style="padding: 6px !important;">620</td>
                                <td style="padding: 6px !important;">520</td>
                                <td style="padding: 6px !important;">470</td>
                                <td style="padding: 6px !important;">430</td>
                                <td style="padding: 6px !important;">400</td>
                                <td style="padding: 6px !important;">380</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 4*  - surcharge 400$</li>
                    <li>in the hotel 5*  - surcharge 600$</li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation:
                 <ul>
                  <li>1 night in 3* hotel in Tbilisi;</li>
                  <li>1 night in a 3* hotel in Borjomi;</li>
                  <li>2 nights in a 3 * hotel in Batumi;</li>
                   </ul>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
				<li>Entrance tickets to the above objects</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', ' <ul>
                <li>Flight</li>
            </ul>
            <p>If you want, <b>you can increase the rest time in Georgia</b> due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', '/images/excoursions/tour_5days_tbilisi_batumi_0)_500x560.png', 'Tour to Georgia for 5 days. Mountains and the Sea - Cool Georgia Travel', 'Tour to Georgia for 5 days. Mountains and the Sea - Cool Georgia Travel', '<b>Cost: from 380$</b>  for 1 person<br> *for accommodation in hotel 3*<br>*<b>All inclusive</b> (without airtickets) <br>THE COST INCLUDES:<ul class="list-ok">
                <li>Accommodation:
                 <ul>
                  <li>1 night in a 3* hotel in Tbilisi;</li>
                  <li>1 night in a 3* hotel in Borjomi;</li>
                  <li>2 nights in a 3 * hotel in Batumi;</li>
                   </ul>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (24, 3, 'Тур в Грузию на 5 дней. Горы и Море', 'Маршрут тура в Грузию на 5 дней в Тбилиси и Батуми с Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 5 days to Tbilisi and Batumi" src="/images/tours/tours_maps/tour_5days_tbilisi_batumi_1110.jpg" alt="">', '<b>Тур в Грузию на 5 дней. Горы и Море.</b> Возможность увидеть всю Грузию. Знакомство с Тбилиси, Боржоми, Кутаиси, Батуми и Черное море, кулинарный мастер-класс.<br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '5 дней', '', '/images/tours/tour_5days_tbilisi_batumi_500x300.jpg', 'Тур в Грузию на 5 дней. Горы и Море', '380$', 'Стоимость', '<ul>
                <li>от <b>380$</b> за 1 человека (при размещении в отеле 3* )</li>
                </ul>
	<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                               <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">820</td>
                                <td style="padding: 6px !important;">620</td>
                                <td style="padding: 6px !important;">520</td>
                                <td style="padding: 6px !important;">470</td>
                                <td style="padding: 6px !important;">430</td>
                                <td style="padding: 6px !important;">400</td>
                                <td style="padding: 6px !important;">380</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 400$</li>
                    <li>в отеле 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание:
                 <ul>
                  <li>1 ночь в отеле 3* в Тбилиси;</li>
                  <li>1 ночь в отеле 3* в Боржоми;</li>
                  <li>2 ночи в отеле 3* в Батуми;</li>
                   </ul>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги водителя и гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_5days_tbilisi_batumi_0)_500x560.png', 'Тур в Грузию на 5 дней. Горы и Море - Cool Georgia Travel', 'Тур в Грузию на 5 дней. Горы и Море - Cool Georgia Travel', '<b>Стоимость: от 380$</b>  за 1 человека<br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание:
                 <ul>
                  <li>1 ночь в отеле 3* в Тбилиси;</li>
                  <li>1 ночь в отеле 3* в Боржоми;</li>
                  <li>2 ночи в отеле 3* в Батуми;</li>
                   </ul>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги водителя и гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (24, 4, 'Тур в Грузію на 5 днів. Гори і Море', 'Маршрут туру в Грузію на 5 днів в Тбілісі та Батумі з Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 5 days to Tbilisi and Batumi" src="/images/tours/tours_maps/tour_5days_tbilisi_batumi_1110.jpg" alt="">', '<b>Тур в Грузію на 5 днів. Гори і Море.</b> Можливість побачити всю Грузію. Знайомство з Тбілісі, Боржомі, Кутаїсі, Батумі і Чорне море, кулінарний майстер-клас.<p><b>Все включено</b></p>', 'Деталi', 'Замовити', '5 днів', '', '/images/tours/tour_5days_tbilisi_batumi_500x300.jpg', 'Тур в Грузію на 5 днів. Гори і Море', '380$', 'Вартість', '<ul>
                <li>від <b>380$</b> за 1 людину (при розміщенні в готелі 3* )</li>
                </ul>
<p> Вартість <b> залежить від кількості людей у ​​групі </b>: чим більше людей, тим дешевше! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">820</td>
                                <td style="padding: 6px !important;">620</td>
                                <td style="padding: 6px !important;">520</td>
                                <td style="padding: 6px !important;">470</td>
                                <td style="padding: 6px !important;">430</td>
                                <td style="padding: 6px !important;">400</td>
                                <td style="padding: 6px !important;">380</td>
                            </tr>
                   
                        </tbody>
                    </table>
				<p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:
                </i><ul>
                    <li>в готелі 4*  - доплата 400$</li>
                    <li>в готелі 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>  <li>Проживання:
                 <ul>
                  <li>1 ніч в готелі 3* в Тбілісі;</li>
                  <li>1 ніч в готелі 3* в Боржомі;</li>
                  <li>2 ночі в готелі 3* в Батумі;</li>
                   </ul>
<li>Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги водія і гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
				<li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', '/images/excoursions/tour_5days_tbilisi_batumi_0)_500x560.png', 'Тур в Грузію на 5 днів. Гори і Море - Cool Georgia Travel', 'Тур в Грузію на 5 днів. Гори і Море - Cool Georgia Travel', '<b>Вартість: від 380$</b>  за 1 людину<br> *при разміщенні у готелі 3* <br>*<b>Все включено</b> (окрім авіаквитків) <br>У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok"><li>Проживання:
                 <ul>
                  <li>1 ніч в готелі 3* в Тбілісі;</li>
                  <li>1 ніч в готелі 3* в Боржомі;</li>
                  <li>2 ночі в готелі 3* в Батумі;</li>
                   </ul>
<li> Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги водія і гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (25, 1, 'Отдых в Грузии на 7 дней. Горы и Море', 'Маршрут тура в Грузию на 7 дней в Тбилиси и Батуми с Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию на 7 дней в Тбилиси и Батуми" src="/images/tours/tours_maps/tour_5days_tbilisi_batumi_1110.jpg" alt="">', '<b>Отдых в Грузии на 7 дней. Горы и Море. </b>Увидеть всю Грузию! Путешествие по всей стране от Тбилиси и до Батуми. Так же знакомство с Боржоми и Кутаиси. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '7 дней', '', '/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg', 'Отдых в Грузии на 7 дней. Горы и Море', '575$', 'Стоимость', '<ul>
                <li><b> от 575$</b> за 1 человека (при размещении в отеле 3* )</li>
		</ul> 
		<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>
                <table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1370</td>
                                <td style="padding: 6px !important;">870</td>
                                <td style="padding: 6px !important;">770</td>
                                <td style="padding: 6px !important;">700</td>
                                <td style="padding: 6px !important;">640</td>
                                <td style="padding: 6px !important;">605</td>
                                <td style="padding: 6px !important;">575</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
				
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 600$</li>
                    <li>в отеле 5*  - доплата 900$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание:
                 <ul>
                  <li>1 ночь в отеле 3* в Тбилиси;</li>
                  <li>1 ночь в отеле 3* в Боржоми;</li>
                  <li>4 ночи в отеле 3* в Батуми;</li>
                   </ul>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги водителя и гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', ' <ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_7days_tbilisi_Batumi_0_500x560.png', 'Отдых в Грузии на 7 дней. Горы и Море - Cool Georgia Travel', 'Отдых в Грузии на 7 дней. Горы и Море - Cool Georgia Travel', '<b>Стоимость: от 575$</b>  за 1 человека <br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание:
                 <ul>
                  <li>1 ночь в отеле 3* в Тбилиси;</li>
                  <li>1 ночь в отеле 3* в Боржоми;</li>
                  <li>4 ночи в отеле 3* в Батуми;</li>
                   </ul>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги водителя и гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (25, 2, 'Rest in Georgia. Mountains and the Sea', 'Route of Tour to Georgia for 7 days to Tbilisi and Batumi with Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 7 days to Tbilisi and Batumi" src="/images/tours/tours_maps/tour_5days_tbilisi_batumi_1110.jpg" alt="">', '<b>Rest in Georgia for 7 days. Mountains and the Sea. </b>To see the whole of Georgia! Travel all over the country from Tbilisi to Batumi. Also an acquaintance with Borjomi and Kutaisi.. <br><br><b>All inclusive</b>', 'Details', 'To order', '7 days', '', '/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg', 'Rest in Georgia. Mountains and the Sea', '575$', 'Cost', '<ul>
                <li>from <b>575$</b> for 1 person (for accommodation in hotel 3* )</li>
                 </ul>
<p> The cost <b> is depends on the count of persons in the group </b>: then more people so cheaper! </p>
				<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Group</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1370</td>
                                <td style="padding: 6px !important;">870</td>
                                <td style="padding: 6px !important;">770</td>
                                <td style="padding: 6px !important;">700</td>
                                <td style="padding: 6px !important;">640</td>
                                <td style="padding: 6px !important;">605</td>
                                <td style="padding: 6px !important;">575</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 4*  - surcharge 600$</li>
                    <li>in the hotel 5*  - surcharge 900$</li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation:
                 <ul>
                  <li>1 night in a 3* hotel in Tbilisi;</li>
                  <li>1 night in a 3* hotel in Borjomi;</li>
                  <li>4 nights in a 3 * hotel in Batumi;</li>
                   </ul>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
				<li>Entrance tickets to the above objects</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', '<ul>
                <li>Flight</li>
            </ul>
            <p>If you want, <b>you can increase the rest time in Georgia</b> due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', '/images/excoursions/tour_7days_tbilisi_Batumi_0_500x560.png', 'Rest in Georgia. Mountains and the Sea - Cool Georgia Travel', 'Rest in Georgia. Mountains and the Sea - Cool Georgia Travel', '<b>Cost: from 575$</b>  for 1 person <br> *for accommodation in hotel 3* <br>*<b>All inclusive</b> (without airtickets) <br>THE COST INCLUDES:<ul class="list-ok">
                <li>Accommodation:
                 <ul>
                  <li>1 night in a 3* hotel in Tbilisi;</li>
                  <li>1 night in a 3* hotel in Borjomi;</li>
                  <li>4 nights in a 3 * hotel in Batumi;</li>
                   </ul>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (25, 3, 'Отдых в Грузии на 7 дней. Горы и Море', 'Маршрут тура в Грузию на 7 дней в Тбилиси и Батуми с Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 7 days to Tbilisi and Batumi" src="/images/tours/tours_maps/tour_5days_tbilisi_batumi_1110.jpg" alt="">', '<b>Отдых в Грузии на 7 дней. Горы и Море. </b>Увидеть всю Грузию! Путешествие по всей стране от Тбилиси и до Батуми. Так же знакомство с Боржоми и Кутаиси. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '7 дней', '', '/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg', 'Отдых в Грузии на 7 дней. Горы и Море', '575$', 'Стоимость', '<ul>
                <li>от <b>575$</b> за 1 человека (при размещении в отеле 3* )</li>
                </ul>
	<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                              <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1370</td>
                                <td style="padding: 6px !important;">870</td>
                                <td style="padding: 6px !important;">770</td>
                                <td style="padding: 6px !important;">700</td>
                                <td style="padding: 6px !important;">640</td>
                                <td style="padding: 6px !important;">605</td>
                                <td style="padding: 6px !important;">575</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 600$</li>
                    <li>в отеле 5*  - доплата 900$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание:
                 <ul>
                  <li>1 ночь в отеле 3* в Тбилиси;</li>
                  <li>1 ночь в отеле 3* в Боржоми;</li>
                  <li>4 ночи в отеле 3* в Батуми;</li>
                   </ul>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги водителя и гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
				<li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', ' <ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_7days_tbilisi_Batumi_0_500x560.png', 'Отдых в Грузии на 7 дней. Горы и Море - Cool Georgia Travel', 'Отдых в Грузии на 7 дней. Горы и Море - Cool Georgia Travel', '<b>Стоимость: от 575$</b>  за 1 человека <br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание:
                 <ul>
                  <li>1 ночь в отеле 3* в Тбилиси;</li>
                  <li>1 ночь в отеле 3* в Боржоми;</li>
                  <li>4 ночи в отеле 3* в Батуми;</li>
                   </ul>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги водителя и гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (25, 4, 'Відпочинок в Грузії на 7 днів. Гори та море', 'Маршрут туру в Грузію на 7 днів в Тбілісі і Батумі з Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 7 days to Tbilisi and Batumi" src="/images/tours/tours_maps/tour_5days_tbilisi_batumi_1110.jpg" alt="">', '<b>Відпочинок в Грузії на 7 днів. Гори та море. </b>Побачити всю Грузію! Подорож по всій країні від Тбілісі до Батумі. Також знайомство із відомими містами - Боржомі та Кутаїсі. <p><b>Все включено</b></p>', 'Деталi', 'Замовити', '7 днів', '', '/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg', 'Відпочинок в Грузії на 7 днів. Гори та море', '575$', 'Вартість', '<ul>
                <li>від <b>575$</b> за 1 людину (при розміщенні в готелі 3* )</li>
                </ul>
<p> Вартість <b> залежить від кількості людей у ​​групі </b>: чим більше людей, тим дешевше! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1370</td>
                                <td style="padding: 6px !important;">870</td>
                                <td style="padding: 6px !important;">770</td>
                                <td style="padding: 6px !important;">700</td>
                                <td style="padding: 6px !important;">640</td>
                                <td style="padding: 6px !important;">605</td>
                                <td style="padding: 6px !important;">575</td>
                            </tr>
                   
                        </tbody>
                    </table>
				<p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:
                </i><ul>
                    <li>в готелі 4*  - доплата 600$</li>
                    <li>в готелі 5*  - доплата 900$</li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>  <li>Проживання:
                 <ul>
                  <li>1 ніч в готелі 3* в Тбілісі;</li>
                  <li>1 ніч в готелі 3* в Боржомі;</li>
                  <li>4 ночі в готелі 3* в Батумі;</li>
                   </ul>
<li> Сніданок</li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги водія і гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', '/images/excoursions/tour_7days_tbilisi_Batumi_0_500x560.png', 'Відпочинок в Грузії на 7 днів. Гори та море - Cool Georgia Travel', 'Відпочинок в Грузії на 7 днів. Гори та море - Cool Georgia Travel', '<b>Вартість: від 575$</b>  за 1 людину <br> *при разміщенні у готелі 3*  <br>*<b>Все включено</b> (окрім авіаквитків) <br>У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok"> <li>Проживання:
                 <ul>
                  <li>1 ніч в готелі 3* в Тбілісі;</li>
                  <li>1 ніч в готелі 3* в Боржомі;</li>
                  <li>4 ночі в готелі 3* в Батумі;</li>
                   </ul>
<li> Сніданок</li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги водія і гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (26, 1, 'Тур в Грузию на 10 дней', 'Маршрут тура в Грузию на 10 дней в Тбилиси и Батуми с Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию на 10 дней в Тбилиси и Батуми" src="/images/excoursions/maps/tour_10days_tbilisi_batumi_1110.jpg" alt="">', '<b>Тур в Грузию на 10 дней.</b> Вся Грузия! Горы, виноградники, древние исторические города и святые места, а также погреться на солнце возле моря в Батуми. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '10 дней', '', '/images/cards/tour_9days_500x300.jpg', 'Тур в Грузию на 10 дней', '735$', 'Стоимость', '<ul>
                <li><b> от 735$</b> за 1 человека (при размещении в отеле 3* )</li>
		</ul> 
		<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>
                <table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1840</td>
                                <td style="padding: 6px !important;">1090</td>
                                <td style="padding: 6px !important;">940</td>
                                <td style="padding: 6px !important;">870</td>
                                <td style="padding: 6px !important;">790</td>
                                <td style="padding: 6px !important;">750</td>
                                <td style="padding: 6px !important;">735</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
				
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 600$</li>
                    <li>в отеле 5*  - доплата 1350$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание:
                   <ul>
                      <li>4 ночи в отеле 3* в Тбилиси;</li>
                      <li>1 ночь в отеле 3* в Боржоми;</li>
                      <li>4 ночи в отеле 3* в Батуми;</li>
                   </ul>
                </li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги водителя и гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_10days_tbilisi_batumi_0_500x560.png', 'Тур в Грузию на 10 дней - Cool Georgia Travel', 'Тур в Грузию на 10 дней - Cool Georgia Travel', '<b>Стоимость: от 735$</b>  за 1 человека<br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание:
                   <ul>
                      <li>4 ночи в отеле 3* в Тбилиси;</li>
                      <li>1 ночь в отеле 3* в Боржоми;</li>
                      <li>4 ночи в отеле 3* в Батуми;</li>
                   </ul>
                </li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги водителя и гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (26, 2, 'Tour to Georgia for 10 days', 'Route of Tour to Georgia for 10 days to Tbilisi and Batumi with Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 10 days to Tbilisi and Batumi" src="/images/excoursions/maps/tour_10days_tbilisi_batumi_1110.jpg" alt="">', '<b>Tour to Georgia for 10 days.</b> All of Georgia! Mountains, vineyards, ancient historical cities and holy places, also the opportunity to sunbathe under the sun near the sea in Batumi.. <br><br><b>All inclusive</b>', 'Details', 'To order', '10 days', '', '/images/cards/tour_9days_500x300.jpg', 'Tour to Georgia for 10 days', '735$', 'Cost', '<ul>
                <li>from <b>735$</b> for 1 person (for accommodation in hotel 3* )</li>
                 </ul>
<p> The cost <b> is depends on the count of persons in the group </b>: then more people so cheaper! </p>
				<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Group</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1840</td>
                                <td style="padding: 6px !important;">1090</td>
                                <td style="padding: 6px !important;">940</td>
                                <td style="padding: 6px !important;">870</td>
                                <td style="padding: 6px !important;">790</td>
                                <td style="padding: 6px !important;">750</td>
                                <td style="padding: 6px !important;">735</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 4*  - surcharge 900$</li>
                    <li>in the hotel 5*  - surcharge 1350$</li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation:
                 <ul>
                  <li>4 night in a 3* hotel in Tbilisi;</li>
                  <li>1 night in a 3* hotel in Borjomi;</li>
                  <li>4 nights in a 3 * hotel in Batumi;</li>
                   </ul>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', '<ul>
                <li>Flight</li>
            </ul>
            <p>If you want, <b>you can increase the rest time in Georgia</b> due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', '/images/excoursions/tour_10days_tbilisi_batumi_0_500x560.png', 'Tour to Georgia for 10 days - Cool Georgia Travel', 'Tour to Georgia for 10 days - Cool Georgia Travel', '<b>Cost: from 735$</b>  for 1 person<br> *for accommodation in hotel 3*<br>*<b>All inclusive</b> (without airtickets) <br>THE COST INCLUDES:<ul class="list-ok">
                <li>Accommodation:
                 <ul>
                  <li>4 night in a 3* hotel in Tbilisi;</li>
                  <li>1 night in a 3* hotel in Borjomi;</li>
                  <li>4 nights in a 3 * hotel in Batumi;</li>
                   </ul>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (26, 3, 'Тур в Грузию на 10 дней', 'Маршрут тура в Грузию на 10 дней в Тбилиси и Батуми с Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 10 days to Tbilisi and Batumi" src="/images/excoursions/maps/tour_10days_tbilisi_batumi_1110.jpg" alt="">', '<b>Тур в Грузию на 10 дней.</b> Вся Грузия! Горы, виноградники, древние исторические города и святые места, а также погреться на солнце возле моря в Батуми. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '10 дней', '', '/images/cards/tour_9days_500x300.jpg', 'Тур в Грузию на 10 дней', '735$', 'Стоимость', '<ul>
                <li>от <b>735$</b> за 1 человека (при размещении в отеле 3* )</li>
                </ul>
	<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                              <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1840</td>
                                <td style="padding: 6px !important;">1090</td>
                                <td style="padding: 6px !important;">940</td>
                                <td style="padding: 6px !important;">870</td>
                                <td style="padding: 6px !important;">790</td>
                                <td style="padding: 6px !important;">750</td>
                                <td style="padding: 6px !important;">735</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 900$</li>
                    <li>в отеле 5*  - доплата 1350$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание:
                   <ul>
                      <li>4 ночи в отеле 3* в Тбилиси;</li>
                      <li>1 ночь в отеле 3* в Боржоми;</li>
                      <li>4 ночи в отеле 3* в Батуми;</li>
                   </ul>
                </li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги водителя и гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_10days_tbilisi_batumi_0_500x560.png', 'Тур в Грузию на 10 дней - Cool Georgia Travel', 'Тур в Грузию на 10 дней - Cool Georgia Travel', '<b>Стоимость: от 735$</b>  за 1 человека<br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание:
                   <ul>
                      <li>4 ночи в отеле 3* в Тбилиси;</li>
                      <li>1 ночь в отеле 3* в Боржоми;</li>
                      <li>4 ночи в отеле 3* в Батуми;</li>
                   </ul>
                </li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги водителя и гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (26, 4, 'Тур до Грузії на 10 днів', 'Маршрут туру в Грузію на 10 днів в Тбілісі та Батумі з Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 10 days to Tbilisi and Batumi" src="/images/excoursions/maps/tour_10days_tbilisi_batumi_1110.jpg" alt="">', '<b>Тур до Грузії на 10 днів.</b> Вся Грузія! Гори, виноградники, стародавні історичні та святі місця, також можливість засмагнути під сонцем біля Чорного моря в Батумі. <p><b>Все включено</b></p>', 'Деталi', 'Замовити', '10 днів', '', '/images/cards/tour_9days_500x300.jpg', 'Тур до Грузії на 10 днів', '735$', 'Вартість', '<ul>
                <li>від <b>735$</b> за 1 людину (при розміщенні в готелі 3* )</li>
                </ul>
<p> Вартість <b> залежить від кількості людей у ​​групі </b>: чим більше людей, тим дешевше! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1840</td>
                                <td style="padding: 6px !important;">1090</td>
                                <td style="padding: 6px !important;">940</td>
                                <td style="padding: 6px !important;">870</td>
                                <td style="padding: 6px !important;">790</td>
                                <td style="padding: 6px !important;">750</td>
                                <td style="padding: 6px !important;">735</td>
                            </tr>
                   
                        </tbody>
                    </table>
				<p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:
                </i><ul>
                    <li>в готелі 4*  - доплата 900$</li>
                    <li>в готелі 5*  - доплата 1350$</li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>  <li>Проживання:
                 <ul>
                  <li>4 ночі в готелі 3* в Тбілісі;</li>
                  <li>1 ніч в готелі 3* в Боржомі;</li>
                  <li>4 ночі в готелі 3* в Батумі;</li>
                   </ul>
<li>Сніданок</li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги водія і гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', '/images/excoursions/tour_10days_tbilisi_batumi_0_500x560.png', 'Тур до Грузії на 10 днів - Cool Georgia Travel', 'Тур до Грузії на 10 днів - Cool Georgia Travel', '<b>Вартість: від 735$</b>  за 1 людину<br> *при разміщенні у готелі 3* <br>*<b>Все включено</b> (окрім авіаквитків) <br>У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok"><li>Проживання:
                 <ul>
                  <li>4 ночі в готелі 3* в Тбілісі;</li>
                  <li>1 ніч в готелі 3* в Боржомі;</li>
                  <li>4 ночі в готелі 3* в Батумі;</li>
                   </ul>
<li> Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги водія і гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (27, 1, 'Тур в Грузию и Армению на 6 дней', 'Маршрут Тура в Грузию и Армению на 6 дней с Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию и Армению на 6 дней" src="/images/tours/tours_maps/tour_6days_armenia_1110.jpg" alt="">', '<b>Тур в Грузию и Армению на 6 дней.</b> Возможность увидеть сразу две страны Кавказа - Грузия и Армения. Мы покажем Вам все самые интересные места. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '6 дней', '', '/images/cards/armenia_500x300.jpg', 'Тур в Грузию и Армению на 6 дней', '510$', 'Стоимость', '<ul>
                <li><b> от 510$</b> за 1 человека (при размещении в отеле 3* )</li>
		</ul> 
		<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>
                <table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1290</td>
                                <td style="padding: 6px !important;">790</td>
                                <td style="padding: 6px !important;">640</td>
                                <td style="padding: 6px !important;">590</td>
                                <td style="padding: 6px !important;">560</td>
                                <td style="padding: 6px !important;">530</td>
                                <td style="padding: 6px !important;">510</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
				
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 500$</li>
                    <li>в отеле 5*  - доплата 750$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                 <li>Проживание:
                   <ul>
                      <li>4 ночи в отеле 3* в Тбилиси;</li>
                      <li>1 ночь в отеле 3* в Ереване;</li>
                   </ul>
                </li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
                <li>виза в Армению (гражданам Украины и России виза не нужна)</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/cards/tour-to-Armenia-from-Tbilisi_500x524.png', 'Тур в Грузию и Армению на 6 дней - Cool Georgia Travel', 'Тур в Грузию и Армению на 6 дней - Cool Georgia Travel', '<b>Стоимость: от 510$</b>  за 1 человека<br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                 <li>Проживание:
                   <ul>
                      <li>4 ночи в отеле 3* в Тбилиси;</li>
                      <li>1 ночь в отеле 3* в Ереване;</li>
                   </ul>
                </li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (27, 2, 'Tour to Georgia and Armenia for 6 days', 'Route of Tour to Georgia and Armenia for 6 days with Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia and Armenia for 6 days" src="/images/tours/tours_maps/tour_6days_armenia_1110.jpg" alt="">', '<b>Tour to Georgia and Armenia for 6 days.</b> The opportunity to see two countries of the Caucasus - Georgia and Armenia. We will show you all the most interesting places.. <br><br><b>All inclusive</b>', 'Details', 'To order', '6 days', '', '/images/cards/armenia_500x300.jpg', 'Tour to Georgia and Armenia for 6 days', '510$', 'Cost', '<ul>
                <li>from <b>510$</b> for 1 person (for accommodation in hotel 3* )</li>
                 </ul>
<p> The cost <b> is depends on the count of persons in the group </b>: then more people so cheaper! </p>
				<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Group</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                 <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">1290</td>
                                <td style="padding: 6px !important;">790</td>
                                <td style="padding: 6px !important;">640</td>
                                <td style="padding: 6px !important;">590</td>
                                <td style="padding: 6px !important;">560</td>
                                <td style="padding: 6px !important;">530</td>
                                <td style="padding: 6px !important;">510</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 4*  - surcharge 500$</li>
                    <li>in the hotel 5*  - surcharge 750$</li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 
                    <li>4 nights in a 3 * hotel in Tbilisi</li>
                     <li>1 night in a 3 * hotel in Yerevan;</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>Tbilisi sulfur baths</li>
                <li>Culinary master class</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', '<ul>
                <li>Flight</li>
                <li>visa to Armenia</li>
            </ul>
            <p>If you want, <b>you can increase the rest time in Georgia</b> due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', '/images/cards/tour-to-Armenia-from-Tbilisi_500x524.png', 'Tour to Georgia and Armenia for 6 days - Cool Georgia Travel', 'Tour to Georgia and Armenia for 6 days - Cool Georgia Travel', '<b>Cost: from 510$</b>  for 1 person<br> *for accommodation in hotel 3*<br>*<b>All inclusive</b> (without airtickets) <br>THE COST INCLUDES:<ul class="list-ok">
                <li>Accommodation: 
                    <li>4 nights in 3 star hotel in the midle of Tbilisi</li>
                     <li>1 night in a 3 * hotel in Yerevan;</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>Tbilisi sulfur baths</li>
                <li>Culinary master class</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (27, 3, 'Тур в Грузию и Армению на 6 дней', 'Маршрут Тура в Грузию и Армению на 6 дней с Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia and Armenia for 6 days" src="/images/tours/tours_maps/tour_6days_armenia_1110.jpg" alt="">', '<b>Тур в Грузию и Армению на 6 дней.</b> Возможность увидеть сразу две страны Кавказа - Грузия и Армения. Мы покажем Вам все самые интересные места. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '6 дней', '', '/images/cards/armenia_500x300.jpg', 'Тур в Грузию и Армению на 6 дней', '510$', 'Стоимость', '<ul>
                <li>от <b>510$</b> за 1 человека (при размещении в отеле 3* )</li>
                </ul>
	<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                 <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                               <td style="padding: 6px !important;">1290</td>
                                <td style="padding: 6px !important;">790</td>
                                <td style="padding: 6px !important;">640</td>
                                <td style="padding: 6px !important;">590</td>
                                <td style="padding: 6px !important;">560</td>
                                <td style="padding: 6px !important;">530</td>
                                <td style="padding: 6px !important;">510</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 500$</li>
                    <li>в отеле 5*  - доплата 750$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                 <li>Проживание:
                   <ul>
                      <li>4 ночи в отеле 3* в Тбилиси;</li>
                      <li>1 ночь в отеле 3* в Ереване;</li>
                   </ul>
                </li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
                <li>виза в Армению (гражданам Украины и России виза не нужна)</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/cards/tour-to-Armenia-from-Tbilisi_500x524.png', 'Тур в Грузию и Армению на 6 дней - Cool Georgia Travel', 'Тур в Грузию и Армению на 6 дней - Cool Georgia Travel', '<b>Стоимость: от 510$</b>  за 1 человека<br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                 <li>Проживание:
                   <ul>
                      <li>4 ночи в отеле 3* в Тбилиси;</li>
                      <li>1 ночь в отеле 3* в Ереване;</li>
                   </ul>
                </li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (27, 4, 'Тур до Грузії та Вірменії на 6 днів', 'Маршрут Туру в Грузію і Вірменію на 6 днів з Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia and Armenia for 6 days" src="/images/tours/tours_maps/tour_6days_armenia_1110.jpg" alt="">', '<b>Тур до Грузії та Вірменії на 6 днів.</b> Можливість побачити дві країни Кавказу - Грузію та Вірменії. Ми покажемо вам всі найцікавіші та найпривабливіші місця. <p><b>Все включено</b></p>', 'Деталi', 'Замовити', '6 днів', '', '/images/cards/armenia_500x300.jpg', 'Тур до Грузії та Вірменії на 6 днів', '510$', 'Вартість', '<ul>
                <li>від <b>510$</b> за 1 людину (при розміщенні в готелі 3* )</li>
                </ul>
<p> Вартість <b> залежить від кількості людей у ​​групі </b>: чим більше людей, тим дешевше! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                 <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                               <td style="padding: 6px !important;">1290</td>
                                <td style="padding: 6px !important;">790</td>
                                <td style="padding: 6px !important;">640</td>
                                <td style="padding: 6px !important;">590</td>
                                <td style="padding: 6px !important;">560</td>
                                <td style="padding: 6px !important;">530</td>
                                <td style="padding: 6px !important;">510</td>
                            </tr>
                   
                        </tbody>
                    </table>
				<p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:
                </i><ul>
                    <li>в готелі 4*  - доплата 500$</li>
                    <li>в готелі 5*  - доплата 750$</li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>
                 <li>Проживання:
                   <ul>
                      <li>4 ночі в готелі 3* в Тбілісі;</li>
                      <li>1 ніч в готелі 3* в Єревані;</li>
                   </ul>
</li>
                <li>Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Тбіліські сірчані лазні </li>
                <li> Кулінарний майстер-клас </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
<li>віза до Вірменії (громадянам України та Росії віза не потрібна)</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', '/images/cards/tour-to-Armenia-from-Tbilisi_500x524.png', 'Тур до Грузії та Вірменії на 6 днів - Cool Georgia Travel', 'Тур до Грузії та Вірменії на 6 днів - Cool Georgia Travel', '<b>Вартість: від 510$</b>  за 1 людину<br> *при разміщенні у готелі 3* <br>*<b>Все включено</b> (окрім авіаквитків) <br>У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                 <li>Проживання:
                   <ul>
                      <li>4 ночі в готелі 3* в Тбілісі;</li>
                      <li>1 ніч в готелі 3* в Єревані;</li>
                   </ul>
</li>
                <li> Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Тбіліські сірчані лазні </li>
                <li> Кулінарний майстер-клас </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (28, 1, 'Тур в Грузию на 5 дней. Тбилиси, Казбек, кулинарный мастер-класс', 'Маршрут Тура в Грузию на 5 дней. Тбилиси, Казбек, кулинарный мастер-класс с Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию на 5 дней. Тбилиси, Казбек, кулинарный мастер-класс" src="/images/excoursions/maps/tour_5days_tbilisi_kazbek_culinary_mester_class_1110.jpg" alt="">', '<b>Тур в Грузию на 5 дней. Тбилиси, Казбек, кулинарный мастер-класс.</b> Увидеть столицу, увидеть горы, попробывать вкусную еду и научится ее готовить.  <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '5 дней', '', '/images/excoursions/tour_5days_tbilisi_kazbek_culinary_master_class_500_300.jpg', 'Тур в Грузию на 5 дней. Тбилиси, Казбек, кулинарный мастер-класс', '340$', 'Стоимость', '<ul>
                <li><b> от 340$</b> за 1 человека (при размещении в отеле 3* )</li>
		</ul> 
		<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>
                <table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">710</td>
                                <td style="padding: 6px !important;">510</td>
                                <td style="padding: 6px !important;">460</td>
                                <td style="padding: 6px !important;">425</td>
                                <td style="padding: 6px !important;">380</td>
                                <td style="padding: 6px !important;">355</td>
                                <td style="padding: 6px !important;">340</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
				
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 400$</li>
                    <li>в отеле 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 4 ночи в 3* отеле в Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Кулинарный мастер-класс</li>
                <li>Подъем на джипе к храму Гергети</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', ' <ul>
                <li>Авиаперелет</li>
                </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/tours/tour_5days_tbilisi_Kazbek_500_402.jpg', 'Тур в Грузию на 5 дней. Тбилиси, Казбек, кулинарный мастер-класс - Cool Georgia Travel', 'Тур в Грузию на 5 дней. Тбилиси, Казбек, кулинарный мастер-класс - Cool Georgia Travel', '<b>Стоимость: от 340$</b>  за 1 человека <br> *при размещении в отеле 3* <b>Всё включено</b> (кроме авиабилетов) 
<br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 4 ночи в 3* отеле в Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Подъем к храму Гергети на джипе</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (28, 2, 'Tour to Georgia for 5 days. Tbilisi, Kazbek, culinary master class', 'Route of Tour to Georgia for 5 days. Tbilisi, Kazbegi, culinary master-class with Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 5 days. Tbilisi, Kazbegi, culinary master-class" src="/images/excoursions/maps/tour_5days_tbilisi_kazbek_culinary_mester_class_1110.jpg" alt="">', '<b>Tour to Georgia for 5 days. Tbilisi, Kazbegi, culinary master-class</b> See the capital, see the mountains, taste delicious food and learn how to cook it. <br><br><b>All inclusive</b>', 'Details', 'To order', '5 days', '', '/images/excoursions/tour_5days_tbilisi_kazbek_culinary_master_class_500_300.jpg', 'Tour to Georgia for 5 days. Tbilisi, Kazbek, culinary master class.', '340$', 'Cost', '<ul>
                <li>from <b>340$</b> for 1 person (for accommodation in hotel 3* )</li>
                 </ul>
<p> The cost <b> is depends on the count of persons in the group </b>: then more people so cheaper! </p>
				<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Group</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                             <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">710</td>
                                <td style="padding: 6px !important;">510</td>
                                <td style="padding: 6px !important;">460</td>
                                <td style="padding: 6px !important;">425</td>
                                <td style="padding: 6px !important;">380</td>
                                <td style="padding: 6px !important;">355</td>
                                <td style="padding: 6px !important;">340</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 4*  - surcharge 400$</li>
                    <li>in the hotel 5*  - surcharge 600$</li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 4 nights in 3* hotel in Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>Culinary master class</li>
                <li>Ascent by jeep to the Gergeti temple</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', '<ul>
                <li>Flight</li>
                </ul>
            <p>If you want, you can increase the rest time in Georgia. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi</p>', '/images/tours/tour_5days_tbilisi_Kazbek_500_402.jpg', 'Tour to Georgia for 5 days:Tbilisi, Kazbegi, culinary master-klass - Cool Georgia Travel', 'Tour to Georgia for 5 days:Tbilisi, Kazbegi, culinary master-klass - Cool Georgia Travel', '<b>Cost: from 340$</b>  for 1 person <br> *for accommodation in hotel 3* <br>*<b>All inclusive</b> (without airtickets) <br>THE COST INCLUDES:<ul class="list-ok">
                <li>Accommodation: 4 nights in 3* hotel in Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>Culinary master class</li>
                <li>Ascent to the Gergeti temple by jeep</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (28, 3, 'Тур в Грузию на 5 дней. Тбилиси, Казбек, кулинарный мастер-класс', 'Маршрут Тура в Грузию на 5 дней. Тбилиси, Казбек, кулинарный мастер-класс с Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию на 5 дней. Тбилиси, Казбек, кулинарный мастер-классi" src="/images/excoursions/maps/tour_5days_tbilisi_kazbek_culinary_mester_class_1110.jpg" alt="">', '<b>Тур в Грузию на 5 дней. Тбилиси, Казбек, кулинарный мастер-класс.</b> Увидеть столицу, увидеть горы, попробывать вкусную еду и научится ее готовить.  <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '5 дней', '', '/images/excoursions/tour_5days_tbilisi_kazbek_culinary_master_class_500_300.jpg', 'Тур в Грузию на 5 дней. Тбилиси, Казбек, кулинарный мастер-класс', '340$', 'Стоимость', '<ul>
                <li>от <b>340$</b> за 1 человека (при размещении в отеле 3* )</li>
                </ul>
	<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                              <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">710</td>
                                <td style="padding: 6px !important;">510</td>
                                <td style="padding: 6px !important;">460</td>
                                <td style="padding: 6px !important;">425</td>
                                <td style="padding: 6px !important;">380</td>
                                <td style="padding: 6px !important;">355</td>
                                <td style="padding: 6px !important;">340</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 400$</li>
                    <li>в отеле 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 4 ночи в 3* отеле в Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Кулинарный мастер-класс</li>
                <li>Подъем на джипе к храму Гергети</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', ' <ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/tours/tour_5days_tbilisi_Kazbek_500_402.jpg', 'Тур в Грузию на 5 дней. Тбилиси, Казбек, кулинарный мастер-класс - Cool Georgia Travel', 'Зимний тур в Грузию на 5 дней. Бакуриани - Cool Georgia TravelТур в Грузию на 5 дней. Тбилиси, Казбек, кулинарный мастер-класс - Cool Georgia Travel', '<b>Стоимость: от 340$</b>  за 1 человека <br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 4 ночи в 3* отеле в Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Подъем к храму Гергети на джипе</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (28, 4, 'Тур до Грузії на 5 днів. Тбілісі, Казбек, кулінарний майстер-клас', 'Маршрут Туру до Грузії на 5 днів. Тбілісі, Казбегі, кулінарний майстер-клас з Cool Georgia Travel:', '<img style="width: 100%;" title="Тур до Грузії на 5 днів. Тбілісі, Казбегі, кулінарний майстер-клас" src="/images/excoursions/maps/tour_5days_tbilisi_kazbek_culinary_mester_class_1110.jpg" alt="">', '<b>Тур до Грузії на 5 днів. Тбілісі, Казбек, кулінарний майстер-клас. </b> Побачити столицю, побачити гори, скуштувати смачну їжу та навчиться її готувати. <p><b>Все включено</b></p>', 'Деталi', 'Замовити', '5 днів', '', '/images/excoursions/tour_5days_tbilisi_kazbek_culinary_master_class_500_300.jpg', 'Тур до Грузії на 5 днів. Тбілісі, Казбек, кулінарний майстер-клас', '340$', 'Вартість', '<ul>
                <li>від <b>340$</b> за 1 людину (при розміщенні в готелі 3* )</li>
                </ul>
<p> Вартість <b> залежить від кількості людей у ​​групі </b>: чим більше людей, тим дешевше! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">710</td>
                                <td style="padding: 6px !important;">510</td>
                                <td style="padding: 6px !important;">460</td>
                                <td style="padding: 6px !important;">425</td>
                                <td style="padding: 6px !important;">380</td>
                                <td style="padding: 6px !important;">355</td>
                                <td style="padding: 6px !important;">340</td>
                            </tr>
                   
                        </tbody>
                    </table>
				<p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:
                </i><ul>
                    <li>в готелі 4*  - доплата 400$</li>
                    <li>в готелі 5*  - доплата 600$</li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>
                <li>Проживання: 4 ночі в 3* готелі в Тбілісі</li>
<li> Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Кулінарний майстер-клас </li>
                <li> Підйом на джипі до храму Гергеті </li>
                <li> Пляшка домашнього вина 7-річної витримки у подарунок </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b>. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', '/images/tours/tour_5days_tbilisi_Kazbek_500_402.jpg', 'Тур до Грузиї на 5 днів. Тбілісі, Казбек, кулінарний майстер-клас - Cool Georgia Travel', 'Тур до Грузиї на 5 днів. Тбілісі, Казбек, кулінарний майстер-клас - Cool Georgia Travel', '<b>Вартість: від 340$</b>  за 1 людину <br> *при разміщенні у готелі 3* <br>*<b>Все включено</b> (окрім авіаквитків) <br>У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                <li>Проживання: 4 ночі в 3* готелі в Тбілісі</li>
<li> Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Кулінарний майстер-клас </li>
                <li> Подйом до храму Гергеті на джипі </li>
                <li> Пляшка домашнього вина 7-річної витримки у подарунок </li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (29, 1, 'Зимний тур в Грузию на 6 дней. Гудаури', 'Маршрут тура в Грузию на 6 дней в Гудаури с Cool Georgia Travel:', '<img style="width: 100%;" title="Зимний тур в Грузию на 6 дней в Гудаури" src="/images/excoursions/maps/ex_gudauri_1110.jpg" alt="">', '<b>Зимний тур в Грузию на 6 дней. Тбилиси и Гудаури.</b> Зимний активный отдых в Тбилиси. Поездка в Гудаури - трассы различной сложности, спуски с гор на лыжах, сноубордах и т.д. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '6 дней', '', '/images/cards/tour_5days_gudauri_500x300.jpg', 'Зимний тур в Грузию на 6 дней. Гудаури', '445$', 'Стоимость', '<ul>
                <li><b> от 445$</b> за 1 человека (при размещении в отеле 3* )</li>
		</ul> 
		<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>
                <table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">795</td>
                                <td style="padding: 6px !important;">595</td>
                                <td style="padding: 6px !important;">510</td>
                                <td style="padding: 6px !important;">480</td>
                                <td style="padding: 6px !important;">470</td>
                                <td style="padding: 6px !important;">460</td>
                                <td style="padding: 6px !important;">445</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
				
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 500$</li>
                    <li>в отеле 5*  - доплата 750$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 4 ночи в 3* отеле в Тбилиси, 1 ночь в Пасанаури (рядом с Гудаури)</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Ски-пасс (3 подъёма 2 день и на весь день в 3й день)</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
                <li>Полет на пароплане (по желанию)</li>
                <li>Инструктор (по желанию)</li>
                <li>Аренда снаряжения (по желанию)</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_5days_Gudauri_0_500x530.png', 'Зимний тур в Грузию на 6 дней. Гудаури - Cool Georgia Travel', 'Зимний тур в Грузию на 6 дней. Гудаури - Cool Georgia Travel', '<b>Стоимость: от 445$</b>  за 1 человека<br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 4 ночи в 3* отеле в самом центре Тбилиси, 1 ночь в Пасанаури (рядом с Гудаури)</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Ски-пасс (3 подъёма 2 день и на весь день в 3й день)</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (29, 2, 'Winter tour to Georgia for 6 days. Gudauri', 'Route of Tour to Georgia for 6 days to Gudauri with Cool Georgia Travel:', '<img style="width: 100%;" title="Winter tour to Georgia for 6 days to Gudauri" src="/images/excoursions/maps/ex_gudauri_1110.jpg" alt="">', '<b>Winter tour to Georgia for 6 days. Gudauri.</b> Winter active holidays in Tbilisi. Travel to Gudauri - trails of various complexity, descents from the mountains on skis, snowboards and others. <br><br><b>All inclusive</b>', 'Details', 'To order', '6 days', '', '/images/cards/tour_5days_gudauri_500x300.jpg', 'Winter tour to Georgia for 6 days. Gudauri', '445$', 'Cost', '<ul>
                <li>from <b>445$</b> for 1 person (for accommodation in hotel 3* )</li>
                 </ul>
<p> The cost <b> is depends on the count of persons in the group </b>: then more people so cheaper! </p>
				<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Group</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">795</td>
                                <td style="padding: 6px !important;">595</td>
                                <td style="padding: 6px !important;">510</td>
                                <td style="padding: 6px !important;">480</td>
                                <td style="padding: 6px !important;">470</td>
                                <td style="padding: 6px !important;">460</td>
                                <td style="padding: 6px !important;">445</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 4*  - surcharge 500$</li>
                    <li>in the hotel 5*  - surcharge 750$</li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 4 nights in 3* hotel in Tbilisi, 1 night in Psanauri (near Gudauri)</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>Tbilisi sulfur baths</li>
                <li>Culinary master class</li>
                <li>Sky-pass (3 times at Day2 and all Day 3)</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', ' <ul>
                <li>Flight</li>
                <li>Flight on a steamer (optional)</li>
                <li>Instructor (optional)</li>
                <li>Rental of equipment (optional)</li>
            </ul>
            <p>If you want, you can increase the rest time in Georgia due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi</p>', '/images/excoursions/tour_5days_Gudauri_0_500x530.png', 'Winter tour to Georgia for 6 days. Gudauri - Cool Georgia Travel', 'Winter tour to Georgia for 6 days. Gudauri - Cool Georgia Travel', '<b>Cost: from 445$</b>  for 1 person<br> *for accommodation in hotel 3*<br>*<b>All inclusive</b> (without airtickets) <br>THE COST INCLUDES:<ul class="list-ok">
                <li>Accommodation: 4 nights in 3* hotel in the center of Tbilisi, 1 night in Psanauri (near Gudauri)</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>Tbilisi sulfur baths</li>
                <li>Culinary master class</li>
                <li>Sky-pass (3 times at Day2 and all Day 3)</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (29, 3, 'Зимний тур в Грузию на 6 дней. Гудаури', 'Маршрут тура в Грузию на 6 дней в Гудаури с Cool Georgia Travel:', '<img style="width: 100%;" title="Winter tour to Georgia for 6 days to Gudauri" src="/images/excoursions/maps/ex_gudauri_1110.jpg" alt="">', '<b>Зимний тур в Грузию на 6 дней. Гудаури.</b> Зимний активный отдых в Тбитлиси. Поездка в Гудаури - трассы различной сложности, спуски с гор на лыжах, сноубордах и многое другое. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '6 дней', '', '/images/cards/tour_5days_gudauri_500x300.jpg', 'Зимний тур в Грузию на 6 дней. Гудаури', '445$', 'Стоимость', '<ul>
                <li>от <b>445$</b> за 1 человека (при размещении в отеле 3* )</li>
                </ul>
	<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">795</td>
                                <td style="padding: 6px !important;">595</td>
                                <td style="padding: 6px !important;">510</td>
                                <td style="padding: 6px !important;">480</td>
                                <td style="padding: 6px !important;">470</td>
                                <td style="padding: 6px !important;">460</td>
                                <td style="padding: 6px !important;">445</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 500$</li>
                    <li>в отеле 5*  - доплата 750$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 4 ночи в 3* отеле в Тбилиси, 1 ночь в Пасанаури (рядом с Гудаури)</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Ски-пасс (3 подъёма 2 день и на весь день в 3й день)</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
                <li>Полет на пароплане (по желанию)</li>
                <li>Инструктор (по желанию)</li>
                <li>Аренда снаряжения (по желанию)</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_5days_Gudauri_0_500x530.png', 'Зимний тур в Грузию на 6 дней. Гудаури - Cool Georgia Travel', 'Зимний тур в Грузию на 6 дней. Гудаури - Cool Georgia Travel', '<b>Стоимость: от 445$</b>  за 1 человека<br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 4 ночи в 3* отеле в самом центре Тбилиси, 1 ночь в Пасанаури (рядом с Гудаури)</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Ски-пасс (3 подъёма 2 день и на весь день в 3й день)</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (29, 4, 'Зимовий тур до Грузії на 6 днів. Гудаурі', 'Маршрут туру в Грузію на 6 днів в Гудаурі з Cool Georgia Travel:', '<img style="width: 100%;" title="Winter tour to Georgia for 6 days to Gudauri" src="/images/excoursions/maps/ex_gudauri_1110.jpg" alt="">', '<b>Зимовий тур до Грузії на 6 днів. Гудаурі.</b> Зимовий активний відпочинок у Тбілісі. Поїздка до Гудаурі - траси різної складності, спуски з гір на лижах, сноубордах та інше <p><b>Все включено</b></p>', 'Деталi', 'Замовити', '6 днів', '', '/images/cards/tour_5days_gudauri_500x300.jpg', 'Зимовий тур до Грузії на 6 днів. Гудаурі', '445$', 'Вартість', '<ul>
                <li>від <b>445$</b> за 1 людину (при розміщенні в готелі 3* )</li>
                </ul>
<p> Вартість <b> залежить від кількості людей у ​​групі </b>: чим більше людей, тим дешевше! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">795</td>
                                <td style="padding: 6px !important;">595</td>
                                <td style="padding: 6px !important;">510</td>
                                <td style="padding: 6px !important;">480</td>
                                <td style="padding: 6px !important;">470</td>
                                <td style="padding: 6px !important;">460</td>
                                <td style="padding: 6px !important;">445</td>
                            </tr>
                   
                        </tbody>
                    </table>
				<p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:
                </i><ul>
                    <li>в готелі 4*  - доплата 500$</li>
                    <li>в готелі 5*  - доплата 750$</li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>
                <li>Проживання: 4 ночі у 3* готелі в Тбілісі, 1 нічь в Пасанаурі (поблизу із Гудаурі)</li>
<li>Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Тбіліські сірчані лазні </li>
                <li> Кулінарний майстер-клас </li>
                <li> Скі-пас (3 підйоми 2го дня і на весь день в 3го дня) </li>
                <li> Пляшка домашнього вина 7-річної витримки у подарунок </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
                <li>Політ на параплані (за бажанням)</li>
                <li>Інструктор (за бажанням)</li>
                <li>Аренда снарядження (за бажанням)</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', '/images/excoursions/tour_5days_Gudauri_0_500x530.png', 'Зимовий тур до Грузії на 6 днів. Гудаурі - Cool Georgia Travel', 'Зимовий тур до Грузії на 6 днів. Гудаурі - Cool Georgia Travel', '<b>Вартість: від 445$</b>  за 1 людину<br> *при разміщенні у готелі 3* <br>*<b>Все включено</b> (окрім авіаквитків) <br>У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                <li>Проживання: 4 ночі у 3* готелі в самому центрі Тбілісі, 1 нічь в Пасанаурі (поблизу із Гудаурі)</li>
<li> Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Тбіліські сірчані лазні </li>
                <li> Кулінарний майстер-клас </li>
                <li> Скі-пас (3 підйоми 2го дня і на весь день в 3го дня) </li>
                <li> Пляшка домашнього вина 7-річної витримки у подарунок </li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (30, 1, 'Свадьба в Кахетии', 'Маршрут Свадьба в Грузии в Кахетии с Cool Georgia Travel:', '<img style="width: 100%;" title="Свадьба в Грузии в Кахетии" src="/images/tours/tours_maps/tour_3days_kaheti_1110.jpg" alt="">', '<b>Свадьба в Кахетии.</b> Город влюблённых - Сигнахи. ЗАГС здесь работает круглосуточно. Вас ждет край любви, виноградники и алазанская долина!', 'Детали', 'Бронировать', '3 дня', '', '/images/wedding/wend_1_500x300.jpg', 'Свадьба в Кахетии', '1900$', 'Стоимость', '<ul>
                <li><b>1900$</b> за двоих молодоженов (при размещении в отеле 3* )</li>
                <li><b>330$</b> за каждого гостя дополнительно </li>       
                <p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 3*  - 1900$ <p>(за 1 гостя дополнительно 330$)</p></li>
                    <li>в отеле 4*  - 2250$ <p>(за 1 гостя дополнительно 410$)</p> </li>
                    <li>в отеле 5*  - 2650$ <p>(за 1 гостя дополнительно 505$)</p></li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 2 ночи в 3* отеле <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1526841369;srfid=0a330bfdd30da7e1e52f6fdd118c7be9fe2fe390X1;srpvid=41b082cbc71e0001;type=total;ucfs=1&#hotelTmpl" target="_blank"> Guest House Zemeli</a> в самом центре Тбилиси, номер для новобрачных</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Праздничное застолье</li>
                <li>Легкий фуршет днем в день свадьбы (вино и легкая закуска)</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте (для молодоженов BMW E60, для гостей Mazda MPV или Mersedes VITO) </li>
                <li>Услуги гида-тамада на протяжении всего путешествия (языки: русский, английский, грузинский, иврит)</li>
                <li>Предоставление свидетелей для церемонии заключения брака (в случае, когда молодожены приезжают вдвоем)</li>
                <li>Регистрация брака в ЗАГСе (город влюбленных - Сигнахи)</li>
                <li>Документы о регистрации брака</li>
                <li>Услуги нотариуса и перевод документов на любой необходимый язык</li>
                <li>Профессиональный фотограф (в день церемонии)</li>
                <li>Профессиональный make-up (макияж) перед фотосессией</li>
                <li>Прокат национальных костюмов</li>
                <li>Вечерняя экскурсия по Тбилиси </li>
                <li>Поездка в город Сигнахи и Мцхета</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '', ' ', ' ', '');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (30, 2, 'Wedding in Kakheti', 'Route of Wedding in Georgia with Cool Georgia Travel:', '<img style="width: 100%;" title="Wedding in Georgia at Kaheti" src="/images/tours/tours_maps/tour_3days_kaheti_1110.jpg" alt="">', '<b>Wedding in Kakheti.</b> The city of lovers is Sighnaghi. The Registry Office works here round the clock. The edge of love, vineyards and Alazani Valley are waiting for you!', 'Details', 'To order', '3 days', '', '/images/wedding/wend_1_500x300.jpg', 'Wedding in Kakheti', '1900$', 'Cost', '<ul>
                <li><b>1900$</b> for two newlyweds (when accommodated in hotel 3* )</li>
                    in the midle of Tbilisi</li>
                <li><b>330$</b> for each guest extra </li>       
                <p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 3*  - 1900$ <p> (330$ for each guest extra) </p> </li>
                    <li>in the hotel 4*  - 2250$ <p> (410$ for each guest extra) </p></li>
                    <li>in the hotel 5*  - 2650$ <p> (505$ for each guest extra) </p></li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 7 nights in 3 star hotel <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1526841369;srfid=0a330bfdd30da7e1e52f6fdd118c7be9fe2fe390X1;srpvid=41b082cbc71e0001;type=total;ucfs=1&#hotelTmpl" target="_blank"> Guest House Zemeli</a>  in the midle of Tbilisi </li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Festive feast</li>
                <li>A light reception on the day of the wedding (wine and snack)</li>
                <li>Transport service according to the program on comfortable transport (for newlyweds BMW E60, for guests Mazda MPV or Mersedes VITO)</li>
                <li>Guide-toastmaster services throughout the trip (languages: Russian, English, Georgian, Hebrew)</li>
                <li>Provision of witnesses for the marriage ceremony (in the case when the newlyweds come together)</li>
                <li>Registration of marriage in the Registry Office</li>
                <li>Documents on the registration of marriage</li>
                <li>Notary services and translation of documents in English language;</li>
                <li>Professional photographer (on the day of the ceremony)</li>
                <li>Professional make-up before the photo session</li>
                <li>Rent of national costumes</li>
                <li>Evening tour around Tbilisi</li>
                <li>Trip to the city of Sighnaghi and Mtskheta</li>
            </ul>', 'Additional charges', '<ul>
                <li>Flight</li>
            </ul>
            <p>If you want, <b>you can increase the rest time in Georgia</b> due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', ' ', ' ', ' ', '');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (30, 3, 'Свадьба в Кахетии', 'Маршрут Свадьба в Грузии в Кахетии с Cool Georgia Travel:', '<img style="width: 100%;" title="Wedding in Georgia at Kaheti" src="/images/tours/tours_maps/tour_3days_kaheti_1110.jpg" alt="">', '<b>Свадьба в Кахетии.</b> Город влюблённых - Сигнахи. ЗАГС здесь работает круглосуточно. Вас ждет край любви, виноградники и алазанская долина!', 'Детали', 'Бронировать', '3 дня', '', '/images/wedding/wend_1_500x300.jpg', 'Свадьба в Кахетии', '1900$', 'Стоимость', '<ul>
                <li><b>1900$</b> за двоих молодоженов (при размещении в отеле 3* )</li>
                <li><b>330$</b> за каждого гостя дополнительно </li>       
                <p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 3*  - 1900$ <p>(за 1 гостя дополнительно 330$)</p></li>
                    <li>в отеле 4*  - 2250$ <p>(за 1 гостя дополнительно 410$)</p> </li>
                    <li>в отеле 5*  - 2650$ <p>(за 1 гостя дополнительно 505$)</p></li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 2 ночи в 3* отеле <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1526841369;srfid=0a330bfdd30da7e1e52f6fdd118c7be9fe2fe390X1;srpvid=41b082cbc71e0001;type=total;ucfs=1&#hotelTmpl" target="_blank"> Guest House Zemeli</a> в самом центре Тбилиси, номер для новобрачных</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Праздничное застолье</li>
                <li>Легкий фуршет днем в день свадьбы (вино и легкая закуска)</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте (для молодоженов BMW E60, для гостей Mazda MPV или Mersedes VITO) </li>
                <li>Услуги гида-тамада на протяжении всего путешествия (языки: русский, английский, грузинский, иврит)</li>
                <li>Предоставление свидетелей для церемонии заключения брака (в случае, когда молодожены приезжают вдвоем)</li>
                <li>Регистрация брака в ЗАГСе (город влюбленных - Сигнахи)</li>
                <li>Документы о регистрации брака</li>
                <li>Услуги нотариуса и перевод документов на любой необходимый язык</li>
                <li>Профессиональный фотограф (в день церемонии)</li>
                <li>Профессиональный make-up (макияж) перед фотосессией</li>
                <li>Прокат национальных костюмов</li>
                <li>Вечерняя экскурсия по Тбилиси </li>
                <li>Поездка в город Сигнахи и Мцхета</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', ' ', ' ', ' ', '');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (30, 4, 'Весілля в Кахетії', 'Маршрут Весілля в Грузії у Кахетії з Cool Georgia Travel:', '<img style="width: 100%;" title="Wedding in Georgia at Kaheti" src="/images/tours/tours_maps/tour_3days_kaheti_1110.jpg" alt="">', '<b>Весілля в Кахетії.</b> Місто закоханих - Сигнагі. ЗАГС працює цілодобово. Край кохання, виноградники та Алазанська долина чекають на вас!', 'Деталi', 'Замовити', '3 дні', '', '/images/wedding/wend_1_500x300.jpg', 'Весілля в Кахетії', '1900$', 'Вартість', '<ul>
                <li><b>1900$</b> за двох молодят (при розміщенні в готелі 3*)</li>
                <li><b>330$</b> за кожного гостя додатково </li>       
                <p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:                </i><ul>
                    <li>в готелі 3*  - 1900$ <p>(за 1 гостя додатково 330$)</p> </li>
                    <li>в готелі 4*  - 2250$ <p>(за 1 гостя додатково 410$)</p> </li>
                    <li>в готелі 5*  - 2650$ <p>(за 1 гостя додатково 505$)</p> </li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>
                <li>Проживання: 2 ночі в 3* готелі <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1526841369;srfid=0a330bfdd30da7e1e52f6fdd118c7be9fe2fe390X1;srpvid=41b082cbc71e0001;type=total;ucfs=1&#hotelTmpl" target="_blank"> Guest House Zemeli</a> в самому центрі Тбілісі, номер для молодят</li>
<li> Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Святкове застілля </li>
                <li> Легкий фуршет днем в день весілля (вино і легка закуска) </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті (для молодят BMW E60, для гостей Mazda MPV або Mersedes VITO) </li>
                <li> Послуги гіда-тамада на протязі всієї подорожі (мови: російська, англійська, грузинський, іврит) </li>
                <li> Надання свідків для церемонії укладення шлюбу (у разі, коли молодята приїзджають удвох) </li>
<li> Реєстрація шлюбу в РАГСі (місто закоханих - Сигнахi) </li>
                <li> Документи про реєстрацію шлюбу </li>
                <li> Послуги нотаріуса і переклад документів на будь-який необхідний мову </li>
                <li> Професійний фотограф (в день церемонії) </li>
                <li> Професійний make-up (макіяж) перед фотосесією </li>
                <li> Прокат національних костюмів </li>
                <li> Вечірня екскурсія по Тбілісі </li>
                <li> Поїздка в місто Сигнахi і Мцхета </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', ' ', ' ', ' ', '');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (31, 1, 'Свадьба в Кахетиии. Кварели.', 'Маршрут Свадьба в Грузии в Кварели  с Cool Georgia Travel:', '<img style="width: 100%;" title="Свадьба в Грузии в Кварели" src="/images/excoursions/maps/wed_kaheti_all_1110.jpg" alt="">', '<b>Свадьба в Кахетии.</b> Проживание в отеле среди виноградников, роспись и ресторан на территории отеля, интересная программа развлений для гостей. Рассчитано на <b>10 человек</b>', 'Детали', 'Бронировать', '3 дня', '', '/images/wedding/wed_1_500x300.jpg', 'Свадьба в Кахетиии. Кварели.', '7500$', 'Стоимость', '<ul>
                <li><b>7500$</b> за 10 человек</li>
                <p></p>
                </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 2 ночи в 3* отеле в Кварели;</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – Тбилиси - отель – Тбилиси - аэропорт;</li>
                <li>Выездная церемония регистрация брака;</li>
                <li>Праздничное застолье с тамадой;</li>
                <li>Украшения места церемонии регистрации брака среди виноградников;</li>
                <li>Украшения праздничного стола;</li>
                <li>Букет невесты;</li>
                <li>Программа развлечений и мастер-классы на винном заводе;</li>
                <li>Легкий фуршет днем в день свадьбы (вино и легкая закуска);</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте (для молодоженов BMW E60, для гостей Mazda MPV или Mersedes VITO);</li>
                <li>Услуги гида на протяжении всего путешествия (языки: русский, английский, грузинский, иврит);</li>
                <li>Предоставление свидетелей для церемонии заключения брака (в случае, когда молодожены приезжают вдвоем);</li>
                <li>Документы о регистрации брака;</li>
                <li>Услуги нотариуса и перевод документов на любой необходимый язык;</li>
                <li>Экскурсия по Тбилиси</li>
            </ul>', 'Дополнительная оплата', ' <ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', ' ', ' ', ' ', '');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (31, 2, 'Wedding in Kakheti.', 'Route of Wedding at Georgia in Kvareli with Cool Georgia Travel:', '<img style="width: 100%;" title="Wedding in Georgia at Kvareli" src="/images/excoursions/maps/wed_kaheti_all_1110.jpg" alt="">', '<b>Wedding in Kakheti..</b> Accommodation in a hotel among vineyards, marriage registration and restaurant on the territory of hotel, an interesting program for guests. Calculated for <b>10 persons</b>', 'Details', 'To order', '3 days', '', '/images/wedding/wed_1_500x300.jpg', 'Wedding in Kakheti.', '7500$', 'Cost', '<ul>
                <li><b>7500$</b> for 10 persons</li>
                <p></p>
                </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 2 nights in a 3 * hotel in Kvareli;</li>
                <li>Breakfast</li>
                <li>Transfer airport - Tbilisi - hotel - Tbilisi - airport;</li>
                <li>Outdoor ceremony of marriage registration;</li>
                <li>Festive feast with toastmaster;</li>
                <li>Ornaments of the place of the marriage registration ceremony among vineyards;</li>
                <li>Decoration of the festive table;</li>
                <li>The bride\'s bouquet;</li>
                <li>Program of entertainment and master classes at the winery;</li>
                <li>A light reception on the day of the wedding (wine and snack);</li>
                <li>Transport service according to the program on comfortable transport (for newlyweds BMW E60, for guests Mazda MPV or Mersedes VITO);</li>
                <li>Guide services throughout the trip (languages: Russian, English, Georgian, Hebrew);</li>
                <li>Provision of witnesses for the marriage ceremony (in case the newlyweds come together);</li>
                <li>Documents on the registration of marriage;</li>
                <li>Notary services and translation of documents in English language;</li>
                <li>Excursion around Tbilisi</li>
            </ul>', 'Additional charges', '<ul>
                <li>Flight</li>
            </ul>
            <p>If you want, <b>you can increase the rest time in Georgia</b> due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', ' ', ' ', ' ', '');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (31, 3, 'Свадьба в Кахетии', 'Маршрут Свадьба в Грузии в Кварели с Cool Georgia Travel:', '<img style="width: 100%;" title="Wedding in Georgia at Kvareli" src="/images/excoursions/maps/wed_kaheti_all_1110.jpg" alt="">', '<b>Свадьба в Кахетии.</b> Проживание в отеле среди виноградников, роспись и ресторан на территории отеля, интересная программа развлений для гостей. Рассчитано на <b>10 человек</b>', 'Детали', 'Бронировать', '3 дня', '', '/images/wedding/wed_1_500x300.jpg', 'Свадьба в Кахетии', '7500$', 'Стоимость', '<ul>
                <li><b>7500$</b> за 10 человек</li>
                <p></p>
                </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 2 ночи в 3* отеле в Кварели;</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – Тбилиси - отель – Тбилиси - аэропорт;</li>
                <li>Выездная церемония регистрация брака;</li>
                <li>Праздничное застолье с тамадой;</li>
                <li>Украшения места церемонии регистрации брака среди виноградников;</li>
                <li>Украшения праздничного стола;</li>
                <li>Букет невесты;</li>
                <li>Программа развлечений и мастер-классы на винном заводе;</li>
                <li>Легкий фуршет днем в день свадьбы (вино и легкая закуска);</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте (для молодоженов BMW E60, для гостей Mazda MPV или Mersedes VITO);</li>
                <li>Услуги гида на протяжении всего путешествия (языки: русский, английский, грузинский, иврит);</li>
                <li>Предоставление свидетелей для церемонии заключения брака (в случае, когда молодожены приезжают вдвоем);</li>
                <li>Документы о регистрации брака;</li>
                <li>Услуги нотариуса и перевод документов на любой необходимый язык;</li>
                <li>Экскурсия по Тбилиси</li>
            </ul>', 'Дополнительная оплата', ' <ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', ' ', ' ', ' ', '');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (31, 4, 'Весілля в Кахетії', 'Маршрут Весілля в Грузії у Кварелі з Cool Georgia Travel:', '<img style="width: 100%;" title="Wedding in Georgia at Kvareli" src="/images/excoursions/maps/wed_kaheti_all_1110.jpg" alt="">', '<b>Весілля в Кахетії.</b> Проживання в готелі серед виноградників, шлюбна реєстрація і ресторан на території готелю, цікава програма для гостей. Розраховано на <b>10 осіб</b>', 'Деталi', 'Замовити', '3 дні', '', '/images/wedding/wed_1_500x300.jpg', 'Весілля в Кахетії', '7500$', 'Вартість', '<ul>
                <li><b>7500$</b> за 10 осіб </li>
                <p></p>
                </ul>
', 'У вартість включено', '<ul><li> Проживання: 2 ночі в 3 * готелі в Кварелі; </li>
                <li>Сніданок </li>
                <li> Трансфер аеропорт - Тбілісі - готель - Тбілісі - аеропорт; </li>
                <li> Виїзна церемонія реєстрація шлюбу; </li>
                <li> Святкове застілля з тамадою; </li>
                <li> Прикраси місця церемонії реєстрації шлюбу серед виноградників; </li>
                <li> Прикраси святкового столу; </li>
                <li> Букет нареченої; </li>
                <li> Програма розваг і майстер-класи на винному заводі; </li>
                <li> Легкий фуршет днем в день весілля (вино і легка закуска); </li>
<li> Транспортне обслуговування по програмі на комфортабельному транспорті (для молодят BMW E60, для гостей Mazda MPV або Mersedes VITO); </li>
                <li> Послуги гіда протягом всієї подорожі (мови: російська, англійська, грузинський, іврит); </li>
                <li> Надання свідків для церемонії укладення шлюбу (у разі, коли молодята приїзджають удвох); </li>
                <li> Документи про реєстрацію шлюбу; </li>
                <li> Послуги нотаріуса і переклад документів на будь-який необхідний мову; </li>
                <li> Екскурсія по Тбілісі </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', ' ', ' ', ' ', '');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (32, 1, 'Свадьба в Казбек', 'Маршрут Свадьба в Грузии в Казбек с Cool Georgia Travel:', '<img style="width: 100%;" title="Свадьба в Грузии. Казбек" src="/images/excoursions/maps/ex_kazbeg_en_1110.jpg" alt="">', '<b>Свадьба в Казбек.</b> Настоящие высокие грузинские горы! Невероятные виды для самых важных фото в жизни каждой новой семьи.', 'Детали', 'Бронировать', '3 дня', '', '/images/wedding/wed_2_500x300.jpg', 'Свадьба в Казбек', '1900$', 'Стоимость', '<ul>
                <li><b>1900$</b> за двоих молодоженов (при размещении в отеле 3* )</li>
                <li><b>330$</b> за каждого гостя дополнительно </li>       
                <p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 3*  - 1900$ <p>(за 1 гостя дополнительно 330$)</p></li>
                    <li>в отеле 4*  - 2250$ <p>(за 1 гостя дополнительно 410$)</p> </li>
                    <li>в отеле 5*  - 2650$ <p>(за 1 гостя дополнительно 505$)</p></li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 2 ночи в 3* отеле <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1526841369;srfid=0a330bfdd30da7e1e52f6fdd118c7be9fe2fe390X1;srpvid=41b082cbc71e0001;type=total;ucfs=1&#hotelTmpl" target="_blank"> Guest House Zemeli</a> в самом центре Тбилиси, номер для новобрачных</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Праздничное застолье</li>
                <li>Легкий фуршет днем в день свадьбы (вино и легкая закуска)</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте (для молодоженов BMW E60, для гостей Mazda MPV или Mersedes VITO) </li>
                <li>Услуги гида-тамада на протяжении всего путешествия (языки: русский, английский, грузинский, иврит)</li>
                <li>Предоставление свидетелей для церемонии заключения брака (в случае, когда молодожены приезжают вдвоем)</li>
                <li>Регистрация брака в ЗАГСе </li>
                <li>Документы о регистрации брака</li>
                <li>Услуги нотариуса и перевод документов на любой необходимый язык</li>
                <li>Профессиональный фотограф (в день церемонии)</li>
                <li>Профессиональный make-up (макияж) перед фотосессией</li>
                <li>Прокат национальных костюмов</li>
                <li>Вечерняя экскурсия по Тбилиси </li>
                <li>Поездка в город Казбег и подъем на джипах к храму Гергети</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', ' ', ' ', ' ', '');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (32, 2, 'Wedding in Kazbeg', 'Route of Wedding in Georgia in Kazbegi with Cool Georgia Travel:', '<img style="width: 100%;" title="Wedding in Georgia in Kazbegi" src="/images/excoursions/maps/ex_kazbeg_en_1110.jpg" alt="">', '<b>Wedding in Kazbeg.</b> These realy high Georgian mountains! Incredible views from beautifule places for the most important photos in the life of each new family.', 'Details', 'To order', '3 days', '', '/images/wedding/wed_2_500x300.jpg', 'Wedding in Kazbeg', '1900$', 'Cost', '<ul>
                <li><b>1900$</b> for two newlyweds (when accommodated in hotel 3*)</li>, 
                    in the midle of Tbilisi</li>
                <li><b>330$</b> for each guest extra </li>       
                <p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 3*  - 1900$ <p> (330$ for each guest extra) </p> </li>
                    <li>in the hotel 4*  - 2250$ <p> (410$ for each guest extra) </p></li>
                    <li>in the hotel 5*  - 2650$ <p> (505$ for each guest extra) </p></li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 7 nights in 3 star hotel <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1526841369;srfid=0a330bfdd30da7e1e52f6fdd118c7be9fe2fe390X1;srpvid=41b082cbc71e0001;type=total;ucfs=1&#hotelTmpl" target="_blank"> Guest House Zemeli</a>  in the midle of Tbilisi </li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Festive feast</li>
                <li>A light reception on the day of the wedding (wine and snack)</li>
                <li>Transport service according to the program on comfortable transport (for newlyweds BMW E60, for guests Mazda MPV or Mersedes VITO)</li>
                <li>Guide-toastmaster services throughout the trip (languages: Russian, English, Georgian, Hebrew)</li>
                <li>Provision of witnesses for the marriage ceremony (in the case when the newlyweds come together)</li>
                <li>Registration of marriage in the Registry Office</li>
                <li>Documents on the registration of marriage</li>
                <li>Notary services and translation of documents in English language;</li>
                <li>Professional photographer (on the day of the ceremony)</li>
                <li>Professional make-up before the photo session</li>
                <li>Rent of national costumes</li>
                <li>Evening tour around Tbilisi</li>
                <li>A trip to the city of Kazbeg and a jeep ride to the Gergeti temple</li>
            </ul>', 'Additional charges', ' <ul>
                <li>Flight</li>
            </ul>
            <p>If you want, <b>you can increase the rest time in Georgia</b> due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', ' ', ' ', ' ', '');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (32, 3, 'Свадьба в Казбек', 'Маршрут Свадьба в Грузии в Казбек с Cool Georgia Travel:', '<img style="width: 100%;" title="Wedding in Georgia in Kazbegi" src="/images/excoursions/maps/ex_kazbeg_en_1110.jpg" alt="">', '<b>Свадьба в Казбек.</b> Настоящие высокие грузинские горы! Невероятные виды для самых важных фото в жизни каждой новой семьи.', 'Детали', 'Бронировать', '3 дня', '', '/images/wedding/wed_2_500x300.jpg', 'Свадьба в Казбек', '1900$', 'Стоимость', '<ul>
                <li><b>1900$</b> за двоих молодоженов (при размещении в отеле 3* )</li>
                <li><b>330$</b> за каждого гостя дополнительно </li>       
                <p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 3*  - 1900$ <p>(за 1 гостя дополнительно 330$)</p></li>
                    <li>в отеле 4*  - 2250$ <p>(за 1 гостя дополнительно 410$)</p> </li>
                    <li>в отеле 5*  - 2650$ <p>(за 1 гостя дополнительно 505$)</p></li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 2 ночи в 3* отеле <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1526841369;srfid=0a330bfdd30da7e1e52f6fdd118c7be9fe2fe390X1;srpvid=41b082cbc71e0001;type=total;ucfs=1&#hotelTmpl" target="_blank"> Guest House Zemeli</a> в самом центре Тбилиси, номер для новобрачных</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Праздничное застолье</li>
                <li>Легкий фуршет днем в день свадьбы (вино и легкая закуска)</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте (для молодоженов BMW E60, для гостей Mazda MPV или Mersedes VITO) </li>
                <li>Услуги гида-тамада на протяжении всего путешествия (языки: русский, английский, грузинский, иврит)</li>
                <li>Предоставление свидетелей для церемонии заключения брака (в случае, когда молодожены приезжают вдвоем)</li>
                <li>Регистрация брака в ЗАГСе </li>
                <li>Документы о регистрации брака</li>
                <li>Услуги нотариуса и перевод документов на любой необходимый язык</li>
                <li>Профессиональный фотограф (в день церемонии)</li>
                <li>Профессиональный make-up (макияж) перед фотосессией</li>
                <li>Прокат национальных костюмов</li>
                <li>Вечерняя экскурсия по Тбилиси </li>
                <li>Поездка в город Казбег и подъем на джипах к храму Гергети</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', ' ', ' ', ' ', '');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (32, 4, 'Весілля у Казбегі', 'Маршрут Весілля в Грузії в Казбегі з Cool Georgia Travel:', '<img style="width: 100%;" title="Wedding in Georgia in Kazbegi" src="/images/excoursions/maps/ex_kazbeg_en_1110.jpg" alt="">', '<b>Весілля у Казбегі.</b> Ці дійсно високі грузинські гори! Неймовірні види з красивих місць для найважливіших фотографій у житті кожної родини.', 'Деталi', 'Замовити', '3 дні', '', '/images/wedding/wed_2_500x300.jpg', 'Весілля у Казбегі', '1900$', 'Вартість', '<ul>
                <li><b>1900$</b> за двох молодят (при розміщенні в готелі 3*)</li>
                <li><b>330$</b> за кожного гостя додатково </li>       
                <p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:                </i><ul>
                    <li>в готелі 3*  - 1900$ <p>(за 1 гостя додатково 330$)</p> </li>
                    <li>в готелі 4*  - 2250$ <p>(за 1 гостя додатково 410$)</p> </li>
                    <li>в готелі 5*  - 2650$ <p>(за 1 гостя додатково 505$)</p> </li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>
                <li>Проживання: 2 ночі в 3* готелі <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1526841369;srfid=0a330bfdd30da7e1e52f6fdd118c7be9fe2fe390X1;srpvid=41b082cbc71e0001;type=total;ucfs=1&#hotelTmpl" target="_blank"> Guest House Zemeli</a> в самому центрі Тбілісі, номер для молодят</li>
<li> Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Святкове застілля </li>
                <li> Легкий фуршет днем в день весілля (вино і легка закуска) </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті (для молодят BMW E60, для гостей Mazda MPV або Mersedes VITO) </li>
                <li> Послуги гіда-тамада на протязі всієї подорожі (мови: російська, англійська, грузинський, іврит) </li>
                <li> Надання свідків для церемонії укладення шлюбу (у разі, коли молодята приїзджають удвох) </li>
<li> Реєстрація шлюбу в РАГСі </li>
                <li> Документи про реєстрацію шлюбу </li>
                <li> Послуги нотаріуса і переклад документів на будь-який необхідний мову </li>
                <li> Професійний фотограф (в день церемонії) </li>
                <li> Професійний make-up (макіяж) перед фотосесією </li>
                <li> Прокат національних костюмів для молодят</li>
                <li> Вечірня екскурсія по Тбілісі </li>
                <li> Поїздка в місто Казбегі і підйом на джипах до храму Гергети </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', ' ', ' ', ' ', '');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (33, 1, 'Свадьба в Тбилиси', 'Маршрут Свадьба в Грузии в Тбилиси с Cool Georgia Travel:', '<img style="width: 100%;" title="Свадьба в Грузии. Тбилиси" src="/images/excoursions/maps/wed_tbilisi_1110.jpg" alt="">', '<b>Свадьба в Тбилиси.</b> Грузия - идеальное место, чтобы начать свою семью здесь! Красота и духовность Тбилиси и Мцхеты помогут в этом', 'Детали', 'Бронировать', '3 дня', '', '/images/wedding/wed_3_500x300.jpg', 'Свадьба в Тбилиси', '1650$', 'Стоимость', '<ul>
                <li><b>1650$</b> за двоих молодоженов (при размещении в отеле 3* )</li>
                <li><b>330$</b> за каждого гостя дополнительно </li>       
                <p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 3*  - 1650$ <p>(за 1 гостя дополнительно 330$)</p></li>
                    <li>в отеле 4*  - 1900$ <p>(за 1 гостя дополнительно 410$)</p> </li>
                    <li>в отеле 5*  - 2450$ <p>(за 1 гостя дополнительно 505$)</p></li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 2 ночи в 3* отеле <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1526841369;srfid=0a330bfdd30da7e1e52f6fdd118c7be9fe2fe390X1;srpvid=41b082cbc71e0001;type=total;ucfs=1&#hotelTmpl" target="_blank"> Guest House Zemeli</a> в самом центре Тбилиси, номер для новобрачных</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Праздничное застолье</li>
                <li>Легкий фуршет днем в день свадьбы (вино и легкая закуска)</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте (для молодоженов BMW E60, для гостей Mazda MPV или Mersedes VITO) </li>
                <li>Услуги гида-тамада на протяжении всего путешествия (языки: русский, английский, грузинский, иврит)</li>
                <li>Предоставление свидетелей для церемонии заключения брака (в случае, когда молодожены приезжают вдвоем)</li>
                <li>Регистрация брака в ЗАГСе (город влюбленных - Сигнахи)</li>
                <li>Документы о регистрации брака</li>
                <li>Услуги нотариуса и перевод документов на любой необходимый язык</li>
                <li>Профессиональный фотограф (в день церемонии)</li>
                <li>Профессиональный make-up (макияж) перед фотосессией</li>
                <li>Прокат национальных костюмов</li>
                <li>Вечерняя экскурсия по Тбилиси </li>
                <li>Поездка в город Мцхета</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', ' ', ' ', ' ', '');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (33, 2, 'Wedding in Tbilisi', 'Route of Wedding at Georgia in Tbilisi with Cool Georgia Travel:', '<img style="width: 100%;" title="Wedding in Georgia. Tbilisi" src="/images/excoursions/maps/wed_tbilisi_1110.jpg" alt="">', '<b>Wedding in Tbilisi.</b> Georgia is an ideal place to start your family here! The beauty and spirituality of old towns Tbilisi and Mtskheta and Georgian hospitality will help in this.', 'Details', 'To order', '3 days', '', '/images/wedding/wed_3_500x300.jpg', 'Wedding in Tbilisi', '1650$', 'Cost', '<ul>
                <li><b>1650$</b> for two newlyweds (when accommodated in hoetl 3*) </li>, 
                    in the midle of Tbilisi</li>
                <li><b>330$</b> for each guest extra </li>       
                <p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 3*  - 1650$ <p> (330$ for each guest extra) </p> </li>
                    <li>in the hotel 4*  - 1900$ <p> (410$ for each guest extra) </p></li>
                    <li>in the hotel 5*  - 2450$ <p> (505$ for each guest extra) </p></li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 2 nights in 3 star hotel <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1526841369;srfid=0a330bfdd30da7e1e52f6fdd118c7be9fe2fe390X1;srpvid=41b082cbc71e0001;type=total;ucfs=1&#hotelTmpl" target="_blank"> Guest House Zemeli</a>  in the midle of Tbilisi </li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Festive feast</li>
                <li>A light reception on the day of the wedding (wine and snack)</li>
                <li>Transport service according to the program on comfortable transport (for newlyweds BMW E60, for guests Mazda MPV or Mersedes VITO)</li>
                <li>Guide-toastmaster services throughout the trip (languages: Russian, English, Georgian, Hebrew)</li>
                <li>Provision of witnesses for the marriage ceremony (in the case when the newlyweds come together)</li>
                <li>Registration of marriage in the Registry Office</li>
                <li>Documents on the registration of marriage</li>
                <li>Notary services and translation of documents in English language;</li>
                <li>Professional photographer (on the day of the ceremony)</li>
                <li>Professional make-up before the photo session</li>
                <li>Rent of national costumes</li>
                <li>Evening tour around Tbilisi</li>
                <li>Trip to the city of Mtskheta</li>
            </ul>', 'Additional charges', '<ul>
                <li>Flight</li>
            </ul>
            <p>If you want, <b>you can increase the rest time in Georgia</b> due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', ' ', ' ', ' ', '');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (33, 3, 'Свадьба в Тбилиси', 'Маршрут Свадьба в Грузии в Тбилиси с Cool Georgia Travel:', '<img style="width: 100%;" title="Wedding in Georgia. Tbilisi" src="/images/excoursions/maps/wed_tbilisi_1110.jpg" alt="">', '<b>Свадьба в Тбилиси.</b> Грузия - идеальное место, чтобы начать свою семью здесь! Красота и духовность Тбилиси и Мцхеты помогут в этом.', 'Детали', 'Бронировать', '3 дня', '', '/images/wedding/wed_3_500x300.jpg', 'Свадьба в Тбилиси', '1650$', 'Стоимость', '<ul>
                <li><b>1650$</b> за двоих молодоженов (при размещении в отеле дом 3* )</li>
                <li><b>330$</b> за каждого гостя дополнительно </li>       
                <p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 3*  - 1650$ <p>(за 1 гостя дополнительно 330$)</p></li>
                    <li>в отеле 4*  - 1900$ <p>(за 1 гостя дополнительно 410$)</p> </li>
                    <li>в отеле 5*  - 2450$ <p>(за 1 гостя дополнительно 505$)</p></li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 2 ночи в 3* отеле <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1526841369;srfid=0a330bfdd30da7e1e52f6fdd118c7be9fe2fe390X1;srpvid=41b082cbc71e0001;type=total;ucfs=1&#hotelTmpl" target="_blank"> Guest House Zemeli</a> в самом центре Тбилиси, номер для новобрачных</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Праздничное застолье</li>
                <li>Легкий фуршет днем в день свадьбы (вино и легкая закуска)</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте (для молодоженов BMW E60, для гостей Mazda MPV или Mersedes VITO) </li>
                <li>Услуги гида-тамада на протяжении всего путешествия (языки: русский, английский, грузинский, иврит)</li>
                <li>Предоставление свидетелей для церемонии заключения брака (в случае, когда молодожены приезжают вдвоем)</li>
                <li>Регистрация брака в ЗАГСе (город влюбленных - Сигнахи)</li>
                <li>Документы о регистрации брака</li>
                <li>Услуги нотариуса и перевод документов на любой необходимый язык</li>
                <li>Профессиональный фотограф (в день церемонии)</li>
                <li>Профессиональный make-up (макияж) перед фотосессией</li>
                <li>Прокат национальных костюмов</li>
                <li>Вечерняя экскурсия по Тбилиси </li>
                <li>Поездка в город Мцхета</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании <b>вы можете увеличить время отдыха в Грузии</b> за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', ' ', ' ', ' ', '');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (33, 4, 'Весілля в Тбілісі', 'Маршрут Весілля в Грузії в Тбілісі з Cool Georgia Travel:', '<img style="width: 100%;" title="Wedding in Georgia. Tbilisi" src="/images/excoursions/maps/wed_tbilisi_1110.jpg" alt="">', '<b>Весілля в Тбілісі.</b> Грузія - ідеальне місце, щоб розпочати свою сім\'ю тут! Краса та духовність Тбілісі і Мцхеті допоможуть у цьому.', 'Деталi', 'Замовити', '3 дні', '', '/images/wedding/wed_3_500x300.jpg', 'Весілля в Тбілісі', '1650$', 'Вартість', '<ul>
                <li><b>1650$</b> за двох молодят (при розміщенні в готелі 3*)</li>
                <li><b>330$</b> за кожного гостя додатково </li>       
                <p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:                </i><ul>
                    <li>в готелі 3*  - 1650$ <p>(за 1 гостя додатково 330$)</p> </li>
                    <li>в готелі 4*  - 1900$ <p>(за 1 гостя додатково 410$)</p> </li>
                    <li>в готелі 5*  - 2450$ <p>(за 1 гостя додатково 505$)</p> </li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>
                <li>Проживання: 2 ночі в 3* готелі <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1526841369;srfid=0a330bfdd30da7e1e52f6fdd118c7be9fe2fe390X1;srpvid=41b082cbc71e0001;type=total;ucfs=1&#hotelTmpl" target="_blank"> Guest House Zemeli</a> в самому центрі Тбілісі, номер для молодят</li>
<li>Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Святкове застілля </li>
                <li> Легкий фуршет днем в день весілля (вино і легка закуска) </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті (для молодят BMW E60, для гостей Mazda MPV або Mersedes VITO) </li>
                <li> Послуги гіда-тамада на протязі всієї подорожі (мови: російська, англійська, грузинський, іврит) </li>
                <li> Надання свідків для церемонії укладення шлюбу (у разі, коли молодята приїзджають удвох) </li>
<li> Реєстрація шлюбу в РАГСі (місто закоханих - Сигнахi) </li>
                <li> Документи про реєстрацію шлюбу </li>
                <li> Послуги нотаріуса і переклад документів на будь-який необхідний мову </li>
                <li> Професійний фотограф (в день церемонії) </li>
                <li> Професійний make-up (макіяж) перед фотосесією </li>
                <li> Прокат національних костюмів </li>
                <li> Вечірня екскурсія по Тбілісі </li>
                <li> Поїздка в місто Мцхета </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', ' ', ' ', ' ', '');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (34, 1, 'Наша команда', ' ', ' ', 'Наша цель - сделать ваш отдых максимально комфортным, интересным и весёлым!
                 Поэтому каждое путешествие по Грузии и соседним странам Кавказа мы продумываем до мелочей! Наслаждайтесь отпуском и приезжайте к нам снова!', ' ', ' ', ' ', ' ', '/images/team/team-1_500x300.jpg', 'Наша команда', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (34, 2, 'Our team', ' ', ' ', 'Our goal is to make your resting as comfortable, interesting and fun! 
                Therefore, every trip to Georgia and the neighboring countries of the Caucasus, we planed to the smallest detail! Enjoy your vacation and come again!', ' ', ' ', ' ', ' ', '/images/team/team-1_500x300.jpg', 'Our team', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (34, 3, 'Наша команда', ' ', ' ', 'Наша цель - сделать ваш отдых максимально комфортным, интересным и весёлым!
                 Поэтому каждое путешествие по Грузии и соседним странам Кавказа мы продумываем до мелочей! Наслаждайтесь отпуском и приезжайте к нам снова!', ' ', ' ', ' ', ' ', '/images/team/team-1_500x300.jpg', 'Наша команда', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (34, 4, 'Наша команда', ' ', ' ', 'Наша мета - зробити ваш відпочинок максимально комфортним, цікавим і веселим! 
                Тому кожну подорож по Грузії і сусіднім країнам Кавказу ми плануємо до дрібниць! Насолоджуйтесь відпусткою та приїзджайте до нас знову!', ' ', ' ', ' ', ' ', '/images/team/team-1_500x300.jpg', 'Наша команда', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (37, 1, 'Партнерам', ' ', ' ', '<b>Предлагаем вам сотрудничество</b> по привлечению туристов', ' ', ' ', ' ', ' ', '/images/team/partners_500x300.jpg', 'Партнерам', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (37, 2, 'To partners', ' ', ' ', '<b>We offer you cooperation</b> on attracting tourists', ' ', ' ', ' ', ' ', '/images/team/partners_500x300.jpg', 'To Partners', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (37, 3, 'Партнерам', ' ', ' ', '<b>Предлагаем вам сотрудничество</b> по привлечению туристов', ' ', ' ', ' ', ' ', '/images/team/partners_500x300.jpg', 'Партнерам', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (37, 4, 'Партнерам', ' ', ' ', '<b>Пропонуємо вам співпрацю </b> по залученню туристів', ' ', ' ', ' ', ' ', '/images/team/partners_500x300.jpg', 'Партнерам', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (38, 1, 'Путешествие в Грузию на автомобиле', 'Маршрут тура по Грузии на автомобиле с Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию.Тбилиси и его окрестности" src="/images/excoursions/maps/ex_hareba_en_1110.jpg" alt="">', '<b>Путешествие в Грузию на автомобиле. </b> 
Долгая и интересная дорога, весёлая компания, новые места и новые друзья! Знакомство с Тбилиси, Мцхета, Казбек и поездка в Кахетию <br><br><b>Всё включено (кроме обед и ужин)</b>  ', 'Детали', 'Бронировать', '8 дней', '', '/images/tours/avto_3_500_300.png', 'Путешествие в Грузию на автомобиле', '750$', 'Стоимость', '<ul>
                <li><b>750$</b> за 1 человека (при размещении в отеле 3* )</li>
                <p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура уточняйте у менеджера
                </i>
                </li>
            </ul>', 'В стоимость включено', '<ul>
               <li>Проезд в обе стороны на автомобиле</li>
				<li>Проживание: 2 ночи в отеле по пути Украина-Грузия-Украина</li>
				<li>Проживание: 5 ночей в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс и ужин в этот день</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед, ужин (около 10$ в день)</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/tours/avto_01_500x550.png', 'Путешествие в Грузию на автомобиле - Cool Georgia Travel', 'Путешествие в Грузию на автомобиле - Cool Georgia Travel', '<b>Стоимость: 750$</b>  за 1 человека<br> *при размещении в отеле 3*<br>
<br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проезд в обе стороны на автомобиле</li>
				<li>Проживание: 2 ночи в отеле по пути Украина-Грузия-Украина</li>
				<li>Проживание: 5 ночей в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс и ужин в этот день</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
ДОПОЛНИТЕЛЬНАЯ ОПЛАТА:
<ul>
<li>Обед, ужин (около 10$ в день)</li>
</ul>			
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (38, 2, 'Путешествие в Грузию на автомобиле', 'Маршрут тура по Грузии на автомобиле with Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию.Тбилиси и его окрестности" src="/images/excoursions/maps/ex_hareba_en_1110.jpg" alt="">', '<b>Tbilisi and its environs. A trip to Kakhetiia. </b> Close acquaintance with Tbilisi and Kakheti: the city of love - Sighnaghi, the cult monastery of Bodbe, and visit  to the winery <br><br><b>All inclusive</b>', 'Details', 'To order', '8 days', '', '/images/tours/avto_3_500_300.png', 'Путешествие в Грузию на автомобиле', '750$', 'Cost', '<ul>
                <li> <b> 750 $ </b> for 1 person (for accommodation in hotel 3 *) </li>
                <p> </p>
                <li> <i> You can also choose the option of accommodation in hotels of a different class. Check the cost of the tour with the manager
                </i>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 2 nights in 3 star hotel <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1526841369;srfid=0a330bfdd30da7e1e52f6fdd118c7be9fe2fe390X1;srpvid=41b082cbc71e0001;type=total;ucfs=1&#hotelTmpl" target="_blank"> Guest House Zemeli</a>  in the midle of Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>Tbilisi sulfur baths</li>
                <li>Culinary master class</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', '<ul>
                <li>Обед, ужин (около 10$ в день)</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/tours/avto_01_500x550.png', 'Путешествие в Грузию на автомобиле - Cool Georgia Travel', 'Путешествие в Грузию на автомобиле - Cool Georgia Travel', '<b>Стоимость: 750$</b>  за 1 человека<br> *при размещении в отеле 3* <br>
<br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проезд в обе стороны на автомобиле</li>
				<li>Проживание: 2 ночи в отеле по пути Украина-Грузия-Украина</li>
				<li>Проживание: 5 ночей в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс и ужин в этот день</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
ДОПОЛНИТЕЛЬНАЯ ОПЛАТА:
<ul>
<li>Обед, ужин (около 10$ в день)</li>
</ul>			
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (38, 3, 'Путешествие в Грузию на автомобиле', 'Маршрут тура по Грузии на автомобиле с Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию.Тбилиси и его окрестности" src="/images/excoursions/maps/ex_hareba_en_1110.jpg" alt="">', '<b>Тбилиси и его окрестности. Поездка в Кахетиею. </b> Близкое знакомство с Тбилиси и Кахетией: город влюбленных Сигнахи, культовый монастырь Бодбе, а так же винный завод <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '8 дней', '', '/images/tours/avto_3_500_300.png', 'Путешествие в Грузию на автомобиле', '750$', 'Стоимость', '<ul>
                <li><b>750$</b> за 1 человека (при размещении в отеле 3* )</li>
                <p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура уточняйте у менеджера
                </i>
                </li>
            </ul>', 'В стоимость включено', '<ul>
               <li>Проезд в обе стороны на автомобиле</li>
				<li>Проживание: 2 ночи в отеле по пути Украина-Грузия-Украина</li>
				<li>Проживание: 5 ночей в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс и ужин в этот день</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Обед, ужин (около 10$ в день)</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/tours/avto_01_500x550.png', 'Путешествие в Грузию на автомобиле - Cool Georgia Travel', 'Путешествие в Грузию на автомобиле - Cool Georgia Travel', '<b>Стоимость: 750$</b>  за 1 человека<br> *при размещении в отеле 3*<br>
<br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проезд в обе стороны на автомобиле</li>
				<li>Проживание: 2 ночи в отеле по пути Украина-Грузия-Украина</li>
				<li>Проживание: 5 ночей в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс и ужин в этот день</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
ДОПОЛНИТЕЛЬНАЯ ОПЛАТА:
<ul>
<li>Обед, ужин (около 10$ в день)</li>
</ul>			
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (38, 4, 'Путешествие в Грузию на автомобиле', 'Маршрут тура по Грузии на автомобиле з Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию.Тбилиси и его окрестности" src="/images/excoursions/maps/ex_hareba_en_1110.jpg" alt="">', '<b>Тбілісі і його околиці. Поїздка до Кахетії. </b> Близьке знайомство з Тбілісі і Кахетією: місто закоханих Сигнахі, культовий монастир Бодбе, а також візит до винного заводу <p><b>Все включено</b></p>', 'Деталi', 'Замовити', '8 днів', '', '/images/tours/avto_3_500_300.png', 'Путешествие в Грузию на автомобиле', '750$', 'Вартість', '<ul>
                <li><b>750$</b> за 1 человека (при размещении в готелі дом 3* )</li>
                <p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура уточняйте у менеджера
                </i>
                </li>
            </ul>', 'У вартість включено', '<ul>
               <li>Проезд в обе стороны на автомобиле</li>
				<li>Проживание: 2 ночи в отеле по пути Украина-Грузия-Украина</li>
				<li>Проживание: 5 ночей в 3* отеле в самом центре Тбилиси</li>
                <li>Сніданок</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс и ужин в этот день</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Додаткова оплата', '<ul>
                <li>Обед, ужин (около 10$ в день)</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/tours/avto_01_500x550.png', 'Путешествие в Грузию на автомобиле - Cool Georgia Travel', 'Путешествие в Грузию на автомобиле - Cool Georgia Travel', '<b>Стоимость: 750$</b>  за 1 человека<br> *при размещении в отеле 3*<br>
<br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проезд в обе стороны на автомобиле</li>
				<li>Проживание: 2 ночи в отеле по пути Украина-Грузия-Украина</li>
				<li>Проживание: 5 ночей в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс и ужин в этот день</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
ДОПОЛНИТЕЛЬНАЯ ОПЛАТА:
<ul>
<li>Обед, ужин (около 10$ в день)</li>
</ul>			
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (39, 1, 'Тбилиси и его окрестности', 'Маршрут тура в Грузию на 5 дней с Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию на 5 дней" src="/images/tours/tours_maps/tour_5days_tbilisi_1110.jpg" alt="">', '<b>Тбилиси и его окрестности.</b> Облегченная экскурсионная программа для близкого знакомства со столицей Грузии, традициями и культурой страны. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '5 дней', '', '/images/cards/tour_tbilisi_500x300.jpg', 'Тбилиси и его окрестности', '671$', 'Стоимость', '<ul>
                <li><b>671$</b> за 1 человека (при размещении в отеле 3* )</li>
                <p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 3*  - 671$</li>
                    <li>в отеле 4*  - 885$</li>
                    <li>в отеле 5*  - 1337$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 4 ночи в 3* отеле <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1527118178;srfid=8df8e87c9e11df3fa4daec94b8192f0a24ddd92bX1;srpvid=a2c2a5302bec00cc;type=total;ucfs=1&#hotelTmpl" target=\\"_blank\\"> Guest House Zemeli</a> в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_tbilisi_5day_500x500.png', 'Тбилиси и его окрестности - Cool Georgia Travel', 'Тбилиси и его окрестности - Cool Georgia Travel', '<b>Стоимость: от 671$</b>  за 1 человека<br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:
<ul class="list-ok">
                <li>Проживание: 4 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (39, 2, 'Tbilisi and its environs', 'Route of Tour to Georgia for 5 days with Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 5 days" src="/images/tours/tours_maps/tour_5days_tbilisi_1110.jpg" alt="">', '<b>Tbilisi and its environs.</b> A light excursion program for a close acquaintance with the capital of Georgia Tbilisi, the ancient city of Mtskheta, the traditions and culture of the country. <br><br><b>All inclusive</b>', 'Details', 'To order', '5 days', '', '/images/cards/tour_tbilisi_500x300.jpg', 'Tbilisi and its environs', '671$', 'Cost', '<ul>
                <li><b>671$</b> for 1 person (for accommodation in hotel 3* )</li>
                <p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 3*  - 671$</li>
                    <li>in the hotel 4*  - 885$</li>
                    <li>in the hotel 5*  - 1337$</li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 2 nights in 3 star hotel <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1526841369;srfid=0a330bfdd30da7e1e52f6fdd118c7be9fe2fe390X1;srpvid=41b082cbc71e0001;type=total;ucfs=1&#hotelTmpl" target="_blank"> Guest House Zemeli</a>  in the midle of Tbilisi</li>
                <li>Breakfast </li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>Tbilisi sulfur baths</li>
                <li>Culinary master class</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', '<ul>
                <li>Flight</li>
            </ul>
            <p>If you want, you can increase the rest time in Georgia due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', '/images/excoursions/tour_tbilisi_5day_500x500.png', 'Tbilisi and its environs - Cool Georgia Travel', 'Tbilisi and its environs - Cool Georgia Travel', '<b>Cost: from 671$</b>  for 1 person<br> *for accommodation in hotel 3*<br>*<b>All inclusive</b> (without airtickets) <br>THE COST INCLUDES:<ul class="list-ok">
                <li>Accommodation: 4 nights in 3 star hotel in the midle of Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>Tbilisi sulfur baths</li>
                <li>Culinary master class</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (39, 3, 'Тбилиси и его окрестности', 'Маршрут тура в Грузию на 5 дней с Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 5 days" src="/images/tours/tours_maps/tour_5days_tbilisi_1110.jpg" alt="">', '<b>Тбилиси и его окрестности.</b> Облегченная экскурсионная программа для близкого знакомства со столицей Грузии, традициями и культурой страны. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '5 дней', '', '/images/cards/tour_tbilisi_500x300.jpg', 'Тбилиси и его окрестности', '671$', 'Стоимость', '<ul>
                <li><b>671$</b> за 1 человека (при размещении в отеле 3* )</li>
                <p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 3*  - 671$</li>
                    <li>в отеле 4*  - 885$</li>
                    <li>в отеле 5*  - 1337$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 4 ночи в 3* отеле <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1527118178;srfid=8df8e87c9e11df3fa4daec94b8192f0a24ddd92bX1;srpvid=a2c2a5302bec00cc;type=total;ucfs=1&#hotelTmpl" target=\\"_blank\\"> Guest House Zemeli</a> в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/excoursions/tour_tbilisi_5day_500x500.png', 'Тбилиси и его окрестности - Cool Georgia Travel', 'Тбилиси и его окрестности - Cool Georgia Travel', '<b>Стоимость: от 671$</b>  за 1 человека<br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 4 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Тбилисские серные бани</li>
                <li>Кулинарный мастер-класс</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (39, 4, 'Тбілісі та його околиці', 'Маршрут туру в Грузію на 5 днів з Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 5 days" src="/images/tours/tours_maps/tour_5days_tbilisi_1110.jpg" alt="">', '<b>Тбілісі та його околиці.</b> Полегшена екскурсійна програма для близького знайомства зі столицею Грузії, давнім містом Мцхета, традиціями і культурою країни. <P><b>Все включено</b></p>', 'Деталi', 'Замовити', '5 днів', '', '/images/cards/tour_tbilisi_500x300.jpg', 'Тбілісі та його околиці', '671$', 'Вартість', '<ul>
                <li><b>671$</b> за 1 людину (при розміщенні в готелі 3* )</li>
                <p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:
                </i><ul>
                    <li>в готелі 3*  - 671$</li>
                    <li>в готелі 4*  - 885$</li>
                    <li>в готелі 5*  - 1337$</li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>
                <li> Проживання: 4 ночі в 3 * готелі <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=efecd20b990baa85494df5a601b9fd65;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1527118178;srfid=8df8e87c9e11df3fa4daec94b8192f0a24ddd92bX1;srpvid=a2c2a5302bec00cc;type=total;ucfs=1&#hotelTmpl" target=\\"_blank\\"> Guest House Zemeli</a> у самому центрі Тбілісі </li>
<li> Сніданок</li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Тбіліські сірчані лазні </li>
                <li> Кулінарний майстер-клас </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', '/images/excoursions/tour_tbilisi_5day_500x500.png', 'Тбілісі та його околиці - Cool Georgia Travel', 'Тбілісі та його околиці - Cool Georgia Travel', '<b>Вартість: від 671$</b>  за 1 людину<br> *при разміщенні у готелі 3* <br>*<b>Все включено</b> (окрім авіаквитків) <br>У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                <li> Проживання: 4 ночі в 3 * готелі у самому центрі Тбілісі </li>
<li> Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Тбіліські сірчані лазні </li>
                <li> Кулінарний майстер-клас </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (40, 1, 'Тбилиси и его окрестности', 'Маршрут тура в Грузию на 3 дня с Cool Georgia Travel:', '<img style="width: 100%;" title="Тур в Грузию на 3 дня" src="/images/tours/tours_maps/tour_5days_tbilisi_1110.jpg" alt="">', '<b>Выходные в Грузии. Тбилиси.</b> Облегченная экскурсионная программа для близкого знакомства со столицей Грузии, традициями и культурой страны. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '3 дня', '', '/images/tours/Tbilisi_4days_0.png', 'Тбилиси и его окрестности', '185$', 'Стоимость', '<ul>
                <li><b> от 185$</b> за 1 человека (при размещении в отеле 3* )</li>
		</ul> 
		<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>
                <table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                <td style="padding: 6px !important;">555</td>
                                <td style="padding: 6px !important;">255</td>
                                <td style="padding: 6px !important;">235</td>
                                <td style="padding: 6px !important;">225</td>
                                <td style="padding: 6px !important;">215</td>
                                <td style="padding: 6px !important;">195</td>
                                <td style="padding: 6px !important;">185</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
				
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 200$</li>
                    <li>в отеле 5*  - доплата 300$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 2 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/tours/Tbilisi_4days_01.png', 'Тбилиси и его окрестности - Cool Georgia Travel', 'Тбилиси и его окрестности - Cool Georgia Travel', '<b>Стоимость: от 185$</b>  за 1 человека<br> *при размещении в отеле 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:
<ul class="list-ok">
                <li>Проживание: 2 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (40, 2, 'Tbilisi and its environs', 'Route of Tour to Georgia for 3 days with Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 3 days" src="/images/tours/tours_maps/tour_5days_tbilisi_1110.jpg" alt="">', '<b>Holidays in Georgia. Tbilisi.</b> The light excursion program for a close acquaintance with the capital of Georgia Tbilisi, the ancient city of Mtskheta, the traditions and culture of Georgia. <p><b>All inclusive</b></p>', 'Details', 'To order', '3 days', '', '/images/tours/Tbilisi_4days_0.png', 'Tbilisi and its environs', '185$', 'Cost', '<ul>
                <li>from <b>185$</b> for 1 person (for accommodation in hotel 3* )</li>
                 </ul>
<p> The cost <b> is depends on the count of persons in the group </b>: then more people so cheaper! </p>
				<table class="table table-bordered">
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Group</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                   <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                    <td style="padding: 6px !important;">555</td>
                                <td style="padding: 6px !important;">255</td>
                                <td style="padding: 6px !important;">235</td>
                                <td style="padding: 6px !important;">225</td>
                                <td style="padding: 6px !important;">215</td>
                                <td style="padding: 6px !important;">195</td>
                                <td style="padding: 6px !important;">185</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Also you can choose the option of accommodation in hotels of another class. The cost of the tour for 1 person is:
                </i><ul>
                    <li>in the hotel 4*  - surcharge 200$</li>
                    <li>in the hotel 5*  - surcharge 300$</li>
                </ul>
                </li>
            </ul>', 'Included in cost', '<ul>
                <li>Accommodation: 2 nights in 3 star hotel in the midle of Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>', 'Additional charges', '<ul>
                <li>Flight</li>
            </ul>
            <p>If you want, you can increase the rest time in Georgia due to additional programs. Agree it, please, with the manager not later than 3 days prior to arrival in Tbilisi.</p>', '/images/tours/Tbilisi_4days_01.png', 'Tbilisi and its environs - Cool Georgia Travel', 'Tbilisi and its environs - Cool Georgia Travel', '<b>Cost: from 185$</b>  for 1 person<br> *for accommodation in hotel 3*<br>*<b>All inclusive</b> (without airtickets) <br>THE COST INCLUDES:<ul class="list-ok">
                <li>Accommodation: 2 nights in 3 star hotel in the midle of Tbilisi</li>
                <li>Breakfast</li>
                <li>Transfer airport - hotel - airport</li>
                <li>Transport service under the program on comfortable transport</li>
                <li>Guide services throughout the trip</li>
                <li>Excursions for the program</li>
                <li>Entrance tickets to the above objects</li>
                <li>A bottle of 7-year old home wine as a gift</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (40, 3, 'Тбилиси и его окрестности', 'Маршрут тура в Грузию на 3 дня с Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 3 days" src="/images/tours/tours_maps/tour_5days_tbilisi_1110.jpg" alt="">', '<b>Выходные в Грузии. Тбилиси.</b> Облегченная экскурсионная программа для близкого знакомства со столицей Грузии, традициями и культурой страны. <br><br><b>Всё включено</b>', 'Детали', 'Бронировать', '3 дня', '', '/images/tours/Tbilisi_4days_0.png', 'Тбилиси и его окрестности', '185$', 'Стоимость', '<ul>
                <li>от <b>185$</b> за 1 человека (при размещении в отеле 3* )</li>
                </ul>
	<p>Стоимость <b> зависит от количества человек в группе </b>: чем больше человек, тем дешевле!</p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Группа</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                    <td style="padding: 6px !important;">555</td>
                                <td style="padding: 6px !important;">255</td>
                                <td style="padding: 6px !important;">235</td>
                                <td style="padding: 6px !important;">225</td>
                                <td style="padding: 6px !important;">215</td>
                                <td style="padding: 6px !important;">195</td>
                                <td style="padding: 6px !important;">185</td>
                            </tr>
                   
                        </tbody>
                    </table>
				
				<p></p>
                <li><i>Также вы можете выбрать вариант размещения в отелях другого класса. Стоимость тура за 1 человека составит:
                </i><ul>
                    <li>в отеле 4*  - доплата 200$</li>
                    <li>в отеле 5*  - доплата 300$</li>
                </ul>
                </li>
            </ul>', 'В стоимость включено', '<ul>
                <li>Проживание: 2 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>', 'Дополнительная оплата', '<ul>
                <li>Авиаперелет</li>
            </ul>
            <p>При желании вы можете увеличить время отдыха в Грузии за счет добавочных программ. Согласуйте это, пожалуйста, с менеджером  не позднее, чем за 3 дня до прибытия в Тбилиси. </p>', '/images/tours/Tbilisi_4days_01.png', 'Тбилиси и его окрестности - Cool Georgia Travel', 'Тбилиси и его окрестности - Cool Georgia Travel', '<b>Стоимость: от 185$</b>  за 1 человека<br> *при размещении в отнлн 3* <br>*<b>Всё включено</b> (кроме авиабилетов) <br>В СТОИМОСТЬ ТУРА ВХОДИТ:<ul class="list-ok">
                <li>Проживание: 2 ночи в 3* отеле в самом центре Тбилиси</li>
                <li>Завтрак</li>
                <li>Трансфер аэропорт – отель – аэропорт</li>
                <li>Транспортное обслуживание по программе на комфортабельном транспорте</li>
                <li>Услуги гида на протяжении всего путешествия</li>
                <li>Экскурсии по программе</li>
                <li>Входные билеты на указанные объекты</li>
                <li>Бутылка домашнего вина 7-летней выдержки в подарок</li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
			{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (40, 4, 'Тбілісі та його околиці', 'Маршрут туру в Грузію на 3 дні з Cool Georgia Travel:', '<img style="width: 100%;" title="Tour to Georgia for 3 days" src="/images/tours/tours_maps/tour_5days_tbilisi_1110.jpg" alt="">', '<b>Вихідні дні у грузії. Тбілісі.</b> Полегшена екскурсійна програма для близького знайомства із Тбілісі, давнім містом Мцхета, традиціями і культурою країни. <P><b>Все включено</b></p>', 'Деталi', 'Замовити', '3 дні', '', '/images/tours/Tbilisi_4days_0.png', 'Тбілісі та його околиці', '185$', 'Вартість', '<ul>
                <li>від <b>185$</b> за 1 людину (при розміщенні в отеле 3* )</li>
                </ul>
<p> Вартість <b> залежить від кількості людей у ​​групі </b>: чим більше людей, тим дешевше! </p>				
				<table class="table table-bordered"> 
                        <thead>
                            <tr>
                                <th style="padding: 6px !important;" scope="col">Група</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">1</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">2</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">3</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">4</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">5</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">6</th>
                                <th style="padding: 6px !important;"class="text-center" scope="col">7</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="padding: 6px !important;"class="text-center">1 чел, $</td>
                                    <td style="padding: 6px !important;">555</td>
                                <td style="padding: 6px !important;">255</td>
                                <td style="padding: 6px !important;">235</td>
                                <td style="padding: 6px !important;">225</td>
                                <td style="padding: 6px !important;">215</td>
                                <td style="padding: 6px !important;">195</td>
                                <td style="padding: 6px !important;">185</td>
                            </tr>
                   
                        </tbody>
                    </table>
				<p></p>
                <li><i> Також ви можете обрати варіант розміщення в готелях іншого класу. Вартість туру за 1 людину складе:
                </i><ul>
                    <li>в готелі 4*  - доплата 200$</li>
                    <li>в готелі 5*  - доплата 300$</li>
                </ul>
                </li>
            </ul>
', 'У вартість включено', '<ul>
                <li> Проживання: 2 ночі в 3 * готелі у самому центрі Тбілісі </li>
<li> Сніданок</li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
', 'Додаткова оплата', '<ul>
                <li>Авіапереліт</li>
            </ul>
            <p>За бажанням <b>ви зможете збільшити час відпочинку в Грузії</b> за рахунок додаткових програм. Узгодьте це, будь ласка, з менеджером не пізніше, ніж за 3 дні до прибуття в Тбілісі. </p>
', '/images/tours/Tbilisi_4days_01.png', 'Тбілісі та його околиці - Cool Georgia Travel', 'Тбілісі та його околиці - Cool Georgia Travel', '<b>Вартість: від 185$</b>  за 1 людину<br> *при разміщенні у готелі 3*<br>*<b>Все включено</b> (окрім авіаквитків) <br>У ВАРТІСТЬ ТУРА ВКЛЮЧЕНО:<ul class="list-ok">
                <li> Проживання: 2 ночі в 3 * готелі у самому центрі Тбілісі </li>
<li> Сніданок </li>
                <li> Трансфер аеропорт - готель - аеропорт </li>
                <li> Транспортне обслуговування по програмі на комфортабельному транспорті </li>
                <li> Послуги гіда протягом всієї подорожі </li>
                <li> Екскурсії по програмі </li>
                <li> Вхідні квитки на зазначені об\'єкти </li>
                <li> Пляшка домашнього вина 7-річної витримки в подарунок </li>
            </ul>
			<p class="text-center"><img src="/images/WhVibTel_46x20.png" width="46" height="20" align="top" /><b>+995598001461</b></p>
{card_buttons}');
INSERT INTO gbua_cgdb.CardSettings (CardID, LangID, ShortTitle, RouteTitle, RouteText, CardDescryption, ButtonDetails, ButtonBuy, CardDetailsShort, CardDetailsShortPriceID, ImagaSrc, ImageAlt, Coast, CoastsTitle, CoastsText, IncludesTitle, IncludesText, AdditionalTitle, AdditionalText, CardDescription_ImageSrc, CardDescriptionImage_alt, CardDescriptionImage_title, CardDescription_Text) VALUES (41, 1, 'Отель №3. 3 звезды (вмещает 50 человек)', null, null, 'Отель №3. 3 звезды (вмещает 50 человек)', null, null, null, null, '/images/cabinet/hotels/Снимок экрана 2023-11-16 в 12.12.02.png', null, null, null, null, null, null, null, null, null, null, null, null);
