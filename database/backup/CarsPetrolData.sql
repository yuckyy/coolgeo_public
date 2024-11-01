create table CarsPetrolData
(
    CarsPetrolID int  not null,
    LangID       int  not null,
    Name         text null,
    constraint FK_CarsPetrolData_CarsPetrolID
        foreign key (CarsPetrolID) references CarsPetrol (CarsPertrolID),
    constraint FK_CarsPetrolData_LangID
        foreign key (LangID) references LangList (LangID)
)
    collate = utf8_general_ci
    avg_row_length = 4096;

INSERT INTO gbua_cgdb.CarsPetrolData (CarsPetrolID, LangID, Name) VALUES (1, 1, 'Бензин');
INSERT INTO gbua_cgdb.CarsPetrolData (CarsPetrolID, LangID, Name) VALUES (1, 2, 'Petrol');
INSERT INTO gbua_cgdb.CarsPetrolData (CarsPetrolID, LangID, Name) VALUES (1, 4, 'Бензин');
INSERT INTO gbua_cgdb.CarsPetrolData (CarsPetrolID, LangID, Name) VALUES (2, 1, 'Гибрид');
INSERT INTO gbua_cgdb.CarsPetrolData (CarsPetrolID, LangID, Name) VALUES (2, 2, 'Hybrid');
INSERT INTO gbua_cgdb.CarsPetrolData (CarsPetrolID, LangID, Name) VALUES (2, 4, 'Гибрид');
INSERT INTO gbua_cgdb.CarsPetrolData (CarsPetrolID, LangID, Name) VALUES (3, 1, 'Дизель');
INSERT INTO gbua_cgdb.CarsPetrolData (CarsPetrolID, LangID, Name) VALUES (3, 2, 'Diesel');
INSERT INTO gbua_cgdb.CarsPetrolData (CarsPetrolID, LangID, Name) VALUES (3, 4, 'Дизель');
INSERT INTO gbua_cgdb.CarsPetrolData (CarsPetrolID, LangID, Name) VALUES (4, 1, 'Газ/Бензин');
INSERT INTO gbua_cgdb.CarsPetrolData (CarsPetrolID, LangID, Name) VALUES (4, 2, 'Gas/Petrol');
INSERT INTO gbua_cgdb.CarsPetrolData (CarsPetrolID, LangID, Name) VALUES (4, 4, 'Газ/Бензин');
INSERT INTO gbua_cgdb.CarsPetrolData (CarsPetrolID, LangID, Name) VALUES (5, 1, 'Электро');
INSERT INTO gbua_cgdb.CarsPetrolData (CarsPetrolID, LangID, Name) VALUES (5, 2, 'Electro');
INSERT INTO gbua_cgdb.CarsPetrolData (CarsPetrolID, LangID, Name) VALUES (5, 4, 'Електро');
