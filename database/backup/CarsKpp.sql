create table CarsKpp
(
    CarsKppID int  not null
        primary key,
    Name      text null
)
    collate = utf8_general_ci
    avg_row_length = 4096;

INSERT INTO gbua_cgdb.CarsKpp (CarsKppID, Name) VALUES (1, 'Автомат');
INSERT INTO gbua_cgdb.CarsKpp (CarsKppID, Name) VALUES (2, 'Механика');
