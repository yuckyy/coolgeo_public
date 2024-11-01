create table Page
(
    PageID        int auto_increment
        primary key,
    PageTypeID    int  null,
    FileName      text null,
    Name          text null,
    TopMenuActive int  null,
    constraint FK_Page_PageTypeID
        foreign key (PageTypeID) references PageType (PageTypeID)
)
    collate = utf8_general_ci
    avg_row_length = 399;

INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (1, 3, 'excursion-in-kazbeg.html', 'Экскурсия в Казбек (Степанцминда) из Тбилиси', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (2, 3, 'excursion-in-tbilisi.html', 'Экскурсия по Тбилиси', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (3, 3, 'excursion-to-armenia.html', 'Экскурсия в Армению из Тбилиси', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (4, 3, 'excursion-to-bakuriani.html', 'Экскурсия в Бакуриани из Тбилиси', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (5, 3, 'excursion-to-borjomi-vardzia.html', 'Экскурсия в Боржоми, Ахалцихе и Вардзию из Тбилиси', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (6, 3, 'excursion-to-dmanisi-first-europeans.html', 'Экскурсия в Дманиси "Первые европейцы"', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (7, 3, 'excursion-to-gudauri.html', 'Экскурсия в Гудаури из Тбилиси', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (8, 3, 'excursion-to-kaheti-winery-hareba.html', 'Экскурсия в Кахетию из Тбилиси (Хареба)', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (9, 3, 'excursion-to-kaheti-winery-shumi.html', 'Экскурсия в Кахетию из Тбилиси (Шуми)', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (10, 3, 'excursion-to-monastery-david-gareja.html', 'Экускурсия в монастырь Давид-Гареджа', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (11, 3, 'excursion-to-mtskheta.html', 'Экскурсия в Мцхету и древние монастыри', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (12, 3, 'excursion-to-mtskheta-upliscihe-gori.html', 'Экскурсия в Мцхету - Уплисцихе - Гори из Тбилиси', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (13, 3, 'excursion-to-tbilisi-and-mtskheta.html', 'Экскурсия по Тбилиси и поездка в город Мцхета', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (14, 3, 'individual-tours.html', 'Индивидуальный тур в Грузию', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (15, 3, 'rafting-in-georgia.html', 'Рафтинг в Грузии на реке Арагви', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (16, 3, 'tour-around-georgia-8-days.html', 'Недорогой тур в Грузию на 8 дней', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (17, 3, 'tour-around-tbilisi-5-days.html', 'Тур в Грузию на 5 дней. Тбилиси', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (18, 3, 'tour-around-tbilisi-kaheti-5-days.html', 'Тур в Грузию на 5 дней. Тбилиси и Кахетия', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (19, 3, 'tour-borjomi-vardzia-4-days.html', 'Тур в Грузию на 4 дня: Боржоми, Ахалцихе, Вардзия', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (20, 3, 'tour-culinary-around-georgia-7-days.html', 'Кулинарный тур в Грузию на 7 дней', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (21, 3, 'tour-kaheti-3days.html', 'Тур в Грузию на выходные. Кахетия', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (22, 3, 'tour-kazbeg-3-days.html', 'Тур в Грузию на выходные. Степанцминда (Казбек)', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (23, 3, 'tour-new-year-5-days.html', 'Новый год в Грузии на 5 дней', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (24, 3, 'tour-tbilisi-batumi-5-days.html', 'Тур в Грузию на 5 дней. Горы и Море', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (25, 3, 'tour-tbilisi-batumi-7-days.html', 'Отдых в Грузии на 7 дней. Тбилиси и Батуми', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (26, 3, 'tour-tbilisi-batumi-10-days.html', 'Отдых в Грузии на 10 дней. От Тбилиси до Батуми', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (27, 3, 'tour-to-armenia-6-days.html', 'Тур в Грузию и Армению на 6 дней', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (28, 3, 'tour-to-tbilisi-kazbegi-5-days.html', 'Тур в Грузию на 5 дней: Тбилиси, Мцхета, Казбек, кулинарный мастер-класс', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (29, 3, 'tour-to-gudauri-5-days.html', 'Зимний тур в Грузию на 6 дней (Гудаури)', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (30, 3, 'wedding-in-kaheti-3days.html', 'Свадьба в Грузии. Кахетия', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (31, 3, 'wedding-in-kaheti-3days-all-inclusive.html', 'Свадьба в Грузии. Кахетия. Кварели', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (32, 3, 'wedding-in-kazbeg-3days.html', 'Свадьба в Грузии. Казбек', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (33, 3, 'wedding-in-tbilisi-3days.html', 'Свадьба в Грузии. Тбилиси', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (34, 3, 'about-us.html', 'Наша команда', 1);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (35, 5, 'contacts.html', 'Контакты', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (36, 4, 'reviews.html', 'Отзывы', 1);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (37, 3, 'to-partners.html', 'Партнерам', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (38, 2, 'multi-day-tours.html', 'Многодневные туры (Альбом)', 1);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (39, 2, 'wedding-in-georgia.html', 'Свадьба в Грузии (Альбом)', 1);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (40, 1, 'index.html', 'Главная ', 1);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (41, 2, 'excursions.html', 'Экскурсии (Альбом)', 1);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (42, 3, 'tour-tbilisi-kazbegi-borjomi-vardzia-7-days.html', 'Путешествие в Грузию на автомобиле', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (43, 3, 'tour-tbilisi-kazbegi-5-days.html', 'Тур в Грузию на 5 дней. Тбилиси, Мцхета, Казбек', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (44, 3, 'tour-tbilisi-4-days.html', 'Тур в Грузию на 4 дня. Тбилиси, Мцхета, кулинарный мастер-класс', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (45, 2, 'hotels.html', 'Отели (Альбом)', 1);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (46, 2, 'rent-cars.php', 'Аренда авто (Альбом)', 1);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (47, 3, 'guest-house-zemeli.html', 'Отель №3. 3 звезды (вмещает 50 человек)', null);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (48, 2, 'transfer.php', 'Трансферы', 1);
INSERT INTO gbua_cgdb.Page (PageID, PageTypeID, FileName, Name, TopMenuActive) VALUES (49, 2, 'cafe_redirect.php', 'Рестораны', 1);
