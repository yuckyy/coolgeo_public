create table GroupRoles
(
    GroupID int not null,
    RoleID  int not null,
    primary key (GroupID, RoleID),
    constraint FK_GroupRoles_GroupID
        foreign key (GroupID) references `Groups` (GroupID),
    constraint FK_GroupRoles_RoleID2
        foreign key (RoleID) references Roles (RoleID)
)
    collate = cp1251_general_ci
    avg_row_length = 1092;

INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (3, 1);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (3, 2);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (3, 3);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (3, 4);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (3, 5);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (3, 6);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (3, 7);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (2, 8);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (2, 9);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (2, 10);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (1, 11);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (1, 12);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (1, 13);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (1, 14);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (1, 15);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (3, 16);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (1, 17);
INSERT INTO gbua_cgdb.GroupRoles (GroupID, RoleID) VALUES (2, 18);
