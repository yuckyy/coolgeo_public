create table CarsOptionsData
(
    CarsID      int  not null,
    LangID      int  not null,
    ImageSrc    text null,
    ImageAlt    text null,
    Title       text null,
    Descryption text null,
    primary key (CarsID, LangID),
    constraint FK_CarsOptionsData_CarsID
        foreign key (CarsID) references Cars (CarsID),
    constraint FK_CarsOptionsData_LangID2
        foreign key (LangID) references LangList (LangID)
)
    collate = utf8_general_ci
    avg_row_length = 2609;

INSERT INTO gbua_cgdb.CarsOptionsData (CarsID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (1, 1, null, null, null, 'тойота описание на русок');
INSERT INTO gbua_cgdb.CarsOptionsData (CarsID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (1, 2, null, null, null, 'описание на англ');
INSERT INTO gbua_cgdb.CarsOptionsData (CarsID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (2, 1, null, null, null, '4raner описание на русском');
INSERT INTO gbua_cgdb.CarsOptionsData (CarsID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (3, 1, null, null, null, 'Джип описание на русском');
