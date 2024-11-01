create table CarsTypeKuzovData
(
    CarsTypeKuzovID int  not null,
    LangID          int  not null,
    Name            text null,
    primary key (CarsTypeKuzovID, LangID),
    constraint FK_CarsTypeKuzovData_CarsTypeKuzovID
        foreign key (CarsTypeKuzovID) references CarsTypeKuzov (CarsTypeKuzovID),
    constraint FK_CarsTypeKuzovData_LangID
        foreign key (LangID) references LangList (LangID)
)
    collate = utf8_general_ci
    avg_row_length = 4096;

INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (1, 1, 'Хетчбек');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (1, 2, 'Hatchback');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (1, 3, 'Хетчбек');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (1, 4, 'Хетчбек');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (2, 1, 'Купе');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (2, 2, 'Coupe');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (2, 3, 'Купе');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (2, 4, 'Купе');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (3, 1, 'Седан');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (3, 2, 'Sedan');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (3, 3, 'Седан');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (3, 4, 'Седан');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (4, 1, 'Внедорожник');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (4, 2, 'Jeep');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (4, 3, 'Внедорожник');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (4, 4, 'Позашляховик');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (5, 1, 'Универсал');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (5, 2, 'Universal');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (5, 3, 'Универсал');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (5, 4, 'Універсал');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (6, 1, 'Минивен');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (6, 2, 'Minivan');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (6, 3, 'Минивен');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (6, 4, 'Мінівен');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (7, 1, 'Микроавтобус');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (7, 2, 'Minibus');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (7, 3, 'Микроавтобус');
INSERT INTO gbua_cgdb.CarsTypeKuzovData (CarsTypeKuzovID, LangID, Name) VALUES (7, 4, 'Мікроавтобус');
