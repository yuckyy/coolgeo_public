create table TransferPrices
(
    CarsID              int          not null
        primary key,
    Tbilisi_Batumi      int          null,
    Tbilisi_Kutaisi     int          null,
    Tbilisi_Mestia      int          null,
    Tbilisi_Erevan      int          null,
    Tbilisi_Batumi_one  int          null,
    Tbilisi_Kutaisi_one int          null,
    Tbilisi_Mestia_one  int          null,
    Tbilisi_Erevan_one  int          null,
    Batumi_Tbilisi      int          null,
    Kutaisi_Tbilisi     int          null,
    Mestia_Tbilisi      int          null,
    Erevan_Tbilisi      int          null,
    Batumi_Tbilisi_one  varchar(255) null,
    Kutaisi_Tbilisi_one varchar(255) null,
    Mestia_Tbilisi_one  varchar(255) null,
    Erevan_Tbilisi_one  varchar(255) null
)
    collate = cp1251_general_ci
    avg_row_length = 8192;

INSERT INTO gbua_cgdb.TransferPrices (CarsID, Tbilisi_Batumi, Tbilisi_Kutaisi, Tbilisi_Mestia, Tbilisi_Erevan, Tbilisi_Batumi_one, Tbilisi_Kutaisi_one, Tbilisi_Mestia_one, Tbilisi_Erevan_one, Batumi_Tbilisi, Kutaisi_Tbilisi, Mestia_Tbilisi, Erevan_Tbilisi, Batumi_Tbilisi_one, Kutaisi_Tbilisi_one, Mestia_Tbilisi_one, Erevan_Tbilisi_one) VALUES (23, 180, 650, 925, 950, 36, 130, 185, 190, 180, 650, 925, 950, '36', '130', '185', '190');
INSERT INTO gbua_cgdb.TransferPrices (CarsID, Tbilisi_Batumi, Tbilisi_Kutaisi, Tbilisi_Mestia, Tbilisi_Erevan, Tbilisi_Batumi_one, Tbilisi_Kutaisi_one, Tbilisi_Mestia_one, Tbilisi_Erevan_one, Batumi_Tbilisi, Kutaisi_Tbilisi, Mestia_Tbilisi, Erevan_Tbilisi, Batumi_Tbilisi_one, Kutaisi_Tbilisi_one, Mestia_Tbilisi_one, Erevan_Tbilisi_one) VALUES (24, 140, 700, 1120, 1050, 20, 100, 160, 150, 140, 700, 700, 1120, '1050', '20', '100', '160');
