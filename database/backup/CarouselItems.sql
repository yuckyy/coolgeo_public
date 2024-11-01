create table CarouselItems
(
    ItemID     int auto_increment,
    CarouselID int not null,
    RowOrder   int null,
    primary key (ItemID, CarouselID),
    constraint FK_CarouselItems_CarouselID
        foreign key (CarouselID) references Carousel (CarouselID)
)
    collate = utf8_general_ci
    avg_row_length = 8192;

INSERT INTO gbua_cgdb.CarouselItems (ItemID, CarouselID, RowOrder) VALUES (1, 1, 1);
INSERT INTO gbua_cgdb.CarouselItems (ItemID, CarouselID, RowOrder) VALUES (2, 1, 2);
INSERT INTO gbua_cgdb.CarouselItems (ItemID, CarouselID, RowOrder) VALUES (3, 1, 3);
