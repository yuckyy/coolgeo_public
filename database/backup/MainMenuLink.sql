create table MainMenuLink
(
    LinkID    int auto_increment
        primary key,
    PageID    int  null,
    Href      text null,
    class     text null,
    attribute text null,
    constraint FK_MainMenuLink_PageID
        foreign key (PageID) references Page (PageID)
)
    collate = utf8_general_ci
    avg_row_length = 963;

INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (1, 40, null, null, null);
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (2, 41, null, null, null);
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (3, 38, null, null, null);
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (4, 14, null, null, null);
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (5, 39, null, null, null);
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (6, 34, null, null, null);
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (7, 37, null, null, null);
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (8, 35, null, null, null);
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (9, 36, null, null, null);
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (10, null, '/cabinet/index.php', null, null);
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (11, null, '#ru', 'lang-button', 'lang="ru"');
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (12, null, '#en', 'lang-button', 'lang="en"');
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (13, null, ' tel:+995 598 00 14 61', 'text-warning font-weight-bold text-center', null);
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (14, null, '#ua', 'lang-button', 'lang="ua"');
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (15, 45, null, null, null);
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (16, 46, null, null, null);
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (17, 48, null, null, null);
INSERT INTO gbua_cgdb.MainMenuLink (LinkID, PageID, Href, class, attribute) VALUES (18, 49, null, null, null);
