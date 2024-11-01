create table SidebarSectionOptionData
(
    OptionID int  not null,
    LangID   int  not null,
    Name     text null,
    primary key (OptionID, LangID),
    constraint FK_SidebarSectionOptionData_LangID2
        foreign key (LangID) references LangList (LangID),
    constraint FK_SidebarSectionOptionData_OptionID
        foreign key (OptionID) references SidebarSectionOption (OptionID)
)
    collate = cp1251_general_ci
    avg_row_length = 528;

INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (1, 1, 'Управление доступом');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (1, 2, 'Access control');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (1, 4, 'Управління доступом');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (2, 1, 'Контент');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (2, 2, 'Content');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (2, 4, 'Контент');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (3, 1, 'Настройки сайта');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (3, 2, 'Site settings');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (3, 4, 'Налаштунки сайту');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (4, 1, 'Бронирования');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (4, 2, 'Bookings');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (4, 4, 'Бронювання');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (5, 1, 'Управление отзывами');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (5, 2, 'Feedback management');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (5, 4, 'Керування відгуками');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (6, 1, 'Текущие бронирования');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (6, 2, 'Current booking');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (6, 4, 'Поточні бронювання');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (7, 1, 'Архив бронирований');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (7, 2, 'Archive of booking');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (7, 4, 'Архів бронювань');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (8, 1, 'Мои отзывы');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (8, 2, 'My reviews');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (8, 4, 'Мої відгуки');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (9, 1, 'Профиль');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (9, 2, 'Profile');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (9, 4, 'Профіль');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (10, 1, 'Выйти');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (10, 2, 'Logout');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (10, 4, 'Вийти');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (12, 1, 'Заявки на обратный звонок');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (12, 2, 'Callback list');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (12, 4, 'Замовлення на зворотній дзвінок');
INSERT INTO gbua_cgdb.SidebarSectionOptionData (OptionID, LangID, Name) VALUES (15, 1, 'Текущие бронирования авто');
