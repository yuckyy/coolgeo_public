create table SidebarSectionOptionLinkData
(
    LinkID int                            not null,
    LangID int                            not null,
    Name   text collate cp1251_general_ci null,
    primary key (LinkID, LangID),
    constraint FK_SidebarSectionOptionLinkData_LangID
        foreign key (LangID) references LangList (LangID),
    constraint FK_SidebarSectionOptionLinkData_LinkID
        foreign key (LinkID) references SidebarSectionOptionLink (LinkID)
)
    collate = utf8_general_ci
    avg_row_length = 364;

INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (1, 1, 'Группы');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (1, 2, 'Groups');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (1, 4, 'Групи');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (2, 1, 'Роли');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (2, 2, 'Roles');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (2, 4, 'Ролі');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (3, 1, 'Пользователи');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (3, 2, 'Users');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (3, 4, 'Користувачі');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (4, 1, 'Страницы сайта');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (4, 2, 'Pages of site');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (4, 4, 'Сторінки сайту');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (5, 1, 'Альбомы');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (5, 2, 'Albums');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (5, 4, 'Альбоми');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (6, 1, 'Карточки');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (6, 2, 'Cards');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (6, 4, 'Картки');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (7, 1, 'Настройки сайта');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (7, 2, 'Site settings');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (7, 4, 'Налаштунки сайту');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (8, 1, 'Новые');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (8, 2, 'New');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (8, 4, 'Нові');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (9, 1, 'В работе');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (9, 2, 'In work');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (9, 4, 'В роботі');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (10, 1, 'Управление отзывами');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (10, 2, 'Reviews management');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (10, 4, 'Керування відгуками');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (11, 1, 'Текущие бронирования');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (11, 2, 'Current booking');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (11, 4, 'Поточні бронювання');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (12, 1, 'Архив бронирований');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (12, 2, 'Arhive of booking');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (12, 4, 'Архів бронювань');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (13, 1, 'Мои отзывы');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (13, 2, 'My reviews');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (13, 4, 'Мої відгуки');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (14, 1, 'Профиль');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (14, 2, 'Profile');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (14, 4, 'Профіль');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (15, 1, 'Выйти');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (15, 2, 'Logout');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (15, 4, 'Вийти');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (16, 1, 'Генератор сайта');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (16, 2, 'Site generator');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (16, 4, 'Генератор сайту');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (18, 1, 'Заявки на обратный звонок');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (18, 2, 'Callback list');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (18, 4, 'Замовлення на зворотній дзвінок');
INSERT INTO gbua_cgdb.SidebarSectionOptionLinkData (LinkID, LangID, Name) VALUES (19, 1, 'Текущие бронирования авто');
