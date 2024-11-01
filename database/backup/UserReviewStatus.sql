create table UserReviewStatus
(
    UserReviewStatusID int auto_increment
        primary key,
    Name               varchar(50) null,
    Active             bit         null
)
    collate = utf8_general_ci
    avg_row_length = 5461;

INSERT INTO gbua_cgdb.UserReviewStatus (UserReviewStatusID, Name, Active) VALUES (1, 'Новый', null);
INSERT INTO gbua_cgdb.UserReviewStatus (UserReviewStatusID, Name, Active) VALUES (2, 'Утвержден', true);
INSERT INTO gbua_cgdb.UserReviewStatus (UserReviewStatusID, Name, Active) VALUES (3, 'Отклонен', null);
