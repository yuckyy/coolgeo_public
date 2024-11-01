create table CardPriceByExcursion
(
    PriceID    int auto_increment
        primary key,
    CurrencyID int            null,
    CardID     int            null,
    Value      decimal(12, 2) null,
    Value2     decimal(12, 2) null,
    Value3     decimal(12, 2) null,
    Value4     decimal(12, 2) null,
    Value5     decimal(12, 2) null,
    Value6     decimal(12, 2) null,
    Value7     decimal(12, 2) null,
    constraint FK_CardPriceByExcursion_CurrencyID
        foreign key (CurrencyID) references Currency (CurrencyID),
    constraint FK_CardPrice_CardID
        foreign key (CardID) references Card (CardID)
)
    collate = cp1251_general_ci
    avg_row_length = 1170;

INSERT INTO gbua_cgdb.CardPriceByExcursion (PriceID, CurrencyID, CardID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (1, 1, 1, 195.00, 98.00, 65.00, 53.00, 45.00, 45.00, 40.00);
INSERT INTO gbua_cgdb.CardPriceByExcursion (PriceID, CurrencyID, CardID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (2, 1, 2, 66.00, 33.00, 22.00, 22.00, 22.00, 22.00, 22.00);
INSERT INTO gbua_cgdb.CardPriceByExcursion (PriceID, CurrencyID, CardID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (3, 1, 3, 705.00, 352.00, 235.00, 235.00, 235.00, 235.00, 235.00);
INSERT INTO gbua_cgdb.CardPriceByExcursion (PriceID, CurrencyID, CardID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (4, 1, 4, 180.00, 90.00, 60.00, 60.00, 60.00, 60.00, 60.00);
INSERT INTO gbua_cgdb.CardPriceByExcursion (PriceID, CurrencyID, CardID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (5, 1, 5, 225.00, 112.00, 75.00, 75.00, 75.00, 75.00, 75.00);
INSERT INTO gbua_cgdb.CardPriceByExcursion (PriceID, CurrencyID, CardID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (6, 1, 6, 156.00, 78.00, 52.00, 52.00, 52.00, 52.00, 52.00);
INSERT INTO gbua_cgdb.CardPriceByExcursion (PriceID, CurrencyID, CardID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (7, 1, 7, 150.00, 75.00, 50.00, 50.00, 50.00, 50.00, 50.00);
INSERT INTO gbua_cgdb.CardPriceByExcursion (PriceID, CurrencyID, CardID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (8, 1, 8, 195.00, 98.00, 65.00, 65.00, 65.00, 65.00, 65.00);
INSERT INTO gbua_cgdb.CardPriceByExcursion (PriceID, CurrencyID, CardID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (9, 1, 9, 165.00, 82.00, 55.00, 55.00, 55.00, 55.00, 55.00);
INSERT INTO gbua_cgdb.CardPriceByExcursion (PriceID, CurrencyID, CardID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (10, 1, 10, 138.00, 69.00, 46.00, 46.00, 46.00, 46.00, 46.00);
INSERT INTO gbua_cgdb.CardPriceByExcursion (PriceID, CurrencyID, CardID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (11, 1, 11, 96.00, 48.00, 32.00, 32.00, 32.00, 32.00, 32.00);
INSERT INTO gbua_cgdb.CardPriceByExcursion (PriceID, CurrencyID, CardID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (12, 1, 12, 165.00, 82.00, 55.00, 55.00, 55.00, 55.00, 55.00);
INSERT INTO gbua_cgdb.CardPriceByExcursion (PriceID, CurrencyID, CardID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (13, 1, 13, 144.00, 72.00, 48.00, 48.00, 48.00, 48.00, 48.00);
INSERT INTO gbua_cgdb.CardPriceByExcursion (PriceID, CurrencyID, CardID, Value, Value2, Value3, Value4, Value5, Value6, Value7) VALUES (14, 1, 15, 255.00, 127.00, 85.00, 85.00, 85.00, 85.00, 85.00);
