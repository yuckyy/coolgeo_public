create table SidebarLinkAccess
(
    LinkID int not null,
    RoleID int not null,
    primary key (LinkID, RoleID),
    constraint FK_SidebarLinkAccess_LinkID
        foreign key (LinkID) references SidebarSectionOptionLink (LinkID),
    constraint FK_SidebarLinkAccess_RoleID
        foreign key (RoleID) references Roles (RoleID)
)
    collate = cp1251_general_ci
    avg_row_length = 1092;

INSERT INTO gbua_cgdb.SidebarLinkAccess (LinkID, RoleID) VALUES (1, 1);
INSERT INTO gbua_cgdb.SidebarLinkAccess (LinkID, RoleID) VALUES (2, 2);
INSERT INTO gbua_cgdb.SidebarLinkAccess (LinkID, RoleID) VALUES (3, 3);
INSERT INTO gbua_cgdb.SidebarLinkAccess (LinkID, RoleID) VALUES (4, 4);
INSERT INTO gbua_cgdb.SidebarLinkAccess (LinkID, RoleID) VALUES (5, 5);
INSERT INTO gbua_cgdb.SidebarLinkAccess (LinkID, RoleID) VALUES (6, 6);
INSERT INTO gbua_cgdb.SidebarLinkAccess (LinkID, RoleID) VALUES (7, 7);
INSERT INTO gbua_cgdb.SidebarLinkAccess (LinkID, RoleID) VALUES (8, 8);
INSERT INTO gbua_cgdb.SidebarLinkAccess (LinkID, RoleID) VALUES (9, 9);
INSERT INTO gbua_cgdb.SidebarLinkAccess (LinkID, RoleID) VALUES (10, 10);
INSERT INTO gbua_cgdb.SidebarLinkAccess (LinkID, RoleID) VALUES (11, 11);
INSERT INTO gbua_cgdb.SidebarLinkAccess (LinkID, RoleID) VALUES (12, 12);
INSERT INTO gbua_cgdb.SidebarLinkAccess (LinkID, RoleID) VALUES (15, 15);
INSERT INTO gbua_cgdb.SidebarLinkAccess (LinkID, RoleID) VALUES (16, 16);
INSERT INTO gbua_cgdb.SidebarLinkAccess (LinkID, RoleID) VALUES (18, 18);
INSERT INTO gbua_cgdb.SidebarLinkAccess (LinkID, RoleID) VALUES (19, 19);
