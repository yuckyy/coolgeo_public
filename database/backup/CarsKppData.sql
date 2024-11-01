create table CarsKppData
(
    CarsKppID int  not null,
    LangID    int  not null,
    Name      text null,
    primary key (CarsKppID, LangID),
    constraint FK_CarsKppData_CarsKppID
        foreign key (CarsKppID) references CarsKpp (CarsKppID),
    constraint FK_CarsKppData_LangID
        foreign key (LangID) references LangList (LangID)
)
    collate = utf8_general_ci
    avg_row_length = 4096;

INSERT INTO gbua_cgdb.CarsKppData (CarsKppID, LangID, Name) VALUES (1, 1, 'Автомат');
INSERT INTO gbua_cgdb.CarsKppData (CarsKppID, LangID, Name) VALUES (1, 2, 'Automatic');
INSERT INTO gbua_cgdb.CarsKppData (CarsKppID, LangID, Name) VALUES (1, 3, 'Автомат');
INSERT INTO gbua_cgdb.CarsKppData (CarsKppID, LangID, Name) VALUES (1, 4, 'Автомат');
INSERT INTO gbua_cgdb.CarsKppData (CarsKppID, LangID, Name) VALUES (2, 1, 'Механика');
INSERT INTO gbua_cgdb.CarsKppData (CarsKppID, LangID, Name) VALUES (2, 2, 'Mechanical');
INSERT INTO gbua_cgdb.CarsKppData (CarsKppID, LangID, Name) VALUES (2, 3, 'Механика');
INSERT INTO gbua_cgdb.CarsKppData (CarsKppID, LangID, Name) VALUES (2, 4, 'Механіка');
