create table MainMenuLinkData
(
    LinkID  int  not null,
    LangID  int  not null,
    Caption text null,
    primary key (LinkID, LangID),
    constraint FK_MainMenuLinkData_LangID
        foreign key (LangID) references LangList (LangID),
    constraint FK_MainMenuLinkData_LinkID
        foreign key (LinkID) references MainMenuLink (LinkID)
)
    collate = cp1251_general_ci
    avg_row_length = 364;

INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (1, 1, 'Главная');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (1, 2, 'Main');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (1, 4, 'Головна');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (2, 1, 'Экскурсии');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (2, 2, 'One day tours');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (2, 4, 'Екскурсії');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (3, 1, 'Многодневные туры');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (3, 2, 'Multi-day tours');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (3, 4, 'Багатоденні тури');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (4, 1, 'Хочу свою программу');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (4, 2, 'I want individual programm');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (4, 4, 'Бажаю свою власну програму');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (5, 1, 'Свадьба в Грузии');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (5, 2, 'Wedding in Georgia');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (5, 4, 'Весілля у Грузії');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (6, 1, 'Наша команда');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (6, 2, 'Our team');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (6, 4, 'Наша команда');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (7, 1, 'Партнерам');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (7, 2, 'For Partners');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (7, 4, 'Партнерам');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (8, 1, 'Контакты');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (8, 2, 'Contacts');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (8, 4, 'Контакти');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (9, 1, 'Отзывы');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (9, 2, 'Reviews');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (9, 4, 'Відгуки');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (10, 1, 'Кабинет');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (10, 2, 'Cabinet');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (10, 4, 'Кабінет');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (11, 1, '<img src="/images/flags/rus.jpg" alt="ru"> Русский');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (11, 2, '<img src="/images/flags/rus.jpg" alt="ru"> Русский');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (11, 4, '<img src="/images/flags/rus.jpg" alt="ru"> Русский');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (12, 1, '<img src="/images/flags/vel.jpg" alt="en"> English');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (12, 2, '<img src="/images/flags/vel.jpg" alt="en"> English');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (12, 4, '<img src="/images/flags/vel.jpg" alt="en"> English');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (14, 1, '<img src="/images/flags/ua.png" alt="ua"> Українська');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (14, 2, '<img src="/images/flags/ua.png" alt="ua"> Українська');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (14, 4, '<img src="/images/flags/ua.png" alt="ua"> Українська');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (15, 1, 'Отели');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (15, 2, null);
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (15, 4, null);
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (16, 1, 'Аренда Авто');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (16, 2, null);
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (16, 4, null);
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (17, 1, 'Трансферы');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (17, 2, 'Transfers');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (17, 4, 'Трансфери');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (18, 1, 'Рестораны');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (18, 2, 'Restaurants');
INSERT INTO gbua_cgdb.MainMenuLinkData (LinkID, LangID, Caption) VALUES (18, 4, 'Ресторани');
