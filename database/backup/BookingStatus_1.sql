UPDATE gbua_cgdb.BookingStatus SET Name = 'Новый', Active = true, RowNumber = 1 WHERE BookingStatusID = 1;
UPDATE gbua_cgdb.BookingStatus SET Name = 'Согласование', Active = true, RowNumber = 2 WHERE BookingStatusID = 2;
UPDATE gbua_cgdb.BookingStatus SET Name = 'Согласован', Active = true, RowNumber = 3 WHERE BookingStatusID = 3;
UPDATE gbua_cgdb.BookingStatus SET Name = 'Готов', Active = true, RowNumber = 4 WHERE BookingStatusID = 4;
UPDATE gbua_cgdb.BookingStatus SET Name = 'Тур начат', Active = true, RowNumber = 5 WHERE BookingStatusID = 5;
UPDATE gbua_cgdb.BookingStatus SET Name = 'Тур завершен', Active = false, RowNumber = 6 WHERE BookingStatusID = 6;
UPDATE gbua_cgdb.BookingStatus SET Name = 'Отказ', Active = false, RowNumber = 7 WHERE BookingStatusID = 7;
