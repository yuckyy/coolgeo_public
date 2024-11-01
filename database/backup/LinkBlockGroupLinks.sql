create table LinkBlockGroupLinks
(
    LinkId           int auto_increment
        primary key,
    LinkBlockGroupID int null,
    RowOrder         int null,
    constraint FK_LinkBlockGroupLinks_LinkBlockGroupID
        foreign key (LinkBlockGroupID) references LinkBlockGroup (LinkBlockGroupID)
)
    collate = utf8_general_ci
    avg_row_length = 682;

INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (1, 1, 1);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (2, 1, 2);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (3, 1, 3);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (4, 2, 1);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (5, 2, 2);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (6, 2, 3);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (7, 3, 1);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (8, 3, 2);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (9, 3, 3);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (10, 4, 1);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (11, 4, 2);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (12, 4, 3);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (13, 5, 1);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (14, 5, 2);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (15, 5, 3);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (16, 6, 1);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (17, 6, 2);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (18, 6, 3);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (19, 7, 1);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (20, 7, 2);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (21, 7, 3);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (22, 8, 1);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (23, 8, 2);
INSERT INTO gbua_cgdb.LinkBlockGroupLinks (LinkId, LinkBlockGroupID, RowOrder) VALUES (24, 8, 3);
