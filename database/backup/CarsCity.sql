create table CarsCity
(
    CarsCityID int  not null
        primary key,
    Name       text null
)
    collate = utf8_general_ci
    avg_row_length = 4096;

INSERT INTO gbua_cgdb.CarsCity (CarsCityID, Name) VALUES (1, 'Тбилиси');
INSERT INTO gbua_cgdb.CarsCity (CarsCityID, Name) VALUES (2, 'Батуми');
INSERT INTO gbua_cgdb.CarsCity (CarsCityID, Name) VALUES (3, 'Кутаиси');
