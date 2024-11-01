create table Restaurants
(
    ID          int                                    not null,
    Name        varchar(50) collate cp1251_general_ci  null,
    Price       int                                    null,
    Image       varchar(255) collate cp1251_general_ci null,
    Images      varchar(255) collate cp1251_general_ci null,
    Description varchar(255) collate cp1251_general_ci null
)
    collate = utf8_general_ci;

INSERT INTO gbua_cgdb.Restaurants (ID, Name, Price, Image, Images, Description) VALUES (1, 'ZEMELI', null, '/images/restaurants/zemeli/test2.jpg', 'test.jpg', null);
