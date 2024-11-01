create table CarsPetrol
(
    CarsPertrolID int  not null
        primary key,
    Name          text null
)
    collate = utf8_general_ci
    avg_row_length = 4096;

INSERT INTO gbua_cgdb.CarsPetrol (CarsPertrolID, Name) VALUES (1, 'Бензин');
INSERT INTO gbua_cgdb.CarsPetrol (CarsPertrolID, Name) VALUES (2, 'Гибрид');
INSERT INTO gbua_cgdb.CarsPetrol (CarsPertrolID, Name) VALUES (3, 'Дизель');
INSERT INTO gbua_cgdb.CarsPetrol (CarsPertrolID, Name) VALUES (4, 'Газ/Бензин');
INSERT INTO gbua_cgdb.CarsPetrol (CarsPertrolID, Name) VALUES (5, 'Электро');
