create table Hotel
(
    HotelID   int auto_increment
        primary key,
    Latitude  double      null,
    Longitude double      null,
    Name      varchar(50) null
)
    collate = utf8_bin
    avg_row_length = 5461;

INSERT INTO gbua_cgdb.Hotel (HotelID, Latitude, Longitude, Name) VALUES (1, null, null, '★★★');
INSERT INTO gbua_cgdb.Hotel (HotelID, Latitude, Longitude, Name) VALUES (2, null, null, '★★★★');
INSERT INTO gbua_cgdb.Hotel (HotelID, Latitude, Longitude, Name) VALUES (3, null, null, '★★★★★');
