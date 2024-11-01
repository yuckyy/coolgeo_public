create table CardPriceByWedding
(
    PriceID    int auto_increment
        primary key,
    CurrencyID int            null,
    CardID     int            null,
    HotelID    int            null,
    GuestValue decimal(12, 2) null,
    OwnerValue decimal(12, 2) null,
    constraint FK_CardPriceByWedding_CardID
        foreign key (CardID) references Card (CardID),
    constraint FK_CardPriceByWedding_CurrencyID
        foreign key (CurrencyID) references Currency (CurrencyID),
    constraint FK_CardPriceByWedding_HotelID
        foreign key (HotelID) references Hotel (HotelID)
)
    collate = utf8_general_ci
    avg_row_length = 1638;

INSERT INTO gbua_cgdb.CardPriceByWedding (PriceID, CurrencyID, CardID, HotelID, GuestValue, OwnerValue) VALUES (1, 1, 30, 1, 330.00, 1900.00);
INSERT INTO gbua_cgdb.CardPriceByWedding (PriceID, CurrencyID, CardID, HotelID, GuestValue, OwnerValue) VALUES (2, 1, 30, 2, 410.00, 2250.00);
INSERT INTO gbua_cgdb.CardPriceByWedding (PriceID, CurrencyID, CardID, HotelID, GuestValue, OwnerValue) VALUES (3, 1, 30, 3, 505.00, 2650.00);
INSERT INTO gbua_cgdb.CardPriceByWedding (PriceID, CurrencyID, CardID, HotelID, GuestValue, OwnerValue) VALUES (4, 1, 31, 1, 0.00, 7500.00);
INSERT INTO gbua_cgdb.CardPriceByWedding (PriceID, CurrencyID, CardID, HotelID, GuestValue, OwnerValue) VALUES (6, 1, 32, 1, 330.00, 1900.00);
INSERT INTO gbua_cgdb.CardPriceByWedding (PriceID, CurrencyID, CardID, HotelID, GuestValue, OwnerValue) VALUES (7, 1, 32, 2, 410.00, 2250.00);
INSERT INTO gbua_cgdb.CardPriceByWedding (PriceID, CurrencyID, CardID, HotelID, GuestValue, OwnerValue) VALUES (8, 1, 32, 3, 505.00, 2650.00);
INSERT INTO gbua_cgdb.CardPriceByWedding (PriceID, CurrencyID, CardID, HotelID, GuestValue, OwnerValue) VALUES (9, 1, 33, 1, 330.00, 1650.00);
INSERT INTO gbua_cgdb.CardPriceByWedding (PriceID, CurrencyID, CardID, HotelID, GuestValue, OwnerValue) VALUES (10, 1, 33, 2, 410.00, 1900.00);
INSERT INTO gbua_cgdb.CardPriceByWedding (PriceID, CurrencyID, CardID, HotelID, GuestValue, OwnerValue) VALUES (11, 1, 33, 3, 505.00, 2450.00);
