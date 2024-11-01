create table Reviews
(
    ReviewsId   int auto_increment
        primary key,
    NameUser    varchar(50) collate utf8_general_ci  null,
    CountryCity varchar(255) collate utf8_general_ci null,
    Email       varchar(255) collate utf8_general_ci null,
    Stars       int                                  null,
    TitleText   varchar(255) collate utf8_general_ci null,
    Text        varchar(255) collate utf8_general_ci null,
    ReviewsDate datetime                             null,
    IsPrint     int                                  null
)
    collate = cp1251_general_ci
    avg_row_length = 579;

INSERT INTO gbua_cgdb.Reviews (ReviewsId, NameUser, CountryCity, Email, Stars, TitleText, Text, ReviewsDate, IsPrint) VALUES (1, 'Ярослав', 'Україна', 'yaroslavkondratenko54@gmail.com', 5, 'Дуже круто!', 'Добре відпочили, гарні люди)', '2023-07-23 14:23:19', 1);
INSERT INTO gbua_cgdb.Reviews (ReviewsId, NameUser, CountryCity, Email, Stars, TitleText, Text, ReviewsDate, IsPrint) VALUES (2, 'Елена и Евгений', 'Россия, Ростов-на-Дону', 'with_elena@mail.ru', 5, '', 'Спасибо Вам! Вы сделали нам прекрасную свадьбу! Мы запомним этот день на всю жизнь! Будем приезжать теперь к Вам каждый год и отмечать годовщину у Вас!', '2023-07-23 14:31:20', 1);
INSERT INTO gbua_cgdb.Reviews (ReviewsId, NameUser, CountryCity, Email, Stars, TitleText, Text, ReviewsDate, IsPrint) VALUES (3, 'test', 'test', 'yaroslavkondratenko54@gmail.com', 5, 'test', 'test', '2023-11-07 12:24:28', null);
INSERT INTO gbua_cgdb.Reviews (ReviewsId, NameUser, CountryCity, Email, Stars, TitleText, Text, ReviewsDate, IsPrint) VALUES (4, 'admin', 'test', 'yaroslavkondratenko54@gmail.com', 4, 'test', 'test', '2023-11-07 14:59:26', null);
INSERT INTO gbua_cgdb.Reviews (ReviewsId, NameUser, CountryCity, Email, Stars, TitleText, Text, ReviewsDate, IsPrint) VALUES (5, 'admin', 'test', 'yaroslavkondratenko54@gmail.com', 4, 'test', 'test', '2023-11-07 15:12:35', null);
INSERT INTO gbua_cgdb.Reviews (ReviewsId, NameUser, CountryCity, Email, Stars, TitleText, Text, ReviewsDate, IsPrint) VALUES (6, 'RwpxculbnF', '', 'callvisvetlana@list.ru', 0, 'Я не буду ждать', 'Предлагаю отличный метод, подойдет и Вам 000*** https://forms.gle/tbiFaFmK3TdQDXRJ6?utm_source=fC7SmB5KNBF&utm_medium=pUybqfg6xD0 coolgeorgia.com', '2023-11-08 03:58:08', null);
INSERT INTO gbua_cgdb.Reviews (ReviewsId, NameUser, CountryCity, Email, Stars, TitleText, Text, ReviewsDate, IsPrint) VALUES (7, 'PhilSoync', 'France', 'septon36giannixi@gmail.com', 0, 'Hallo  i am write about     price', 'Xin chào, tôi muốn biết giá của bạn.', '2023-11-12 13:05:22', null);
