create table BookingStatusData
(
    BookingStatusID int          not null
        primary key,
    LangID          int          null,
    Name            varchar(100) null,
    constraint FK_BookingStatusData_BookingStatusID
        foreign key (BookingStatusID) references BookingStatus (BookingStatusID)
)
    collate = utf8_general_ci
    avg_row_length = 2340;

INSERT INTO gbua_cgdb.BookingStatusData (BookingStatusID, LangID, Name) VALUES (1, 1, 'Новый');
INSERT INTO gbua_cgdb.BookingStatusData (BookingStatusID, LangID, Name) VALUES (2, 1, 'Согласование');
INSERT INTO gbua_cgdb.BookingStatusData (BookingStatusID, LangID, Name) VALUES (3, 1, 'Согласован');
INSERT INTO gbua_cgdb.BookingStatusData (BookingStatusID, LangID, Name) VALUES (4, 1, 'Готов');
INSERT INTO gbua_cgdb.BookingStatusData (BookingStatusID, LangID, Name) VALUES (5, 1, 'Тур начат');
INSERT INTO gbua_cgdb.BookingStatusData (BookingStatusID, LangID, Name) VALUES (6, 1, 'Тур завершен');
INSERT INTO gbua_cgdb.BookingStatusData (BookingStatusID, LangID, Name) VALUES (7, 1, 'Отказ');
