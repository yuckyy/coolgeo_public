create table HotelList
(
    HotelListID int auto_increment
        primary key,
    Name        varchar(255) null,
    Adress      varchar(255) null,
    Phone       varchar(255) null
)
    collate = utf8_general_ci
    avg_row_length = 8192;

INSERT INTO gbua_cgdb.HotelList (HotelListID, Name, Adress, Phone) VALUES (1, 'Отель 1 ', 'Адресс 1', 'Телефон 1');
INSERT INTO gbua_cgdb.HotelList (HotelListID, Name, Adress, Phone) VALUES (2, 'Отель 2', 'Адресс 2', 'Телефон 2');
