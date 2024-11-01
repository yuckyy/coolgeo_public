create table CarsClass
(
    CarsClassID int  not null
        primary key,
    Name        text null
)
    collate = utf8_general_ci
    avg_row_length = 4096;

INSERT INTO gbua_cgdb.CarsClass (CarsClassID, Name) VALUES (1, 'Эконом');
INSERT INTO gbua_cgdb.CarsClass (CarsClassID, Name) VALUES (2, 'Стандарт');
INSERT INTO gbua_cgdb.CarsClass (CarsClassID, Name) VALUES (3, 'Бизнес');
INSERT INTO gbua_cgdb.CarsClass (CarsClassID, Name) VALUES (4, 'Внедорожник');
INSERT INTO gbua_cgdb.CarsClass (CarsClassID, Name) VALUES (5, 'Минивен');
INSERT INTO gbua_cgdb.CarsClass (CarsClassID, Name) VALUES (6, 'Спорт купе');
