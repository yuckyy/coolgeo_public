UPDATE gbua_cgdb.UserReviewStatus SET Name = 'Новый', Active = null WHERE UserReviewStatusID = 1;
UPDATE gbua_cgdb.UserReviewStatus SET Name = 'Утвержден', Active = true WHERE UserReviewStatusID = 2;
UPDATE gbua_cgdb.UserReviewStatus SET Name = 'Отклонен', Active = null WHERE UserReviewStatusID = 3;
