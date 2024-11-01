UPDATE gbua_cgdb.UserStatusData SET Name = 'Активный' WHERE UserStatusID = 1 AND LangID = 1;
UPDATE gbua_cgdb.UserStatusData SET Name = 'Active' WHERE UserStatusID = 1 AND LangID = 2;
UPDATE gbua_cgdb.UserStatusData SET Name = 'Заблокирован' WHERE UserStatusID = 2 AND LangID = 1;
UPDATE gbua_cgdb.UserStatusData SET Name = 'Blocked' WHERE UserStatusID = 2 AND LangID = 2;
