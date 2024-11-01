create table Currency
(
    CurrencyID int auto_increment
        primary key,
    Name       text null,
    isDefault  bit  null
)
    collate = utf8_general_ci
    avg_row_length = 8192;

INSERT INTO gbua_cgdb.Currency (CurrencyID, Name, isDefault) VALUES (1, '$', true);
INSERT INTO gbua_cgdb.Currency (CurrencyID, Name, isDefault) VALUES (2, '€', null);
