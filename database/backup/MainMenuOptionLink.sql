create table MainMenuOptionLink
(
    OptionID  int not null,
    LinkID    int not null,
    RowNumber int null,
    primary key (OptionID, LinkID),
    constraint FK_MainMenuOptionLink_LinkID
        foreign key (LinkID) references MainMenuLink (LinkID),
    constraint FK_MainMenuOptionLink_OptionID
        foreign key (OptionID) references MainMenuOption (OptionID)
)
    collate = cp1251_general_ci
    avg_row_length = 1024;

INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (1, 1, 1);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (2, 15, 1);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (3, 2, 3);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (3, 3, 2);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (3, 4, 4);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (3, 5, 1);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (4, 16, 1);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (5, 6, 1);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (5, 7, 2);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (6, 8, 1);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (7, 9, 1);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (8, 10, 1);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (9, 11, 1);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (9, 12, 2);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (9, 14, 3);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (10, 13, 1);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (11, 17, 1);
INSERT INTO gbua_cgdb.MainMenuOptionLink (OptionID, LinkID, RowNumber) VALUES (12, 18, 1);
