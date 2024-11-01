create table LangList
(
    LangID   int  null,
    Lang     text null,
    Name     text null,
    Icon     text null,
    RowOrder int  null,
    Active   bit  null,
    constraint UK_LangList_LangID
        unique (LangID)
)
    collate = utf8_general_ci
    avg_row_length = 4096;

INSERT INTO gbua_cgdb.LangList (LangID, Lang, Name, Icon, RowOrder, Active) VALUES (1, 'ru', 'rus', null, 1, true);
INSERT INTO gbua_cgdb.LangList (LangID, Lang, Name, Icon, RowOrder, Active) VALUES (2, 'en', 'en', null, 2, true);
INSERT INTO gbua_cgdb.LangList (LangID, Lang, Name, Icon, RowOrder, Active) VALUES (3, 'he', 'he', null, 3, null);
INSERT INTO gbua_cgdb.LangList (LangID, Lang, Name, Icon, RowOrder, Active) VALUES (4, 'ua', 'ukr', null, 4, true);
