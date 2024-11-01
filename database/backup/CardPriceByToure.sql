create table CardPriceByToure
(
    PriceID    int auto_increment
        primary key,
    CurrencyID int            null,
    CardID     int            null,
    HotelID    int            null,
    Value      decimal(12, 2) null,
    Value2     decimal(12, 2) null,
    Value3     decimal(12, 2) null,
    Value4     decimal(12, 2) null,
    Value5     decimal(12, 2) null,
    Value6     decimal(12, 2) null,
    Value7     decimal(12, 2) null,
    constraint FK_CardPriceByToure_CardID
        foreign key (CardID) references Card (CardID),
    constraint FK_CardPriceByToure_CurrencyID
        foreign key (CurrencyID) references Currency (CurrencyID),
    constraint FK_CardPriceByToure_HotelID
        foreign key (HotelID) references Hotel (HotelID)
)
    collate = cp1251_general_ci
    avg_row_length = 364;

INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (1, 1, 16, 1, 1325.00, 845.00, 745.00, 665.00, 605.00, 575.00, 550.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (2, 1, 16, 2, 1250.00, null, null, null, null, null, 1250.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (3, 1, 16, 3, 1600.00, null, null, null, null, null, 1600.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (4, 1, 17, 1, 310.00, null, null, null, null, null, 310.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (5, 1, 17, 2, 710.00, null, null, null, null, null, 710.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (6, 1, 17, 3, 910.00, null, null, null, null, null, 910.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (7, 1, 18, 1, 380.00, null, null, null, null, null, 380.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (8, 1, 18, 2, 780.00, null, null, null, null, null, 780.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (9, 1, 18, 3, 980.00, null, null, null, null, null, 980.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (10, 1, 19, 1, 310.00, 330.00, 355.00, 390.00, 440.00, 500.00, 685.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (11, 1, 19, 2, 610.00, null, null, null, null, null, 610.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (12, 1, 19, 3, 760.00, null, null, null, null, null, 760.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (13, 1, 20, 1, 460.00, null, null, null, null, null, 460.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (14, 1, 20, 2, 760.00, null, null, null, null, null, 760.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (15, 1, 20, 3, 1060.00, null, null, null, null, null, 1060.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (16, 1, 21, 1, 210.00, null, null, null, null, null, 210.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (17, 1, 21, 2, 480.00, null, null, null, null, null, 480.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (18, 1, 21, 3, 510.00, null, null, null, null, null, 510.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (19, 1, 22, 1, 225.00, null, null, null, null, null, 225.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (20, 1, 22, 2, 425.00, null, null, null, null, null, 425.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (21, 1, 22, 3, 525.00, null, null, null, null, null, 525.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (22, 1, 23, 1, 450.00, null, null, null, null, null, 450.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (23, 1, 23, 2, 850.00, null, null, null, null, null, 850.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (24, 1, 23, 3, 1050.00, null, null, null, null, null, 1050.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (25, 1, 24, 1, 380.00, null, null, null, null, null, 380.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (26, 1, 24, 2, 910.00, null, null, null, null, null, 910.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (27, 1, 24, 3, 980.00, null, null, null, null, null, 980.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (28, 1, 25, 1, 575.00, null, null, null, null, null, 575.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (29, 1, 25, 2, 1175.00, null, null, null, null, null, 1175.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (30, 1, 25, 3, 1475.00, null, null, null, null, null, 1475.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (31, 1, 26, 1, 735.00, null, null, null, null, null, 735.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (32, 1, 26, 2, 1635.00, null, null, null, null, null, 1635.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (33, 1, 26, 3, 2085.00, null, null, null, null, null, 2085.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (34, 1, 27, 1, 510.00, null, null, null, null, null, 510.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (35, 1, 27, 2, 1010.00, null, null, null, null, null, 1010.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (36, 1, 27, 3, 1260.00, null, null, null, null, null, 1260.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (37, 1, 28, 1, 340.00, null, null, null, null, null, 340.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (38, 1, 28, 2, 740.00, null, null, null, null, null, 740.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (39, 1, 28, 3, 940.00, null, null, null, null, null, 940.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (40, 1, 29, 1, 445.00, null, null, null, null, null, 445.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (41, 1, 29, 2, 945.00, null, null, null, null, null, 945.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (42, 1, 29, 3, 1195.00, null, null, null, null, null, 1195.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (43, 1, 38, 1, 750.00, null, null, null, null, null, 750.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (44, 1, 38, 2, 945.00, null, null, null, null, null, 945.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (45, 1, 38, 3, 1569.00, null, null, null, null, null, 1569.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (46, 1, 39, 1, 514.00, null, null, null, null, null, 514.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (47, 1, 39, 2, 975.00, null, null, null, null, null, 975.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (48, 1, 39, 3, 1857.00, null, null, null, null, null, 1857.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (49, 1, 40, 1, 185.00, null, null, null, null, null, 185.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (50, 1, 40, 2, 285.00, null, null, null, null, null, 285.00);
INSERT INTO gbua_cgdb.CardPriceByToure (PriceID, CurrencyID, CardID, HotelID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (51, 1, 40, 3, 385.00, null, null, null, null, null, 385.00);
