create table LinkBlockLinksData
(
    LinkId    int  not null,
    LangID    int  not null,
    LinkTitle text null,
    LinkSrc   text null,
    primary key (LinkId, LangID),
    constraint FK_LinkBlockLinksData_LangID
        foreign key (LangID) references LangList (LangID),
    constraint FK_LinkBlockLinksData_LinkId
        foreign key (LinkId) references LinkBlockGroupLinks (LinkId)
)
    collate = cp1251_general_ci
    avg_row_length = 172;

INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (1, 1, 'Выходные в Кахетии', '/page/tour-kaheti-3days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (1, 2, 'Weekends in Kakheti', '/en/page/tour-kaheti-3days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (1, 3, 'Выходные в Кахетии', '/he/page/tour-kaheti-3days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (1, 4, 'Вихідні в Кахетії', '/ua/page/tour-kaheti-3days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (2, 1, 'Выходные в Казбек', '/page/tour-kazbeg-3-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (2, 2, 'Weekends in Kazbegi', '/en/page/tour-kazbeg-3-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (2, 3, 'Выходные в Казбек', '/he/page/tour-kazbeg-3-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (2, 4, 'Вихідні в Казбегі', '/ua/page/tour-kazbeg-3-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (3, 1, 'Боржоми-Ахалцихе-Вардзия', '/page/tour-borjomi-vardzia-4-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (3, 2, 'Borjomi-Akhaltsikhe-Vardzia', '/en/page/tour-borjomi-vardzia-4-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (3, 3, 'Боржоми-Ахалцихе-Вардзия', '/he/page/tour-borjomi-vardzia-4-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (3, 4, 'Боржомі-Ахалцихе-Вардзія', '/ua/page/tour-borjomi-vardzia-4-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (4, 1, 'Тбилиси и его окрестности', '/page/tour-around-tbilisi-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (4, 2, 'Tbilisi and its surroundings', '/en/page/tour-around-tbilisi-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (4, 3, 'Тбилиси и его окрестности', '/he/page/tour-around-tbilisi-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (4, 4, 'Тбілісі і його околиці', '/ua/page/tour-around-tbilisi-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (5, 1, 'Тбилиси и поездка в Кахетиею', '/page/tour-around-tbilisi-kaheti-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (5, 2, 'Tbilisi and a trip to Kakheti', '/en/page/tour-around-tbilisi-kaheti-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (5, 3, 'Тбилиси и поездка в Кахетиею', '/he/page/tour-around-tbilisi-kaheti-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (5, 4, 'Тбілісі та поїздка до Кахетії', '/ua/page/tour-around-tbilisi-kaheti-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (6, 1, 'В горы и на море', '/page/tour-tbilisi-batumi-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (6, 2, 'To the mountains and to the sea', '/en/page/tour-tbilisi-batumi-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (6, 3, 'В горы и на море', '/he/page/tour-tbilisi-batumi-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (6, 4, 'В гори та на море', '/ua/page/tour-tbilisi-batumi-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (7, 1, 'Зима в Гудаури', '/page/tour-to-gudauri-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (7, 2, 'Winter in Gudauri', '/en/page/tour-to-gudauri-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (7, 3, 'Зима в Гудаури', '/he/page/tour-to-gudauri-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (7, 4, 'Зима в Гудаурі', '/ua/page/tour-to-gudauri-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (8, 1, 'Зима в Бакуриани', '/page/tour-to-bakuriani-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (8, 2, 'Winter in Bakuriani', '/en/page/tour-to-bakuriani-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (8, 3, 'Зима в Бакуриани', '/he/page/tour-to-bakuriani-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (8, 4, 'Зима в Бакуріані', '/ua/page/tour-to-bakuriani-5-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (9, 1, 'Кулинарный тур', '/page/tour-culinary-around-georgia-7-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (9, 2, 'Culinary tour', '/en/page/tour-culinary-around-georgia-7-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (9, 3, 'Кулинарный тур', '/he/page/tour-culinary-around-georgia-7-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (9, 4, 'Кулінарний тур', '/ua/page/tour-culinary-around-georgia-7-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (10, 1, 'От Тбилиси до Батуми', '/page/tour-tbilisi-batumi-7-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (10, 2, 'From Tbilisi to Batumi', '/en/page/tour-tbilisi-batumi-7-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (10, 3, 'От Тбилиси до Батуми', '/he/page/tour-tbilisi-batumi-7-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (10, 4, 'Від Тбілісі до Батумі', '/ua/page/tour-tbilisi-batumi-7-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (11, 1, 'Узнай Грузию за 8 дней', '/page/tour-around-georgia-8-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (11, 2, 'Learn Georgia in 8 days', '/en/page/tour-around-georgia-8-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (11, 3, 'Узнай Грузию за 8 дней', '/he/page/tour-around-georgia-8-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (11, 4, 'Пізнай Грузію за 8 днів', '/ua/page/tour-around-georgia-8-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (12, 1, 'Грузия и Армения', '/page/tour-to-armenia-6-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (12, 2, 'Georgia and Armenia', '/en/page/tour-to-armenia-6-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (12, 3, 'Грузия и Армения', '/he/page/tour-to-armenia-6-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (12, 4, 'Грузія та Вірменія', '/ua/page/tour-to-armenia-6-days.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (13, 1, 'Тбилиси', '/page/excursion-in-tbilisi.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (13, 2, 'Tbilisi', '/en/page/excursion-in-tbilisi.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (13, 3, 'Тбилиси', '/he/page/excursion-in-tbilisi.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (13, 4, 'Тбілісі', '/ua/page/excursion-in-tbilisi.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (14, 1, 'Мцхета и древние монастыри', '/page/excursion-to-mtskheta.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (14, 2, 'Mtskheta and ancient monasteries', '/en/page/excursion-to-mtskheta.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (14, 3, 'Мцхета и древние монастыри', '/he/page/excursion-to-mtskheta.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (14, 4, 'Мцхета і стародавні монастирі', '/ua/page/excursion-to-mtskheta.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (15, 1, 'Казбек (Степанцминда)', '/page/excursion-in-kazbeg.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (15, 2, 'Kazbegi (Stepantsminda)', '/en/page/excursion-in-kazbeg.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (15, 3, 'Казбек (Степанцминда)', '/he/page/excursion-in-kazbeg.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (15, 4, 'Казбегі (Степанцмінда)', '/ua/page/excursion-in-kazbeg.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (16, 1, 'Мцхета - Уплисцихе - Гори', '/page/excursion-to-mtskheta-upliscihe-gori.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (16, 2, 'Mtskheta - Uplistsikhe - Gori', '/en/page/excursion-to-mtskheta-upliscihe-gori.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (16, 3, 'Мцхета - Уплисцихе - Гори', '/he/page/excursion-to-mtskheta-upliscihe-gori.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (16, 4, 'Мцхета - Уплисцихе - Горі', '/ua/page/excursion-to-mtskheta-upliscihe-gori.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (17, 1, 'Гудаури', '/page/excursion-to-gudauri.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (17, 2, 'Gudauri', '/en/page/excursion-to-gudauri.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (17, 3, 'Гудаури', '/he/page/excursion-to-gudauri.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (17, 4, 'Гудаурі', '/ua/page/excursion-to-gudauri.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (18, 1, 'Бакуриани', '/page/excursion-to-bakuriani.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (18, 2, 'Bakuriani', '/en/page/excursion-to-bakuriani.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (18, 3, 'Бакуриани', '/he/page/excursion-to-bakuriani.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (18, 4, 'Бакуріані', '/ua/page/excursion-to-bakuriani.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (19, 1, 'Кахетия. Винный завод Шуми', '/page/excursion-to-kaheti-winery-shumi.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (19, 2, 'Kakheti. Shumi Winery', '/en/page/excursion-to-kaheti-winery-shumi.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (19, 3, 'Кахетия. Винный завод Шуми', '/he/page/excursion-to-kaheti-winery-shumi.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (19, 4, 'Кахеті. Винний завод Шумі', '/ua/page/excursion-to-kaheti-winery-shumi.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (20, 1, 'Боржоми-Ахалцихе-Вардзия', '/page/excursion-to-borjomi-vardzia.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (20, 2, 'Borjomi-Akhaltsikhe-Vardzia', '/en/page/excursion-to-borjomi-vardzia.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (20, 3, 'Боржоми-Ахалцихе-Вардзия', '/he/page/excursion-to-borjomi-vardzia.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (20, 4, 'Боржомі-Ахалціхе-Вардзія', '/ua/page/excursion-to-borjomi-vardzia.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (21, 1, 'Дманиси. Первые европейцы', '/page/excursion-to-dmanisi-first-europeans.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (21, 2, 'Dmanisi. The first Europeans', '/en/page/excursion-to-dmanisi-first-europeans.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (21, 3, 'Дманиси. Первые европейцы', '/he/page/excursion-to-dmanisi-first-europeans.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (21, 4, 'Дманісі. перші Європейці', '/ua/page/excursion-to-dmanisi-first-europeans.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (22, 1, 'Монастырь Давид-Гареджа', '/page/excursion-to-monastery-david-gareja.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (22, 2, 'The Monastery of David-Gareja', '/en/page/excursion-to-monastery-david-gareja.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (22, 3, 'Монастырь Давид-Гареджа', '/he/page/excursion-to-monastery-david-gareja.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (22, 4, 'Монастир Давид-Гареджі', '/ua/page/excursion-to-monastery-david-gareja.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (23, 1, 'Кахетия. Винный завод Хареба', '/page/excursion-to-kaheti-winery-hareba.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (23, 2, 'Kakheti. Hareba Wine Factory', '/en/page/excursion-to-kaheti-winery-hareba.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (23, 3, 'Кахетия. Винный завод Хареба', '/he/page/excursion-to-kaheti-winery-hareba.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (23, 4, 'Кахетія. Винний завод Хареба', '/ua/page/excursion-to-kaheti-winery-hareba.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (24, 1, 'В Армению на 2 дня', '/page/excursion-to-armenia.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (24, 2, 'To Armenia for 2 days', '/en/page/excursion-to-armenia.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (24, 3, 'В Армению на 2 дня', '/he/page/excursion-to-armenia.html');
INSERT INTO gbua_cgdb.LinkBlockLinksData (LinkId, LangID, LinkTitle, LinkSrc) VALUES (24, 4, 'До Вірменії на 2 дні', '/ua/page/excursion-to-armenia.html');
