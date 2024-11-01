create table CallBackList
(
    CallBackID       int auto_increment
        primary key,
    Phone            varchar(255) null,
    CardID           int          null,
    LangID           int          null,
    CallBackStatusID int          null,
    Operator         int          null,
    Notes            text         null,
    Created          datetime     null,
    Modefied         datetime     null,
    constraint FK_CallBackList_CallBackStatusID
        foreign key (CallBackStatusID) references CallBackStatus (CallBackStatusID),
    constraint FK_CallBackList_CardID
        foreign key (CardID) references Card (CardID),
    constraint FK_CallBackList_LangID
        foreign key (LangID) references LangList (LangID),
    constraint FK_CallBackList_Operator
        foreign key (Operator) references Users (UserID)
)
    collate = utf8_general_ci
    avg_row_length = 3276;

INSERT INTO gbua_cgdb.CallBackList (CallBackID, Phone, CardID, LangID, CallBackStatusID, Operator, Notes, Created, Modefied) VALUES (59, '89283457733', 25, 1, 3, null, 'написала в Вотсап. Пока не читают

Не отвечают', '2019-04-28 08:47:30', '2019-04-30 16:52:10');
INSERT INTO gbua_cgdb.CallBackList (CallBackID, Phone, CardID, LangID, CallBackStatusID, Operator, Notes, Created, Modefied) VALUES (60, '89601131715', 2, 1, 3, null, 'Написала сообщение на ВотсАП. Молчат пока/

Не отвечают', '2019-04-28 12:10:25', '2019-04-30 16:51:56');
INSERT INTO gbua_cgdb.CallBackList (CallBackID, Phone, CardID, LangID, CallBackStatusID, Operator, Notes, Created, Modefied) VALUES (65, '+790992515005', 16, 1, 3, null, 'пропустили((', '2019-05-04 20:57:19', '2019-10-07 20:46:23');
INSERT INTO gbua_cgdb.CallBackList (CallBackID, Phone, CardID, LangID, CallBackStatusID, Operator, Notes, Created, Modefied) VALUES (66, '739900503', 25, 2, 3, null, 'пропустили((', '2019-05-18 06:22:19', '2019-10-07 20:46:04');
INSERT INTO gbua_cgdb.CallBackList (CallBackID, Phone, CardID, LangID, CallBackStatusID, Operator, Notes, Created, Modefied) VALUES (67, '', 25, 1, 3, null, 'пропустили((', '2019-05-20 20:36:46', '2019-10-07 20:46:10');
