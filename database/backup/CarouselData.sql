create table CarouselData
(
    CarouselID     int  not null,
    LangID         int  not null,
    PreviousButton text null,
    NextButton     text null,
    primary key (CarouselID, LangID),
    constraint FK_CarouselData_CarouselID
        foreign key (CarouselID) references Carousel (CarouselID),
    constraint FK_CarouselData_LangID
        foreign key (LangID) references LangList (LangID)
)
    collate = utf8_general_ci
    avg_row_length = 5461;

INSERT INTO gbua_cgdb.CarouselData (CarouselID, LangID, PreviousButton, NextButton) VALUES (1, 1, 'Назад', 'Вперед');
INSERT INTO gbua_cgdb.CarouselData (CarouselID, LangID, PreviousButton, NextButton) VALUES (1, 2, 'back', 'forward');
INSERT INTO gbua_cgdb.CarouselData (CarouselID, LangID, PreviousButton, NextButton) VALUES (1, 3, 'אחורה', 'forward');
INSERT INTO gbua_cgdb.CarouselData (CarouselID, LangID, PreviousButton, NextButton) VALUES (1, 4, 'Назад', 'Вперед');
