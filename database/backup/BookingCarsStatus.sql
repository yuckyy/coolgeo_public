create table BookingCarsStatus
(
    BookingStatusID int auto_increment
        primary key,
    Name            varchar(50) null,
    Active          bit         null,
    RowNumber       int         null
)
    collate = utf8_general_ci;

