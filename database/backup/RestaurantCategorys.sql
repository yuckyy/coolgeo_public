create table RestaurantCategorys
(
    ID           int          null,
    CategoryName varchar(255) null,
    Image        varchar(255) null,
    Description  varchar(255) null,
    Category     varchar(255) null
)
    collate = cp1251_general_ci;

INSERT INTO gbua_cgdb.RestaurantCategorys (ID, CategoryName, Image, Description, Category) VALUES (1, 'Супы', '/images/restaurants/zemeli/harcho.jpg', null, '1');
INSERT INTO gbua_cgdb.RestaurantCategorys (ID, CategoryName, Image, Description, Category) VALUES (1, 'Основные блюда', '/images/restaurants/zemeli/chtoto.jpg', null, '2');
INSERT INTO gbua_cgdb.RestaurantCategorys (ID, CategoryName, Image, Description, Category) VALUES (1, 'Десерты', '/images/restaurants/zemeli/desert.jpg', null, '3');
INSERT INTO gbua_cgdb.RestaurantCategorys (ID, CategoryName, Image, Description, Category) VALUES (1, 'Закуски', '/images/restaurants/zemeli/свеклаорех.jpg', null, '4');
INSERT INTO gbua_cgdb.RestaurantCategorys (ID, CategoryName, Image, Description, Category) VALUES (1, 'Напитки', '/images/restaurants/zemeli/napitkigas.jpg', null, '5');
INSERT INTO gbua_cgdb.RestaurantCategorys (ID, CategoryName, Image, Description, Category) VALUES (1, 'Алкоголь', '/images/restaurants/zemeli/вино.jpg', null, '6');
