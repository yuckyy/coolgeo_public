create table CabinetPage
(
    CabinetPageID int auto_increment
        primary key,
    Name          varchar(50)      null,
    URI           varchar(255)     null,
    Access        bit default b'0' not null
)
    collate = cp1251_general_ci
    avg_row_length = 910;

INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (1, 'Admin: Pagelist', '/cabinet/page/admin/pagelist.php', true);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (2, 'Admin: Generator', '/cabinet/page/admin/generator.php', true);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (3, 'Cabinet: LogIn', '/cabinet/page/login.php', false);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (4, 'Cabinet: Order', '/cabinet/page/order.php', true);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (5, 'Cabinet: Create order', '/cabinet/page/create_order.php', false);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (6, 'Cabinet: Registration', '/cabinet/page/registration.php', false);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (7, 'Cabinet: Current bookings', '/cabinet/page/current_bookings.php', true);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (8, 'Cabinet: Booking details', '/cabinet/page/booking_details.php', true);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (9, 'Cabinet: Archive bookings', '/cabinet/page/archive_bookings.php', true);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (10, 'Operator: New bokings', '/cabinet/page/operator/booking_new_list.php', true);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (11, 'Operator: Bookings list', '/cabinet/page/operator/booking_list.php', true);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (12, 'Operator: Booking detail', '/cabinet/page/operator/booking_details.php', true);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (13, 'Operator: Callback list', '/cabinet/page/operator/callback_list.php', true);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (14, 'Cabinrt: Unligined booking details', '/cabinet/page/unlogined_booking_details.php', false);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (15, 'RentCar: CarsList', '/cabinet/page/rentcar/list_cars.php', true);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (16, 'RentCar: New bokings', '/cabinet/page/rentcar/booking_new_list.php', true);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (17, 'RentCar: Bookings list', '/cabinet/page/rentcar/booking_list.php', true);
INSERT INTO gbua_cgdb.CabinetPage (CabinetPageID, Name, URI, Access) VALUES (18, 'RentCar: Booking detail', '/cabinet/page/rentcar/booking_details.php', true);
