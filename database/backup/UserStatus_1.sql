UPDATE gbua_cgdb.UserStatus SET Name = 'Действующий', Active = true WHERE UserStatusID = 1;
UPDATE gbua_cgdb.UserStatus SET Name = 'Заблокированный', Active = null WHERE UserStatusID = 2;
