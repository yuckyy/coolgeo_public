create table CarsPrivodData
(
    CarsPrivodID int  not null,
    LangID       int  not null,
    Name         text null,
    primary key (CarsPrivodID, LangID),
    constraint FK_CarsPrivodData_CarsPrivodID
        foreign key (CarsPrivodID) references CarsPrivod (CarsPrivodID),
    constraint FK_CarsPrivodData_LangID2
        foreign key (LangID) references LangList (LangID)
)
    collate = utf8_general_ci
    avg_row_length = 4096;

create index FK_CarsPrivodData_LangID
    on CarsPrivodData (LangID);

INSERT INTO gbua_cgdb.CarsPrivodData (CarsPrivodID, LangID, Name) VALUES (1, 1, 'Передний');
INSERT INTO gbua_cgdb.CarsPrivodData (CarsPrivodID, LangID, Name) VALUES (1, 2, 'Front');
INSERT INTO gbua_cgdb.CarsPrivodData (CarsPrivodID, LangID, Name) VALUES (1, 3, 'Передний');
INSERT INTO gbua_cgdb.CarsPrivodData (CarsPrivodID, LangID, Name) VALUES (1, 4, 'Передній');
INSERT INTO gbua_cgdb.CarsPrivodData (CarsPrivodID, LangID, Name) VALUES (2, 1, 'Задний');
INSERT INTO gbua_cgdb.CarsPrivodData (CarsPrivodID, LangID, Name) VALUES (2, 2, 'Rear');
INSERT INTO gbua_cgdb.CarsPrivodData (CarsPrivodID, LangID, Name) VALUES (2, 3, 'Задний');
INSERT INTO gbua_cgdb.CarsPrivodData (CarsPrivodID, LangID, Name) VALUES (2, 4, 'Задній');
INSERT INTO gbua_cgdb.CarsPrivodData (CarsPrivodID, LangID, Name) VALUES (3, 1, 'Полний');
INSERT INTO gbua_cgdb.CarsPrivodData (CarsPrivodID, LangID, Name) VALUES (3, 2, 'Full');
INSERT INTO gbua_cgdb.CarsPrivodData (CarsPrivodID, LangID, Name) VALUES (3, 3, 'Полний');
INSERT INTO gbua_cgdb.CarsPrivodData (CarsPrivodID, LangID, Name) VALUES (3, 4, 'Повний');
