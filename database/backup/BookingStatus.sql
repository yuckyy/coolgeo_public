create table BookingStatus
(
    BookingStatusID int auto_increment
        primary key,
    Name            varchar(50) null,
    Active          bit         null,
    RowNumber       int         null
)
    collate = utf8_general_ci
    avg_row_length = 2340;

INSERT INTO gbua_cgdb.BookingStatus (BookingStatusID, Name, Active, RowNumber) VALUES (1, 'Новый', true, 1);
INSERT INTO gbua_cgdb.BookingStatus (BookingStatusID, Name, Active, RowNumber) VALUES (2, 'Согласование', true, 2);
INSERT INTO gbua_cgdb.BookingStatus (BookingStatusID, Name, Active, RowNumber) VALUES (3, 'Согласован', true, 3);
INSERT INTO gbua_cgdb.BookingStatus (BookingStatusID, Name, Active, RowNumber) VALUES (4, 'Готов', true, 4);
INSERT INTO gbua_cgdb.BookingStatus (BookingStatusID, Name, Active, RowNumber) VALUES (5, 'Тур начат', true, 5);
INSERT INTO gbua_cgdb.BookingStatus (BookingStatusID, Name, Active, RowNumber) VALUES (6, 'Тур завершен', false, 6);
INSERT INTO gbua_cgdb.BookingStatus (BookingStatusID, Name, Active, RowNumber) VALUES (7, 'Отказ', false, 7);
