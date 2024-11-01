create table UserStatusData
(
    UserStatusID int         not null,
    LangID       int         not null,
    Name         varchar(50) null,
    primary key (UserStatusID, LangID),
    constraint FK_UserStatusData_LangID
        foreign key (LangID) references LangList (LangID),
    constraint FK_UserStatusData_UserStatusID
        foreign key (UserStatusID) references UserStatus (UserStatusID)
)
    collate = utf8_general_ci
    avg_row_length = 4096;

INSERT INTO gbua_cgdb.UserStatusData (UserStatusID, LangID, Name) VALUES (1, 1, 'Активный');
INSERT INTO gbua_cgdb.UserStatusData (UserStatusID, LangID, Name) VALUES (1, 2, 'Active');
INSERT INTO gbua_cgdb.UserStatusData (UserStatusID, LangID, Name) VALUES (2, 1, 'Заблокирован');
INSERT INTO gbua_cgdb.UserStatusData (UserStatusID, LangID, Name) VALUES (2, 2, 'Blocked');
