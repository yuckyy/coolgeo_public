create table CardType
(
    CardTypeID int auto_increment
        primary key,
    Name       text null
)
    collate = cp1251_general_ci
    avg_row_length = 2048;

INSERT INTO gbua_cgdb.CardType (CardTypeID, Name) VALUES (1, 'Экскурсия');
INSERT INTO gbua_cgdb.CardType (CardTypeID, Name) VALUES (2, 'Тур');
INSERT INTO gbua_cgdb.CardType (CardTypeID, Name) VALUES (3, 'Свадьба');
INSERT INTO gbua_cgdb.CardType (CardTypeID, Name) VALUES (4, 'Индивидуальный тур');
INSERT INTO gbua_cgdb.CardType (CardTypeID, Name) VALUES (5, 'О нас');
INSERT INTO gbua_cgdb.CardType (CardTypeID, Name) VALUES (6, null);
INSERT INTO gbua_cgdb.CardType (CardTypeID, Name) VALUES (7, 'Отель');
INSERT INTO gbua_cgdb.CardType (CardTypeID, Name) VALUES (8, 'Аренда Авто');
