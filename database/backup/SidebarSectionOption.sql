create table SidebarSectionOption
(
    OptionID  int auto_increment
        primary key,
    SectionID int null,
    RowOrder  int null,
    constraint FK_SidebarSectionOption_SectionID
        foreign key (SectionID) references SidebarSection (SectionID)
)
    collate = cp1251_general_ci
    avg_row_length = 1092;

INSERT INTO gbua_cgdb.SidebarSectionOption (OptionID, SectionID, RowOrder) VALUES (1, 1, 1);
INSERT INTO gbua_cgdb.SidebarSectionOption (OptionID, SectionID, RowOrder) VALUES (2, 1, 2);
INSERT INTO gbua_cgdb.SidebarSectionOption (OptionID, SectionID, RowOrder) VALUES (3, 1, 3);
INSERT INTO gbua_cgdb.SidebarSectionOption (OptionID, SectionID, RowOrder) VALUES (4, 2, 2);
INSERT INTO gbua_cgdb.SidebarSectionOption (OptionID, SectionID, RowOrder) VALUES (5, 2, 3);
INSERT INTO gbua_cgdb.SidebarSectionOption (OptionID, SectionID, RowOrder) VALUES (6, 3, 2);
INSERT INTO gbua_cgdb.SidebarSectionOption (OptionID, SectionID, RowOrder) VALUES (7, 3, 3);
INSERT INTO gbua_cgdb.SidebarSectionOption (OptionID, SectionID, RowOrder) VALUES (8, 3, 4);
INSERT INTO gbua_cgdb.SidebarSectionOption (OptionID, SectionID, RowOrder) VALUES (9, 3, 5);
INSERT INTO gbua_cgdb.SidebarSectionOption (OptionID, SectionID, RowOrder) VALUES (10, 3, 6);
INSERT INTO gbua_cgdb.SidebarSectionOption (OptionID, SectionID, RowOrder) VALUES (12, 2, 1);
INSERT INTO gbua_cgdb.SidebarSectionOption (OptionID, SectionID, RowOrder) VALUES (15, 4, 1);
INSERT INTO gbua_cgdb.SidebarSectionOption (OptionID, SectionID, RowOrder) VALUES (16, 4, 2);
INSERT INTO gbua_cgdb.SidebarSectionOption (OptionID, SectionID, RowOrder) VALUES (17, 4, 3);
INSERT INTO gbua_cgdb.SidebarSectionOption (OptionID, SectionID, RowOrder) VALUES (18, 4, 4);
