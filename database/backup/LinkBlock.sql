create table LinkBlock
(
    LinkBlockID int auto_increment
        primary key,
    Name        text null
)
    collate = utf8_general_ci
    avg_row_length = 8192;

INSERT INTO gbua_cgdb.LinkBlock (LinkBlockID, Name) VALUES (1, 'Другие туры');
INSERT INTO gbua_cgdb.LinkBlock (LinkBlockID, Name) VALUES (2, 'Другие экскурсии');
