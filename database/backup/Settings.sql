create table Settings
(
    ID    int auto_increment
        primary key,
    `Key` text null,
    Value text null
)
    collate = cp1251_general_ci
    avg_row_length = 4096;

INSERT INTO gbua_cgdb.Settings (ID, `Key`, Value) VALUES (1, 'default_language', '1');
INSERT INTO gbua_cgdb.Settings (ID, `Key`, Value) VALUES (2, 'admin_email', 'sqfatman@gmail.com');
INSERT INTO gbua_cgdb.Settings (ID, `Key`, Value) VALUES (3, 'Operator_BookingList_RowsOnPage', '20');
INSERT INTO gbua_cgdb.Settings (ID, `Key`, Value) VALUES (5, 'Operator_CallBackList_RowsOnPage', '40');
INSERT INTO gbua_cgdb.Settings (ID, `Key`, Value) VALUES (6, 'unlogined_booking_details_content', '<h1 class="text-center"> {Спасибо за Вашу заявку} </h1>
<h2 class="text-center"> {Вы забронировали} {BookingID}</h2>
<h2 class="text-center"> {Мы обязательно с вами свяжемся в ближайшее время} </h2>

');
