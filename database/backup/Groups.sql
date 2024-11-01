create table `Groups`
(
    GroupID int auto_increment
        primary key,
    Name    varchar(50) null,
    constraint UK_Groups_GroupID
        unique (GroupID)
)
    collate = cp1251_general_ci
    avg_row_length = 8192;

INSERT INTO gbua_cgdb.`Groups` (GroupID, Name) VALUES (1, 'Пользователи');
INSERT INTO gbua_cgdb.`Groups` (GroupID, Name) VALUES (2, 'Операторы');
INSERT INTO gbua_cgdb.`Groups` (GroupID, Name) VALUES (3, 'Администраторы');
INSERT INTO gbua_cgdb.`Groups` (GroupID, Name) VALUES (4, 'Хозяин машины');
