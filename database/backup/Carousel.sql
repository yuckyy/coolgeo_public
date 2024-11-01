create table Carousel
(
    CarouselID int auto_increment
        primary key,
    Name       varchar(50) null
)
    collate = cp1251_general_ci;

INSERT INTO gbua_cgdb.Carousel (CarouselID, Name) VALUES (1, 'Слайдер главной страницы');
