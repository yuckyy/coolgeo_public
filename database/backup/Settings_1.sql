UPDATE gbua_cgdb.Settings SET `Key` = 'default_language', Value = '1' WHERE ID = 1;
UPDATE gbua_cgdb.Settings SET `Key` = 'admin_email', Value = 'sqfatman@gmail.com' WHERE ID = 2;
UPDATE gbua_cgdb.Settings SET `Key` = 'Operator_BookingList_RowsOnPage', Value = '20' WHERE ID = 3;
UPDATE gbua_cgdb.Settings SET `Key` = 'Operator_CallBackList_RowsOnPage', Value = '40' WHERE ID = 5;
UPDATE gbua_cgdb.Settings SET `Key` = 'unlogined_booking_details_content', Value = '<h1 class="text-center"> {Спасибо за Вашу заявку} </h1>
<h2 class="text-center"> {Вы забронировали} {BookingID}</h2>
<h2 class="text-center"> {Мы обязательно с вами свяжемся в ближайшее время} </h2>

' WHERE ID = 6;
