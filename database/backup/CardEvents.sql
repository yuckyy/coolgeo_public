create table CardEvents
(
    EventId   int auto_increment
        primary key,
    CardID    int  null,
    EventDate date null,
    constraint FK_CardEventsDate_CardID
        foreign key (CardID) references Card (CardID)
)
    collate = utf8_general_ci
    avg_row_length = 1365;

INSERT INTO gbua_cgdb.CardEvents (EventId, CardID, EventDate) VALUES (1, 17, '2019-04-18');
INSERT INTO gbua_cgdb.CardEvents (EventId, CardID, EventDate) VALUES (2, 17, '2019-04-25');
INSERT INTO gbua_cgdb.CardEvents (EventId, CardID, EventDate) VALUES (3, 25, '2019-04-19');
INSERT INTO gbua_cgdb.CardEvents (EventId, CardID, EventDate) VALUES (4, 25, '2019-04-26');
INSERT INTO gbua_cgdb.CardEvents (EventId, CardID, EventDate) VALUES (5, 16, '2019-04-21');
INSERT INTO gbua_cgdb.CardEvents (EventId, CardID, EventDate) VALUES (6, 16, '2019-04-28');
INSERT INTO gbua_cgdb.CardEvents (EventId, CardID, EventDate) VALUES (7, 2, '2019-04-17');
INSERT INTO gbua_cgdb.CardEvents (EventId, CardID, EventDate) VALUES (8, 2, '2019-04-15');
INSERT INTO gbua_cgdb.CardEvents (EventId, CardID, EventDate) VALUES (9, 11, '2019-04-16');
INSERT INTO gbua_cgdb.CardEvents (EventId, CardID, EventDate) VALUES (10, 11, '2019-04-17');
INSERT INTO gbua_cgdb.CardEvents (EventId, CardID, EventDate) VALUES (11, 1, '2019-04-18');
INSERT INTO gbua_cgdb.CardEvents (EventId, CardID, EventDate) VALUES (12, 1, '2019-04-19');
