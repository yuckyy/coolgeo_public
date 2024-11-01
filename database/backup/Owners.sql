create table Owners
(
    id             int auto_increment
        primary key,
    name           varchar(50) collate utf8_general_ci  null,
    TelegramToken  varchar(255) collate utf8_general_ci null,
    UserID         int                                  null,
    TelegramChatId varchar(255)                         null,
    constraint FK_Owners_UserID
        foreign key (UserID) references Users (UserID)
)
    collate = cp1251_general_ci
    avg_row_length = 16384;

INSERT INTO gbua_cgdb.Owners (id, name, TelegramToken, UserID, TelegramChatId) VALUES (1, 'bruh', '5117121639:AAE2V84v3umLG7qRAEdf4xuywzyJbGDfhHo', 12, '-641545779');
INSERT INTO gbua_cgdb.Owners (id, name, TelegramToken, UserID, TelegramChatId) VALUES (2, 'bb', '5274338107:AAEzf2ak-SNXg-a4r9RobgMESG7Sq0H-zA4', 17, '-770925612');
INSERT INTO gbua_cgdb.Owners (id, name, TelegramToken, UserID, TelegramChatId) VALUES (3, 'gg', null, 20, null);
