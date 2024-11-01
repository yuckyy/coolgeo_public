create table SidebarSectionData
(
    SectionID int  not null,
    LangID    int  not null,
    Name      text null,
    primary key (SectionID, LangID),
    constraint FK_SidebarSectionData_LangID
        foreign key (LangID) references LangList (LangID),
    constraint FK_SidebarSectionData_SectionID
        foreign key (SectionID) references SidebarSection (SectionID)
)
    collate = cp1251_general_ci
    avg_row_length = 2048;

INSERT INTO gbua_cgdb.SidebarSectionData (SectionID, LangID, Name) VALUES (1, 1, 'Администрирование');
INSERT INTO gbua_cgdb.SidebarSectionData (SectionID, LangID, Name) VALUES (1, 2, 'Administration');
INSERT INTO gbua_cgdb.SidebarSectionData (SectionID, LangID, Name) VALUES (1, 4, 'Адміністрування');
INSERT INTO gbua_cgdb.SidebarSectionData (SectionID, LangID, Name) VALUES (2, 1, 'Кабинет оператора');
INSERT INTO gbua_cgdb.SidebarSectionData (SectionID, LangID, Name) VALUES (2, 2, 'Operator\'s Cabinet');
INSERT INTO gbua_cgdb.SidebarSectionData (SectionID, LangID, Name) VALUES (2, 4, 'Кабінет оператора');
INSERT INTO gbua_cgdb.SidebarSectionData (SectionID, LangID, Name) VALUES (3, 1, 'Кабинет пользователя');
INSERT INTO gbua_cgdb.SidebarSectionData (SectionID, LangID, Name) VALUES (3, 2, 'User Cabinet');
INSERT INTO gbua_cgdb.SidebarSectionData (SectionID, LangID, Name) VALUES (3, 4, 'Особистий кабінет');
INSERT INTO gbua_cgdb.SidebarSectionData (SectionID, LangID, Name) VALUES (4, 1, 'Аренда машин');
