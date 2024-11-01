create table UserReviewStatusData
(
    UserReviewStatusID int                                    not null,
    LangID             int                                    not null,
    Name               varchar(100) collate cp1251_general_ci null,
    primary key (UserReviewStatusID, LangID),
    constraint FK_UserReviewStatusData_LangID
        foreign key (LangID) references LangList (LangID),
    constraint FK_UserReviewStatusData_UserReviewStatusID
        foreign key (UserReviewStatusID) references UserReviewStatus (UserReviewStatusID)
)
    collate = utf8_general_ci
    avg_row_length = 2730;

INSERT INTO gbua_cgdb.UserReviewStatusData (UserReviewStatusID, LangID, Name) VALUES (1, 1, 'Новый');
INSERT INTO gbua_cgdb.UserReviewStatusData (UserReviewStatusID, LangID, Name) VALUES (1, 2, 'New');
INSERT INTO gbua_cgdb.UserReviewStatusData (UserReviewStatusID, LangID, Name) VALUES (2, 1, 'Утвержден');
INSERT INTO gbua_cgdb.UserReviewStatusData (UserReviewStatusID, LangID, Name) VALUES (2, 2, 'Approved');
INSERT INTO gbua_cgdb.UserReviewStatusData (UserReviewStatusID, LangID, Name) VALUES (3, 1, 'Отклонен');
INSERT INTO gbua_cgdb.UserReviewStatusData (UserReviewStatusID, LangID, Name) VALUES (3, 2, 'Rejected');
