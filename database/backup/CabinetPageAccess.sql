create table CabinetPageAccess
(
    CabinetPageID int not null,
    RoleID        int not null,
    primary key (CabinetPageID, RoleID),
    constraint FK_CabinetPageAccess_CabinetPageID
        foreign key (CabinetPageID) references CabinetPage (CabinetPageID),
    constraint FK_CabinetPageAccess_RoleID
        foreign key (RoleID) references Roles (RoleID)
)
    collate = cp1251_general_ci
    avg_row_length = 1024;

INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (1, 4);
INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (10, 8);
INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (12, 8);
INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (13, 8);
INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (11, 9);
INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (12, 9);
INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (13, 9);
INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (7, 11);
INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (8, 11);
INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (9, 12);
INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (2, 16);
INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (4, 17);
INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (5, 17);
INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (15, 19);
INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (16, 21);
INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (17, 21);
INSERT INTO gbua_cgdb.CabinetPageAccess (CabinetPageID, RoleID) VALUES (18, 21);
