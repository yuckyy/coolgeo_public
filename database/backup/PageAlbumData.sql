create table PageAlbumData
(
    AlbumID              int  not null,
    LangID               int  not null,
    AlbumCaption         text null,
    AlbumDescryption     text null,
    AlbumButtonMoreValue text null,
    primary key (AlbumID, LangID),
    constraint FK_PageAlbumData_AlbumID
        foreign key (AlbumID) references PageAlbum (AlbumID),
    constraint FK_PageAlbumData_LangID
        foreign key (LangID) references LangList (LangID)
)
    collate = utf8_general_ci
    avg_row_length = 409;

INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (1, 1, 'Популярные туры в Грузию', 'Здесь Вы найдете интересные туры в любую точку Грузии, Армении и Азербайджана. Все туры разной продолжительности.
                        Программа подобрана так, чтобы вы успели познакомиться с культурой, традициями, кухней и историей нашей страны.
						 ', 'Больше туров');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (1, 2, 'Popular tours to Georgia', 'Here you will find interesting tours to any place in Georgia, Armenia and Azerbaijan. All tours of different lengths. The program is designed in such a way that you have time to get acquainted with the culture, traditions,                      cuisine and history of our country.', 'More tours');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (1, 3, 'Популярные туры в Грузию', 'Здесь Вы найдете интересные туры в любую точку Грузии, Армении и Азербайджана. Все туры разной продолжительности.
                        Программа подобрана так, чтобы вы успели познакомиться с культурой, традициями, кухней и историей нашей страны. ', 'Больше туров');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (1, 4, 'Популярні тури в Грузію', 'Тут Ви знайдете цікаві тури до будь-якої точки Грузії, Вірменії та Азербайджану. Всі тури різної тривалості. Програма підібрана таким чином, щоб ви встигли познайомитися з культурою, традиціями, кухнею та історією нашої країни.', 'Більше турів');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (2, 1, 'Популярные экскурсии', 'Однодневные экскурсии из Тбилиси в любую точку Грузии, Армении, Азербайджана', 'Больше экскурсий');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (2, 2, 'Popular excursions', 'One-day excursions from Tbilisi to anywhere in Georgia, Armenia, Azerbaijan', 'More excursions');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (2, 3, 'Популярные экскурсии', 'Однодневные экскурсии из Тбилиси в любую точку Грузии, Армении, Азербайджана', 'Больше экскурсий');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (2, 4, 'Популярні екскурсії', 'Одноденні екскурсії з Тбілісі в будь-яку точку Грузії, Вірменії, Азербайджану', 'Більше екскурсій');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (3, 1, 'Экскурсии по Грузии c Cool Georgia Travel', 'Однодневные экскурсии из Тбилиси в любую точку Грузии, Армении, Азербайджана
		
               
           ', '');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (3, 2, 'Excursions to Georgia with company Cool Georgia Travel', 'One-day excursions from Tbilisi to anywhere in Georgia, Armenia, Azerbaijan', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (3, 3, 'Экскурсии по Грузии c Cool Georgia Travel', 'Однодневные экскурсии из Тбилиси в любую точку Грузии, Армении, Азербайджана', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (3, 4, 'Екскурсії по Грузії з Cool Georgia Travel', 'Одноденні екскурсії з Тбілісі в будь-яку точку Грузії, Вірменії, Азербайджану', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (4, 1, 'Экскурсии в Армению из Тбилиси', 'Двухдневные экскурсии в Армению из Тбилиси.Возможность посетить соседнюю с Грузией страну, полюбоваться её достопримечательностями и узнать культуру и традиции ещё одной страны Кавказа ', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (4, 2, 'Excursions to Armenia from Tbilisi', 'Two-days excursions to Armenia from Tbilisi. The opportunity to visit the neighboring country with Georgia, admire its sights and learn the culture and traditions of another country of the Caucasus', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (4, 3, 'Экскурсии в Армению из Тбилиси', 'Двухдневные экскурсии в Армению из Тбилиси.Возможность посетить соседнюю с Грузией страну, полюбоваться её достопримечательностями и узнать культуру и традиции ещё одной страны Кавказа ', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (4, 4, 'Екскурсії до Вірменії з Тбілісі', 'Дводенні екскурсії до Вірменії із Тбілісі. Можливість відвідати сусідню із Грузією країну, помилуватися її визначними пам\'ятками й дізнатися культуру та традиції ще однієї країни Кавказу', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (5, 1, 'Отдых в Грузии на 3 - 4 дня', 'Короткие туры выходного дня. Программа подобрана так, чтобы даже за такое короткое время вы успели почувствовать настоящую Грузию и увидеть её красоту', '  ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (5, 2, 'Rest in Georgia for 3 - 4 days', 'Short weekend tours. The program is chosen so that even in such a short time you have to feel real Georgia and see its beauty', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (5, 3, 'Отдых в Грузии на 3 - 4 дня', 'Короткие туры выходного дня. Программа подобрана так, чтобы даже за такое короткое время вы успели почувствовать настоящую Грузию и увидеть её красоту', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (5, 4, 'Відпочинок в Грузії на 3 - 4 дні', 'Короткі тури вихідного дня. 
                    Програма підібрана таким чином, щоб навіть за такий короткий час ви встигли відчути справжню Грузію і побачити її красу.', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (6, 1, 'Отдых в Грузии на 5 - 6 дней', 'Можно ли узнать Грузию меньше, чем за неделю? Давайте это проверим вместе! ', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (6, 2, 'Rest in Georgia for 5 - 6 days', 'Can you find out more about Georgia in less than a week? Let\'s check it together! ', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (6, 3, 'Отдых в Грузии на 5 - 6 дней', 'Можно ли узнать Грузию меньше, чем за неделю? Давайте это проверим вместе! ', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (6, 4, 'Відпочинок в Грузії на 5 - 6 днів', 'Чи можна пізнати Грузію менше ніж за тиждень? Давайте перевіримо це разом! ', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (7, 1, 'Отдых в Грузии на 7 дней и более', 'Настало время для grand-туров! Это будет незабываемый отпуск в Грузии! 
                     Мы покажем Вам как живут грузины, что они едят и как это готовят, раскроем тайны рецептов, специй и соусов. 
                     Отвезем Вас в самые красивые места страны. Наш гид расскажет много интересных историй о древних монастырях и городах. Вы поймете, почему мы так любим свою страну и боремся за неё.', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (7, 2, 'Rest in Georgia for 7 days and more', 'It\'s time for grand-tours! It will be an unforgettable vacation in Georgia! 
                    We will show you how the Georgians live, what they eat and how they cook, we will uncover the secrets of recipes, spices and sauces. 
                    We will take you to the most beautiful places of the country. Our guide will tell you many interesting stories about ancient monasteries and cities. 
                    You will understand why we love our country so much and fighting for it.', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (7, 3, 'Отдых в Грузии на 7 дней и более', 'Настало время для grand-туров! Это будет незабываемый отпуск в Грузии! 
                     Мы покажем Вам как живут грузины, что они едят и как это готовят, раскроем тайны рецептов, специй и соусов. 
                     Отвезем Вас в самые красивые места страны. Наш гид расскажет много интересных историй о древних монастырях и городах. Вы поймете, почему мы так любим свою страну и боремся за неё.', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (7, 4, 'Відпочинок в Грузії на 7 днів та довше', 'Прийшов час для грандіозних турів! Це буде незабутній відпочинок в Грузії! 
                    Ми покажемо вам, як живуть грузини, що вони їдять і як вони готують, ми розкриємо секрети рецептів, спецій та соусів. 
                    Ми доставимо вас до найкрасивіших місць країни. Наш гід розповідатиме вам багато цікавих історій про стародавні монастирі та міста. 
                    Ви зрозумієте, чому ми так сильно любимо нашу країну і боремося за це.', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (8, 1, 'Туры по Грузии и Армении (выезд из Тбилиси, или из Еревана)', 'Кавказ большой! Мы хотим познакомить Вас с ещё одной интересной и красивой страной - Армения.', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (8, 2, 'Tours to Armenia from Tbilisi', 'The Caucasus is big! We want to introduce you with one more interesting and beautiful country - Armenia.', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (8, 3, 'Туры по Грузии и Армении (выезд из Тбилиси, или из Еревана)', 'Кавказ большой! Мы хотим познакомить Вас с ещё одной интересной и красивой страной - Армения.', '  ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (8, 4, 'Тури до Вірменії із Тбілісі', 'Кавказ великий! Ми хочемо познайомити Вас із ще однією цікавою і гарною країною - Вірменія.', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (9, 1, 'Свадьба в Грузии - недорого, но красиво, тонко и изысканно!', 'Свадьба - важное событие в жизни влюбленных людей! Этот день должен запомнится на всю жизнь. Мы поможем Вам в этом!', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (9, 2, 'Wedding in Georgia - inexpensive, but beautiful, subtle and exquisite!', 'Wedding is an important event in the life of loving people! This day should be remembered for all life. We will help you with this!', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (9, 3, 'Свадьба в Грузии - недорого, но красиво, тонко и изысканно!', 'Свадьба - важное событие в жизни влюбленных людей! Этот день должен запомнится на всю жизнь. Мы поможем Вам в этом!', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (9, 4, 'Весілля в Грузії - недорого, але красиво, витончено та вишукано!', 'Весілля - важлива подія в житті люблячих людей! Цей день слід пам\'ятати на все життя. Ми допоможемо вам з цим!', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (10, 1, 'Свадьба в Грузии с выездной процедурой бракосочетания', 'Для молодоженов, которые хотят шикарную и необычную свадьбу!', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (10, 2, 'Wedding in Georgia with registration of marriage in a restaurant, hotel or at the nature', 'For the newlyweds who want a chic and unusual wedding!', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (10, 3, 'Свадьба в Грузии с выездной процедурой бракосочетания', 'Для молодоженов, которые хотят шикарную и необычную свадьбу!', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (10, 4, 'Весілля в Грузії з оформленням шлюбу в ресторані, готелі або на природі', 'Для молодят, які бажають шикарне та незвичайне весілля!', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (11, 1, 'Отели в городе Тбилиси', 'Здесь вы найдете большой выбор отелей в городе Тбилиси', ' ');
INSERT INTO gbua_cgdb.PageAlbumData (AlbumID, LangID, AlbumCaption, AlbumDescryption, AlbumButtonMoreValue) VALUES (12, 1, 'Отели в городе Батуми', 'Здесь вы найдете большой выбор отелей в городе Батуми', ' ');
