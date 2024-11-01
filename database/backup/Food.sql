create table Food
(
    ID          int                                    not null,
    Name        varchar(50) collate cp1251_general_ci  null,
    Description varchar(255) collate cp1251_general_ci null,
    Image       varchar(255) collate cp1251_general_ci null,
    Images      varchar(255) collate cp1251_general_ci null,
    Price       int                                    null,
    Category    varchar(255)                           null,
    FoodID      varchar(255)                           null,
    LangID      varchar(255)                           null
)
    collate = utf8_general_ci;

INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Бажэ', 'Баженигоз, чеснок, специи', 'Сосиски', null, 5, '1', '1', '1');
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Кола', 'Coca cola 0.5', '/images/restaurants/zemeli/4df3aa35a1f023a83c78d1101ed8f38f.jpg', null, 3, '5', '2', '1');
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Харчо', null, '/images/restaurants/zemeli/harcho.jpg', null, 5, '1', '3', '1');
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Что-то', null, '/images/restaurants/zemeli/chtoto.jpg', null, 5, '2', '4', '1');
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Шаурма (Свиная)', 'Свинина (стандартное мясо), майонез, кетчуп, перец, петрушка', '/images/restaurants/zemeli/шаурма.png', null, 12, '2', '5', '1');
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Шаурма (Куриная)', 'Курица (стандартное мясо), майонез, кетчуп, перец, петрушка', '/images/restaurants/zemeli/шаурма.png', null, 10, '2', '6', '1');
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Шаурма (Телятина)', 'Телятина (стандартное мясо), майонез, кетчуп, перец, петрушка', '/images/restaurants/zemeli/шаурма.png', null, 15, '2', '7', '1');
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Свекла с орехами', 'Свекла с грецкими орехами', '/images/restaurants/zemeli/свеклаорех.jpg', null, 6, '4', '8', '1');
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Котлеты куриные с гарниром пюре', 'Куриный фарш, пюре, огурец, помидор', '/images/restaurants/zemeli/bazhe.jpg', null, 11, null, null, null);
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Котлеты куриные с гарниром Гречка', 'Куриный фарш, Гречка, огурец, помидор', '/images/restaurants/zemeli/bazhe.jpg', null, 11, null, null, null);
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Котлеты куриные с гарниром Фри', 'Котлеты куриные с гарниром Фри', '/images/restaurants/zemeli/bazhe.jpg', null, 11, null, null, null);
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Котлеты смешенные с гарниром  пюре', 'Котлета, пюре, огурец, помидор', '/images/restaurants/zemeli/bazhe.jpg', null, 12, null, null, null);
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Котлеты смешенные с гарниром Фри', 'Котлета,Фри, огурец, помидор', '/images/restaurants/zemeli/bazhe.jpg', null, 12, null, null, null);
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Котлеты смешенные с гарниром Гречка', 'Котлета,Гречка, огурец, помидор', '/images/restaurants/zemeli/bazhe.jpg', null, 12, null, null, null);
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Картофельное пюре ', 'Картофельное пюре ', '/images/restaurants/zemeli/bazhe.jpg', null, 8, null, null, null);
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Гречка', 'Гречка', '/images/restaurants/zemeli/bazhe.jpg', null, 7, null, null, null);
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Сардельки с гарниром пюре', 'Вареные сардели, картофельное пюре, огурец, помидор', '/images/restaurants/zemeli/bazhe.jpg', null, 14, null, null, null);
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Сардельки с гарниром Фри', 'Вареные сардели, Фри, огурец, помидор', '/images/restaurants/zemeli/bazhe.jpg', null, 14, null, null, null);
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Сардельки с гарниром Гречка', 'Вареные сардели, Гречка, огурец, помидор', '/images/restaurants/zemeli/bazhe.jpg', null, 14, null, null, null);
INSERT INTO gbua_cgdb.Food (ID, Name, Description, Image, Images, Price, Category, FoodID, LangID) VALUES (1, 'Сосиски с гарниром Гречка', 'Вареные Сосиски, Гречка, огурец, помидор', '/images/restaurants/zemeli/bazhe.jpg', null, 13, null, null, null);
