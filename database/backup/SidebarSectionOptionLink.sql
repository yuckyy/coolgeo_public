create table SidebarSectionOptionLink
(
    LinkID   int auto_increment
        primary key,
    OptionID int  null,
    RowOrder int  null,
    Href     text null,
    constraint FK_SidebarSectionOptionLink_OptionID
        foreign key (OptionID) references SidebarSectionOption (OptionID)
)
    collate = cp1251_general_ci
    avg_row_length = 1092;

INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (1, 1, 1, '/cabinet/page/admin/access_usergroup_list.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (2, 1, 2, '/cabinet/page/admin/access_userrole_list.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (3, 1, 3, '/cabinet/page/admin/access_user_list.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (4, 2, 2, '/cabinet/page/admin/content_page_list.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (5, 2, 3, '/cabinet/page/admin/content_album_list.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (6, 2, 4, '/cabinet/page/admin/content_card_list.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (7, 3, 1, '/cabinet/page/admin/site_settings.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (8, 4, 1, '/cabinet/page/operator/booking_new_list.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (9, 4, 2, '/cabinet/page/operator/booking_list.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (10, 5, 1, '/cabinet/page/operator/review_list.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (11, 6, 1, '/cabinet/page/current_bookings.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (12, 7, 1, '/cabinet/page/archive_bookings.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (13, 8, 1, '/cabinet/page/review_list.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (14, 9, 1, '/cabinet/page/profile.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (15, 10, 1, '/cabinet/page/logout.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (16, 2, 1, '/cabinet/page/admin/generator.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (18, 12, 1, '/cabinet/page/operator/callback_list.php');
INSERT INTO gbua_cgdb.SidebarSectionOptionLink (LinkID, OptionID, RowOrder, Href) VALUES (19, 15, 4, '/cabinet/page/rentcar/booking_new_list.php');
