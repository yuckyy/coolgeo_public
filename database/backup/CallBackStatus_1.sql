UPDATE gbua_cgdb.CallBackStatus SET Name = '{Новый}', Active = true WHERE CallBackStatusID = 1;
UPDATE gbua_cgdb.CallBackStatus SET Name = '{В работе}', Active = true WHERE CallBackStatusID = 2;
UPDATE gbua_cgdb.CallBackStatus SET Name = '{Отработан}', Active = false WHERE CallBackStatusID = 3;
