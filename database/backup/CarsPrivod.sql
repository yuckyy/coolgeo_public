create table CarsPrivod
(
    CarsPrivodID int  not null
        primary key,
    Name         text null
)
    collate = utf8_general_ci
    avg_row_length = 4096;

INSERT INTO gbua_cgdb.CarsPrivod (CarsPrivodID, Name) VALUES (1, 'Передний');
INSERT INTO gbua_cgdb.CarsPrivod (CarsPrivodID, Name) VALUES (2, 'Задний');
INSERT INTO gbua_cgdb.CarsPrivod (CarsPrivodID, Name) VALUES (3, 'Полный');
