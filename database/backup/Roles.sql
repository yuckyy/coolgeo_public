create table Roles
(
    RoleID int auto_increment
        primary key,
    Name   varchar(50) null
)
    collate = cp1251_general_ci
    avg_row_length = 819;

INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (1, '(Администрирование) Управление доступом: Группы');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (2, '(Администрирование) Управление доступом: Роли');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (3, '(Администрирование) Управление доступом: Пользоват');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (4, '(Администрирование) Контент: Страницы сайта');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (5, '(Администрирование) Контент: Альбомы');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (6, '(Администрирование) Контент: Карточки');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (7, '(Администрирование): Настройки сайта');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (8, '(Оператор) Бронирования: Новые ');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (9, '(Оператор) Бронирования: В работе');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (10, '(Оператор) Бронирования: Управление отзывами');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (11, '(Пользователь): Текущие бронирования');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (12, '(Пользователь): Архив бронирований');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (13, '(Пользователь): Отзывы');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (14, '(Пользователь): Профиль');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (15, '(Пользователь): Выйти');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (16, '(Администрирование): Генератор сайта');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (17, '(Пользователь): Заказать услугу');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (18, '(Оператор) Управление обратными звонками');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (19, '(Хозяин машины) Список всех машин ');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (20, '(Хозяин машины) Бронирования: Новые ');
INSERT INTO gbua_cgdb.Roles (RoleID, Name) VALUES (21, '(Хозяин машины) Бронирования: В работе ');
