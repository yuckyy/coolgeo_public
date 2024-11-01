create table PageAlbum
(
    AlbumID          int auto_increment
        primary key,
    PageID           int null,
    RowOrder         int null,
    AllowButtonMore  bit null,
    ButtonMorePageID int null,
    constraint FK_PageAlbum_PageID
        foreign key (PageID) references Page (PageID)
)
    collate = utf8_general_ci
    avg_row_length = 1638;

INSERT INTO gbua_cgdb.PageAlbum (AlbumID, PageID, RowOrder, AllowButtonMore, ButtonMorePageID) VALUES (1, 40, 6, true, 38);
INSERT INTO gbua_cgdb.PageAlbum (AlbumID, PageID, RowOrder, AllowButtonMore, ButtonMorePageID) VALUES (2, 40, 7, true, 41);
INSERT INTO gbua_cgdb.PageAlbum (AlbumID, PageID, RowOrder, AllowButtonMore, ButtonMorePageID) VALUES (3, 41, 1, null, null);
INSERT INTO gbua_cgdb.PageAlbum (AlbumID, PageID, RowOrder, AllowButtonMore, ButtonMorePageID) VALUES (4, 41, 2, null, null);
INSERT INTO gbua_cgdb.PageAlbum (AlbumID, PageID, RowOrder, AllowButtonMore, ButtonMorePageID) VALUES (5, 38, 2, null, null);
INSERT INTO gbua_cgdb.PageAlbum (AlbumID, PageID, RowOrder, AllowButtonMore, ButtonMorePageID) VALUES (6, 38, 3, null, null);
INSERT INTO gbua_cgdb.PageAlbum (AlbumID, PageID, RowOrder, AllowButtonMore, ButtonMorePageID) VALUES (7, 38, 4, null, null);
INSERT INTO gbua_cgdb.PageAlbum (AlbumID, PageID, RowOrder, AllowButtonMore, ButtonMorePageID) VALUES (8, 38, 5, null, null);
INSERT INTO gbua_cgdb.PageAlbum (AlbumID, PageID, RowOrder, AllowButtonMore, ButtonMorePageID) VALUES (9, 39, 1, null, null);
INSERT INTO gbua_cgdb.PageAlbum (AlbumID, PageID, RowOrder, AllowButtonMore, ButtonMorePageID) VALUES (10, 39, 2, null, null);
INSERT INTO gbua_cgdb.PageAlbum (AlbumID, PageID, RowOrder, AllowButtonMore, ButtonMorePageID) VALUES (11, 45, 1, null, null);
INSERT INTO gbua_cgdb.PageAlbum (AlbumID, PageID, RowOrder, AllowButtonMore, ButtonMorePageID) VALUES (12, 46, 1, null, null);
INSERT INTO gbua_cgdb.PageAlbum (AlbumID, PageID, RowOrder, AllowButtonMore, ButtonMorePageID) VALUES (14, 47, 1, null, null);
