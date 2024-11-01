create table CarsClassData
(
    CarsClassID int  not null,
    LangID      int  not null,
    Name        text null,
    primary key (CarsClassID, LangID),
    constraint FK_CarsClassData_CarsClassID
        foreign key (CarsClassID) references CarsClass (CarsClassID),
    constraint FK_CarsClassData_LangID
        foreign key (LangID) references LangList (LangID)
)
    collate = utf8_general_ci
    avg_row_length = 4096;

INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (1, 1, 'Эконом');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (1, 2, 'Econom');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (1, 3, 'Эконом');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (1, 4, 'Економ');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (2, 1, 'Стандарт');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (2, 2, 'Standart');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (2, 3, 'Стандарт');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (2, 4, 'Стандарт');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (3, 1, 'Бизнес');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (3, 2, 'Business');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (3, 3, 'Бизнес');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (3, 4, 'Бізнес');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (4, 1, 'Внедорожник');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (4, 2, 'SUV');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (4, 3, 'Внедорожник');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (4, 4, 'Позашляховик');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (5, 1, 'Минивен');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (5, 2, 'Minivan');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (5, 3, 'Минивен');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (5, 4, 'Мінівен');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (6, 1, 'Спорт купе');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (6, 2, 'Sportcar');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (6, 3, 'Спорт купе');
INSERT INTO gbua_cgdb.CarsClassData (CarsClassID, LangID, Name) VALUES (6, 4, 'Спорт купе');
