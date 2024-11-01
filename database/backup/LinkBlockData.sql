create table LinkBlockData
(
    LinkBlockID    int  not null,
    LangID         int  not null,
    LinkBlockTitle text null,
    primary key (LinkBlockID, LangID),
    constraint FK_LinkBlockData_LangID
        foreign key (LangID) references LangList (LangID),
    constraint FK_LinkBlockData_LinkBlockID
        foreign key (LinkBlockID) references LinkBlock (LinkBlockID)
)
    collate = utf8_general_ci
    avg_row_length = 2048;

INSERT INTO gbua_cgdb.LinkBlockData (LinkBlockID, LangID, LinkBlockTitle) VALUES (1, 1, 'Другие туры');
INSERT INTO gbua_cgdb.LinkBlockData (LinkBlockID, LangID, LinkBlockTitle) VALUES (1, 2, 'Other tours');
INSERT INTO gbua_cgdb.LinkBlockData (LinkBlockID, LangID, LinkBlockTitle) VALUES (1, 3, 'Другие туры');
INSERT INTO gbua_cgdb.LinkBlockData (LinkBlockID, LangID, LinkBlockTitle) VALUES (1, 4, 'Інші тури');
INSERT INTO gbua_cgdb.LinkBlockData (LinkBlockID, LangID, LinkBlockTitle) VALUES (2, 1, 'Другие экскурсии');
INSERT INTO gbua_cgdb.LinkBlockData (LinkBlockID, LangID, LinkBlockTitle) VALUES (2, 2, 'Other excursions');
INSERT INTO gbua_cgdb.LinkBlockData (LinkBlockID, LangID, LinkBlockTitle) VALUES (2, 3, 'Другие экскурсии');
INSERT INTO gbua_cgdb.LinkBlockData (LinkBlockID, LangID, LinkBlockTitle) VALUES (2, 4, 'Інші екскурсії');
