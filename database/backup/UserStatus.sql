create table UserStatus
(
    UserStatusID int auto_increment
        primary key,
    Name         varchar(50) null,
    Active       bit         null
)
    collate = utf8_general_ci
    avg_row_length = 8192;

INSERT INTO gbua_cgdb.UserStatus (UserStatusID, Name, Active) VALUES (1, 'Действующий', true);
INSERT INTO gbua_cgdb.UserStatus (UserStatusID, Name, Active) VALUES (2, 'Заблокированный', null);
