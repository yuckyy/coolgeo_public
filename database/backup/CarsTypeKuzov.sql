create table CarsTypeKuzov
(
    CarsTypeKuzovID int  not null
        primary key,
    Name            text null
)
    collate = utf8_general_ci
    avg_row_length = 4096;

INSERT INTO gbua_cgdb.CarsTypeKuzov (CarsTypeKuzovID, Name) VALUES (1, 'Хетчбек');
INSERT INTO gbua_cgdb.CarsTypeKuzov (CarsTypeKuzovID, Name) VALUES (2, 'Купе');
INSERT INTO gbua_cgdb.CarsTypeKuzov (CarsTypeKuzovID, Name) VALUES (3, 'Седан');
INSERT INTO gbua_cgdb.CarsTypeKuzov (CarsTypeKuzovID, Name) VALUES (4, 'Внедорожник');
INSERT INTO gbua_cgdb.CarsTypeKuzov (CarsTypeKuzovID, Name) VALUES (5, 'Универсал');
INSERT INTO gbua_cgdb.CarsTypeKuzov (CarsTypeKuzovID, Name) VALUES (6, 'Минивен');
INSERT INTO gbua_cgdb.CarsTypeKuzov (CarsTypeKuzovID, Name) VALUES (7, 'Микроавтобус');
