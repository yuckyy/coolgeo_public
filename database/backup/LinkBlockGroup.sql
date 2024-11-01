create table LinkBlockGroup
(
    LinkBlockGroupID int auto_increment
        primary key,
    LinkBlockID      int null,
    RowOrder         int null,
    constraint FK_LinkBlockGroup_LinkBlockID
        foreign key (LinkBlockID) references LinkBlock (LinkBlockID)
)
    collate = utf8_general_ci
    avg_row_length = 2048;

INSERT INTO gbua_cgdb.LinkBlockGroup (LinkBlockGroupID, LinkBlockID, RowOrder) VALUES (1, 1, 1);
INSERT INTO gbua_cgdb.LinkBlockGroup (LinkBlockGroupID, LinkBlockID, RowOrder) VALUES (2, 1, 2);
INSERT INTO gbua_cgdb.LinkBlockGroup (LinkBlockGroupID, LinkBlockID, RowOrder) VALUES (3, 1, 3);
INSERT INTO gbua_cgdb.LinkBlockGroup (LinkBlockGroupID, LinkBlockID, RowOrder) VALUES (4, 1, 4);
INSERT INTO gbua_cgdb.LinkBlockGroup (LinkBlockGroupID, LinkBlockID, RowOrder) VALUES (5, 2, 1);
INSERT INTO gbua_cgdb.LinkBlockGroup (LinkBlockGroupID, LinkBlockID, RowOrder) VALUES (6, 2, 2);
INSERT INTO gbua_cgdb.LinkBlockGroup (LinkBlockGroupID, LinkBlockID, RowOrder) VALUES (7, 2, 3);
INSERT INTO gbua_cgdb.LinkBlockGroup (LinkBlockGroupID, LinkBlockID, RowOrder) VALUES (8, 2, 4);
