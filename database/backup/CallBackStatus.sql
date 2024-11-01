create table CallBackStatus
(
    CallBackStatusID int auto_increment
        primary key,
    Name             varchar(50) null,
    Active           bit         null
)
    collate = cp1251_general_ci
    avg_row_length = 5461;

INSERT INTO gbua_cgdb.CallBackStatus (CallBackStatusID, Name, Active) VALUES (1, '{Новый}', true);
INSERT INTO gbua_cgdb.CallBackStatus (CallBackStatusID, Name, Active) VALUES (2, '{В работе}', true);
INSERT INTO gbua_cgdb.CallBackStatus (CallBackStatusID, Name, Active) VALUES (3, '{Отработан}', false);
