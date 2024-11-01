create table Card
(
    CardID              int auto_increment
        primary key,
    PageID              int  null,
    Name                text null,
    ShowAdditionalLinks text null,
    AdditionalLinksType text null,
    CardImageSrc        text null,
    CardTypeID          int  null,
    constraint FK_Card_CardTypeID
        foreign key (CardTypeID) references CardType (CardTypeID),
    constraint FK_Card_PageID
        foreign key (PageID) references Page (PageID)
)
    collate = utf8_general_ci
    avg_row_length = 468;

INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (1, 1, 'Экскурсия в Казбек (Степанцминда) из Тбилиси', '1', 'excursions', '/images/excoursions/kazbek/excursion_in_kagbeg_1_500x300.jpg', 1);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (2, 2, 'Экскурсия по Тбилиси', '1', 'excursions', '/images/excoursions/tbilisi/ex_tbilisi_4_500x300.jpg', 1);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (3, 3, 'Экскурсия в Армению из Тбилиси', '1', 'excursions', '/images/excoursions/armenia/ex_armenia_1_500x300.jpg', 1);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (4, 4, 'Экскурсия в Бакуриани из Тбилиси', '1', 'excursions', '/images/excoursions/ex_bakuriani_500x300.jpg', 1);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (5, 5, 'Экскурсия в Боржоми, Ахалцихе и Вардзию из Тбилиси', '1', 'excursions', '/images/excoursions/maps/ex_borjomi_1.jpg', 1);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (6, 6, 'Экскурсия в Дманиси "Первые европейцы"', '1', 'excursions', '/images/excoursions/maps/ex_dmanisi_1_500x300.jpg', 1);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (7, 7, 'Экскурсия в Гудаури из Тбилиси', '1', 'excursions', '/images/excoursions/ex_gudauri_3_500x300.jpg', 1);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (8, 8, 'Экскурсия в Кахетию из Тбилиси (Хареба)', '1', 'excursions', '/images/cards/hareba_500x300.jpg', 1);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (9, 9, 'Экскурсия в Кахетию из Тбилиси (Шуми)', '1', 'excursions', '/images/excoursions/ex_kaxeti_shumi_1_500x300.jpg', 1);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (10, 10, 'Экускурсия в монастырь Давид-Гареджа', '1', 'excursions', '/images/excoursions/david_gareja/david_gareja_1_500x300.jpg', 1);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (11, 11, 'Экскурсия в Мцхету и древние монастыри', '1', 'excursions', '/images/cards/mtskheta_500x300.jpg', 1);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (12, 12, 'Экскурсия в Мцхету - Уплисцихе - Гори из Тбилиси', '1', 'excursions', '/images/excoursions/mtskheta_1/excursion_mtskheta_2_500x300.jpg', 1);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (13, 13, 'Экскурсия по Тбилиси и поездка в город Мцхета', '1', 'excursions', '/images/cards/ex_tbilisi_mtskheta_500x300.jpg', 1);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (14, 14, 'Индивидуальный тур в Грузию', '1', 'tours', '/images/tours/individual_tour_1_500x300.jpg', 4);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (15, 15, 'Рафтинг в Грузии на реке Арагви', '1', 'excursions', '/images/excoursions/rafting01_1.jpg', 1);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (16, 16, 'Недорогой тур в Грузию на 8 дней', '1', 'tours', '/images/tours/tour_8days_tbilisi_500x300.jpg', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (17, 17, 'Тур в Грузию на 5 дней. Тбилиси', '1', 'tours', '/images/cards/tour_tbilisi_500x300.jpg', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (18, 18, 'Тур в Грузию на 5 дней. Тбилиси и Кахетия', '1', 'tours', '/images/cards/tour_tbilisi_500x300.jpg', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (19, 19, 'Тур в Грузию на 4 дня: Боржоми, Ахалцихе, Вардзия', '1', 'tours', '/images/excoursions/tbilisi/excursion_in_tbilisi_500x300_1.jpg', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (20, 20, 'Кулинарный тур в Грузию на 7 дней', '1', 'tours', '/images/tours/tour_8days_tbilisi_500x300.jpg', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (21, 21, 'Тур в Грузию на выходные. Кахетия', '1', 'tours', '/images/tours/tour_3days_kaheti_2_500x300.jpg', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (22, 22, 'Тур в Грузию на выходные. Степанцминда (Казбек)', '1', 'tours', '/images/tours/tour_3days_kazbeg_1_500x300.jpg', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (23, 23, 'Новый год в Грузии на 5 дней', '1', 'tours', '/images/tours/tour-new-year-5-days_500x300_1.jpg', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (24, 24, 'Тур в Грузию на 5 дней. Горы и Море', '1', 'tours', '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (25, 25, 'Отдых в Грузии на 7 дней. Тбилиси и Батуми', '1', 'tours', '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (26, 26, 'Отдых в Грузии на 10 дней. От Тбилиси до Батуми', '1', 'tours', '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (27, 27, 'Тур в Грузию и Армению на 6 дней', '1', 'tours', '/images/cards/tour_tbilisi_500x300.jpg', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (28, 28, 'Тур в Грузию на 5 дней: Тбилиси, Мцхета, Казбек, кулинарный мастер-класс', '1', 'tours', '/images/excoursions/tour_5days_tbilisi_kazbek_culinary_master_class_500_300.jpg', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (29, 29, 'Зимний тур в Грузию на 6 дней (Гудаури)', '1', 'tours', '/images/tours/tour_5days_gudauri_2_500x300.jpg', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (30, 30, 'Свадьба в Грузии. Кахетия', '1', 'tours', '/images/tours/tour_3days_kaheti_2_500x300.jpg', 3);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (31, 31, 'Свадьба в Грузии. Кахетия. Кварели', '1', 'tours', '/images/wedding/wed_kaheti_all_1_500x300.jpg', 3);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (32, 32, 'Свадьба в Грузии. Казбек', '1', 'tours', '/images/wedding/wed_kazbegi_1_5_500x300.jpg', 3);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (33, 33, 'Свадьба в Грузии. Тбилиси', '1', 'tours', '/images/wedding/wed_tbilisi_1_500x300.jpg', 3);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (34, 34, 'О нас', '1', 'tours', '/images/team/team-1_500x300.jpg', 5);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (37, 37, 'Партнерам', '1', 'tours', '/images/team/partners_500x300.jpg', 5);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (38, 42, 'Путешествие в Грузию на автомобиле. 8 дней', '1', 'tours', '/images/tours/avto_3_500_385.png', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (39, 43, 'Тур в Грузию на 5 дней. Тбилиси, Мцхета, Казбек', '1', 'tours', '/images/cards/tour_tbilisi_500x300.jpg', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (40, 44, 'Тур в Грузию на 3 дня. Тбилиси и Мцхета', '1', 'tours', '/images/tours/Tbilisi_4days_0.png', 2);
INSERT INTO gbua_cgdb.Card (CardID, PageID, Name, ShowAdditionalLinks, AdditionalLinksType, CardImageSrc, CardTypeID) VALUES (41, 47, 'Отель №3. 3 звезды (вмещает 50 человек)', '1', 'hotels', '/images/cabinet/hotels/Zemeli1_500_300.png', 7);
