create table CarsCityData
(
    CarsCityID int  not null,
    LangID     int  not null,
    Name       text null,
    primary key (CarsCityID, LangID),
    constraint FK_CarsCityData_CarsCityID
        foreign key (CarsCityID) references CarsCity (CarsCityID),
    constraint FK_CarsCityData_LangID2
        foreign key (LangID) references LangList (LangID)
)
    collate = utf8_general_ci
    avg_row_length = 4096;

INSERT INTO gbua_cgdb.CarsCityData (CarsCityID, LangID, Name) VALUES (1, 1, 'Тбилиси');
INSERT INTO gbua_cgdb.CarsCityData (CarsCityID, LangID, Name) VALUES (1, 2, 'Tbilisi');
INSERT INTO gbua_cgdb.CarsCityData (CarsCityID, LangID, Name) VALUES (1, 3, 'Тбилиси');
INSERT INTO gbua_cgdb.CarsCityData (CarsCityID, LangID, Name) VALUES (1, 4, 'Тбілісі');
INSERT INTO gbua_cgdb.CarsCityData (CarsCityID, LangID, Name) VALUES (2, 1, 'Батуми');
INSERT INTO gbua_cgdb.CarsCityData (CarsCityID, LangID, Name) VALUES (2, 2, 'Batumi');
INSERT INTO gbua_cgdb.CarsCityData (CarsCityID, LangID, Name) VALUES (2, 3, 'Батуми');
INSERT INTO gbua_cgdb.CarsCityData (CarsCityID, LangID, Name) VALUES (2, 4, 'Батумі');
INSERT INTO gbua_cgdb.CarsCityData (CarsCityID, LangID, Name) VALUES (3, 1, 'Кутаиси');
INSERT INTO gbua_cgdb.CarsCityData (CarsCityID, LangID, Name) VALUES (3, 2, 'Kutaisi');
INSERT INTO gbua_cgdb.CarsCityData (CarsCityID, LangID, Name) VALUES (3, 4, 'Кутаiсi');
