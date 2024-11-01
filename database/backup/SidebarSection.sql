create table SidebarSection
(
    SectionID int auto_increment
        primary key,
    RowOrder  int null
)
    collate = cp1251_general_ci
    avg_row_length = 5461;

INSERT INTO gbua_cgdb.SidebarSection (SectionID, RowOrder) VALUES (1, 1);
INSERT INTO gbua_cgdb.SidebarSection (SectionID, RowOrder) VALUES (2, 2);
INSERT INTO gbua_cgdb.SidebarSection (SectionID, RowOrder) VALUES (3, 3);
INSERT INTO gbua_cgdb.SidebarSection (SectionID, RowOrder) VALUES (4, 4);
