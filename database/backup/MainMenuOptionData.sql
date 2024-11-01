create table MainMenuOptionData
(
    OptionID int  not null,
    LangID   int  not null,
    Name     text null,
    primary key (OptionID, LangID),
    constraint FK_MainMenuOptionData_LangID
        foreign key (LangID) references LangList (LangID),
    constraint FK_MainMenuOptionData_OptionID
        foreign key (OptionID) references MainMenuOption (OptionID)
)
    collate = cp1251_general_ci
    avg_row_length = 546;

INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (1, 1, 'Главная');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (1, 2, 'Main');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (1, 4, 'Головна');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (2, 1, 'Отели');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (2, 2, 'Hotels');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (2, 4, 'Готелi');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (3, 1, 'Туры в Грузию');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (3, 2, 'Tours to Georgia');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (3, 4, 'Тури в Грузію');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (4, 1, 'Аренда Авто');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (4, 2, 'Rent a Сar');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (4, 4, 'Оренда Авто');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (5, 1, 'О нас');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (5, 2, 'About us');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (5, 4, 'Про нас');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (6, 1, 'Контакты');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (6, 2, 'Contacts');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (6, 4, 'Контакти');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (7, 1, 'Отзывы');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (7, 2, 'Reviews');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (7, 4, 'Відгуки');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (8, 1, 'Войти');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (8, 2, 'Signin');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (8, 4, 'Увійти');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (9, 1, '<span class="LangButton">&nbsp&nbsp&nbsp&nbsp</span>');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (9, 2, '<span class="LangButton">&nbsp&nbsp&nbsp&nbsp</span>');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (9, 4, '<span class="LangButton">&nbsp&nbsp&nbsp&nbsp</span>');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (10, 1, '<img class="pl-md-2 pr-2" src="/images/call-mob.png" style="height: 1.5em;"> +995 598 00 14 61');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (10, 2, '<img class="pl-md-2 pr-2" src="/images/call-mob.png" style="height: 1.5em;">+995 598 00 14 61');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (10, 4, '<img class="pl-md-2 pr-2" src="/images/call-mob.png" style="height: 1.5em;"> +995 598 00 14 61');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (11, 1, 'Трансферы');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (11, 2, 'Transfers');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (11, 4, 'Трансфери');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (12, 1, 'Рестораны');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (12, 2, 'Restaurants');
INSERT INTO gbua_cgdb.MainMenuOptionData (OptionID, LangID, Name) VALUES (12, 4, 'Ресторани');
