create table PageAlbumCard
(
    AlbumID  int not null,
    CardID   int not null,
    RowOrder int null,
    primary key (CardID, AlbumID),
    constraint FK_PageAlbumCard_AlbumID
        foreign key (AlbumID) references PageAlbum (AlbumID),
    constraint FK_PageAlbumCard_CardID
        foreign key (CardID) references Card (CardID)
)
    collate = utf8_general_ci
    avg_row_length = 455;

INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (2, 1, 3);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (3, 1, 4);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (2, 2, 1);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (3, 2, 1);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (4, 3, 1);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (3, 4, 7);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (3, 5, 9);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (3, 6, 10);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (3, 7, 6);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (3, 8, 12);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (3, 9, 8);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (3, 10, 11);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (2, 11, 2);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (3, 11, 2);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (3, 12, 5);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (3, 13, 3);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (3, 15, 13);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (7, 16, 4);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (1, 17, 2);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (6, 17, 1);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (6, 18, 6);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (1, 19, 1);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (5, 19, 4);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (5, 21, 3);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (5, 22, 2);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (6, 23, 2);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (6, 24, 3);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (1, 25, 3);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (7, 25, 3);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (7, 26, 5);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (8, 27, 1);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (6, 28, 4);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (6, 29, 5);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (9, 30, 1);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (10, 31, 1);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (9, 32, 2);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (9, 33, 3);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (5, 40, 1);
INSERT INTO gbua_cgdb.PageAlbumCard (AlbumID, CardID, RowOrder) VALUES (11, 41, 1);
