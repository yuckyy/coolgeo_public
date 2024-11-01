create table PageType
(
    PageTypeID int auto_increment
        primary key,
    Name       text null
)
    collate = utf8_general_ci
    avg_row_length = 4096;

INSERT INTO gbua_cgdb.PageType (PageTypeID, Name) VALUES (1, 'Главная');
INSERT INTO gbua_cgdb.PageType (PageTypeID, Name) VALUES (2, 'Альбомы');
INSERT INTO gbua_cgdb.PageType (PageTypeID, Name) VALUES (3, 'Карточка');
INSERT INTO gbua_cgdb.PageType (PageTypeID, Name) VALUES (4, 'Отзывы');
INSERT INTO gbua_cgdb.PageType (PageTypeID, Name) VALUES (5, 'Контакты');
INSERT INTO gbua_cgdb.PageType (PageTypeID, Name) VALUES (6, 'Отели');
