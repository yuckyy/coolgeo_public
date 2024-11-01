create table CardOptionsData
(
    OptionID    int  not null,
    LangID      int  not null,
    ImageSrc    text null,
    ImageAlt    text null,
    Title       text null,
    Descryption text null,
    primary key (OptionID, LangID),
    constraint FK_CardOptionsData_LangID
        foreign key (LangID) references LangList (LangID)
)
    collate = utf8_general_ci
    avg_row_length = 2609;

INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (1, 1, '/images/excoursions/kazbek/excursion_in_kagbeg_1_500x300.jpg', 'Вид со смотровой площадки Гудаури', 'Что мы увидим по дороге в Казбег?', '<ul>
                            <li><b>Жинвальское водохранилище</b> и историческая <b>крепость Ананури</b> эпохи раннего феодализма;</li>
                            <li>Место, где две реки <b>Белая и Чёрная Арагви сливаются в одно русло</b>, при этом их воды не смешиваются;</li>
                            <li><b>Горнолыжный курорт</b> Грузии - <b>Гудаури</b>, 2000 метров над уровнем моря. Виды со смотровой площадки вы никогда не забудете;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (1, 2, '/images/excoursions/kazbek/excursion_in_kagbeg_1_500x300.jpg', 'View from the observation deck Gudauri', 'What will we see on the way to Kazbeg?', '<ul>
                            <li><b>Zhinval water reservoir</b> and the historical <b>fortress Ananuri</b> of the early feudal period;</li>
                            <li>The place where the two rivers <b>White and Black Aragvi merge into one channel</b>, while their waters do not mix;</li>
                            <li><b>Mountain ski resort of</b> Georgia  - <b>Gudauri </b>, 2000 meters above sea level. Views from the observation platform you will never forget;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (1, 3, '/images/excoursions/kazbek/excursion_in_kagbeg_1_500x300.jpg', 'נוף של ההר מסיפון התצפית בגודאורי', 'Что мы увидим по дороге в Казбег?', '<ul>
                            <li><b>Жинвальское водохранилище</b> и историческая <b>крепость Ананури</b> эпохи раннего феодализма;</li>
                            <li>Место, где две реки <b>Белая и Чёрная Арагви сливаются в одно русло</b>, при этом их воды не смешиваются;</li>
                            <li><b>Горнолыжный курорт</b> Грузии - <b>Гудаури</b>, 2000 метров над уровнем моря. Виды со смотровой площадки вы никогда не забудете;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (1, 4, '/images/excoursions/kazbek/excursion_in_kagbeg_1_500x300.jpg', 'Вид з оглядового майданчика Гудаурі', 'Що ми побачимо по дорозі в Казбегі?', '<ul><li> <b> Жінвальского водосховище </b> та історична <b> фортеця Ананурі </b> епохи раннього феодалізму; </li><li> Місце, де дві річки <b> Біла і Чорна Арагві зливаються в одне русло </b>, при цьому їх води не змішуються; </li><li> <b> Гірськолижний курорт </b> Грузії - <b> Гудаурі </b>, 2000 метрів над рівнем моря. Види з його оглядового майданчика ви не забудете ніколи; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (2, 1, '/images/cards/kazbeg_500x300.jpg', 'Храм Гергети', '', '<ul>
                            <li>Дорога через <b>Крестовый перевал</b>. Её также называют военно-грузинская дорога. Дух захватывает, когда проезжаешь по её извилистым серпантинам;</li>
                            <li><b>Доза адреналина</b>, когда смотришь на облака сверху и наблюдаешь как они проплывают внизу между вершинами гор;</li>
                            <li>Главный объект нашей эксскурсии - <b>храм Гергети</b>. Он находится на вершине горы и  <b>мы будем к нему подниматься на джипе</b>;</li>
                             
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (2, 2, '/images/cards/kazbeg_500x300.jpg', 'Gergeti Temple', '', '<ul>
                             <li>The road through the <b> Cross Pass </b>. It is also called the military-Georgian road. The spirit captures when you pass through its winding serpentines;</li>
                            <li><b>A dose of adrenaline</b>, when you look at the clouds from above and watch as they swim down between the tops of the mountains;</li>
                            <li>The main object of our excursion is <b>the Gergeti temple</b>. He is at the top of the mountain and  <b>we will go up to him on a jeep</b>;</li>
                             
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (2, 3, '/images/cards/kazbeg_500x300.jpg', 'Gergeti Temple', '', '<ul>
                            <li>Дорога через <b>Крестовый перевал</b>. Её также называют военно-грузинская дорога. Дух захватывает, когда проезжаешь по её извилистым серпантинам;</li>
                            <li><b>Доза адреналина</b>, когда смотришь на облака сверху и наблюдаешь как они проплывают внизу между вершинами гор;</li>
                            <li>Главный объект нашей эксскурсии - <b>храм Гергети</b>. Он находится на вершине горы и  <b>мы будем к нему подниматься на джипе</b>;</li>
                             
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (2, 4, '/images/cards/kazbeg_500x300.jpg', 'Храм Гергеті', '', '<ul><li> Дорога через <b> Хрестовий перевал </b>. Її також називають військово-грузинська дорога. Дух захоплює, коли проїзджаєш її звивистими серпантинами; </li><li> <b> Доза адреналіну </b>, коли дивишся на хмари зверху й спостерігаєш як вони пропливають внизу поміж вершинами гір; </li><li> Головний об\'єкт нашої ексскурсіі - <b> храм Гергеті </b>. Він знаходиться на вершині гори,  <b> ми підймемось до нього на джипі </b>; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (3, 1, '/images/excoursions/kazbek/excursion_in_kagbeg_2_500x300.jpg', 'Вид на город Степанцминда', '', ' <li><b>Пообедаем</b> в ресторане <b>на родине хинкали</b>;</li>
                        <p></p>
                        Если у Вас будет желание, то мы можем организовать весёлый <b>пикник на склонах кавказских гор</b>.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (3, 2, '/images/excoursions/kazbek/excursion_in_kagbeg_2_500x300.jpg', 'View of the city Stepantsminda', '', ' <li><b>Lunch </b> at the restaurant <b> in the homeland of khinkali</b>;</li>
                        <p></p>
                        If you have a desire, we can organize a fun <b>picnic on the slopes of the Caucasus Mountains</b>.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (3, 3, '/images/excoursions/kazbek/excursion_in_kagbeg_2_500x300.jpg', 'נוף של העיר Stepantsminda', '', ' <li><b>Пообедаем</b> в ресторане <b>на родине хинкали</b>;</li>
                        <p></p>
                        Если у Вас будет желание, то мы можем организовать весёлый <b>пикник на склонах кавказских гор</b>.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (3, 4, '/images/excoursions/kazbek/excursion_in_kagbeg_2_500x300.jpg', 'Вид на місто Степанцмінда', '', '<li> <b> Пообідаємо </b> в ресторані <b> на батьківщині хінкалі </b>; </li><p></p> Якщо у Вас буде бажання, то ми можемо організувати  для вас веселий <b> пікнік на схилах кавказьких гір </b>.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (4, 1, '/images/excoursions/tbilisi/ex_tbilisi_4_500x300.jpg', 'Кукольный театр в Тбилиси', 'Список мест, которые вы увидите во время экскурсии по Тбилиси:', '<ul>
                            <li>посещение главного <b>кафедрального собора</b> Грузии <b>Самеба</b> (Святая троица)</b>;</li>
                            <li>храм Метехи;</li>
                            <li>прогулкам по парку Рике, где находится знаменитый <b>мост Мира</b>;</li>
                           
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (4, 2, '/images/excoursions/tbilisi/ex_tbilisi_4_500x300.jpg', 'Puppet Theater in Tbilisi', 'List of places that you will see during the tour of Tbilisi:', '<ul>
                            <li>Visit to the main <b>Cathedral</b> of Georgia <b>Sameba</b> (Holy Trinity)</b>;</li>
                            <li>Metekhi temple;</li>
                            <li>walking through Rike Park, where the famous <b>Peace Bridge</b> is located;</li>
                           
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (4, 3, '/images/excoursions/tbilisi/ex_tbilisi_4_500x300.jpg', 'תיאטרון הבובות בטביליסי', 'Список мест, которые вы увидите во время экскурсии по Тбилиси:', '<ul>
                            <li>посещение главного <b>кафедрального собора</b> Грузии <b>Самеба</b> (Святая троица)</b>;</li>
                            <li>храм Метехи;</li>
                            <li>прогулкам по парку Рике, где находится знаменитый <b>мост Мира</b>;</li>
                           
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (4, 4, '/images/excoursions/tbilisi/ex_tbilisi_4_500x300.jpg', 'Ляльковий театр у Тбілісі', 'Список місць, які ви побачите під час екскурсії по Тбілісі:', '<ul>
                            <li>відвідування головного <b>кафедрального собору</b> Грузії <b>Самеба</b> (Свята трійця)</b>;</li>
                            <li>храм Метехі;</li>
                            <li>прогулянки парком Ріке, де знаходиться відомий <b>міст Світу</b>;</li>
                           
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (5, 1, '/images/excoursions/tbilisi/excursion_in_tbilisi_500x300_1.jpg', 'Вид с крепости Нарикала в Тбилиси', '', '<ul>
                             <li><b>подъем по канатной дороге</b> на <b>крепость Нарикала</b>
                             С этого места открывается вид на весь город Тбилиси;</li>
                             <li>спускаемся пешком к <b>тбилисским серным баням</b> и через <b>инжирное ущелье</b> попадем к водопаду. 
                               С этого места хорошо видно изюминку города - <b>тбилисские домики на скале с разноцветными балконами</b>;</li>
                            <li>затем, время для обеда в одном из национальных ресторанов в Старом городе;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (5, 2, '/images/excoursions/tbilisi/excursion_in_tbilisi_500x300_1.jpg', 'View from Narikala fortress in Tbilisi', '', '<ul>
                             <li><b>cable car ride</b> to <b>Narikala fortress</b>
                             This place offers a view of the whole city of Tbilisi;</li>
                             <li>we go down on foot to the <b>Tbilisi sulfur baths</b> and through the <b>fig gorge</b> we get to the waterfall.
                               From this place you can clearly see the highlight of the city - <b>Tbilisi houses on a rock with colorful balconies</b>;</li>
                            <li>then, time for lunch at one of the national restaurants in the Old Town;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (5, 3, '/images/excoursions/tbilisi/excursion_in_tbilisi_500x300_1.jpg', 'מבט ממבצר נאריקאלה בטביליסי', '', '<ul>
                             <li><b>подъем по канатной дороге</b> на <b>крепость Нарикала</b>
                             С этого места открывается вид на весь город Тбилиси;</li>
                             <li>спускаемся пешком к <b>тбилисским серным баням</b> и через <b>инжирное ущелье</b> попадем к водопаду. 
                               С этого места хорошо видно изюминку города - <b>тбилисские домики на скале с разноцветными балконами</b>;</li>
                            <li>затем, время для обеда в одном из национальных ресторанов в Старом городе;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (5, 4, '/images/excoursions/tbilisi/excursion_in_tbilisi_500x300_1.jpg', 'Вид з фортеці Нарікала в Тбілісі', '', '<ul>
                             <li><b>підйом канатною дорогою</b> на <b>фортецю Нарікала</b>
                             З цього місця відкривається краєвид на все місто Тбілісі;</li>
                             <li>спускаємося пішки до <b>тбіліських сірчаних лазень</b> і через <b>інжирну ущелину</b> потрапимо до водоспаду.
                               З цього місця добре видно особливість міста - <b>тбіліські будиночки на скелі з різнобарвними балконами</b>;</li>
                            <li>потім, час для обіду в одному з національних ресторанів у Старому місті;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (6, 1, '/images/excoursions/tbilisi/excurcion_in_tbilisi_500x300_3.jpg', 'Ночной фуникулер Тбилиси', '', '<ul>
                            <li>прогулка по <b>подземному</b> историческому <b>рынку</b>;</li>
                            <li><b>Майдан</b> - место, где когда-то была остановка "шелкого пути"</li>
							
                        </ul>
                    В конце нащей экскурсии уже стемнеет и вы увидите совсем другой город Тбилиси. 
                    Он наполнится светом от фонарей, которые меняют вид всего, что вы видели днём! 
					Мы поднимемся на самую высокую точку Тбилиси - <b>Фуникулер, парк Мтацминда</b>.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (6, 2, '/images/excoursions/tbilisi/excurcion_in_tbilisi_500x300_3.jpg', 'Tbilisi night funicular', '', '<ul>
                            <li>visit to the main <b>cathedral of Georgia Sameba</b> (Holy Trinity);</li>
                            <li>The ascent to <b>the highest point of Tbilisi is the Mtatsminda funicular.</b> 
                            There you can see the whole city from the Ferris wheel and visit the amusement park.</li>
                        </ul>
                    At the end of our excursion it will be dark and you will see a completely different city of Tbilisi. 
                    It will be filled with light from the lanterns, which change the appearance of everything that you saw in the day!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (6, 3, '/images/excoursions/tbilisi/excurcion_in_tbilisi_500x300_3.jpg', 'לילה טביליסי', '', '<ul>
                            <li>прогулка по <b>подземному</b> историческому <b>рынку</b>;</li>
                            <li><b>Майдан</b> - место, где когда-то была остановка "шелкого пути"</li>
							
                        </ul>
                    В конце нащей экскурсии уже стемнеет и вы увидите совсем другой город Тбилиси. 
                    Он наполнится светом от фонарей, которые меняют вид всего, что вы видели днём! 
					Мы поднимемся на самую высокую точку Тбилиси - <b>Фуникулер, парк Мтацминда</b>.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (6, 4, '/images/excoursions/tbilisi/excurcion_in_tbilisi_500x300_3.jpg', 'Нічний фунікулер Тбілісі', '', '<ul>
                            <li>прогулянка <b>підземним</b> історичним <b>ринком</b>;</li>
                            <li><b>Майдан</b> - місце, де колись була зупинка "шовкого шляху"</li>

                        </ul>
                    Наприкінці нашої екскурсії вже стемніє і ви побачите зовсім інше місто Тбілісі.
                    Він наповниться світлом від ліхтарів, які змінюють вигляд усього, що ви бачили вдень!
Ми піднімемося на найвищу точку Тбілісі - <b>Фунікулер, парк Мтацмінда</b>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (7, 1, '/images/excoursions/armenia/armenia3.png', 'Виды на горы Кавказа', 'Программа экскурсии в Армению из Тбилиси очень насыщенная и рассчитана на 2 дня', '<p></p>
<h5>День 1</h5> 
Покидаем гостеприимную Грузию и отправляемся на границу с удивительной Арменией. 
<b>Прохождение границы</b> обычно занимает не очень много времени. 
<p></p>
Мы увидим много горных перевалов, ущельев, серпантинов и рек.
<p><b>Дорога дальняя, но интересная!</b></p>

                           
                            ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (7, 2, '/images/excoursions/armenia/armenia3.png', 'Views of the Caucasus Mountains', 'The program of excursions to Armenia from Tbilisi is very interesting and will be 2 days long', '<p> </p>
<h5> Day 1 </h5>
We leave hospitable Georgia and go to the border with amazing Armenia.
<b> Crossing the border </b> usually doesn’t take much time.
<p> </p>
We will see many mountain passes, gorges, serpentines and rivers.
<p> <b> The road is long, but interesting! </b> </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (7, 3, '/images/excoursions/armenia/armenia3.png', 'Виды на горы Кавказа', 'Программа экскурсии в Армению из Тбилиси очень насыщенная и рассчитана на 2 дня', '<p></p>
<h5>День 1</h5> 
Покидаем гостеприимную Грузию и отправляемся на границу с удивительной Арменией. 
<b>Прохождение границы</b> обычно занимает не очень много времени. 
<p></p>
Мы увидим много горных перевалов, ущельев, серпантинов и рек.
<p><b>Дорога дальняя, но интересная!</b></p>

                           
                            ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (7, 4, '/images/excoursions/armenia/armenia3.png', 'Вид на гори Кавказу', 'Програма екскурсії до Вірменії з Тбілісі дуже насичена і розрахована на 2 дні', '<P> </p>
<H5> День 1 </h5>
Залишаємо гостинну Грузію та вирушаємо до кордону iз дивовижною Вірменією.
<B> Проходження кордону </b> зазвичай займає не дуже багато часу.
<P> </p>
Ми побачимо багато гірських перевалів, ущелин, серпантинів і річок.
<P> <b> Дорога далека, але цікава! </b> </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (8, 1, '/images/excoursions/armenia/new_ex_Armenia_3_500x300.png', 'Курортный город Дилижан', '', ' После продолжительного переезда <b>остановимся в курортном городе Дилижан</b>, где есть всё, что нужно туристу.
 Это известный горноклиматический курорт в Армении.
 <p>Въезжаешь в город и будто попадаешь в совершенно другой мир: высокие горы, густые заросли леса, приятный свежий воздух.</p> 
 За все эти качества местные <b>называют Дилижан маленькой Швейцарией</b>. Дилижанский заповедник окружает город со всех сторон. Климат тут мягкий, нежаркое лето и сухая солнечная зима.
 
                       ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (8, 2, '/images/excoursions/armenia/new_ex_Armenia_3_500x300.png', 'The resort city of Dilijan', '', 'After a long drive <b> we will stop in the resort town of Dilijan </b>, where there is everything that a tourist needs.
 This is a famous mountain resort in Armenia.
 <p> You enter the city and seem to find yourself in a completely different world: high mountains, dense of forests, pleasant fresh air. </p>
 For all these qualities, the local <b> call Dilijan a little Switzerland </b>. Dilijan reserve surrounds the city from all sides. The climate here is mild, non-hot summers and dry sunny winters');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (8, 3, '/images/excoursions/armenia/new_ex_Armenia_3_500x300.png', 'Курортный город Дилижан', '', 'Після тривалого переїзду <b> зупинимось у курортному місцi Диліжан </b>, де є усе, що потрібно туристу. Це відомий гiрськоклiматичний курорт Вірменії.
<P> В\'їзджаєш у місто й ніби-то потрапляєш до абсолютно іншого світу: високі гори, густі зарості лісу, приємне свіже повітря. </P>
За усі ці якості місцеві <b> називають Дилiжан маленькою Швейцарією </b>. Дилiжанский заповідник оточує місто з усіх боків. Клімат тут м\'який, не спекотне літо і суха сонячна зима.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (8, 4, '/images/excoursions/armenia/new_ex_Armenia_3_500x300.png', 'Курортне місто Диліжан', '', 'Далі, після тривалого переїзду <b> зупинимося в курортному місті Діліжан </b>, де є усе, що потрібно туристу: мальовничі вулички, гарна природа навколо із горами, лісами й озерами та історичні пам\'ятки, якими можна довго милуватись. Тому прогулянка цим містом буде дуже приємна.<p> </p> Далі, <b> доберемося до високогірного озера Севан </b>, де помилуємося прозорими водами найбільшого прісноводного озера у світі. У вас буде <b> можливість спробувати шашлик з відомого Севанського сига або раків </b>.<p></p> Ближче до вечора приїдемо в Єреван, заселення в готель.</ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (9, 1, '/images/excoursions/armenia/new_ex_Armenia_6_500x300.png', 'Во время прогулки по Еревану, возле мега-лестницы Каскад', '', '<h5>День 2</h5> 
<b>Знакомство с Ереваном</b>. Он известен как город роз и привлекает путешественников своими пейзажами и необычными памятниками. 
Обзорная <b>экскурсия</b> по городу <b>начнется с</b> посещения <b>Каскада</b> - это мега-лестница высотой 500 метров и шириной 50 метров.
Отсюда вы можете увидеть оперу, гору Арарат, Ереванское лебединое озеро, площадь Республики и улицу Абовяна, 
по которой мы потом обязательно пройдемся. 
<p></p>
Затем, <b>экскурсия на коньячный завод Арарат</b> с дегустацией двух сортов коньяка. 
<p></p>

                 ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (9, 2, '/images/excoursions/armenia/new_ex_Armenia_6_500x300.png', 'During a walk around Yerevan, near the Cascade', '', '<h5> Day 2 </h5>
<b> Introducing Yerevan </b>. It is known as the city of roses and attracts travelers with its landscapes and unusual monuments.
A sightseeing <b> tour </b> around the city <b> will begin with </b> a visit to <b> Cascade </b> - this is a mega-staircase 500 meters high and 50 meters wide.
From here you can see the opera, Mount Ararat, Yerevan Swan Lake, Republic Square and Abovyan Street, which we will definitely go through later.
<p> </p>
Then, a <b> tour of the Ararat Brandy Factory </b> with a tasting of two varieties of cognac.
<p> </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (9, 3, '/images/excoursions/armenia/new_ex_Armenia_6_500x300.png', 'Во время прогулки по Еревану, возле мега-лестницы Каскад', '', '<h5>День 2</h5> 
<b>Знакомство с Ереваном</b>. Он известен как город роз и привлекает путешественников своими пейзажами и необычными памятниками. 
Обзорная <b>экскурсия</b> по городу <b>начнется с</b> посещения <b>Каскада</b> - это мега-лестница высотой 500 метров и шириной 50 метров.
Отсюда вы можете увидеть оперу, гору Арарат, Ереванское лебединое озеро, площадь Республики и улицу Абовяна, 
по которой мы потом обязательно пройдемся. 
<p></p>
Затем, <b>экскурсия на коньячный завод Арарат</b> с дегустацией двух сортов коньяка. 
<p></p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (9, 4, '/images/excoursions/armenia/new_ex_Armenia_6_500x300.png', 'Під час прогулянки по Єревану, біля Каскаду', '', '<H5> День 2 </h5>
<B> Знайомство з Єреваном </b>. Він відомий як місто троянд і приваблює мандрівників своїми пейзажами і незвичайними пам\'ятниками. Оглядова <b> екскурсія </b> містом <b> почнеться з </b> відвідування <b> Каскаду </b> - це мега-сходи заввишки 500 метрів і шириною 50 метрів. Звідси ви можете побачити оперу, гору Арарат, Єреванське лебедине озеро, площу Республіки і вулицю Абовяна, по якій ми потім обов\'язково прогуляємось.
<P> </p>
Потім, <b> екскурсія на коньячний завод Арарат </b> iз дегустацією двох сортів коньяку.
<P> </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (10, 1, '/images/excoursions/ex_bakuriani_500x300.jpg', 'Бакуриани', 'Как будем проводить отдых в Грузии с детьми зимой?', '<ul>
                            <li>по пути заедем в известный курорт Грузии - <b>Боржоми</b>, где посетим центральный парк, поднимемся на канатной дороге на Плато;</li>
                            <li>увидим Боржомское ущелье, где находится много древних христианских сооружений;</b></li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (10, 2, '/images/excoursions/ex_bakuriani_500x300.jpg', 'Bakuriani', 'How will we spend our holidays in Georgia with children in the winter?', '<ul>
                            <li>on the way we will visit the famous resort of Georgia - <b>Borjomi</b>, where we will visit the central park, we will rise on the cable car to the Plateau;</li>
                            <li>we will see the Borjomi Gorge, where many ancient Christian buildings are located;</b></li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (10, 3, '/images/excoursions/ex_bakuriani_500x300.jpg', 'Bakuriani', 'Как будем проводить отдых в Грузии с детьми зимой?', '<ul>
                            <li>по пути заедем в известный курорт Грузии - <b>Боржоми</b>, где посетим центральный парк, поднимемся на канатной дороге на Плато;</li>
                            <li>увидим Боржомское ущелье, где находится много древних христианских сооружений;</b></li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (10, 4, '/images/excoursions/ex_bakuriani_500x300.jpg', 'Бакуриані', 'Як будемо проводити відпочинок в Грузії із дітьми взимку?', '<ul><li> Дорогою завітаємо до відомого курорту Грузії - <b> Боржомі </b>, де відвідаємо центральний парк, підніймемося  канатною дорогою на Плато; </li><li> побачимо Боржомску ущелину, де знаходиться багато стародавніх християнських споруд; </b> </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (11, 1, '/images/excoursions/ex_bakuriani_3_500x300.jpg', 'Железноджорожный мост Эйфеля', '', 'По дороге остановимся возле места, где можно <b>увидеть железноджорожный мост</b>, 
                            <b>который сконструировал</b> в 1902 году инженер Густав <b>Эйфель</b> - известный так же, как автор Эйфелевой башни в Париже.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (11, 2, '/images/excoursions/ex_bakuriani_3_500x300.jpg', 'Eifel Railway Bridge', '', 'On the way we will stop near the place where you can <b>see the railroad bridge , which was designed</b> in 1902 by engineer Gustav <b>Eiffel</b> -  known as the author of the Eiffel Tower in Paris.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (11, 3, '/images/excoursions/ex_bakuriani_3_500x300.jpg', 'Eifel Railway Bridge', '', 'По дороге остановимся возле места, где можно <b>увидеть железноджорожный мост</b>, 
                            <b>который сконструировал</b> в 1902 году инженер Густав <b>Эйфель</b> - известный так же, как автор Эйфелевой башни в Париже.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (11, 4, '/images/excoursions/ex_bakuriani_3_500x300.jpg', 'Залізничний міст Ейфеля', '', 'На нашому шляху зупинимося біля місця, де ви <b> побачите залізнодорожний міст </b>,<b> який сконструював </b> в 1902 році інженер Густав <b> Ейфель </b> - відомий так само, як автор Ейфелевої вежі в Парижі.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (12, 1, '/images/excoursions/ex_bakuriani_2_500x300.jpg', 'Горнолыжная трасса Бакуриани', '', 'Затем будет <b>подъем на трассу</b> в поселке Бакуриани. Остаток дня катаемся на лыжах и сноубордах. 
                        <b>Для начинающих</b> лыжников предусмотрены <b>услуги инструктора</b>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (12, 2, '/images/excoursions/ex_bakuriani_2_500x300.jpg', 'Bakuriani ski slope', '', 'Then there will be an <b> ascent to the road</b> in the village of Bakuriani. The rest of the day we ski and snowboard. 
                        <b>Beginners are</b> provided with the <b>services of an instructor</b>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (12, 3, '/images/excoursions/ex_bakuriani_2_500x300.jpg', 'Bakuriani ski slope', '', 'Затем будет <b>подъем на трассу</b> в поселке Бакуриани. Остаток дня катаемся на лыжах и сноубордах. 
                        <b>Для начинающих</b> лыжников предусмотрены <b>услуги инструктора</b>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (12, 4, '/images/excoursions/ex_bakuriani_2_500x300.jpg', 'Гірськолижна траса Бакуріані', '', 'Далі <b> підйом на трасу </b> у селищі Бакуріані. Залишок дня катаємося на лижах, сноубордах, санчатах.
<b> Для початківців </b>- лижників передбачені <b> послуги інструктора </b>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (13, 1, '/images/excoursions/maps/ex_borjomi_1.jpg', 'Центр Боржоми', 'Боржоми, Хертвиси, Вардзия, Рабати? Что же это на самом деле? Эта экскурсия расскажет Вам:', '<ul>
                            <li><b>город Боржоми</b> - где находится <b>источник природной минеральной воды</b>, которая очень полезна для организма человека;</li>
                            <li><b>подъём по канатной дороге на Плато</b>, где открывается красивый вид на Боржомское ущелье;</li>
                            <li>самое популярное место отдыха - <b>Боржомский центральный парк</b>, где вы увидите красивый водопад, горная речка и парк атракционов;</li>
                           
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (13, 2, '/images/excoursions/maps/ex_borjomi_1.jpg', 'Borjomi Center', 'Borjomi, Khertvisi, Vardzia, Rabati? What is it really? This tour will tell you:', '<ul>
                            <li><b>city ​​Borjomi</b> - where there is a <b>source of natural mineral water</b>, which is very useful for the human body;</li>
                            <li><b>climbing the cable car to the Plateau</b>, where you can see a beautiful view of the Borzhomi Gorge;</li>
                            <li>the most popular holiday destination is - <b>Borjomi Central Park</b>, where you will see a beautiful waterfall, a mountain river and an amusement park;</li>
                           
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (13, 3, '/images/excoursions/maps/ex_borjomi_1.jpg', 'Borjomi Center', 'Боржоми, Хертвиси, Вардзия, Рабати? Что же это на самом деле? Эта экскурсия расскажет Вам:', '<ul>
                            <li><b>город Боржоми</b> - где находится <b>источник природной минеральной воды</b>, которая очень полезна для организма человека;</li>
                            <li><b>подъём по канатной дороге на Плато</b>, где открывается красивый вид на Боржомское ущелье;</li>
                            <li>самое популярное место отдыха - <b>Боржомский центральный парк</b>, где вы увидите красивый водопад, горная речка и парк атракционов;</li>
                           
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (13, 4, '/images/excoursions/maps/ex_borjomi_1.jpg', 'Центр Боржомі', 'Боржомі, Хертвісі, Вардзія, Рабат? Що ж це насправді? Ця екскурсія розповість Вам:', '<ul> <li> <b> місто Боржомі </b> - де знаходиться <b> джерело природної мінеральної води </b>, дуже корисної для організму людини; </li> <li> <b> підйом по канатній дорозі на Плато </b>, де відкривається гарний вид на Боржомску ущелину; </li>
<li> найпопулярніше місце відпочинку - <b> Боржомський центральний парк </b>, де ви побачите гарний водоспад, гірську річку та парк атракціонів; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (14, 1, '/images/excoursions/maps/ex_borjomi_rabati_500x300.jpg', 'Крепость «Рабат»', '', '<ul>
                            <li><b>Зелёный монастырь</b>  </li>
                            <li> <b>красивый городок Ахалцихе</b> с тысячелетней историей</li>
                            <li> увидим жемчужину юга Грузии <b>крепость «Рабат»</b> IX века, 
                                    где на глазах раскрывается средневековая история региона, 
                                    факты о которой находятся в краеведческом музее на территории крепости</li> 
                            <li> город Аспиндза, где находится <b>замок Хертвиси</b></li>
                         </ul>
                         <p></p>
                            По Вашему желанию мы можем организовать на этом месте <b>рафтинг на реке Кура</b>. 
                            Сложность проходжения маршрута: средняя или леёгкая. <b>Протяженность маршрута 16 км</b>  
                           
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (14, 2, '/images/excoursions/maps/ex_borjomi_rabati_500x300.jpg', 'Fortress «Rabat»', '', '<ul>
                            <li><b>The Green Monastery</b>  </li>
                            <li> <b>beautiful town of Akhaltsikhe</b> with a thousand-year history</li>
                            <li> we will see the pearl of the south of Georgia the <b>fortress "Rabat"</b> of the IX century, 
                            where the medieval history of the region is revealed before our eyes, 
                            the facts of which are in the museum of local lore on the territory of the fortress</li> 
                            <li> The city of Aspindza, where the <b>castle of Herchevis</b> is located </li>
                         </ul>
                         <p></p>
                            At your request, we can arrange <b>rafting on the Kura river here</b>. 
                           Difficulty of passing the route: medium or light. <b>The length of the route is 16 km</b>  
                           
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (14, 3, '/images/excoursions/maps/ex_borjomi_rabati_500x300.jpg', 'Fortress «Rabat»', '', '<ul>
                            <li><b>Зелёный монастырь</b>  </li>
                            <li> <b>красивый городок Ахалцихе</b> с тысячелетней историей</li>
                            <li> увидим жемчужину юга Грузии <b>крепость «Рабат»</b> IX века, 
                                    где на глазах раскрывается средневековая история региона, 
                                    факты о которой находятся в краеведческом музее на территории крепости</li> 
                            <li> город Аспиндза, где находится <b>замок Хертвиси</b></li>
                         </ul>
                         <p></p>
                            По Вашему желанию мы можем организовать на этом месте <b>рафтинг на реке Кура</b>. 
                            Сложность проходжения маршрута: средняя или леёгкая. <b>Протяженность маршрута 16 км</b>  
                           
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (14, 4, '/images/excoursions/maps/ex_borjomi_rabati_500x300.jpg', 'Фортеця «Рабат»', '', '<ul><li> <b> Зелений монастир </b> </li><li> <b> гарне містечко Ахалцихе </b> із тисячолітньою історією </li><li> побачимо перлину півдня Грузії <b> фортеця «Рабат» </b> IX століття, де на очах розкривається середньовічна історія регіону, факти про яку знаходяться у краєзнавчому музеї на території фортеці </li><li> місто Аспіндза, де знаходиться <b> замок Хертвісі </b> </li></ul><p></p> За Вашим бажанням ми можемо організувати на цьому місці <b> рафтинг на річці Кура.</b> Складність проходження маршруту: середня або легка. <b> Протяжність маршруту 16 км </b>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (15, 1, '/images/excoursions/maps/ex_borjomi_vardzia_1_500x300.jpg', 'пещерный город Вардзия', '', '<ul>
                           Затем нас ждет <b>пещерный город Вардзия</b> – одно из главных туристических мест Грузии. 
                           Это пещерный монастырский комплекс, высеченный в скалах в XII веке, во времена правления царицы Тамары.
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (15, 2, '/images/excoursions/maps/ex_borjomi_vardzia_1_500x300.jpg', 'cave city Vardzia', '', '<ul>
                           Then we are waiting for the <b>cave city of Vardzia</b> – one of the main tourist places of Georgia. 
                           This cave monastery complex, carved into the rocks in the XII century, during the reign of Queen Tamara..
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (15, 3, '/images/excoursions/maps/ex_borjomi_vardzia_1_500x300.jpg', 'cave city Vardzia', '', '<ul>
                           Затем нас ждет <b>пещерный город Вардзия</b> – одно из главных туристических мест Грузии. 
                           Это пещерный монастырский комплекс, высеченный в скалах в XII веке, во времена правления царицы Тамары.
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (15, 4, '/images/excoursions/maps/ex_borjomi_vardzia_1_500x300.jpg', 'печерне місто Вардзія', '', '<ul> Потім на нас чекає <b> печерне місто Вардзія </b> - одне з головних туристичних місць Грузії.  Це печерний монастирський комплекс, висічений в скелях в XII столітті, за часів правління цариці Тамари.
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (16, 1, '/images/excoursions/maps/ex_dmanisi_1_500x300.jpg', 'храм XIII века Цугругашени', 'Список мест, которые вы увидите во время экскурсии:', '<ul>
                            <li>храм XIII века <b>Цугругашени</b>, который стоит на горе и оттуда открываются красивые виды;</li> 
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (16, 2, '/images/excoursions/maps/ex_dmanisi_1_500x300.jpg', 'XIII century temple of Zugrugsheni', 'List of places that you see during the tour:', '<ul>
                            <li>a temple of the XIII century <b>Tsugrugasheni</b>, which stands on a hill and from there beautiful views are opened;</li> 
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (16, 3, '/images/excoursions/maps/ex_dmanisi_1_500x300.jpg', 'XIII century temple of Zugrugsheni', 'Список мест, которые вы увидите во время экскурсии:', '<ul>
                            <li>храм XIII века <b>Цугругашени</b>, который стоит на горе и оттуда открываются красивые виды;</li> 
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (16, 4, '/images/excoursions/maps/ex_dmanisi_1_500x300.jpg', 'храм XIII століття Цугругашені', 'Перечень місць, які ви побачите під час екскурсії:', '<ul><li> храм XIII століття <b> Цугругашені </b>, що стоїть на горі, звідти відкриваються дуже гарні краєвиди; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (17, 1, '/images/excoursions/maps/ex_dmanisi_2_500x300.jpg', 'Храм Болнийский сиони', '', '<ul>
                           <li><b>Болнийский сиони</b> - храм построен в V веке н.э., находится вблизи города Болниси. 
                                    Храм является старейшим из сохранившихся архитектурных сооружений на территории Грузии;</li>
                            <li>монастырь Дманийский сиони VI века н.э.;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (17, 2, '/images/excoursions/maps/ex_dmanisi_2_500x300.jpg', 'Temple of Bolnisi Zioni', '', '<ul>
                           <li><b>Bolnian Zion</b> -  a temple built in the V century AD, is located near the town of Bolnisi. 
                            The temple is the oldest surviving architectural structure on the territory of Georgia;</li>
                            <li>Monastery of Dmanian Zion of the VI century;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (17, 3, '/images/excoursions/maps/ex_dmanisi_2_500x300.jpg', 'Temple of Bolnisi Zioni', '', '<ul>
                           <li><b>Болнийский сиони</b> - храм построен в V веке н.э., находится вблизи города Болниси. 
                                    Храм является старейшим из сохранившихся архитектурных сооружений на территории Грузии;</li>
                            <li>монастырь Дманийский сиони VI века н.э.;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (17, 4, '/images/excoursions/maps/ex_dmanisi_2_500x300.jpg', 'Храм Болнійскій Сіоні', '', '<ul><li><b>Болнійський Сіоні</b> - храм збудований у V столітті н.е., знаходиться поблизу міста Болнісі. Храм є найстарішим зі збережених архітектурних споруд на території Грузії; </li><li> монастир Дманійський Сіоні VI століття н.е..; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (18, 1, '/images/excoursions/maps/europeans_1_500x300.jpg', 'первые европейцы в Дманиси -  Зезва и Мзия', '', '<ul>
                            <li>Дманийский музей, побываем в музее Дманиси, на участке археологических раскопок, 
                                где был найден череп первого человека в Европе, возрастом 1,6 миллионов лет и где одновременно представлены культурные пласты 3-х эпох: 
                                каменного века, бронзового и средневековья.;</li>
                        </ul>
                 ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (18, 2, '/images/excoursions/maps/europeans_1_500x300.jpg', 'The first Europeans in Dmanisi - Zezva and Mzia', '', '<ul>
                            <li>The Dmanis museum, visit the Dmanisi museum, on the site of archaeological excavations, 
                            where the skull of the first person in Europe was found, 1.6 million years old and where cultural layers of 3 epochs - 
                            the Stone Age, Bronze and Middle Ages;</li>
                        </ul>
                 ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (18, 3, '/images/excoursions/maps/europeans_1_500x300.jpg', 'The first Europeans in Dmanisi - Zezva and Mzia', '', '<ul>
                            <li>Дманийский музей, побываем в музее Дманиси, на участке археологических раскопок, 
                                где был найден череп первого человека в Европе, возрастом 1,6 миллионов лет и где одновременно представлены культурные пласты 3-х эпох: 
                                каменного века, бронзового и средневековья.;</li>
                        </ul>
                 ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (18, 4, '/images/excoursions/maps/europeans_1_500x300.jpg', 'перші європейці в Дманісі - Зезва і Мзія', '', '<ul><li> Маємо змогу відвідати музей Дманісі, ділянку археологічних розкопок, де був знайдений череп першої людини в Європі, віком 1,6 мільйона років і де одночасно представлені культурні пласти трьох епох: кам\'яного віку, бронзового і середньовіччя.; </li>
</ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (19, 1, '/images/excoursions/ex_gudauri_3_500x300.jpg', 'Полет на паропланах в Гудаури', 'Как будем проводить отдых в Гудаури?', '<ul>
                            <li>удивительно <b>красивые виды на Жинвальское водохранилище</b>;</li>
                            <li>прекрасно сохранившийся исторический объект эпохи раннего феодализма – <b>крепость Ананури;</b></li>
                            <li>родину хинкали - поселок Пасанаури, где увидим две уникальные реки, Белую и Черную Арагви, 
                                 которые сливаются в общее русло, но их светлая и темная воды при этом не смешиваются;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (19, 2, '/images/excoursions/ex_gudauri_3_500x300.jpg', 'Flight on steamplanes in Gudauri', 'How will we spend our holidays in Gudauri?', '<ul>
                            <li>amazingly <b>beautiful views of the Zhinval water reservoir</b>;</li>
                            <li>a perfectly preserved historical object of the era of early feudalism – <b>Ananuri fortress;</b></li>
                            <li>the homeland of khinkali - the village of Pasanauri, where we will see two unique rivers, 
                                the White and the Black Aragvi, which merge into a common channel, but their light and dark waters do not mix at the same time;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (19, 3, '/images/excoursions/ex_gudauri_3_500x300.jpg', 'Flight on steamplanes in Gudauri', 'Как будем проводить отдых в Гудаури?', '<ul>
                            <li>удивительно <b>красивые виды на Жинвальское водохранилище</b>;</li>
                            <li>прекрасно сохранившийся исторический объект эпохи раннего феодализма – <b>крепость Ананури;</b></li>
                            <li>родину хинкали - поселок Пасанаури, где увидим две уникальные реки, Белую и Черную Арагви, 
                                 которые сливаются в общее русло, но их светлая и темная воды при этом не смешиваются;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (19, 4, '/images/excoursions/ex_gudauri_3_500x300.jpg', 'Політ на паропланах в Гудаурі', 'Як будемо проводити відпочинок в Гудаурі?', '<ul><li>  надиво <b> гарні краєвиди Жинвальського водосховища </b>; </li><li> добре збережений історичний об\'єкт епохи раннього феодалізму - <b> фортеця Ананурі; </b></li><li> батьківщина хінкалі - селище Пасанаурі, де побачимо дві унікальні річки, Білу і Чорну Арагві, що зливаються в загальне русло, але їх світла і темна води при цьому не змішуються; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (20, 1, '/images/excoursions/ex_gudauri_4_500x300.jpg', 'Смотровая площадка в Гудаури', '', 'Головокружительные <b>виды с гудаурской смотровой площадки</b> равнодушным не оставят никого.
                        Здесь очень красиво <b>в любое время года</b>!  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (20, 2, '/images/excoursions/ex_gudauri_4_500x300.jpg', 'Observation deck in Gudauri', '', 'Dizzying <b>views from the Gudaur viewpoint</b> will not leave anyone indifferent. It is very beautiful <b>in all seasons</b>!  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (20, 3, '/images/excoursions/ex_gudauri_4_500x300.jpg', 'Observation deck in Gudauri', '', 'Головокружительные <b>виды с гудаурской смотровой площадки</b> равнодушным не оставят никого.
                        Здесь очень красиво <b>в любое время года</b>!  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (20, 4, '/images/excoursions/ex_gudauri_4_500x300.jpg', 'Оглядовий майданчик у Гудаурі', '', 'Запаморочливі <b> види з гудаурского оглядового майданчика </b> байдужим не залишать нікого. Тут дуже гарно <b> у будь-яку пору року </b>!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (21, 1, '/images/excoursions/ex_gudauri_2_500x300.jpg', 'подъем на трассу Гудаури', '', 'Далее нас ожидает гордость Грузии – <b>горнолыжный курорт Гудаури</b>,
                               расположенный на южных склонах Большого Кавказского хребта на высоте более 2000 метров над уровнем моря. Затем будет <b>подъем на трассу</b>. Остаток дня:
                        <ul>  
                            <li>полёт на пароплане;</li>
                            <li>катание на лыжах и сноубордах;</li>
                            <li> <b>Для начинающих</b> лыжников предусмотрены <b>услуги инструктора</b></li>
                        </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (21, 2, '/images/excoursions/ex_gudauri_2_500x300.jpg', 'The rise on ski slope Gudauri', '', 'Next, we are waiting for the pride of Georgia - the <b>ski resort of Gudauri</b>,
                               located on the southern slopes of the Greater Caucasus Range at an altitude of more than 2000 meters above sea level. Then there will be an <b>ascent to the track </b>. The rest of the day:
                        <ul>  
                            <li>flight on a steamer;</li>
                            <li>skiing and snowboarding;</li>
                            <li> <b>Beginners are</b> provided with the <b>services of an instructor</b></li>
                        </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (21, 3, '/images/excoursions/ex_gudauri_2_500x300.jpg', 'The rise on ski slope Gudauri', '', 'Далее нас ожидает гордость Грузии – <b>горнолыжный курорт Гудаури</b>,
                               расположенный на южных склонах Большого Кавказского хребта на высоте более 2000 метров над уровнем моря. Затем будет <b>подъем на трассу</b>. Остаток дня:
                        <ul>  
                            <li>полёт на пароплане;</li>
                            <li>катание на лыжах и сноубордах;</li>
                            <li> <b>Для начинающих</b> лыжников предусмотрены <b>услуги инструктора</b></li>
                        </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (21, 4, '/images/excoursions/ex_gudauri_2_500x300.jpg', 'Підйом на гірськолижний схил Гудаурі', '', 'Далі на нас чекає гордість Грузії - <b> гірськолижний курорт Гудаурі </b>, розташований на південних схилах Великого Кавказького хребта на висоті понад 2000 метрів над рівнем моря. Потім буде <b> підйом на трасу </b>. Залишок дня:<ul><li> політ на пароплані; </li><li> катання на лижах, сноубордах та санчатах; </li><li> <b> Для початківців </b> - лижників передбачені <b> послуги інструктора </b> </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (22, 1, '/images/cards/hareba_500x300.jpg', 'дегустация уникальных сортов вина на заводе Хареба', 'В Кахетии можно увидеть следующее:', '<ul>
                            <li><b>Крепость Уджарма</b> - памятник архитектуры средневековья;</li>
                            <li>наш путь пройдёт через очень красивый <b>Гомборский перевал</b>;</li>
                            <li>затем, <b>прогулка по городу Телави</b>, который известен тем, что там снимался фильм "Мимино";</li>
                            <li>экскурсия в музее лозы и вина;</li> 
                            <li><b>дегустация</b> уникальных сортов <b>грузинского вина на заводе Хареба</b>;</li>
                            <li>обед в национальном грузинском ресторане;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (22, 2, '/images/cards/hareba_500x300.jpg', 'tasting of unique sorts of wine at the Hareba plant', 'In Kakheti you can see the following:', '<ul>
                            <li><b>Ujarma fortress</b> -a monument of the architecture of the Middle Ages;</li>
                            <li>our way will pass through a very beautiful <b>Gombor Pass</b>;</li>
                            <li>then, a <b>walk through the city of Telavi</b>, which is known for the fact that the film "Mimino" was shot there;</li>
                            <li>excursion to the museum of vines and wine;</li> 
                            <li><b>degusting</b> unique varieties of <b>Georgian wine at the Hareba plant</b>;</li>
                            <li>lunch at the national Georgian restaurant;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (22, 3, '/images/cards/hareba_500x300.jpg', 'tasting of unique sorts of wine at the Hareba plant', 'В Кахетии можно увидеть следующее:', '<ul>
                            <li><b>Крепость Уджарма</b> - памятник архитектуры средневековья;</li>
                            <li>наш путь пройдёт через очень красивый <b>Гомборский перевал</b>;</li>
                            <li>затем, <b>прогулка по городу Телави</b>, который известен тем, что там снимался фильм "Мимино";</li>
                            <li>экскурсия в музее лозы и вина;</li> 
                            <li><b>дегустаия</b> уникальных сортов <b>грузинского вина на заводе Хареба</b>;</li>
                            <li>обед в национальном грузинском ресторане;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (22, 4, '/images/cards/hareba_500x300.jpg', 'дегустація унікальних сортів вина на заводі Хареба', 'У Кахетії можна побачити наступне:', '<ul> <li> <b> Фортеця Уджарма </b> - пам\'ятник архітектури середньовіччя; </li><li> наш шлях пройде через гарний <b> Гомборській перевал </b>; </li><li> далі, <b> прогулянка по містом Телаві </b>,  відоме тим, що там знімався фільм "Міміно"; </li><li> екскурсія до музею лози і вина; </li><li> <b> дегустаія </b> унікальних сортів <b> грузинського вина на заводі Хареба </b>; </li><li> обід в національному грузинському ресторані; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (23, 1, '/images/excoursions/kaheti1/excursion_kaheti_2_500x300.jpg', 'прогулка по городу влюблённых - Сигнахи', '', '<ul>
                            <li>удивительные <b>виды на бескрайнюю Алазанскую долину</b>, которая поражает глаза и радует фотоаппараты;</li>
                            <li><b>прогулка по городу влюблённых - Сигнахи</b>, город маленький, но очень колоритный. Почему его называют городом влюбленных? 
                                    Здесь находится известный на весь мир ЗАГС, где могут расписаться влюблённные пары в любое время суток. 
                                    Интересно, что в Грузии очень простая процедура заключения брака, поэтому многие пары приезжают сюда для проведения свадьбы;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (23, 2, '/images/excoursions/kaheti1/excursion_kaheti_2_500x300.jpg', 'walk around the city of lovers - Sighnagi', '', '<ul>
                            <li>amazing <b>views of the boundless Alazani valley</b>, which amazes the eyes and pleases the cameras;</li>
                            <li><b>walk around the city of lovers - Sighnaghi </b>, the city is small, but very colorful.
                             Why is it called the city of lovers? Here is a well-known to the whole world registrar, where couples can be signed at any time of the day. 
                             Interestingly, in Georgia, a very simple procedure for marriage, so many couples come here for a wedding;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (23, 3, '/images/excoursions/kaheti1/excursion_kaheti_2_500x300.jpg', 'walk around the city of lovers - Sighnagi', '', '<ul>
                            <li>удивительные <b>виды на бескрайнюю Алазанскую долину</b>, которая поражает глаза и радует фотоаппараты;</li>
                            <li><b>прогулка по городу влюблённых - Сигнахи</b>, город маленький, но очень колоритный. Почему его называют городом влюбленных? 
                                    Здесь находится известный на весь мир ЗАГС, где могут расписаться влюблённные пары в любое время суток. 
                                    Интересно, что в Грузии очень простая процедура заключения брака, поэтому многие пары приезжают сюда для проведения свадьбы;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (23, 4, '/images/excoursions/kaheti1/excursion_kaheti_2_500x300.jpg', 'прогулянка по місту закоханих - Сигнахи', '', '<ul><li> дивовижні <b> види на нескінченну Алазанську долину </b>, яка здивує ваші очі й радуватиме ваші фотоапарати; </li><li> <b> прогулянка містом закоханих - Сигнахі </b>, воно маленьке, але дуже колоритне. Чому його називають містом закоханих?  Тут знаходиться відомий на весь світ РАГС, де можуть розписатися закохані пари у будь-який час доби. Цікаво, що в Грузії дуже проста процедура укладення шлюбу, тому багато пар приїзджають сюди для проведення весілля або вінчання; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (24, 1, '/images/excoursions/kaheti1/excursion_kaheti_1.jpg', 'спуск к источнику в монастыре Бодбе', '', '<ul>
                            <li>всего в 2х километрах от Сигнахи находится действующий <b>Бодбийский монастырь</b> - уникальное святое место. 
                                Поломники из разных стран приезжают сюда для того, чтобы <b>выпить святой воды из родника Святой Нины</b>, 
                                или искупаться в нём, и наполниться духовностью.
                                Спуск к роднику проходит по лестнице, которая состоит из ступеней и протяженность её - 3 километра. 
                                Но пусть этот путь не пугает Вас, так как на протяжении всей дороги встречаются скамейки для отдыха.</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (24, 2, '/images/excoursions/kaheti1/excursion_kaheti_1.jpg', 'descent to the source in the monastery of Bodbe', '', '<ul>
                            <li>just 2 km from Signagi there is a functioning <b>Bodbe monastery</b> - a unique sacred place. 
                                Pilgrims from different countries come here to <b>drink holy water from the spring of Saint Nina</b>, 
                                or bathe in it, and be filled with spirituality. The descent to the spring passes along the stairs, 
                                which consists of steps and its extent is 3 kilometers. But do not let this path scare you, 
                                because there are benches for rest throughout the entire road.</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (24, 3, '/images/excoursions/kaheti1/excursion_kaheti_1.jpg', 'descent to the source in the monastery of Bodbe', '', '<ul>
                            <li>всего в 2х километрах от Сигнажи находится действующий <b>Бодбийский монастырь</b> - уникальное святое место. 
                                Поломники из разных стран приезжают сюда для того, чтобы <b>выпить святой воды из родника Святой Нины</b>, 
                                или искупаться в нём, и наполниться духовностью.
                                Спуск к роднику проходит по лестнице, которая состоит из ступеней и протяженность её - 3 километра. 
                                Но пусть этот путь не пугает Вас, так как на протяжении всей дороги встречаются скамейки для отдыха.</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (24, 4, '/images/excoursions/kaheti1/excursion_kaheti_1.jpg', 'спуск до джерела в монастирі Бодбе', '', '<ul> <li> усього за 2 кілометри від Сігнахі знаходиться діючий <b> Бодбійський монастир </b> - унікальне святе місце. Поломники з різних країн приїзджають сюди для того, щоб <b> випити святої води із джерела Святої Ніни </b>, або зкупатися у ньому та наповнитися духовністю. Спуск до джерела йде сходами, протяжність котрих близько 3 кілометри. Але нехай цей шлях не лякає Вас, бо на шляху  зустрічаються лавки для відпочинку. </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (25, 1, '/images/excoursions/ex_kaheti_shumi_1_500x300.jpg', 'Сигнагхи - город влюбленных', 'В Кахетии вы увидите:', '<ul>
                            <li>памятник средневековой архитектуры - <b>Крепость Уджарма</b>;</li>
                            <li>красивейший <b>Гомборский перевал</b>, через который будет проходить наш путь;</li>
                            <li>посмотрим древние храмы и монастыри <b>в городе Телави</b>, который так же известен тем, что там снимался фильм "Мимино";</li>
                            <li><b>дом-музей Чавчавадзе</b> в городе Цинандали;</li> 
                            <li>экскурсий на винный завод Шуми, где вы сможете <b>продегустировать несколько</b> уникальных <b>сортов грузинского вина</b>;</li>
                            <li>здесь же, на заводе, можно пообедать в национальном ресторане;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (25, 2, '/images/excoursions/ex_kaheti_shumi_1_500x300.jpg', 'The first Europeans in Dmanisi - Zezva and Mzia', 'In Kakheti you can see:', '<ul>
<li>a monument of medieval architecture - <b>Ujarma Fortress</b>;</li>
<li>The most beautiful <b>Gombor Pass</b>, through which our path will pass;</li>
<li>see ancient temples and monasteries <b>in the city of Telavi</b>, which is also known for the fact that the film "Mimino" was shot there;</li>
<li><b>house-museum of Chavchavadze</b> in Tsinandali;</li>
<li>excursions to the Shumi winery, where you can <b>taste several</b> unique <b>varieties of Georgian wine</b>;</li>
<li>here, at the factory, you can dine at the national restaurant</li>

</ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (25, 3, '/images/excoursions/ex_kaheti_shumi_1_500x300.jpg', 'Сигнагхи - город влюбленных', 'В Кахетии вы увидите:', '<ul>
                            <li>памятник средневековой архитектуры - <b>Крепость Уджарма</b>;</li>
                            <li>красивейший <b>Гомборский перевал</b>, через который будет проходить наш путь;</li>
                            <li>посмотрим древние храмы и монастыри <b>в городе Телави</b>, который так же известен тем, что там снимался фильм "Мимино";</li>
                            <li><b>дом-музей Чавчавадзе</b> в городе Цинандали;</li> 
                            <li>экскурсий на винный завод Шуми, где вы сможете <b>продегустировать несколько</b> уникальных <b>сортов грузинского вина</b>;</li>
                            <li>здесь же, на заводе, можно пообедать в национальном ресторане;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (25, 4, '/images/excoursions/ex_kaheti_shumi_1_500x300.jpg', 'Сигнагхі - місто закоханих', 'У Кахетії ви побачите:', '<ul>
                            <li>пам\'ятник середньовічної архітектури - <b>Фортеця Уджарма</b>;</li>
                            <liвеличний <b>Гомборський перевал</b>, яким буде проходити наш шлях;</li>
                            <li>побачимо стародавні храми і монастирі <b>в місті Телаві</b> , відоме тим, що там знімався фільм "Міміно";</li>
                            <li><b>будинок-музей Чавчавадзе</b> в місті Цинандалі;</li> 
                            <li>екскурсія до винного заводу Шумі, де ви зможете <b>продегустувати кілька</b> унікальних <b>сортів грузинського вина</b>;</li>
                            <li>тут же, на заводі, можна пообідати у національному ресторані;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (26, 1, '/images/excoursions/ex_kaheti_shumi_2_500x300.jpg', 'Один из винных погребов Грузии', '', '<ul>
                            <li>по дороге остановимся и полюбуемся на <b>виды Алазанской долины</b>;</li>
                            <li>поднимемся на <b>крепость Сингнахи</b>, которая стоит с древних времен и защищала город от нападающих врагов;</li>
                            <li><b>прогулка по городу влюблённых - Сигнахи</b>, город маленький, но очень колоритный;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (26, 2, '/images/excoursions/ex_kaheti_shumi_2_500x300.jpg', 'One of the wineries of Georgia', '', '<ul>
                            <li>on the way we will stop and admire the <b>views of the Alazani valley</b>;</li>
                            <li>rise to the <b>fortress of Singhahi</b>, which has stood since ancient times and protected the city from attacking enemies;</li>
                            <li><b>walk around the city of lovers - Sighnaghi </b>,  a small but very colorful city;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (26, 3, '/images/excoursions/ex_kaheti_shumi_2_500x300.jpg', 'One of the wineries of Georgia', '', '<ul>
                            <li>по дороге остановимся и полюбуемся на <b>виды Алазанской долины</b>;</li>
                            <li>поднимемся на <b>крепость Сингнахи</b>, которая стоит с древних времен и защищала город от нападающих врагов;</li>
                            <li><b>прогулка по городу влюблённых - Сигнахи</b>, город маленький, но очень колоритный;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (26, 4, '/images/excoursions/ex_kaheti_shumi_2_500x300.jpg', 'Один з винних погребів Грузії', '', '<ul><li> дорогою зробимо зупинку, щоб помилуватись на <b> види Алазанську долину </b>; </li> <li> піднімемося до <b> фортеці Сінгнахі </b>, що стоїть з давніх часів, вона захищала місто від нападників й ворогів; </li> <li> <b> прогулянка містом закоханих - Сигнахі </b>, воно маленьке, але дуже колоритне; </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (27, 1, '/images/excoursions/ex_kaheti_2_bodbe_2_500x300.jpg', 'действующий монастырь Бодбе', '', '<ul>
                            <li>действующий <b>Бодбийский монастырь</b> - уникальное святое место, 
                                где находится могила святой Нины, просветительницы Грузии в начале IV века н.э. 
                                Так же, здесь есть <b>родник с целебной водой</b> ("источник святой Нины").
                                Много людей спускаются к нему, чтобы выпить воды и получить духовное и телесное исцеление. 
                                </li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (27, 2, '/images/excoursions/ex_kaheti_2_bodbe_2_500x300.jpg', 'active monastery Bodbe', '', '<ul>
                            <li>the functioning <b>Bodbe monastery</b> - is a unique sacred place where the grave of Saint Nina,
                             the educator of Georgia is located in the beginning of IV century AD. Also, there is a <b>spring with healing water</b> ("the source of Saint Nina").
                                Many people go down to him to drink water and receive spiritual and bodily healing.
                                </li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (27, 3, '/images/excoursions/ex_kaheti_2_bodbe_2_500x300.jpg', 'active monastery Bodbe', '', '<ul>
                            <li>действующий <b>Бодбийский монастырь</b> - уникальное святое место, 
                                где находится могила святой Нины, просветительницы Грузии в начале IV века н.э. 
                                Так же, здесь есть <b>родник с целебной водой</b> ("источник святой Нины").
                                Много людей спускаются к нему, чтобы выпить воды и получить духовное и телесное исцеление. 
                                </li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (27, 4, '/images/excoursions/ex_kaheti_2_bodbe_2_500x300.jpg', 'діючий монастир Бодбе', '', '<ul><li> діючий <b> Бодбійський монастир </b> - унікальне святе місце, де знаходиться могила святої Ніни, просвітительки Грузії на початку IV століття н.е. Так само, тут є <b> джерело з цілющою водою </b> ( "джерело святої Ніни"). Багато людей спускаються до нього, щоб випити води і отримати духовне та тілесне зцілення.</li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (28, 1, '/images/excoursions/david_gareja/david_gareja_1_500x300.jpg', 'Монастырь Давид Гареджа', 'Давид-Гареджа - комплекс грузинских пещерных монастырей VI века:', '<ul>
                        Монастырь находится в 60 км от Тбилиси, на самой границе между Грузией и Азербайджаном. 
                        Он <b>основан Давидом</b>, одним из 13-ти ассирийских отцов VI века. <b>Здесь же</b> и находится <b>его святая могила</b>.
                        </li> 
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (28, 2, '/images/excoursions/david_gareja/david_gareja_1_500x300.jpg', 'David Gareja Monastery', 'David-Gareja - a complex of Georgian cave monasteries of the VI century:', '<ul>
                        The monastery is located 60 km from Tbilisi, on the very border between Georgia and Azerbaijan. He was
                         <b>founded by David</b>, one of the 13 Assyrian fathers of the 6th century. <b>Here</b> is <b>his holy grave</b>.
                        </li> 
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (28, 3, '/images/excoursions/david_gareja/david_gareja_1_500x300.jpg', 'David Gareja Monastery', 'Давид-Гареджа - комплекс грузинских пещерных монастырей VI века:', '<ul>
                        Монастырь находится в 60 км от Тбилиси, на самой границе между Грузией и Азербайджаном. 
                        Он <b>основан Давидом</b>, одним из 13-ти ассирийских отцов VI века. <b>Здесь же</b> и находится <b>его святая могила</b>.
                        </li> 
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (28, 4, '/images/excoursions/david_gareja/david_gareja_1_500x300.jpg', 'Монастир Давид Гареджі', 'Давид-Гареджі - комплекс грузинських печерних монастирів VI століття:', '<ul> Монастир знаходиться близько 60 км від Тбілісі, на самому кордоні між Грузією та Азербайджаном. Він <b> заснований Давидом </b>, одним з 13-ти ассірійських батьків VI століття. <b> Саме тут </b>  знаходиться <b> його свята могила </b>.</li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (29, 1, '/images/excoursions/david_gareja/david_gareja_2_500x300.jpg', 'уникальные фрески VIII—XIV веков', '', '<ul>
                           На территории комплекса <b>расположены более 100 пещер</b>, которые использовались монахами в качестве келий.
                           В монастыре и в Лавре Давида хорошо <b>сохранились уникальные фрески VIII—XIV веков</b> с портретами исторических лиц, в том числе царицы Тамары
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (29, 2, '/images/excoursions/david_gareja/david_gareja_2_500x300.jpg', 'unique frescoes of the 8th — 14th centuries', '', '<ul>
                           On the territory of the complex  <b>are more than 100 caves</b>, which were used by monks as cells. In the monastery and in the Lavra of David there are well
                            <b>preserved unique frescoes of the VIII—XIV centuries</b> with portraits of historical figures, including the queen Tamara
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (29, 3, '/images/excoursions/david_gareja/david_gareja_2_500x300.jpg', 'unique frescoes of the 8th — 14th centuries', '', '<ul>
                           На территории комплекса <b>расположены более 100 пещер</b>, которые использовались монахами в качестве келий.
                           В монастыре и в Лавре Давида хорошо <b>сохранились уникальные фрески VIII—XIV веков</b> с портретами исторических лиц, в том числе царицы Тамары
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (29, 4, '/images/excoursions/david_gareja/david_gareja_2_500x300.jpg', 'унікальні фрески VIII-XIV століть', '', '<ul>На території комплексу <b> розташовано понад 100 печер </b>, що використовувалися ченцями у якості келій. В монастирі і в Лаврі Давида добре <b> збереглися унікальні фрески VIII-XIV століть </b> із портретами історичних осіб, в тому числі цариці Тамари
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (30, 1, '/images/cards/david_garedji_500x300.jpg', 'здесь живут настоящие монахи', '', '<ul>
                           В первой половине VIV века монастырь являлся важным политическим и экономическим центром Грузии. 
                           Это <b>действующий монастырь</b> и до сегодняшнего времени, <b>где живут</b> и ведут монашескую жизнь настоящие <b>монахи</b>.
                        </ul>
                 ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (30, 2, '/images/cards/david_garedji_500x300.jpg', 'real monks live and lead monastic life here', '', '<ul>
                           In the first half of the VIV century the monastery was an important political and economic center of Georgia. It is an
                            <b>active monastery</b> and until today, <b>where monks live</b> and lead monastic life.
                        </ul>
                 ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (30, 3, '/images/cards/david_garedji_500x300.jpg', 'real monks live and lead monastic life here', '', '<ul>
                           В первой половине VIV века монастырь являлся важным политическим и экономическим центром Грузии. 
                           Это <b>действующий монастырь</b> и до сегодняшнего времени, <b>где живут</b> и ведут монашескую жизнь настоящие <b>монахи</b>.
                        </ul>
                 ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (30, 4, '/images/cards/david_garedji_500x300.jpg', 'тут живуть справжні монахи', '', '<ul> У першій половині VIV століття монастир був важливим політичним і економічним центром Грузії.  Це <b> діючий монастир </b> й до теперішнього часу, <b> де живуть </b> та ведуть чернече життя справжні <b> монахи </b>. </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (31, 1, '/images/excoursions/mtskheta_1/excursion_mtskheta_2_500x300.jpg', 'Монастырь Джвари', 'Что же вы увидите по время этой экскурсии по Грузии?', '<ul>
                            <li>знаменитый <b>монастырь Джвари</b>, откуда открывается удивительный вид на наш следующий пункт назначения;</li>
                            <li><b>город - Мцхета</b> - первая столица Грузии, также его называют "Вторым Иерусалимом", потому что там находится много святых и культовых мест;</li>
                            <li><b>кафедральный собор Светицховели</b>;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (31, 2, '/images/excoursions/mtskheta_1/excursion_mtskheta_2_500x300.jpg', 'Jvari Monastery', 'What will you see during this tour of Georgia?', '<ul>
                            <li>the famous <b> Jvari Monastery</b>, which offers an amazing view of our next destination;</li>
                            <li><b>the city - Mtskheta</b>- the first capital of Georgia, also called the "Second Jerusalem", because there are many holy and cult places there;</li>
                            <li><b>Svetitskhoveli Cathedral</b>;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (31, 3, '/images/excoursions/mtskheta_1/excursion_mtskheta_2_500x300.jpg', 'Jvari Monastery', 'Что же вы увидите по время этой экскурсии по Грузии?', '<ul>
                            <li>знаменитый <b>монастырь Джвари</b>, откуда открывается удивительный вид на наш следующий пункт назначения;</li>
                            <li><b>город - Мцхета</b> - первая столица Грузии, также его называют "Вторым Иерусалимом", потому что там находится много святых и культовых мест;</li>
                            <li><b>кафедральный собор Светицховели</b>;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (31, 4, '/images/excoursions/mtskheta_1/excursion_mtskheta_2_500x300.jpg', 'монастир Джварі', 'Що ж ви побачите по час цієї екскурсії по Грузії?', '<ul> <li> відомий <b> монастир Джварі </b>, звідки відкривається дивовижний вид на наш наступний пункт призначення; </li><li> <b> місто - Мцхета </b> - перша столиця Грузії, також її називають "Другим Єрусалимом", бо там знаходиться багато святих і культових місць; </li><li> <b> кафедральний собор Светіцховелі </b>; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (32, 1, '/images/cards/mtskheta_big_2_500x300.jpg', 'мужской монастырь Шио-Мгвиме', '', '<ul>
                            <li>действующий <b>женский монастырь Самтавро</b>;</li>
                            <li>действующий <b>мужской монастырь Шио-Мгвиме</b>;</li>
                            <li>один из редчайших памятников в мире - древний <b>город-крепость Уплисцихе</b>, высеченный в скалах. Это место находится под защитой ЮНЕСКО;</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (32, 2, '/images/cards/mtskheta_big_2_500x300.jpg', 'Shio-Mgvime monastery', '', '<ul>
                            <li>The operating <b>Samtavro Convent</b>;</li>
                            <li>operating  <b>monastery of Shio-Mgvime</b>;</li>
                            <li>one of the rarest monuments in the world - the ancient <b>city-fortress Uplistsikhe</b>, carved into the rocks. This place is under the protection of UNESCO;</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (32, 3, '/images/cards/mtskheta_big_2_500x300.jpg', 'Shio-Mgvime monastery', '', '<ul>
                            <li>действующий <b>женский монастырь Самтавро</b>;</li>
                            <li>действующий <b>мужской монастырь Шио-Мгвиме</b>;</li>
                            <li>один из редчайших памятников в мире - древний <b>город-крепость Уплисцихе</b>, высеченный в скалах. Это место находится под защитой ЮНЕСКО;</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (32, 4, '/images/cards/mtskheta_big_2_500x300.jpg', 'чоловічий монастир Шио-Мгвіме', '', '<ul><li> діючий <b> жіночий монастир Самтавро </b>; </li><li> діючий <b> чоловічий монастир Шио-Мгвіме </b>; </li><li> один з рідкісних пам\'ятників у світі - стародавнє<b> місто-фортеця Уплісцихе </b>, висічений в скелях. Це місце знаходиться під захистом ЮНЕСКО; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (33, 1, '/images/excoursions/mtskheta_1/excursion_mtskheta2_2_500x300.jpg', 'музей Иосифа Сталина', '', '<ul>
                            <li> посетим <b> государственный музей Иосифа Сталина</b>, который находится в его родном городе - Гори. Музей состоит из трех отделов. 
                            Первый - это главный музей, где представлены личные вещи, мебель из его рабочих кабинетов, картины, документы, фотграфии и статьи из газет.
                            Второй отдел - дом, в котором Сталин родился. Третий отдел - это личный железнодорожный вагон Сталина.</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (33, 2, '/images/excoursions/mtskheta_1/excursion_mtskheta2_2_500x300.jpg', 'Joseph Stalin Museum', '', '<ul>
                            <li> visit the <b> state museum of Joseph Stalin</b>, who is in his hometown - Gori. The museum consists of three departments. 
                            The first is the main museum, where personal belongings, furniture from his study rooms, paintings, documents, photos and articles from newspapers are presented. 
                            The second department is the house in which Stalin was born. The third department is Stalin\'s personal railway car.</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (33, 3, '/images/excoursions/mtskheta_1/excursion_mtskheta2_2_500x300.jpg', 'Joseph Stalin Museum', '', '<ul>
                            <li> посетим <b> государственный музей Иосифа Сталина</b>, который находится в его родном городе - Гори. Музей состоит из трех отделов. 
                            Первый - это главный музей, где представлены личные вещи, мебель из его рабочих кабинетов, картины, документы, фотграфии и статьи из газет.
                            Второй отдел - дом, в котором Сталин родился. Третий отдел - это личный железнодорожный вагон Сталина.</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (33, 4, '/images/excoursions/mtskheta_1/excursion_mtskheta2_2_500x300.jpg', 'музей Йосипа Сталіна', '', '<ul><li> відвідаємо <b> державний музей Йосипа Сталіна </b>, котрий знаходиться в його рідному місті - Горі. Музей складається з трьох відділів. Перший - це головний музей, де є особисті речі, меблі з його робочих кабінетів, картини, документи, фотграфіі і статті з газет. Другий відділ - будинок, у якому Сталін народився. Третій відділ - це особистий залізничний вагон Сталіна. </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (34, 1, '/images/cards/mtskheta_500x300.jpg', 'Мцхета - древнейший город Грузии', 'Вы можете спросить - Зачем нужен гид на экскурсии, если всё можно прочитать в интернете?', 'На самом деле <b>в интернете</b> вы найдете <b>общие сухие исторические факты</b>. 
                        Ни одна статья Вам не <b>расскажет</b> так <b>красочно</b>, как <b>человек, который знает всё</b> о каждом камне, уголке и каждом метре монастырей и святых мест Грузии.
                     ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (34, 2, '/images/cards/mtskheta_500x300.jpg', 'Mtskheta - the oldest city of Georgia', 'You can ask - Why do you need a tour guide if everything can be read on the Internet?', 'In fact <b>at the Internet</b> you will find <b>common dry historical facts</b>. 
                        No article <b>will tell you</b> as  <b>colorfully </b>  as a <b>person who knows everything</b> about every stone, corner and every meter of the monasteries and holy places of Georgia.
                     ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (34, 3, '/images/cards/mtskheta_500x300.jpg', 'Mtskheta - the oldest city of Georgia', 'Вы можете спросить - Зачем нужен гид на экскурсии, если всё можно прочитать в интернете?', 'На самом деле <b>в интернете</b> вы найдете <b>общие сухие исторические факты</b>. 
                        Ни одна статья Вам не <b>расскажет</b> так <b>красочно</b>, как <b>человек, который знает всё</b> о каждом камне, уголке и каждом метре монастырей и святых мест Грузии.
                     ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (34, 4, '/images/cards/mtskheta_500x300.jpg', 'Мцхета - найдавніше місто Грузії', 'Ви можете запитати - Навіщо потрібен гід на екскурсії, якщо все можна прочитати в інтернеті?', 'Насправді <b> в інтернеті </b> ви знайдете <b> загальні сухі історичні факти </b>. Жодна стаття Вам не <b> розповість </b> так <b> барвисто </b>, як <b> людина, котра знає усе </b> про кожний камінь та куточок монастирів і святих місць Грузії.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (35, 1, '/images/tours/tour_8days_samtavro500x375.jpg', 'кафедральный собор Светицховели', '', 'Скромная древняя архитектура располагает настроиться на то настроение, с которым люди должны приходить в храм. 
                        <h5>Итак, вы увидите:</h5>
                        <ul>
                            <li>знаменитый <b>монастырь Джвари</b>, откуда открывается удивительный вид на Мцхету. Монастырь хранит в себе средневековую историю, начиная с VI века н.э.;</li>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., также его называют "Вторым Иерусалимом", потому что там находится много святых и культовых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> - духовный центр христианской Грузии и самое большое из древних сооружений страны;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                            <li>действующий <b>мужской монастырь ШиоМгвиме</b>, который основал в VI веке один из 13-ти святых ассирийских отцов - Шио;</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (35, 2, '/images/tours/tour_8days_samtavro500x375.jpg', 'Svetitskhoveli Cathedral', '', 'Modest ancient architecture has a mood for the mood with which people must come to the temple. 
                        <h5>So, you will see:</h5>
                        <ul>
                            <li>the famous <b>monastery of Jvari</b>, from where you can see an amazing view of Mtskheta. The monastery keeps a medieval history, starting from the VI century;</li>
                            <li><b>city ​​- Mtskheta</b> - the ancient city of Georgia, founded in the V century BC, also called "Second Jerusalem", because there are many holy and cult places there;</li>
                            <li><b>Svetitskhoveli Cathedral</b> - is the spiritual center of Christian Georgia and the largest of the country\'s ancient buildings;</li>
                            <li>the functioning <b>female monastery of Samtavro</b>, built on the site where St. Nino lived;</li>
                            <li>operating  <b>monastery of ShioMgwime</b>, which was founded in the VI century by one of the 13 holy Assyrian fathers - Shio;</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (35, 3, '/images/tours/tour_8days_samtavro500x375.jpg', 'Svetitskhoveli Cathedral', '', 'Скромная древняя архитектура располагает настроиться на то настроение, с которым люди должны приходить в храм. 
                        <h5>Итак, вы увидите:</h5>
                        <ul>
                            <li>знаменитый <b>монастырь Джвари</b>, откуда открывается удивительный вид на Мцхету. Монастырь хранит в себе средневековую историю, начиная с VI века н.э.;</li>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., также его называют "Вторым Иерусалимом", потому что там находится много святых и культовых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> - духовный центр христианской Грузии и самое большое из древних сооружений страны;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                            <li>действующий <b>мужской монастырь ШиоМгвиме</b>, который основал в VI веке один из 13-ти святых ассирийских отцов - Шио;</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (35, 4, '/images/tours/tour_8days_samtavro500x375.jpg', 'кафедральний собор Светіцховелі', '', 'Скромна стародавня архітектура має налаштувати вас на той настрій, з котрий люди повинні приходити до храму. <h5> Отже, ви побачите: </h5> <ul> <li> відомий <b> монастир Джварі </b>, звідки відкривається дивовижний вид на Мцхету. Монастир зберігає у собі середньовічну історію, починаючи з VI століття н.е..; </li><li> <b> місто - Мцхета </b> - найдавніше місто Грузії, засноване у V столітті до н.е., також його називають "Другим Єрусалимом", бо там знаходиться багато святих і культових місць; </li><li> <b> кафедральний собор Светіцховелі </b> - духовний центр християнської Грузії й найбільше з стародавніх споруд країни; </li><li> діючий <b> жіночий монастир Самтавро </b>, побудований на місці, де жила свята Ніно; </li> <li> діючий <b> чоловічий монастир Шіо-Мгвіме </b>, котрий засновано у VI столітті одним із 13-ти святих ассірійських батьків - Шио; </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (36, 1, '/images/cards/ex_mtskheta_4_500x300.jpg', 'Вид на Мцхету с горы, возле монастыря Джвари', '', 'В конце экскурсии предлагаем сходить на<b> обед в национальный грузинский ресторан "Салобие"</b> и очутить вскус настоящего грузинское застолья, с песнями, танцами и национальной музыкой.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (36, 2, '/images/cards/ex_mtskheta_4_500x300.jpg', 'View of Mtskheta from the mountain, near the Jvari Monastery', '', 'At the end of the excursion we suggest you to go to<b> lunch at the national Georgian restaurant "Salobie"</b> and find the real Georgian feast, with songs, dances and national music.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (36, 3, '/images/cards/ex_mtskheta_4_500x300.jpg', 'View of Mtskheta from the mountain, near the Jvari Monastery', '', 'В конце экскурсии предлагаем сходить на<b> обед в национальный грузинский ресторан "Салобие"</b> и очутить вскус настоящего грузинское застолья, с песнями, танцами и национальной музыкой.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (36, 4, '/images/cards/ex_mtskheta_4_500x300.jpg', 'Вид на Мцхету з гори, біля монастиря Джварі', '', 'По завершенні екскурсії пропонуємо сходити на <b> обідати до національного грузинського ресторану "Салобіе" </b> і відчути смак справжнього грузинського застілля, з піснями, танцями та національною музикою.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (37, 1, '/images/cards/ex_tbilisi_mtskheta_500x300.jpg', 'мост Мира, Тбилиси', 'Вы увидите:', '
                        Начнём экскурсию со столицы Грузии - Тбилиси
                        <ul>
                            <li>посещение главного <b>кафедрального собора</b> Грузии <b>Самеба</b> (Святая троица)</b>;</li>
                            <li>храм Метехи;</li>
                            <li>прогулкам по парку Рике, где находится знаменитый <b>мост Мира</b>;</li>
                           
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (37, 2, '/images/cards/ex_tbilisi_mtskheta_500x300.jpg', 'Peace Bridge, Tbilisi', 'You will see:', '
                        Let\'s start the tour from the capital of Georgia - Tbilisi
                        <ul>
                            <li>Visit to the main <b>Cathedral</b> of Georgia <b>Sameba</b> (Holy Trinity)</b>;</li>
                            <li>Metekhi temple;</li>
                            <li>walking through Rike Park, where the famous <b>Peace Bridge</b> is located;</li>
                           
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (37, 3, '/images/cards/ex_tbilisi_mtskheta_500x300.jpg', 'Peace Bridge, Tbilisi', 'Вы увидите:', '
                        Начнём экскурсию со столицы Грузии - Тбилиси
                       <ul>
                            <li>посещение главного <b>кафедрального собора</b> Грузии <b>Самеба</b> (Святая троица)</b>;</li>
                            <li>храм Метехи;</li>
                            <li>прогулкам по парку Рике, где находится знаменитый <b>мост Мира</b>;</li>
                           
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (37, 4, '/images/cards/ex_tbilisi_mtskheta_500x300.jpg', 'міст Миру, Тбілісі', 'Ви побачите:', 'Почнемо екскурсію з столиці Грузії - Тбілісі <ul><li> <b> Старе місто Тбілісі </b>, погуляємося вулецею Шавтелі, де знаходиться відомий <b> театр маріонеток імені Габріадзе</b>, тут два рази на день відбувається <b> лялькова вистава на вежі театру </b>; </li><li> храм Анчісхаті; </li><li><b> міст Миру</b>;</li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (38, 1, '/images/excoursions/ex_tbilisi_mtskheta_3_500x300.jpg', 'Прогулка по городу Тбилиси', '', '<ul>
                             <li><b>подъем по канатной дороге</b> на <b>крепость Нарикала</b>. С этого места открывается красивейший вид на весь город Тбилиси;</li>
                             <li>пешком спустимся к <b>тбилисским серным баням</b> и через <b>инжирное ущелье</b> попадем к водопаду. 
                               С этого места хорошо видно изюминку города - <b>разноцветные тбилисские домики</b>, располоденные на скале;</li>
                            <li>прогуляемся по улицам, где много магазинов, кафе, баров и ресторанов, сувенирных лавок ;</li>
                            
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (38, 2, '/images/excoursions/ex_tbilisi_mtskheta_3_500x300.jpg', 'Walk around the city of Tbilisi', '', '<ul>
                             <li><b>climbing the cable car</b> to  <b>the Narikala fortress</b>. From this place a beautiful view of the entire city of Tbilisi opens up;</li>
                             <li>on foot we will go down to the <b>Tbilisi sulfur baths</b> and through the <b>gorge</b> we will get to the waterfall. 
                             From this place one can clearly see the zest of the city - <b>colorful Tbilisi houses</b>, located on the rock;</li>
                            <li>walk along the streets, where there are many shops, cafes, bars and restaurants, souvenir shops;</li>
                            
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (38, 3, '/images/excoursions/ex_tbilisi_mtskheta_3_500x300.jpg', 'Walk around the city of Tbilisi', '', '<ul>
                             <li><b>подъем по канатной дороге</b> на <b>крепость Нарикала</b>. С этого места открывается красивейший вид на весь город Тбилиси;</li>
                             <li>пешком спустимся к <b>тбилисским серным баням</b> и через <b>инжирное ущелье</b> попадем к водопаду. 
                               С этого места хорошо видно изюминку города - <b>разноцветные тбилисские домики</b>, располоденные на скале;</li>
                            <li>прогуляемся по улицам, где много магазинов, кафе, баров и ресторанов, сувенирных лавок ;</li>
                            
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (38, 4, '/images/excoursions/ex_tbilisi_mtskheta_3_500x300.jpg', 'Прогулянка містом Тбілісі', '', '<ul> <li> <b> підйом по канатній дорозі </b> на <b> фортецю Нарікала </b>. З цього місця відкривається гарний вид на усе місто Тбілісі; </li><li> пішки спустимося до <b> тбіліських сірчаних лазней </b> та через <b> інжирну ущелину </b> потрапимо до водоспаду. З цього місця добре видно родзинку міста - <b> різнокольорові тбіліські будиночки  </b>, що разташовані на скелі;</li><li> прогуляємося вулицями, де багато магазинів, кафе, барів і ресторанів, сувенірних крамниць;</li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (39, 1, '/images/excoursions/ex_tbilisi_mtskheta_1_500x300.jpg', 'Монастрь Джвари и вид на город Мцхета', '', '
                        Затем, отправляемся в <b>древний город Мцхета</b>. По пути вы увидите:
                        <ul>
                                <li>знаменитый <b>монастырь Джвари</b>, откуда открывается удивительный вид на Мцхету. 
                                    Монастырь хранит в себе средневековую историю, начиная с VI века н.э</li>
                        </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (39, 2, '/images/excoursions/ex_tbilisi_mtskheta_1_500x300.jpg', 'Monastery Jvari and view of the city Mtskheta', '', '
                       Then, we go to the <b>ancient city of Mtskheta</b>. Along the way you will see:
                        <ul>
                                <li>the famous <b>monastery of Jvari </b>, from where you can see an amazing view of Mtskheta. 
                                The monastery keeps a medieval history, dating back to the  VI century</li>
                        </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (39, 3, '/images/excoursions/ex_tbilisi_mtskheta_1_500x300.jpg', 'Monastery Jvari and view of the city Mtskheta', '', '
                        Затем, отправляемся в <b>древний город Мцхета</b>. По пути вы увидите:
                        <ul>
                                <li>знаменитый <b>монастырь Джвари</b>, откуда открывается удивительный вид на Мцхету. 
                                    Монастырь хранит в себе средневековую историю, начиная с VI века н.э</li>
                        </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (39, 4, '/images/excoursions/ex_tbilisi_mtskheta_1_500x300.jpg', 'Монастрь Джварі та види на місто Мцхета', '', 'Далі, вирушаємо до <b> стародавнього міста Мцхета </b>. Дорогою ви побачите: <ul><li> відомий<b> монастир Джварі </b>, звідки відкривається дивовижний вид на Мцхету. Монастир зберігає у собі середньовічну історію, починаючи із VI століття н.е. </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (40, 1, '/images/excoursions/ex_tbilisi_mtskheta_2_500x300.jpg', 'фото собор Светицховели', '', 'Скромная древняя архитектура располагает настроиться на то настроение, с которым люди должны приходить в храм. 
                        <ul>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., также его называют "Вторым Иерусалимом", потому что там находится много святых и культовых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> - духовный центр христианской Грузии и самое большое из древних сооружений страны;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (40, 2, '/images/excoursions/ex_tbilisi_mtskheta_2_500x300.jpg', 'photo Svetitskhoveli Cathedral', '', 'Modest ancient architecture has a mood for the mood with which people must come to the temple. 
                        <ul>
                            <li><b>city ​​- Mtskheta</b> - the ancient city of Georgia, founded in the V century BC, also called "Second Jerusalem", because there are many holy and cult places there;</li>
                            <li><b>Svetitskhoveli Cathedral</b> - is the spiritual center of Christian Georgia and the largest of the country\'s ancient buildings;</li>
                            <li>the functioning <b>female monastery of Samtavro</b>, built on the site where St. Nino lived;</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (40, 3, '/images/excoursions/ex_tbilisi_mtskheta_2_500x300.jpg', 'photo Svetitskhoveli Cathedral', '', 'Скромная древняя архитектура располагает настроиться на то настроение, с которым люди должны приходить в храм. 
                        <ul>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., также его называют "Вторым Иерусалимом", потому что там находится много святых и культовых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> - духовный центр христианской Грузии и самое большое из древних сооружений страны;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (40, 4, '/images/excoursions/ex_tbilisi_mtskheta_2_500x300.jpg', 'фото собор Светіцховелі', '', 'Скромна давня архітектура має налаштувати вас на той настрій, з яким людина має приходити до храму. <ul><li> <b> місто - Мцхета </b> - найдавніше місто Грузії, засноване у V столітті до н.е., також його називають "Другим Єрусалимом", бо там знаходиться багато святих і культових місць; </li><li> <b> кафедральний собор Светіцховелі </b> - духовний центр християнської Грузії і найбільше з стародавніх споруд країни; </li><li> діючий <b> жіночий монастир Самтавро </b>, що побудований на місці, де жила свята Ніно; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (41, 1, '/images/tours/individual_tour_1_500x300.jpg', 'Великие горы Грузии, Казбек', '', '<h4>Возможно вы хотите:</h4>
                           <ul>
                            <li><b>отдохнуть всей семьёй с детьми</b> так, чтобы отдых был интересен и взрослым и детям;</li>
                            <li><b>узнать больше об образовании в Грузии</b>, чтобы <b>поступить в университет и учиться</b> здесь;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (41, 2, '/images/tours/individual_tour_1_500x300.jpg', 'Great mountains of Georgia, Kazbek', '', '<h4>Perhaps you want:</h4>
                           <ul>
                            <li><b>rest the whole family with children</b>  so that the rest was interesting for adults and children;</li>
                            <li><b>learn more about education in Georgia</b>, to  <b>go to university and study</b> here;</li>
                           </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (41, 3, '/images/tours/individual_tour_1_500x300.jpg', 'Great mountains of Georgia, Kazbek', '', '<h4>Возможно вы хотите:</h4>
                           <ul>
                            <li><b>отдохнуть всей семьёй с детьми</b> так, чтобы отдых был интересен и взрослым и детям;</li>
                            <li><b>узнать больше об образовании в Грузии</b>, чтобы <b>поступить в университет и учиться</b> здесь;</li>
                           </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (41, 4, '/images/tours/individual_tour_1_500x300.jpg', 'Могутні гори Грузії, Казбек', '', '<H4> Можливо вам хотілося б: </h4> <ul><li> <b> відпочити всією сім\'єю разом із дітьми </b> так, щоб відпочинок був цікавий і дорослим і дітям; </li><li> <b> дізнатися більше про освіту у Грузії </b>, щоб <b> вступити до університету та навчитися </b> тут; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (42, 1, '/images/tours/individual_tour_3_500x300.jpg', 'Девичник в Грузии', '', '
                        <h4>Отметить важную дату в Грузии</h4>
                        <ul>
                           <li>отпразновать свой <b>День Рождения</b>;</li>
                           <li><b>Девичник</b> или <b>Мальчишник</b>;</li>
                           <li>встретить <b>Новый Год</b>;</li>
                           <li>устроить <b>свадьбу</b>;</li>
                        </ul>
                        <h4>Корпоративный отдых</h4>
                        <ul>
                            <li>организовать <b>корпоративный отдых</b> для всего коллектива;</li>
                            <li>провести <b>деловые переговоры</b> и встречи</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (42, 2, '/images/tours/individual_tour_3_500x300.jpg', 'Hen Party in Georgia', '', '
                        <h4>Mark an important date in Georgia</h4>
                        <ul>
                           <li>to celebrate your <b>Birthday </b>;</li>
                           <li><b>A hen party</b> or a <b>bachelor party</b>;</li>
                           <li>to celebrate the <b>New Year</b>;</li>
                           <li>arrange a <b>wedding </b>;</li>
                        </ul>
                        <h4>Corporate holidays</h4>
                        <ul>
                            <li>organize  <b>corporate rest</b> for the whole team;</li>
                            <li>conduct  <b>business negotiations</b> and meetings</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (42, 3, '/images/tours/individual_tour_3_500x300.jpg', 'Hen Party in Georgia', '', '
                        <h4>Отметить важную дату в Грузии</h4>
                        <ul>
                           <li>отпразновать свой <b>День Рождения</b>;</li>
                           <li><b>Девичник</b> или <b>Мальчишник</b>;</li>
                           <li>встретить <b>Новый Год</b>;</li>
                           <li>устроить <b>свадьбу</b>;</li>
                        </ul>
                        <h4>Корпоративный отдых</h4>
                        <ul>
                            <li>организовать <b>корпоративный отдых</b> для всего коллектива;</li>
                            <li>провести <b>деловые переговоры</b> и встречи</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (42, 4, '/images/tours/individual_tour_3_500x300.jpg', 'Дівич-вечір у Грузії', '', '<h4> Відсвяткувати важливу дату в Грузії </h4><ul><li> <b> День Народження </b>; </li><li> <b> Дівич-вечір </b> чи<b> Мальчишник </b>; </li><li> зустріти <b> Новий Рік </b>; </li>
<li> влаштувати <b> весілля чи повінчатись у стародавньому монастирі </b>; </li> <h4> Корпоративний відпочинок </h4><li> організувати <b> корпоративний відпочинок </b> для всього колективу; </li><li> провести <b> ділові переговори </b> і зустрічі </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (43, 1, '/images/tours/individual_tour_2_500x300.jpg', 'две реки Белая и Черная Арагви, их воды не смешиваются', '', ' <h4>Санаторно-лечебный отдых</h4>
                        <ul>
                            <li>просто <b>побыть в тишине</b> в красивом месте и восстановить силы;</li>
                            <li>поплавать в горном озере возле водопада;</li>
                            <li>получить <b>лечение</b> на минеральных водах в Боржоми;</li>
                            <li><b>Целебные серные бани </b> Тбилиси;</li>
                            <li>Народный метод  <b>лечения псориаза </b>;</li>
                            <li>Стоматология</li>
                         </ul>
                         
                      ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (43, 2, '/images/tours/individual_tour_2_500x300.jpg', 'the two rivers White and Black Aragvi, their waters do not mix', '', ' <h4>Sanatorium and medical rest</h4>
                        <ul>
                            <li>just  <b>be in silence</b> in a beautiful place and regain strength;</li>
                            <li>swim in a mountain lake near a waterfall;</li>
                            <li>To receive <b>treatment </b> on mineral waters in Borjomi;</li>
                            <li><b>Healing sulfur baths </b> Tbilisi;</li>
                            <li>Folk method of <b> treatment of psoriasis </b>;</li>
                            <li>Stomatology</li>
                         </ul>
                         
                      ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (43, 3, '/images/tours/individual_tour_2_500x300.jpg', 'the two rivers White and Black Aragvi, their waters do not mix', '', ' <h4>Санаторно-лечебный отдых</h4>
                        <ul>
                            <li>просто <b>побыть в тишине</b> в красивом месте и восстановить силы;</li>
                            <li>поплавать в горном озере возле водопада;</li>
                            <li>получить <b>лечение</b> на минеральных водах в Боржоми;</li>
                            <li><b>Целебные серные бани </b> Тбилиси;</li>
                            <li>Народный метод  <b>лечения псориаза </b>;</li>
                            <li>Стоматология</li>
                         </ul>
                         
                      ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (43, 4, '/images/tours/individual_tour_2_500x300.jpg', 'дві річки Біла і Чорна Арагві, їх води не змішуються', '', '<h4> Санаторно-лікувальний відпочинок </h4><ul><li> просто <b> побути в тиші </b> у гарному місці та відновити сили; </li><li> поплавати в гірському озері біля водоспаду; </li><li> отримати <b> лікування </b> на мінеральних водах у Боржомі; </li><li><b> Цілющі сірчані лазні </b> Тбілісі; </li><li> Народний метод <b> лікування псоріазу </b>; </li><li> Стоматологія </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (44, 1, '/images/tours/individual_tour_5_500x300.jpg', 'древний монастырь Бодбе', '', ' <h4>Тур по святым местам Грузии</h4>
                          <ul> 
                            <li>совершить <b>поломнический тур</b> по главным монастырям и церквям;</li>
                            <li>Пройти <b>путь пилигрима</b> по святым местам;</li>
                            <li><b>Провести несколько дней в монастыре</b>, наполняясь духовностью</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (44, 2, '/images/tours/individual_tour_5_500x300.jpg', 'ancient monastery Bodbe', '', ' <h4>Tour of the holy places of Georgia</h4>
                          <ul> 
                            <li>to make a <b>pilgrimage tour</b> of the main monasteries and churches;</li>
                            <li>Walk the <b>path of the pilgrim</b> to holy places;</li>
                            <li><b>Spend a few days in the monastery</b>, filling with spirituality</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (44, 3, '/images/tours/individual_tour_5_500x300.jpg', 'ancient monastery Bodbe', '', ' <h4>Тур по святым местам Грузии</h4>
                          <ul> 
                            <li>совершить <b>поломнический тур</b> по главным монастырям и церквям;</li>
                            <li>Пройти <b>путь пилигрима</b> по святым местам;</li>
                            <li><b>Провести несколько дней в монастыре</b>, наполняясь духовностью</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (44, 4, '/images/tours/individual_tour_5_500x300.jpg', 'стародавній монастир Бодбе', '', '<h4> Тур святими місцями Грузії </h4><ul> <li> зробити <b> поломницький тур </b> головними монастирями і церквами; </li> <li> Пройти <b> шлях пілігрима </b> по святих місцях; </li> <li> <b> Провести кілька днів у монастирі </b>, наповнюючись духовністю </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (45, 1, '/images/tours/individual_tour_4_500x300.jpg', 'каньон Мартвили', '', ' <h4>Активный отдых в горах</h4>
                           <ul>
                           <li>Рафтинг;</li>
                           <li>Спелеотуризм (пещеры, каньйоны);</li>
                           <li>Восхождение в горы;</li>
                           <li>Джип-туры;</li>
                           <li>Катание на лошадях;</li>
                           <li>Паропланы;</li>
                           <li>Квадроциклы</li>
                           </ul>
                           <h2>Скажите нам своё желание 
                            и мы сделаем его реальностью!</h2>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (45, 2, '/images/tours/individual_tour_4_500x300.jpg', 'Martvili canyon', '', ' <h4>Activities in the mountains</h4>
                           <ul>
                           <li>Rafting;</li>
                           <li>Speleoturizm (caves, canyons);</li>
                           <li>Climbing the mountains;</li>
                           <li>Jeep tours;</li>
                           <li>Horseback riding;</li>
                           <li>Steam-ships;</li>
                           <li>Quadrocycles</li>
                           </ul>
                           <h2>Tell us your wish 
                            and we will make it a reality!</h2>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (45, 3, '/images/tours/individual_tour_4_500x300.jpg', 'Martvili canyon', '', ' <h4>Активный отдых в горах</h4>
                           <ul>
                           <li>Рафтинг;</li>
                           <li>Спелеотуризм (пещеры, каньйоны);</li>
                           <li>Восхождение в горы;</li>
                           <li>Джип-туры;</li>
                           <li>Катание на лошадях;</li>
                           <li>Паропланы;</li>
                           <li>Квадроциклы</li>
                           </ul>
                           <h2>Скажите нам своё желание 
                            и мы сделаем его реальностью!</h2>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (45, 4, '/images/tours/individual_tour_4_500x300.jpg', 'каньйон Мартвілі', '', '<h4> Активний відпочинок в горах </h4><ul><li>Рафтинг; </li><li> Спелеотуризм (печери, каньйони);</li><li> Сходження в гори; </li><li> Джип-тури; </li> <li> Катання на конях; </li><li> пароплани; </li><li> Квадроцикли </li></ul><h2> Лише скажіть нам своє бажання і ми зробимо його реальністю!</h2>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (46, 1, '/images/excoursions/rafting22.jpg', 'Инструктаж перед рафтингом', 'Едем в посёлок Ананури!', 'Для начала, пройдем небольшой инструктаж и тращельно подготовимся к заплыву. 
                        Рафтинг проводят квалифицированные специалисты, с соблюдением всех техник безопасности</li>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (46, 2, '/images/excoursions/rafting22.jpg', 'Instructing before rafting', 'We are going to the village of Ananuri!', 'To begin with, we\'ll go through a little briefing and we\'ll prepare ourselves for the swim safely. 
                        Rafting is carried out by qualified specialists, observing all safety techniques</li>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (46, 3, '/images/excoursions/rafting22.jpg', 'Instructing before rafting', 'Едем в посёлок Ананури!', 'Для начала, пройдем небольшой инструктаж и тращельно подготовимся к заплыву. 
                        Рафтинг проводят квалифицированные специалисты, с соблюдением всех техник безопасности</li>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (46, 4, '/images/excoursions/rafting22.jpg', 'Інструктаж перед рафтингом', 'Їдемо в селище Ананурi!', 'Для початку, прослушаємо невеличкий інструктаж і ретельно підготуємося до запливу. Рафтинг проводять кваліфіковані фахівці із дотриманням усіх технік безпеки </li>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (47, 1, '/images/excoursions/rafting1.jpg', 'Рафтинг в Грузии', '', '<ul>
                            <li>Уровень сложности: средний и легкий. Протяженность маршрута: 16 км.</li>
                        </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (47, 2, '/images/excoursions/rafting1.jpg', 'Rafting in Georgia', '', '<ul>
                            <li>Difficulty level: medium and easy. The length of the route: 16 km.</li>
                        </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (47, 3, '/images/excoursions/rafting1.jpg', 'רפטינג בגאורגיה', '', '<ul>
                            <li>Уровень сложности: средний и легкий. Протяженность маршрута: 16 км.</li>
                        </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (47, 4, '/images/excoursions/rafting1.jpg', 'Рафтинг в Грузії', '', '<ul><li> Рівень складності: середній і легкий. Протяжність маршруту: 16 км. </li>
          </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (48, 1, '/images/excoursions/rafting33.jpg', 'Боржомское ущелье', 'А на обратном пути в Тбилиси Вас ждет:', '<ul>
                            <li> город Аспиндза, где находится <b>замок Хертвиси</b></li>
                            <li> <b>город Ахалцихе</b> с тысячелетней историей, где вы увидите жемчужину юга Грузии <b>крепость «Рабат»</b> IX века</li>
                            <li><b>город Боржоми</b> - где находится <b>источник природной минеральной воды</b>, которая очень полезна для организма человека;</li>
                            <li><b>подъём по канатной дороге на Плато</b>, где открывается красивый вид на Боржомское ущелье;</li>
                            <li>самое популярное место отдыха - <b>Боржомский центральный парк</b>, где вы увидите красивый водопад, горная речка и парк атракционов;</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (48, 2, '/images/excoursions/rafting33.jpg', 'Borjomi gorge', 'And on the way back to Tbilisi you will find:', '<ul>
                            <li> The city of Aspindza, where the <b>castle of Herchevis</b>is located</li>
                            <li> <b>the city of Akhaltsikhe</b>  with a thousand-year history, where you will see the pearl of the south of Georgia the <b>fortress "Rabat" </b> of the IX century</li>
                            <li><b>city ​​Borjomi</b> - where there is a <b>source of natural mineral water</b>, which is very useful for the human body;</li>
                            <li><b>climbing the cable car to the Plateau</b>, where you can see a beautiful view of the Borzhomi Gorge;</li>
                            <li>the most popular holiday destination is <b>Borjomi Central Park</b>,  where you will see a beautiful waterfall, a mountain river and an amusement park;</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (48, 3, '/images/excoursions/rafting33.jpg', 'בורחומי', 'А на обратном пути в Тбилиси Вас ждет:', '<ul>
                            <li> город Аспиндза, где находится <b>замок Хертвиси</b></li>
                            <li> <b>город Ахалцихе</b> с тысячелетней историей, где вы увидите жемчужину юга Грузии <b>крепость «Рабат»</b> IX века</li>
                            <li><b>город Боржоми</b> - где находится <b>источник природной минеральной воды</b>, которая очень полезна для организма человека;</li>
                            <li><b>подъём по канатной дороге на Плато</b>, где открывается красивый вид на Боржомское ущелье;</li>
                            <li>самое популярное место отдыха - <b>Боржомский центральный парк</b>, где вы увидите красивый водопад, горная речка и парк атракционов;</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (48, 4, '/images/excoursions/rafting33.jpg', 'Боржомі', 'А на зворотному шляху у Тбілісі Вас чекає:', '<ul> <li> місто Аспіндза, де знаходиться <b> замок Хертвісі </b> </li><li> <b> місто Ахалцихе </b> з тисячолітньою історією, де ви побачите перлину півдня Грузії <b> фортеця «Рабат» </b> IX століття </li><li> <b> місто Боржомі </b> - де знаходиться <b> джерело природної мінеральної води </b>, котра дуже корисна для організму людини; </li><li> <b> підйом по канатній дорозі на Плато </b>, де відкривається гарний вид на Боржомську ущелину; </li><li> найпопулярніше місце відпочинку - <b> Боржомський центральний парк </b>, де ви побачите красивий водоспад, гірську річку та парк атракціонів; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (49, 1, '/images/tours/tour_8days_tbilisi_500x300.jpg', 'Знакомство с Тбилиси', 'Чем заняться во время отдыха в Грузии?', '<h5>День 1</h5> В день приезда мы не будем сильно нагружать Вас долгими экскурсиями, но познакомить Вас с Тбилиси - мы обязаны! 
                            Вас ждёт <b>увлекательная пешая прогулка с нашим гидом по центральным улицам города</b>. 
                            Он расскажет интересные истории о Грузии и покажет <b>хорошее место для первого ужина</b>, 
                            с национальными грузинскими танцами, песнями и под настоящие грузинские тосты!.  
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (49, 2, '/images/tours/tour_8days_tbilisi_500x300.jpg', 'Acquaintance with Tbilisi', 'What to do when you are on holiday in Georgia?', '<h5>Day 1</h5> On the day of your arrival we will not heavily burden you with long excursions, but we are obliged to acquaint you with Tbilisi! 
                            You will find a <b>fascinating walk with our guide through the central streets of the city</b>. 
                            He will tell interesting stories about Georgia and show a <b>good place for the first dinner</b>, 
                             with Georgian national dances, songs and real Georgian toasts! 
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (49, 3, '/images/tours/tour_8days_tbilisi_500x300.jpg', 'היכרות עם טביליסי', 'Чем заняться во время отдыха в Грузии?', '<h5>День 1</h5> В день приезда мы не будем сильно нагружать Вас долгими экскурсиями, но познакомить Вас с Тбилиси - мы обязаны! 
                            Вас ждёт <b>увлекательная пешая прогулка с нашим гидом по центральным улицам города</b>. 
                            Он расскажет интересные истории о Грузии и покажет <b>хорошее место для первого ужина</b>, 
                            с национальными грузинскими танцами, песнями и под настоящие грузинские тосты!.  
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (49, 4, '/images/tours/tour_8days_tbilisi_500x300.jpg', 'Знайомство з Тбілісі', 'Чим зайнятися під час відпочинку в Грузії?', '<h5> День 1 </h5> У день приїзду ми не будемо сильно навантажувати Вас довгими екскурсіями, але познайомити Вас із Тбілісі - ми зобов\'язані!  На вас чекає <b> захоплююча піша прогулянка з нашим гідом центральними вулицями міста </b>. Він розповість цікаві історії про Грузію і покаже <b> гарне місце для першої вечері </b>,  з національними грузинськими танцями, піснями та під справжні грузинські тости !');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (50, 1, '/images/tours/tour_8days_kaheti_500x300.jpg', 'Путешествие в Кахетию', '', '<h5>День 2</h5><b>Путешествие в Кахетию</b> - край виноделия и любви. Вас ждёт:
                         <ul>
                            <li><b>Сигнахи</b> - город влюбленных. Красивый небольшой город с красными крышами, откуда открывается удивительный вид на Алазанскую долину;</li>
                            <li><b>монастырь Бодбе</b>, который знаменит источником с целебной водой. Место, куда специально приезжают люди из разных стран в надежде получить исцеление и проходят при этом 657 ступеней во время спуска к источнику;</li>
                            <li><b>экскурсия на</b> современном <b>винном заводе Патардзеули</b>.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (50, 2, '/images/tours/tour_8days_kaheti_500x300.jpg', 'Travel to Kakheti', '', '<h5>Day 2</h5><b>Traveling to Kakheti</b> is the land of winemaking and love. Is waiting for you:
                         <ul>
                            <li><b>Sighnaghi </b>  is a city of love. A beautiful small town with red roofs, from where you can see amazing views of the Alazani Valley;</li>
                            <li><b>the monastery of Bodbe</b>, which is famous for its source of healing water. 
                                    A place specially visited by people from different countries in the hope of receiving healing and pass at this 657 steps during the descent to the source;</li>
                            <li><b>excursion at the</b> modern  <b>winery of Patardzeuli</b>.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (50, 3, '/images/tours/tour_8days_kaheti_500x300.jpg', 'מסעות אל Kakheti', '', '<h5>День 2</h5><b>Путешествие в Кахетию</b> - край виноделия и любви. Вас ждёт:
                         <ul>
                            <li><b>Сигнахи</b> - город влюбленных. Красивый небольшой город с красными крышами, откуда открывается удивительный вид на Алазанскую долину;</li>
                            <li><b>монастырь Бодбе</b>, который знаменит источником с целебной водой. Место, куда специально приезжают люди из разных стран в надежде получить исцеление и проходят при этом 657 ступеней во время спуска к источнику;</li>
                            <li><b>экскурсия на</b> современном <b>винном заводе Патардзеули</b>.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (50, 4, '/images/tours/tour_8days_kaheti_500x300.jpg', 'Подорож до Кахетії', '', '<h5> День 2 </h5> <b> Подорож до Кахетії </b> - край виноробства і кохання. На вас чекає:
                         <ul>
                            <li> <b> Сигнахі </b> - місто закоханих. Гарне невеличке місто з червоними дахами, звідти відкривається дивовижний вид на Алазанську долину; </li>
                            <li> <b> монастир Бодбе </b>, де є відоме джерело із цілющою водою. Місце, куди спеціально приїзджають люди з різних країн в надії отримати зцілення і проходять при цьому 657 ступенів під час спуску сходами до джерела; </li>
                            <li> <b> екскурсія до </b> сучасного <b> винного заводу Патардзеулі </b>. </li>
                           </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (51, 1, '/images/tours/tour_8days_gudauri_500x500.jpg', 'Путешествие в Казбек', '', '<h5>День 3</h5>Поездка в горы:
                         <ul>
                            <li><b>Жинвальское водохранилище</b> и историческая <b>крепость Ананури</b> эпохи раннего феодализма;</li>
                            <li>Место, где две реки <b>Белая и Чёрная Арагви сливаются в одно русло</b>, при этом их воды не смешиваются;</li>
                            <li><b>Пообедаем</b> в лучшем ресторане <b>на родине хинкали</b> - посёлок Пассанаури;</li>
                            <li><b>Горнолыжный курорт</b> Грузии - <b>Гудаури</b>, 2000 метров над уровнем моря. Виды со смотровой площадки вы никогда не забудете;</li>
                            <li>Дорога через <b>Крестовый перевал</b>. Её также называют военно-грузинская дорога. Дух захватывает, когда проезжаешь по её извилистым серпантинам;</li>
                            <li><b>Доза адреналина</b>, когда смотришь на облака сверху и наблюдаешь как они проплывают внизу между вершинами гор;</li>
                            <li>Главный объект нашей эксскурсии - <b>храм Гергети</b>. Он находится на вершине горы и  <b>мы будем к нему подниматься на джипе</b>;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (51, 2, '/images/tours/tour_8days_gudauri_500x500.jpg', 'Travel to Kazbegi', '', '<h5>Day 3</h5>Trip to the mountains:
                         <ul>
                            <li><b>Zhinval water reservoir</b>  and the historical <b>fortress Ananuri</b> of the early feudal period;</li>
                            <li>The place where the two rivers  <b>White and Black Aragvi merge into one channel</b>, while their waters do not mix;</li>
                            <li><b>Lunch </b>in the best restaurant <b>in the homeland of khinkali </b> - Passassauri village;</li>
                            <li><b>Mountain ski resort of Georgia - Gudauri</b>, 2000 meters above sea level. Views from the observation platform you will never forget;</li>
                            <li>The road through the <b>Cross Pass</b>. It is also called the military-Georgian road. The spirit captures when you pass through its winding serpentines;</li>
                            <li><b>A dose of adrenaline</b>,  when you look at the clouds from above and watch as they swim down between the tops of the mountains;</li>
                            <li>The main object of our excursion is <b>the Gergeti temple</b>. He is at the top of the mountain and <b> we will go up to him on a jeep</b>;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (51, 3, '/images/tours/tour_8days_gudauri_500x500.jpg', 'Travel to Kazbegi', '', '<h5>День 3</h5>Поездка в горы:
                         <ul>
                            <li><b>Жинвальское водохранилище</b> и историческая <b>крепость Ананури</b> эпохи раннего феодализма;</li>
                            <li>Место, где две реки <b>Белая и Чёрная Арагви сливаются в одно русло</b>, при этом их воды не смешиваются;</li>
                            <li><b>Пообедаем</b> в лучшем ресторане <b>на родине хинкали</b> - посёлок Пассанаури;</li>
                            <li><b>Горнолыжный курорт</b> Грузии - <b>Гудаури</b>, 2000 метров над уровнем моря. Виды со смотровой площадки вы никогда не забудете;</li>
                            <li>Дорога через <b>Крестовый перевал</b>. Её также называют военно-грузинская дорога. Дух захватывает, когда проезжаешь по её извилистым серпантинам;</li>
                            <li><b>Доза адреналина</b>, когда смотришь на облака сверху и наблюдаешь как они проплывают внизу между вершинами гор;</li>
                            <li>Главный объект нашей эксскурсии - <b>храм Гергети</b>. Он находится на вершине горы и  <b>мы будем к нему подниматься на джипе</b>;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (51, 4, '/images/tours/tour_8days_gudauri_500x500.jpg', 'Подорож до Казбеку', '', '<h5> День 3 </h5> Подорож в гори:
<ul> <li> <b> Жінвальске водосховище </b> та історична <b> фортеця Ананурі </b> епохи раннього феодалізму; </li> <li> Місце, де дві річки <b> Біла і Чорна Арагві зливаються в одне русло </b>, при цьому їх води не змішуються; </li> <li> <b> Пообідаємо </b> у кращому ресторані <b> на батьківщині хінкалі </b> - селище Пасанаурі; </li > <li> <b> Гірськолижний курорт </b> Грузії - <b> Гудаурі </b>, 2000 метрів над рівнем моря. Види з його оглядового майданчика ви ніколи не забудете; </li> <li> Дорога через <b> Хрестовий перевал </b>. Її також називають військово-грузинська дорога. Дух захоплює, коли проїзджаєш її звивистими серпантинами; </li>
<li> <b> Доза адреналіну </b>, коли дивишся на хмари зверху і спостерігаєш як вони пропливають знизу між вершинами гір; </li> <li> Головний об\'єкт нашої ексскурсіі - <b> храм Гергети </b>. Він знаходиться на вершині гори і <b> ми будемо до нього підніматися на джипі </b>; </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (52, 1, '/images/cards/tour_weekend_500x300.jpg', 'Вид на город Мцхета с горы, возле монастыря Джвари', '', '<h5>День 4</h5>Эксукрсия к древней столице Грузии - <b>Мцхета</b>, где находится много святых и культовых мест:
                         <ul>
                            <li>знаменитый <b>монастырь Джвари</b>, который был построен конце VI века на вершине горы, возле места слияния двух рек Куры и Арагви;</li>
                            <li><b>кафедральный собор Светицховели</b>;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>;</li>
                            <li>действующий <b>мужской монастырь Шио-Мгвиме</b>;</li>
                            <li><b>Обед в</b> старом грузинском <b>ресторане "Салобие"</b>, во время которого наш гид-тамада сделает застолье по-настоящему грузинским.</li>
                            <li><b>прогулка по городу Мцхета</b></li>
                           </ul>  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (52, 2, '/images/cards/tour_weekend_500x300.jpg', 'View from the mountain, near the monastery Jvari', '', '<h5>Day 4</h5>Exukursiya to the ancient capital of Georgia - <b>Mtskheta </b>, where there are many holy and cult places:
                         <ul>
                            <li>the famous <b>Jvari Monastery</b>, which was built at the end of the 6th century on the top of the mountain,
                                    near the confluence of the two rivers Kura and Aragvi;</li>
                            <li><b>Svetitskhoveli Cathedral</b>;</li>
                            <li>operating  <b>Samtavro Convent </b>;</li>
                            <li>operating  <b>monastery of Shio-Mgvime</b>;</li>
                            <li><b>Lunch at the</b> old Georgian<b>restaurant "Salobie"</b>, during which our guide-toastmaster will make the feast truly Georgian.</li>
                            <li><b>walk around the city of Mtskheta</b></li>
                           </ul>  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (52, 3, '/images/cards/tour_weekend_500x300.jpg', 'נוף של העיר Mtskheta מן ההר, ליד המנזר Jvari', '', '<h5>День 4</h5>Эксукрсия к древней столице Грузии - <b>Мцхета</b>, где находится много святых и культовых мест:
                         <ul>
                            <li>знаменитый <b>монастырь Джвари</b>, который был построен конце VI века на вершине горы, возле места слияния двух рек Куры и Арагви;</li>
                            <li><b>кафедральный собор Светицховели</b>;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>;</li>
                            <li>действующий <b>мужской монастырь Шио-Мгвиме</b>;</li>
                            <li><b>Обед в</b> старом грузинском <b>ресторане "Салобие"</b>, во время которого наш гид-тамада сделает застолье по-настоящему грузинским.</li>
                            <li><b>прогулка по городу Мцхета</b></li>
                           </ul>  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (52, 4, '/images/cards/tour_weekend_500x300.jpg', 'Вид на місто Мцхета з гори, біля монастиря Джварі', '', '<h5> День 4 </h5> Ексукрсія до стародавньої столиці Грузії - <b> Мцхета </b>, де знаходиться багато святих і культових місць: <ul><li> відомий <b> монастир Джварі </b>, котрий був збудований наприкінці VI століття на вершині гори, біля місця злиття двох річок Кури і Арагві;</li><li><b> кафедральний собор Светіцховелі </b>; </li><li> діючий <b> жіночий монастир Самтавро</b>;</li><li> діючий <b> чоловічий монастир Шио-Мгвіме </b>;</li><li> <b> Обід в </b> старому грузинському <b> ресторані "Салобіе" </b>, під час якого наш гід-тамада зробить застілля по-справжньому грузинським. </li><li> <b> прогулянка по містом Мцхета </b> </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (53, 1, '/images/tours/tour_8days_suvenirs500x300.jpg', 'сувенирные лавки Тбилиси', '', '<h5>День 5</h5> <b>Свободный день</b> для прогулок по городу Тбилиси. 
                            Возможность <b>пройтись по узким улочками</b>, заглянуть в <b>сувенирные лавки</b>, винные магазины, увидеть <b>представления на улицах города</b>, 
                            cделать много ярких фото... 
                            Отель находиться в самом центре Тбилиси, поэтому вам будет легко и быстро добраться до всех лучших мест города..   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (53, 2, '/images/tours/tour_8days_suvenirs500x300.jpg', 'souvenir shops in Tbilisi', '', '<h5>Day 5</h5> <b>Free day </b> for walking around the city of Tbilisi. 
                        The opportunity to <b>walk along narrow streets</b>, look into <b>souvenir shops</b>,  wine shops, see  <b>performances on the streets of the city</b>, 
                            make many bright photos ... The hotel is located in the very center of Tbilisi, so you will easily and quickly reach all the best places in the city .. 
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (53, 3, '/images/tours/tour_8days_suvenirs500x300.jpg', 'חנויות מזכרות בטביליסי', '', '<h5>День 5</h5> <b>Свободный день</b> для прогулок по городу Тбилиси. 
                            Возможность <b>пройтись по узким улочками</b>, заглянуть в <b>сувенирные лавки</b>, винные магазины, увидеть <b>представления на улицах города</b>, 
                            cделать много ярких фото... 
                            Отель находиться в самом центре Тбилиси, поэтому вам будет легко и быстро добраться до всех лучших мест города..   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (53, 4, '/images/tours/tour_8days_suvenirs500x300.jpg', 'сувенірні лавки Тбілісі', '', '<h5> День 5 </h5> <b> Вільний день </b> для прогулянок містом Тбілісі.  Можливість <b> пройтися вузькими вуличками </b>, заглянути до <b> сувенірних лавок </b>, винних магазинів, побачити <b> вистави на вулицях міста </b>, Зробити багато яскравих фото ...Готель знаходиться в самому центрі Тбілісі, тому вам буде легко і швидко дістатися до всіх кращих місць ..');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (54, 1, '/images/cards/david_garedji_500x300.jpg', 'монастырский пещерный комплекс Давид-Гареджи', '', '<h5>День 6</h5> Экскурсия в <b>монастырский пещерный комплекс Давид-Гареджи</b> конца VI века н.э., протяженность которого 25 км. 
                            Для этого мы отправимся к грузинско-азербайджанской границе, <b>в 60 км к юго-востоку от Тбилиси</b>, 
                            Государственная граница между Грузией и Азербайджаном делит монастырский комплекс Давид-Гареджи на две части. 
                            Во многих церквях и трапезных монастырей <b>сохранились фрески VIII—XIV вв. с портретами исторических лиц</b>, в том числе портрет царицы Тамары.  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (54, 2, '/images/cards/david_garedji_500x300.jpg', 'monastery cave complex David-Gareji', '', '<h5>Day 6</h5> Excursion to the  <b>monastery cave complex David-Gareji</b> end of the VI century AD, the length of which is 25 km. 
                            For this we will go to the Georgian-Azerbaijani border, <b>60 km southeast of Tbilisi </b>, 
                            the State border between Georgia and Azerbaijan divides the monastery complex David-Gareji into two parts.
                             <b>Frescoes of the VIII—XIV centuries were preserved in</b>, many churches and refectory monasteries 
                              <b> with portraits of historical figures</b>, including a portrait of Queen Tamara.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (54, 3, '/images/cards/david_garedji_500x300.jpg', 'monastery cave complex David-Gareji', '', '<h5>День 6</h5> Экскурсия в <b>монастырский пещерный комплекс Давид-Гареджи</b> конца VI века н.э., протяженность которого 25 км. 
                            Для этого мы отправимся к грузинско-азербайджанской границе, <b>в 60 км к юго-востоку от Тбилиси</b>, 
                            Государственная граница между Грузией и Азербайджаном делит монастырский комплекс Давид-Гареджи на две части. 
                            Во многих церквях и трапезных монастырей <b>сохранились фрески VIII—XIV вв. с портретами исторических лиц</b>, в том числе портрет царицы Тамары.  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (54, 4, '/images/cards/david_garedji_500x300.jpg', 'монастирський печерний комплекс Давид-Гареджі', '', '<h5> День 6 </h5> Екскурсія в <b> монастирський печерний комплекс Давид-Гареджі </b> кінця VI століття н.е., протяжність якого 25 км. Для цього ми вирушимо до грузинсько-азербайджанського кордону, <b> блицько 60 км на південний схід від Тбілісі </b>, Державний кордон між Грузією і Азербайджаном ділить монастирський комплекс Давид-Гареджі на дві частини.  У багатьох церквах і трапезних монастиря <b> збереглися фрески VIII-XIV ст. із портретами історичних осіб </b>, у тому числі портрет цариці Тамари.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (55, 1, '/images/tours/tour_8days_master_klass500x300.jpg', 'кулинарный мастер-класс', '', '<h5>День 7</h5> Настал день сюрпризов: 
                          <ul>
                            <li>тбилисские <b>серные бани</b> - это гордость города, где любят отдыхать и сами грузины;</li>
                            <li>кулинарный <b>мастер-класс</b>. Вы приготовите <b>Хачапури, шашлык по-грузински</b>, испечете в печи свой собственный <b>хлеб пури</b>. 
                            Потом съедим всё это под душевные грузинские тосты с домашним вином;</li>
                           </ul> 
                               
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (55, 2, '/images/tours/tour_8days_master_klass500x300.jpg', 'cooking master class', '', '<h5>Day 7</h5> The day of surprises has come:
                          <ul>
                            <li>Tbilisi  <b>sulfur baths</b> are the pride of the city, where Georgians themselves like to rest;</li>
                            <li> <b>culinary master class </b>. You will cook <b>Khachapuri, shish kebab in Georgian</b>, bake your own <b>puri bread</b> in the oven. 
                            Then we will eat all this under the hearty Georgian toasts with homemade wine;</li>
                           </ul> 
                               
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (55, 3, '/images/tours/tour_8days_master_klass500x300.jpg', 'cooking master class', '', '<h5>День 7</h5> Настал день сюрпризов: 
                          <ul>
                            <li>тбилисские <b>серные бани</b> - это гордость города, где любят отдыхать и сами грузины;</li>
                            <li>кулинарный <b>мастер-класс</b>. Вы приготовите <b>Хачапури, шашлык по-грузински</b>, испечете в печи свой собственный <b>хлеб пури</b>. 
                            Потом съедим всё это под душевные грузинские тосты с домашним вином;</li>
                           </ul> 
                               
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (55, 4, '/images/tours/tour_8days_master_klass500x300.jpg', 'кулінарний майстер-клас', '', '<h5> День 7 </h5> Настав день сюрпризів:<ul><li> тбіліські <b> сірчані лазні </b> - це гордість міста, де люблять відпочивати і самі грузини; </li><li> кулінарний <b> майстер-клас </b>. Ви приготуєте <b> Хачапурі, шашлик по-грузинські </b>, спече у печі свій власний <b> хліб-пурі </b>. Потім з\'їмо все це під душевні грузинські тости із домашнім вином; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (56, 1, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'прощальные прогулки по городу Тбилиси', '', '<h5>День 8</h5> Свободный <b>день для прощальных прогулок по городу Тбилиси</b>. 
                             Невозможно надышаться его воздухом и запахами еды и специй, невозможно забрать с собой коренных жителей, которые стали как родные к концу отдыха... 
                             Но вы <b>всегда сможете вернуться к нам снова!</b> И мы всегда сможем показать Вам ещё что-то новое!    
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (56, 2, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'farewell walks in the city of Tbilisi', '', '<h5>Day 8</h5> Free  <b>day for farewell walks around the city of Tbilisi</b>. 
                             It is impossible to breathe in its air and smells of food and spices, 
                             it is impossible to take with itself the indigenous people who became like family by the end of the rest ... 
                             But you <b>can always come back to us again!</b>  And we can always show you something new!   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (56, 3, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'farewell walks in the city of Tbilisi', '', '<h5>День 8</h5> Свободный <b>день для прощальных прогулок по городу Тбилиси</b>. 
                             Невозможно надышаться его воздухом и запахами еды и специй, невозможно забрать с собой коренных жителей, которые стали как родные к концу отдыха... 
                             Но вы <b>всегда сможете вернуться к нам снова!</b> И мы всегда сможем показать Вам ещё что-то новое!    
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (56, 4, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'прощальні прогулянки по місту Тбілісі', '', '<h5> День 8 </h5> Вільний <b> день для прощавальних прогулянок по місту Тбілісі </b>. Неможливо надихатися його повітрям і запахами їжі та спецій, неможливо забрати із собою корінних жителів, які стали як рідні наприкінці відпочинку ... Але ви <b> завжди зможете повернутися до нас знову! </b> І ми завжди зможемо показати Вам ще щось нове!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (57, 1, '/images/cards/tour_tbilisi_500x300.jpg', 'столица Грузии - Тбилиси', 'Чем будем заниматься эти 5 дней в Грузии?', '<h5>День 1</h5> Наш веселый и дружелюбный гид познакомит Вас со столицей Грузии - <b>Тбилиси</b>. 
Это будет <b>пешеходная прогулка по центральным улицам</b> города. Экскурсия в конце пути приведет Вас к известному месту - <b>тбилисские серные бани</b>, 
где <b>вы сможете расслабиться и отдохнуть</b> после долгой дороги, окунуться <b>в бассейн с горячей серной водой прямо из источника</b>, 
выпить травяной чай или отведать настоящее грузинское вино.       
');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (57, 2, '/images/cards/tour_tbilisi_500x300.jpg', 'the capital of Georgia is Tbilisi', 'What are we going to do these 5 days in Georgia?', '<h5>Day 1</h5> Our cheerful and friendly guide will introduce you to the capital of Georgia - <b>Tbilisi </b>. 
                         It will be a <b>pedestrian walk along the central streets </b>of the city. An excursion at the end of the road will take you to a famous place - the <b>Tbilisi sulfur baths </b>, 
                         where  <b>you can relax and rest </b> after a long journey, dip <b>into the pool with hot sulfur water directly from the spring </b>, 
                         drink herbal tea or taste real Georgian wine 
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (57, 3, '/images/cards/tour_tbilisi_500x300.jpg', 'the capital of Georgia is Tbilisi', 'Чем будем заниматься эти 5 дней в Грузии?', '<h5>День 1</h5> Наш веселый и дружелюбный гид познакомит Вас со столицей Грузии - <b>Тбилиси</b>. 
                         Это будет <b>пешеходная прогулка по центральным улицам</b> города. Экскурсия в конце пути приведет Вас к известному месту - <b>тбилисские серные бани</b>, 
                         где <b>вы сможете расслабиться и отдохнуть</b> после долгой дороги, окунуться <b>в бассейн с горячей серной водой прямо из источника</b>, 
                         выпить травяной чай или отведать настоящее грузинское вино. 
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (57, 4, '/images/cards/tour_tbilisi_500x300.jpg', 'столиця Грузиї - Тбілісі', 'Чим будемо займатися ці 5 днів у Грузії?', '<h5> День 1 </h5> Наш веселий і доброзичливий гід познайомить Вас зі столицею Грузії - <b> Тбілісі </b>. Це буде <b> пішохідна прогулянка по центральних вулицях </b> міста. Екскурсія в кінці шляху приведе Вас до відомого місця - <b> тбіліські сірчані лазні </b>, де <b> ви зможете розслабитися і відпочити </b> після довгої дороги, зануритися <b> в басейн з гарячою сірчаною водою прямо з джерела </b>, випити трав\'яний чай або спробувати справжнє грузинське вино.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (58, 1, '/images/tours/tour_5days_bani_500x300.jpg', 'Тбилисские серные бани', '', '<h5>День 2</h5>Настало время для настоящего знакомства с Тбилиси. Вы увидите:
                         <ul>
                            <li><b>Черепашье озеро</b> - очень красивое и романтическое место;</li>
                            <li><b>Спуск и подъём на канатных дорогах</b>, во время которых, даже те кто боится высоты, забывают об этом и делают нереально красивые фото;</li>
                            <li><b>Главный кафедральный собор</b> Грузии - Троица и церковь VI века - Метехи;</li>
                            <li>Парк Рике, мост Мира, площадь Эрекле II, театр Габриаде, улица Шарден;</li>
                            <li>Мост Метехи и подъем на канатной дороге на <b>крепость Нарикала</b>;</li>
                            <li>Прогулка по Ботаническому саду;</li>
                            <li>Подъём на <b>самую высокую точку Тбилиси - фуникулер</b> Мтацминда. Там вы сможете увидеть весь город с колеса обозрения и посетить парк аттракционов.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (58, 2, '/images/tours/tour_5days_bani_500x300.jpg', 'Tbilisi sulfur baths', '', '<h5>Day 2</h5>It\'s time for a real acquaintance with Tbilisi. You will see:
                         <ul>
                            <li><b>Turtle Lake</b> is a very beautiful and romantic place;</li>
                            <li><b>Descent and ascent on cable cars</b>, during which, even those who are afraid of heights, forget about it and make unreal beautiful photos;</li>
                            <li><b>The main cathedral of</b> Georgia - the Trinity and the church of the VI century - Metekhi;</li>
                            <li>Ricke Park, Peace Bridge, Erekle II Square, Gabriade Theater, Chardin Street</li>
                            <li>Metekhi Bridge and the ascent on the cable car to <b>Narikala Fortress</b>;</li>
                            <li>Walk on the Botanical Gardens;</li>
                            <li>The ascent to <b>the highest point of Tbilisi is the</b> Mtatsminda <b>funicular</b>. There you can see the whole city from the Ferris wheel and visit the amusement park..</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (58, 3, '/images/tours/tour_5days_bani_500x300.jpg', 'Tbilisi sulfur baths', '', '<h5>День 2</h5>Настало время для настоящего знакомства с Тбилиси. Вы увидите:
                         <ul>
                            <li><b>Черепашье озеро</b> - очень красивое и романтическое место;</li>
                            <li><b>Спуск и подъём на канатных дорогах</b>, во время которых, даже те кто боится высоты, забывают об этом и делают нереально красивые фото;</li>
                            <li><b>Главный кафедральный собор</b> Грузии - Троица и церковь VI века - Метехи;</li>
                            <li>Парк Рике, мост Мира, площадь Эрекле II, театр Габриаде, улица Шарден;</li>
                            <li>Мост Метехи и подъем на канатной дороге на <b>крепость Нарикала</b>;</li>
                            <li>Прогулка по Ботаническому саду;</li>
                            <li>Подъём на <b>самую высокую точку Тбилиси - фуникулер</b> Мтацминда. Там вы сможете увидеть весь город с колеса обозрения и посетить парк аттракционов.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (58, 4, '/images/tours/tour_5days_bani_500x300.jpg', 'Тбіліські сірчані лазні', '', '<h5> День 2 </h5> Настав час для справжнього знайомства з Тбілісі. Ви побачите: <ul> <li> <b> Черепахове озеро </b> - дуже красиве і романтичне місце; </li> <li> <b> Спуск і підйом канатними дорогами </b>, під час яких, навіть ті хто бояться висоти, забувають про це і роблять нереально красиві фото; </li> <li> <b> Головний кафедральний собор </b> Грузії - Трійця і церква VI століття - Метехі; </li> <li> Парк Ріці, міст Миру, площа Ереклє II, театр Габріаде, вулиця Шарден; </li> <li> міст Метехі і підйом на канатній дорозі до <b> фортеці Нарікала </b>; </li> <li> Прогулянка по Ботанічному саду; </li> <li> Підйом на <b> найвищу точку Тбілісі - фунікулер </b> Мтацминда. Там ви зможете побачити все місто з оглядового колеса і відвідати парк атракціонів. </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (59, 1, '/images/cards/tour_weekend_500x300.jpg', 'Эксукрсия к древней столице Грузии - Мцхета', '', '<h5>День 3</h5>Эксукрсия к древней столице Грузии - <b>Мцхета</b>, где находится много святых и культовых мест:
                         <ul>
                            <li>знаменитый <b>монастырь Джвари</b>, который был построен конце VI века на вершине горы, возле места слияния двух рек Куры и Арагви;</li>
                            <li><b>кафедральный собор Светицховели</b>;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>;</li>
                            <li>действующий <b>мужской монастырь Шио-Мгвиме</b>;</li>
                            <li>прогулка по городу Мцхета</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (59, 2, '/images/cards/tour_weekend_500x300.jpg', 'Excursion to the ancient capital of Georgia - Mtskheta', '', '<h5>Day 3</h5>Exukursiya to the ancient capital of Georgia - <b>Mtskheta </b>, where there are many holy and cult places:
                         <ul>
                            <li>the famous <b>Jvari Monastery</b>, which was built at the end of the 6th century on the top of the mountain, near the confluence of the two rivers Kura and Aragvi;</li>
                            <li><b>Svetitskhoveli Cathedral</b>;</li>
                            <li>The operating <b>Samtavro Convent </b>;</li>
                            <li>The operating <b>monastery of Shio-Mgvime</b>;</li>
                            <li>walk around the city of Mtskheta</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (59, 3, '/images/cards/tour_weekend_500x300.jpg', 'Excursion to the ancient capital of Georgia - Mtskheta', '', '<h5>День 3</h5>Эксукрсия к древней столице Грузии - <b>Мцхета</b>, где находится много святых и культовых мест:
                         <ul>
                            <li>знаменитый <b>монастырь Джвари</b>, который был построен конце VI века на вершине горы, возле места слияния двух рек Куры и Арагви;</li>
                            <li><b>кафедральный собор Светицховели</b>;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>;</li>
                            <li>действующий <b>мужской монастырь Шио-Мгвиме</b>;</li>
                            <li>прогулка по городу Мцхета</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (59, 4, '/images/cards/tour_weekend_500x300.jpg', 'Ексукрсія до древньої столиці Грузії - Мцхета', '', '<h5> День 3 </h5> Ексукрсія у стародавній столиці Грузії - <b> 
місті Мцхета </b>, де знаходиться багато святих і культових місць: <ul> <li> відомий <b> монастир Джварі </b>, який був побудований наприкінці VI століття на вершині гори, біля місця злиття двох річок Кури і Арагві; </li> <li> <b> кафедральний собор Светіцховелі </b>; </li> <li> діючий <b> жіночий монастир Самтавро </b>; </li> <li> діючий <b> чоловічий монастир Шио-Мгвіме </b>; </li> <li> прогулянка по місту Мцхета </li> </ul>
');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (60, 1, '/images/tours/tour_5days_maran500x300.jpg', 'маран в нашем отеле Zemeli Guest House', '', '<h5>День 4</h5> <p><b>День для самостоятельного проведения времени</b>. 
                             Отель находится в самом центре Тбилиси, поэтому Вам легко будет добраться до интересных мест: 
                             старый город, сувенирные лавки, винареи...</p>
                             <p><b>А вечером</b> вас ждет <b>кулинарный мастер-класс</b>. Он пройдет <b>в собственном маране</b> (винном погребе) <b>нашего отеля</b>. Вместе с нашим поваром мы приготовим Хачапури, шашлык по-грузински, испечем в печи свой собственный хлеб пури и обязательно разберемся в грузинских соусах и приправах.</p>
                             <p>Потом съедим всё это под душевные грузинские тосты с домашним вином 7-летней выдержки!</p>  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (60, 2, '/images/tours/tour_5days_maran500x300.jpg', 'Maran in our hotel Zemeli Guest House', '', '<h5>Day 4</h5> <p><b>Day for self-time</b>. 
                             The hotel is located in the very center of Tbilisi, so you can easily get to interesting places: the old town, souvenir shops, wineries ...</p>
                             <p><b>In the evening,</b> you will find a <b>culinary master class</b>. It will be held <b>in our own marana </b> (wine cellar) <b>of our hotel</b>. 
                             Together with our chef we will cook Khachapuri, shish kebab in Georgian, bake your own puri bread in the oven and be sure to understand Georgian sauces and seasonings.</p>
                             <p>Then we will eat all this under the hearty Georgian toasts with the home wine of 7 years old!</p>  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (60, 3, '/images/tours/tour_5days_maran500x300.jpg', 'Maran in our hotel Zemeli Guest House', '', '<h5>День 4</h5> <p><b>День для самостоятельного проведения времени</b>. 
                             Отель находится в самом центре Тбилиси, поэтому Вам легко будет добраться до интересных мест: 
                             старый город, сувенирные лавки, винареи...</p>
                             <p><b>А вечером</b> вас ждет <b>кулинарный мастер-класс</b>. Он пройдет <b>в собственном маране</b> (винном погребе) <b>нашего отеля</b>. Вместе с нашим поваром мы приготовим Хачапури, шашлык по-грузински, испечем в печи свой собственный хлеб пури и обязательно разберемся в грузинских соусах и приправах.</p>
                             <p>Потом съедим всё это под душевные грузинские тосты с домашним вином 7-летней выдержки!</p>  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (60, 4, '/images/tours/tour_5days_maran500x300.jpg', 'Маран в нашому готелі Zemeli Guest House', '', '<h5> День 4 </h5> Це <b> день для самостійного проведення часу </b>. <p> Готель знаходиться в самому центрі Тбілісі, тому легко буде дістатися до цікавих місць: старе місто, сувенірні лавки, винареї ... </p> <p><b>  А ввечері  </b> на вас чекає <b> кулінарний майстер-клас  </b>. Він відбудеться <b> у власному марані </b> (винному погребі) <b> нашого готелю </b>. Разом з нашим кухарем ми приготуємо Хачапурі, шашлик по-грузинськи, спечемо в печі свій власний хліб пурі й обов\'язково ознайомимося з грузинськими соусами та приправами. </p> <p> Потім з\'їмо все у супроводі душевних грузинських тостів з домашнім вином семирічної витримки! </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (61, 1, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'прогулки по Тбилиси', '', '<h5>День 5</h5> Прощальные прогулки по Тбилиси, прощальные впечатления и прощальные эмоции, ну и, конечно, время для составления планов, где еще в хочется побывать в Грузии во время следующего приезда.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (61, 2, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'walks in Tbilisi', '', '<h5>Day 5</h5> Farewell walks in Tbilisi, farewell impressions and farewell emotions, and, of course, time for drawing up plans, where you still want to visit Georgia during your next visit.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (61, 3, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'walks in Tbilisi', '', '<h5>День 5</h5> Прощальные прогулки по Тбилиси, прощальные впечатления и прощальные эмоции, ну и, конечно, время для составления планов, где еще в хочется побывать в Грузии во время следующего приезда.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (61, 4, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'прогулянки по Тбілісі', '', '<h5> День 5 </h5> Останні прогулянки по Тбілісі, прощавальні враження і емоції, ну і, звичайно, час для складання планів на наступний приїзд до Грузії.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (62, 1, '/images/cards/tour_tbilisi_500x300.jpg', 'Теплый и дружелюбный Тбилиси', 'Начинаем отдых в Грузии!', '<h5>День 1</h5> Наш веселый и дружелюбный гид познакомит Вас со столицей Грузии - <b>Тбилиси</b>. 
                         Это будет <b>пешеходная прогулка по центральным улицам</b> города. Экскурсия в конце пути приведет Вас к известному месту - <b>тбилисские серные бани</b>, 
                         где <b>вы сможете расслабиться и отдохнуть</b> после долгой дороги, окунуться <b>в бассейн с горячей серной водой прямо из источника</b>, 
                         выпить травяной чай или отведать настоящее грузинское вино. 
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (62, 2, '/images/cards/tour_tbilisi_500x300.jpg', 'Warm and friendly Tbilisi', 'We begin our vacation in Georgia!', '<h5>Day 1</h5> Our cheerful and friendly guide will introduce you to the capital of Georgia  - <b>Tbilisi </b>. 
                         It will be a <b>pedestrian walk along the central streets </b> of the city.An excursion at the end of the road will take you to a famous place - the  - <b>Tbilisi sulfur baths</b>, 
                         where  <b>you can relax and rest </b> after a long journey, dip <b>into the pool with hot sulfur water directly from the spring</b>, 
                         drink herbal tea or taste real Georgian wine. 
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (62, 3, '/images/cards/tour_tbilisi_500x300.jpg', 'Warm and friendly Tbilisi', 'Начинаем отдых в Грузии!', '<h5>День 1</h5> Наш веселый и дружелюбный гид познакомит Вас со столицей Грузии - <b>Тбилиси</b>. 
                         Это будет <b>пешеходная прогулка по центральным улицам</b> города. Экскурсия в конце пути приведет Вас к известному месту - <b>тбилисские серные бани</b>, 
                         где <b>вы сможете расслабиться и отдохнуть</b> после долгой дороги, окунуться <b>в бассейн с горячей серной водой прямо из источника</b>, 
                         выпить травяной чай или отведать настоящее грузинское вино. 
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (62, 4, '/images/cards/tour_tbilisi_500x300.jpg', 'Теплий і доброзичливий Тбілісі', 'Починаємо відпочинок у Грузії!', '<h5> День 1 </h5> Наш веселий і доброзичливий гід познайомить Вас зі столицею Грузії - <b> Тбілісі </b>. Це буде <b> пішохідна прогулянка по центральних вулицях </b> міста. Екскурсія в кінці шляху приведе Вас до відомого місця - <b> тбіліські сірчані лазні </b>, де <b> ви зможете розслабитися і відпочити </b> після довгої дороги, зануритися <b> в басейн з гарячою сірчаною водою прямо з джерела </b>, випити трав\'яний чай або спробувати справжнє грузинське вино.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (63, 1, '/images/tours/tour_5days_bani_500x300.jpg', 'Старый город - Тбилиси', '', '<h5>День 2</h5>Настало время для настоящего знакомства с Тбилиси. Вы увидите:
                         <ul>
                            <li><b>Черепашье озеро</b> - очень красивое и романтическое место;</li>
                            <li><b>Спуск и подъём на канатных дорогах</b>, во время которых, даже те кто боится высоты, забывают об этом и делают нереально красивые фото;</li>
                            <li><b>Главный кафедральный собор</b> Грузии - Троица и церковь VI века - Метехи;</li>
                            <li>Парк Рике, мост Мира, площадь Эрекле II, театр Габриаде, улица Шарден;</li>
                            <li>Мост Метехи и подъем на канатной дороге на <b>крепость Нарикала</b>;</li>
                            <li>Прогулка по Ботаническому саду;</li>
                            <li>Подъём на <b>самую высокую точку Тбилиси - фуникулер</b> Мтацминда. Там вы сможете увидеть весь город с колеса обозрения и посетить парк аттракционов.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (63, 2, '/images/tours/tour_5days_bani_500x300.jpg', 'Old Town - Tbilisi', '', '<h5>Day 2</h5>It\'s time for a real acquaintance with Tbilisi. You will see:
                         <ul>
                            <li><b>Turtle Lake</b> - is a very beautiful and romantic place;</li>
                            <li><b>Descent and ascent on cable cars</b>, during which, even those who are afraid of heights, forget about it and make unreal beautiful photos;</li>
                            <li><b>The main cathedral</b> of Georgia - the Trinity and the church of the VI century - Metekhi;</li>
                            <li>Ricke Park, Peace Bridge, Erekle II Square, Gabriade Theater, Chardin Street;</li>
                            <li>Metekhi Bridge and the ascent on the cable car to <b>Narikala Fortress</b>;</li>
                            <li>Walk on the Botanical Gardens;</li>
                            <li>The ascent to <b>the highest point of Tbilisi is the</b> Mtatsminda <b> funicular</b>>. There you can see the whole city from the Ferris wheel and visit the amusement park.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (63, 3, '/images/tours/tour_5days_bani_500x300.jpg', 'Old Town - Tbilisi', '', '<h5>День 2</h5>Настало время для настоящего знакомства с Тбилиси. Вы увидите:
                         <ul>
                            <li><b>Черепашье озеро</b> - очень красивое и романтическое место;</li>
                            <li><b>Спуск и подъём на канатных дорогах</b>, во время которых, даже те кто боится высоты, забывают об этом и делают нереально красивые фото;</li>
                            <li><b>Главный кафедральный собор</b> Грузии - Троица и церковь VI века - Метехи;</li>
                            <li>Парк Рике, мост Мира, площадь Эрекле II, театр Габриаде, улица Шарден;</li>
                            <li>Мост Метехи и подъем на канатной дороге на <b>крепость Нарикала</b>;</li>
                            <li>Прогулка по Ботаническому саду;</li>
                            <li>Подъём на <b>самую высокую точку Тбилиси - фуникулер</b> Мтацминда. Там вы сможете увидеть весь город с колеса обозрения и посетить парк аттракционов.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (63, 4, '/images/tours/tour_5days_bani_500x300.jpg', 'Старе місто - Тбілісі', '', '<h5> День 2 </h5> Настав час для справжнього знайомства з Тбілісі. Ви побачите: <ul> <li> <b> Черепахове озеро </b> - дуже красиве і романтичне місце; </li> <li> <b> Спуск і підйом канатними дорогами </b>, під час яких, навіть ті хто бояться висоти, забувають про це і роблять нереально красиві фото; </li> <li> <b> Головний кафедральний собор </b> Грузії - Трійця і церква VI століття - Метехі; </li> <li> Парк Ріці, міст Миру, площа Ереклє II, театр Габріаде, вулиця Шарден; </li> <li> міст Метехі і підйом на канатній дорозі до <b> фортеці Нарікала </b>; </li> <li> Прогулянка по Ботанічному саду; </li> <li> Підйом на <b> найвищу точку Тбілісі - фунікулер </b> Мтацминда. Там ви зможете побачити все місто з оглядового колеса і відвідати парк атракціонів. </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (64, 1, '/images/cards/tour_weekend_500x300.jpg', 'святые и культовые места - Мцхета', '', '<h5>День 3</h5>Эксукрсия к древней столице Грузии - <b>Мцхета</b>, где находится много святых и культовых мест:
                         <ul>
                            <li>знаменитый <b>монастырь Джвари</b>, который был построен конце VI века на вершине горы, возле места слияния двух рек Куры и Арагви;</li>
                            <li><b>кафедральный собор Светицховели</b>;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>;</li>
                            <li>действующий <b>мужской монастырь Шио-Мгвиме</b>;</li>
                            <li>прогулка по городу Мцхета</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (64, 2, '/images/cards/tour_weekend_500x300.jpg', 'holy and religious places - Mtskheta', '', '<h5>Day 3</h5>Exukursiya to the ancient capital of Georgia  - <b>Mtskheta</b>, where there are many holy and cult places:
                         <ul>
                            <li>the famous <b>Jvari Monastery</b>, which was built at the end of the 6th century on the top of the mountain, near the confluence of the two rivers Kura and Aragvi;</li>
                            <li><b>Svetitskhoveli Cathedral</b>;</li>
                            <li>The operating <b>Samtavro Convent</b>;</li>
                            <li>The operating <b>monastery of Shio-Mgvime</b>;</li>
                            <li>walk around the city of Mtskheta</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (64, 3, '/images/cards/tour_weekend_500x300.jpg', 'holy and religious places - Mtskheta', '', '<h5>День 3</h5>Эксукрсия к древней столице Грузии - <b>Мцхета</b>, где находится много святых и культовых мест:
                         <ul>
                            <li>знаменитый <b>монастырь Джвари</b>, который был построен конце VI века на вершине горы, возле места слияния двух рек Куры и Арагви;</li>
                            <li><b>кафедральный собор Светицховели</b>;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>;</li>
                            <li>действующий <b>мужской монастырь Шио-Мгвиме</b>;</li>
                            <li>прогулка по городу Мцхета</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (64, 4, '/images/cards/tour_weekend_500x300.jpg', 'святі і культові місця - Мцхета', '', '<h5> День 3 </h5> Ексукрсія у стародавній столиці Грузії - <b> 
місті Мцхета </b>, де знаходиться багато святих і культових місць: <ul> <li> відомий <b> монастир Джварі </b>, який був побудований наприкінці VI століття на вершині гори, біля місця злиття двох річок Кури і Арагві; </li> <li> <b> кафедральний собор Светіцховелі </b>; </li> <li> діючий <b> жіночий монастир Самтавро </b>; </li> <li> діючий <b> чоловічий монастир Шио-Мгвіме </b>; </li> <li> прогулянка по місту Мцхета </li> </ul>
');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (65, 1, '/images/tours/tour_5days_maran500x300.jpg', 'Кулинарный мастер-класс в маране', '', 'А вечером</b> вас ждет <b>кулинарный мастер-класс</b>. Он пройдет <b>в собственном маране</b> (винном погребе) <b>нашего отеля</b>. Вместе с нашим поваром мы приготовим Хачапури, шашлык по-грузински, испечем в печи свой собственный хлеб пури и обязательно разберемся в грузинских соусах и приправах.</p>
                         <p>Потом съедим всё это под <b>душевные грузинские тосты с домашним вином</b> 7-летней выдержки!</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (65, 2, '/images/tours/tour_5days_maran500x300.jpg', 'Culinary master class in marani', '', 'In the evening, you will find a <b> culinary master class </b>.  It will be held <b>in our own marana</b> (wine cellar) <b>of our hotel</b>. Together with our chef we will cook Khachapuri, shish kebab in Georgian, bake your own puri bread in the oven and be sure to understand Georgian sauces and seasonings..</p>
                         <p>Then we will eat all this under the <b>hearty Georgian toasts with the home wine</b> of 7 years old!</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (65, 3, '/images/tours/tour_5days_maran500x300.jpg', 'Culinary master class in marani', '', 'А вечером</b> вас ждет <b>кулинарный мастер-класс</b>. Он пройдет <b>в собственном маране</b> (винном погребе) <b>нашего отеля</b>. Вместе с нашим поваром мы приготовим Хачапури, шашлык по-грузински, испечем в печи свой собственный хлеб пури и обязательно разберемся в грузинских соусах и приправах.</p>
                         <p>Потом съедим всё это под <b>душевные грузинские тосты с домашним вином</b> 7-летней выдержки!</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (65, 4, '/images/tours/tour_5days_maran500x300.jpg', 'Кулінарний Майстер-клас в Марані', '', 'А ввечері  </b> на вас чекає <b> кулінарний майстер-клас  </b>. Він відбудеться <b> у власному марані </b> (винному погребі) <b> нашого готелю </b>. Разом з нашим кухарем ми приготуємо Хачапурі, шашлик по-грузинськи, спечемо в печі свій власний хліб пурі й обов\'язково ознайомимося з грузинськими соусами та приправами. </p> <p> Потім з\'їмо все у супроводі душевних грузинських тостів з домашнім вином семирічної витримки! </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (66, 1, '/images/cards/kaheti_1_500x300.jpg', 'виды на Алазанскую долину', '', '<h5>День 4</h5> <p>Увлекательная <b>поездка в край виноделия - Кахетия</b> Вы увидите: 
                         <ul>
                            <li>живописный <b>Гомборский перевал</b>, через который будет проходить наш путь;</li>
                            <li>затем, остановка в городе <b>Телави</b>;</li>
                            <li>роскошные <b>виды на Алазанскую долину</b>, которая поражает своей безкрайностью;</li>   
                            <li><b>прогулка по городу влюблённых - Сигнахи</b></li>
                            <li>посещение святого места - <b>Бодбийский монастырь</b></li>
                            <li>экскурсия на <b>современный винный завод Патардзеули</b>;</li> 
                            <li><b>дегустация</b> уникальных сортов <b>грузинского вина</b>;</li>
                        </ul>
                              
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (66, 2, '/images/cards/kaheti_1_500x300.jpg', 'views of the Alazani Valley', '', '<h5>Day 4</h5> <p>A fascinating <b>trip to the edge of winemaking - Kakheti</b> You will see : 
                         <ul>
                            <li>The picturesque <b>Gombor Pass</b>, through which our path will pass;</li>
                            <li>then, a stop in the city of <b>Telavi</b>;</li>
                            <li>Luxurious  <b>views of the Alazani Valley</b>, which is amazing with its vastness;</li>   
                            <li><b>walk around the city of love Sighnaghi</b></li>
                            <li>visiting the holy place - <b>Bodbe Monastery;</b></li>
                            <li>excursion to the <b>modern winery of Patardzeuli</b>;</li> 
                            <li><b>tasting of </b> unique varieties <b>of Georgian wine</b>;</li>
                        </ul>
                              
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (66, 3, '/images/cards/kaheti_1_500x300.jpg', 'views of the Alazani Valley', '', '<h5>День 4</h5> <p>Увлекательная <b>поездка в край виноделия - Кахетия</b> Вы увидите: 
                         <ul>
                            <li>живописный <b>Гомборский перевал</b>, через который будет проходить наш путь;</li>
                            <li>затем, остановка в городе <b>Телави</b>;</li>
                            <li>роскошные <b>виды на Алазанскую долину</b>, которая поражает своей безкрайностью;</li>   
                            <li><b>прогулка по городу влюблённых - Сигнахи</b></li>
                            <li>посещение святого места - <b>Бодбийский монастырь</b></li>
                            <li>экскурсия на <b>современный винный завод Патардзеули</b>;</li> 
                            <li><b>дегустация</b> уникальных сортов <b>грузинского вина</b>;</li>
                        </ul>
                              
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (66, 4, '/images/cards/kaheti_1_500x300.jpg', 'види на Алазанську долину', '', '<h5> День 4 </h5> <p> Захоплююча <b> мандрівка в край виноробства - місто Кахетія </b> Ви побачите: <ul> <li> мальовничий <b> Гомборскій перевал </b>, через який буде проходити наш шлях; </li> <li> потім, зупинка в місті <b> Телаві </b>; </li> <li> розкішні <b> види на Алазанську долину </b>, яка вражає своєю безмежністю; </li> <li> <b> прогулянка по місту закоханих - Сигнахі </b>; </ li> <li> відвідування святого місця - <b> Бодбійскій монастир </b>; </li> <li> екскурсія на <b> сучасний винний завод Патардзеулі </b>; </li> <li> <b> дегустація </b> унікальних сортів <b> грузинського вина </b>; </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (67, 1, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'Я люблю Тбилиси', '', '<h5>День 5</h5> Прощальные прогулки по Тбилиси, прощальные впечатления и прощальные эмоции, ну и, конечно, время для составления планов, где еще в хочется побывать в Грузии во время следующего приезда.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (67, 2, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'I love Tbilisi', '', '<h5>Day 5</h5> Farewell walks in Tbilisi, farewell impressions and farewell emotions, and, of course, time for drawing up plans, where you still want to visit Georgia during your next visit.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (67, 3, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'I love Tbilisi', '', '<h5>День 5</h5> Прощальные прогулки по Тбилиси, прощальные впечатления и прощальные эмоции, ну и, конечно, время для составления планов, где еще в хочется побывать в Грузии во время следующего приезда.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (67, 4, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'Я кохаю Тбілісі', '', '<h5> День 5 </h5> Останні прогулянки по Тбілісі, прощавальні враження і емоції, ну і, звичайно, час для складання планів на наступний приїзд до Грузії.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (68, 1, '/images/excoursions/tbilisi/excursion_in_tbilisi_500x300_1.jpg', 'Вид на Тбилиси с крепости Нарикала', 'Что вы увидите за эти 4 дня в Грузии?', '<h5>День 1</h5> <b>Тбилиси</b>. Приятная прогулка по городу с весёлым гидом. Он покажет все <b>главные объекты и известные места</b> 
                         в центре города, расскажет о них историй и тайны.
                         В этот день Вас ждет <b>ужин в национальном ресторане, с танцами, песнями и вином</b>!
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (68, 2, '/images/excoursions/tbilisi/excursion_in_tbilisi_500x300_1.jpg', 'View of Tbilisi from Narikala Fortress', 'What will you see in these 4 days in Georgia?', '<h5>Day 1</h5> <b>Tbilisi</b>. A pleasant walk around the city with a cheerful guide. He will show all the <b>main objects and famous places</b> 
                         in the city center, tell stories and secrets about them. On this day you will have <b>dinner in a national restaurant, with dances, songs and wine!</b>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (68, 3, '/images/excoursions/tbilisi/excursion_in_tbilisi_500x300_1.jpg', 'Вид на Тбилиси с крепости Нарикала', 'Что вы увидите за эти 4 дня в Грузии?', '<h5>День 1</h5> <b>Тбилиси</b>. Приятная прогулка по городу с весёлым гидом. Он покажет все <b>главные объекты и известные места</b> 
                         в центре города, расскажет о них историй и тайны.
                         В этот день Вас ждет <b>ужин в национальном ресторане, с танцами, песнями и вином</b>!
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (68, 4, '/images/excoursions/tbilisi/excursion_in_tbilisi_500x300_1.jpg', 'Вид на Тбілісі з фортеці Нарікала', 'Що ви побачите за ці 4 дні у Грузії?', '<h5> День 1 </h5> <b> Тбілісі </b>. Приємна прогулянка по місту з веселим гідом. Він покаже усі <b> головні об\'єкти та відомі місця </b> в центрі міста, розповість про них історії і таємниці. В цей день на Вас чекає <b> вечеря в національному ресторані, з танцями, піснями і вином! </b>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (69, 1, '/images/excoursions/maps/ex_borjomi_vardzia_1_500x300.jpg', 'Вардзия осенью', '', '<h5>День 2</h5>Нас ждет продолжительная, но в то же время познавательнаяя и интересная поезка в город Вардзия:
                        <ul>
                          <li><b>пещерный город Вардзия</b> – одно из главных туристических мест Грузии. 
                           Это пещерный монастырский комплекс, высеченный в скалах в XII веке, во времена правления царицы Тамары;</li>
                          <li>Недалеко, от этого места, посетим <b>замок Хертвиси</b>;</li>
                           <p></p>
                            По Вашему желанию мы можем организовать вблизи этого места <b>рафтинг на реке Кура</b>. 
                            Сложность проходжения маршрута: средняя или леёгкая. <b>Протяженность маршрута 16 км</b> 
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (69, 2, '/images/excoursions/maps/ex_borjomi_vardzia_1_500x300.jpg', 'Vardzia in the fall', '', '<h5>Day 2</h5>We are waiting for a long, but at the same time, informative and interesting trip to the city of Vardzia:
                        <ul>
                          <li><b>The cave city of Vardzia</b> – is one of the main tourist places of Georgia. 
                          This cave monastery complex, carved into the rocks in the XII century, during the reign of Queen Tamara;</li>
                          <li>Nearby, from this place, we visit the <b>castle of Khertvisi</b>;</li>
                           <p></p>
                            At your request we can arrange <b>rafting on the Kura river</b>. 
                            near this place . Difficulty of passing the route: medium or light. <b>The length of the route is 16 km</b> 
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (69, 3, '/images/excoursions/maps/ex_borjomi_vardzia_1_500x300.jpg', 'Вардзия осенью', '', '<h5>День 2</h5>Нас ждет продолжительная, но в то же время познавательнаяя и интересная поезка в город Вардзия:
                        <ul>
                          <li><b>пещерный город Вардзия</b> – одно из главных туристических мест Грузии. 
                           Это пещерный монастырский комплекс, высеченный в скалах в XII веке, во времена правления царицы Тамары;</li>
                          <li>Недалеко, от этого места, посетим <b>замок Хертвиси</b>;</li>
                           <p></p>
                            По Вашему желанию мы можем организовать вблизи этого места <b>рафтинг на реке Кура</b>. 
                            Сложность проходжения маршрута: средняя или леёгкая. <b>Протяженность маршрута 16 км</b> 
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (69, 4, '/images/excoursions/maps/ex_borjomi_vardzia_1_500x300.jpg', 'Вардзия восени', '', '<h5> День 2 </h5> На нас чекає тривала, але пізнавальна подорож до міста Вардзія: <ul> <li> <b> печерне місто Вардзія </b> - одне з головних туристичних місць Грузії. Це печерний монастирський комплекс, висічений в скелях в XII столітті, за часів правління цариці Тамари; </li> <li> Недалеко від цього місця відвідаємо <b> замок Хертвісі </b>; </li> <p> </p> За Вашим бажанням ми можемо організувати поблизу цього місця <b> рафтинг на річці Кура </b>. Складність проходження маршруту: середня або легка. <b> Протяжність маршруту 16 км </b>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (70, 1, '/images/excoursions/maps/ex_borjomi_rabati_500x300.jpg', 'крепость «Рабат»', '', 'Затем на нашем пути будет:
                           <ul>
                            <li><b>красивый городок Ахалцихе</b> с тысячелетней историей;</li>
                            <li> увидим жемчужину юга Грузии <b>крепость «Рабат»</b> IX века, 
                                    где на глазах раскрывается средневековая история региона, 
                                    факты о которой находятся в краеведческом музее на территории крепости</li> 
                            <li><b>Зелёный монастырь</b>, расположенный в лесу, недалеко от Боржоми. Место уникальное, где каждый посетитель </li>
                         </ul>
                            <p>Ночь в отеле в городе Боржоми.</p> 
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (70, 2, '/images/excoursions/maps/ex_borjomi_rabati_500x300.jpg', 'Rabat fortress', '', 'Then on our way will be::
                           <ul>
                            <li><b>beautiful town of Akhaltsikhe</b> with a thousand-year history;</li>
                            <li> we will see the pearl of the south of Georgia the <b>fortress "Rabat"</b> of the IX century, 
                            where the medieval history of the region is revealed before our eyes, the facts of which are in the museum of local lore on the territory of the fortress</li> 
                            <li><b>The Green Monastery</b>,  located in the forest, near Borjomi. The place is unique where every visitor </li>
                         </ul>
                            <p>Overnight at the hotel in Borjomi.</p> 
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (70, 3, '/images/excoursions/maps/ex_borjomi_rabati_500x300.jpg', 'крепость «Рабат»', '', 'Затем на нашем пути будет:
                           <ul>
                            <li><b>красивый городок Ахалцихе</b> с тысячелетней историей;</li>
                            <li> увидим жемчужину юга Грузии <b>крепость «Рабат»</b> IX века, 
                                    где на глазах раскрывается средневековая история региона, 
                                    факты о которой находятся в краеведческом музее на территории крепости</li> 
                            <li><b>Зелёный монастырь</b>, расположенный в лесу, недалеко от Боржоми. Место уникальное, где каждый посетитель </li>
                         </ul>
                            <p>Ночь в отеле в городе Боржоми.</p> 
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (70, 4, '/images/excoursions/maps/ex_borjomi_rabati_500x300.jpg', 'фортеця «Рабат»', '', 'Далі на нашому шляху буде: <ul> <li> <b> гарне містечко Ахалцихе </b> з тисячолітньою історією; </li> <li> побачимо перлину південної Грузії <b> фортецю «Рабат» </b> IX століття, де на очах розкривається середньовічна історія регіону, факти про яку знаходяться в краєзнавчому музеї на території фортеці </li> <li> <b> Зелений монастир </b>, розташований в лісі, недалеко від Боржомі. Місце унікальне, де жоден відвідувач не залишався байдужим </li> </ul> <p> Ніч в готелі в місті Боржомі. </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (71, 1, '/images/tours/tour_3days__borjomi_3_500x488.jpg', 'Боржомский центральный парк', '', '<h5>День 3</h5>Прогулка по Боржоми, остановки по дороге возле известных объектов и возвращение в Тбилиси:
                         <ul>
                            <li><b>город Боржоми</b> - где находится <b>источник природной минеральной воды</b>, которая очень полезна для организма человека;</li>
                            <li><b>подъём по канатной дороге на Плато</b>, где открывается красивый вид на Боржомское ущелье;</li>
                            <li>самое популярное место отдыха - <b>Боржомский центральный парк</b>, где вы увидите красивый <b>водопад, горная речка и парк атракционов</b>;</li>
                           </ul>
                          По пути в Тбилиси, заедем увидеть знаменитый <b>монастырь Джвари</b>, место, откуда открываются удивительные виды.
                          Ночь в отеле в городе Тбилиси. 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (71, 2, '/images/tours/tour_3days__borjomi_3_500x488.jpg', 'Borjomi Central Park', '', '<h5>Day 3</h5>Walk along Borjomi, stop along the road near famous objects and return to Tbilisi:
                         <ul>
                            <li><b>city ​​Borjomi</b> - where there is a <b>source of natural mineral water</b>, which is very useful for the human body;</li>
                            <li><b>climbing the cable car to the Plateau</b>, where you can see a beautiful view of the Borzhomi Gorge;</li>
                            <li>the most popular holiday destination is <b>Borjomi Central Park</b>, where you will see a beautiful <b>waterfall, a mountain river and an amusement park</b>;</li>
                           </ul>
                          On the way to Tbilisi, we will visit the famous <b>Jvari Monastery</b>, a place from which amazing views are discovered. Overnight at hotel in Tbilisi. 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (71, 3, '/images/tours/tour_3days__borjomi_3_500x488.jpg', 'Боржомский центральный парк', '', '<h5>День 3</h5>Прогулка по Боржоми, остановки по дороге возле известных объектов и возвращение в Тбилиси:
                         <ul>
                            <li><b>город Боржоми</b> - где находится <b>источник природной минеральной воды</b>, которая очень полезна для организма человека;</li>
                            <li><b>подъём по канатной дороге на Плато</b>, где открывается красивый вид на Боржомское ущелье;</li>
                            <li>самое популярное место отдыха - <b>Боржомский центральный парк</b>, где вы увидите красивый <b>водопад, горная речка и парк атракционов</b>;</li>
                           </ul>
                          По пути в Тбилиси, заедем увидеть знаменитый <b>монастырь Джвари</b>, место, откуда открываются удивительные виды.
                          Ночь в отеле в городе Тбилиси. 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (71, 4, '/images/tours/tour_3days__borjomi_3_500x488.jpg', 'Боржомський центральний парк', '', '<h5> День 3 </h5> Прогулянка по Боржомі, зупинки по дорозі біля відомих об\'єктів і повернення в Тбілісі: <ul> <li> <b> місто Боржомі </b> , де знаходиться <b> джерело природної мінеральної води </b>, яка дуже корисна для організму людини; </li> <li> <b> підйом канатною дорогою на Плато </b>, звідки відкривається неповторний вид на Боржомську ущелину; </li> <li> найпопулярніше місце відпочинку - <b> Боржомський центральний парк </b>, де ви побачите красивий <b> водоспад, гірську річку і парк атракціонів </b>; </li> </ul> По дорозі в Тбілісі, заїдемо до відомого <b> монастиру Джварі </b>, у місце, звідки відкриваються дивовижні краєвиди. Ніч в готелі в місті Тбілісі.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (72, 1, '/images/excoursions/mtskheta_1/excursion_mtskheta_2_500x300.jpg', 'Монастырь Джвари, вид на Мцхету', '', '<h5>День 4</h5> <b>День для прогулок по столице Грузии</b>. Свободное время, чтобы прогуляться по узким улочкам старого города,
                            зайти в сувенирные и винные магазины и послушать уличную музыку. 
                            Вам будет легко добраться до самых интересных мест, так как отель находится в самом центре Тбилиси.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (72, 2, '/images/excoursions/mtskheta_1/excursion_mtskheta_2_500x300.jpg', 'Jvari Monastery, view of Mtskheta', '', '<h5>Day 4</h5> <b>A day for walking around the capital of Georgia</b>. Free time to stroll through the narrow streets of the old city, 
                            go to souvenir and wine shops and listen to street music. 
                            You will easily reach the most interesting places, as the hotel is located in the very center of Tbilisi.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (72, 3, '/images/excoursions/mtskheta_1/excursion_mtskheta_2_500x300.jpg', 'Монастырь Джвари, вид на Мцхету', '', '<h5>День 4</h5> <b>День для прогулок по столице Грузии</b>. Свободное время, чтобы прогуляться по узким улочкам старого города,
                            зайти в сувенирные и винные магазины и послушать уличную музыку. 
                            Вам будет легко добраться до самых интересных мест, так как отель находится в самом центре Тбилиси.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (72, 4, '/images/excoursions/mtskheta_1/excursion_mtskheta_2_500x300.jpg', 'Монастир Джварі, вид на Мцхету', '', '<h5> День 4 </h5> <b> День для прогулянок по столиці Грузії </b>. Вільний час, щоб пройтися по вузьких вуличках старого міста, відвідати сувенірні та винні магазини і послухати вуличну музику. Вам буде легко дістатися до найцікавіших місць, адже готель знаходиться в самому центрі Тбілісі.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (73, 1, '/images/tours/tour_8days_tbilisi_500x300.jpg', 'пешая прогулка с гидом по центральным улицам Тбилиси', 'Итак, начнем наш гастрономический тур по Грузии!', '<h5>День 1</h5> В день приезда мы не будем сильно нагружать Вас долгими экскурсиями, но познакомить Вас с Тбилиси - мы обязаны! 
                            Вас ждёт <b>увлекательная пешая прогулка с нашим гидом по центральным улицам города</b>. 
                           А вечером вас ждет <b>настоящее застолье по-грузински</b>, 
                            с национальными танцами, песнями и под настоящие грузинские тосты!  
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (73, 2, '/images/tours/tour_8days_tbilisi_500x300.jpg', 'guided walk through the main streets of Tbilisi', 'So, let\'s start our gastronomic tour of Georgia!', '<h5>Day 1</h5> On the day of your arrival we will not heavily burden you with long excursions, but we are obliged to acquaint you with Tbilisi! You will find a
                            <b>fascinating walk with our guide through the central streets of the city</b>. 
                           And in the evening you will have a  <b>real feast in Georgian </b>, with national dances, songs and real Georgian toasts!  
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (73, 3, '/images/tours/tour_8days_tbilisi_500x300.jpg', 'טיול מודרך ברחובות הראשיים של טביליסי', 'Итак, начнем наш гастрономический тур по Грузии!', '<h5>День 1</h5> В день приезда мы не будем сильно нагружать Вас долгими экскурсиями, но познакомить Вас с Тбилиси - мы обязаны! 
                            Вас ждёт <b>увлекательная пешая прогулка с нашим гидом по центральным улицам города</b>. 
                           А вечером вас ждет <b>настоящее застолье по-грузински</b>, 
                            с национальными танцами, песнями и под настоящие грузинские тосты!  
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (73, 4, '/images/tours/tour_8days_tbilisi_500x300.jpg', 'піша прогулянка з гідом по центральних вулицях Тбілісі', 'Отже, почнемо наш гастрономічний тур по Грузії!', '<h5> День 1 </h5> У день приїзду ми не будемо сильно навантажувати Вас довгими екскурсіями, але познайомити Вас з Тбілісі - ми зобов\'язані! На Вас чекає <b> захоплююча піша прогулянка з нашим гідом центральними вулицями міста </b>. Ввечері ми організуємо <b> справжнє застілля по-грузинськи </b>, з національними танцями, піснями і під справжні грузинські тости!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (74, 1, '/images/tours/tour_8days_kaheti_500x300.jpg', 'Кахетия и виноградники Грузии', '', '<h5>День 2</h5>
                           <ul>
                            <li>главное мероприятие в этого дня -  <b>посещение одного из крупнейших винных погребов на заводе Хареба </b> в Кварели;</li>
                            <li> <b>дегустация </b> несколький уникальных сортов  <b>вина </b>;</li>
                            <li> <b>участие в  мастер-классе</b> по приготовлению грузинского дессерта  <b>чурчхелла </b>;</li>
                            <li>прогулка по городу влюбленных <b>Сигнахи</b>;</li>
                            <li>по пути можно будет полюбоваться красивыми видами на <b>Алазанскую долину</b> и остановится в центре Кахетии -  <b>город Телави </b>;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (74, 2, '/images/tours/tour_8days_kaheti_500x300.jpg', 'Kakheti and vineyards of Georgia', '', '<h5>Day 2</h5>
                           <ul>
                            <li>the main event in this day is a <b>visit to one of the largest wine cellars at the Hareba plant </b> in Kvareli;</li>
                            <li> <b>tasting  </b> several unique varieties  <b>of wine </b>;</li>
                            <li> <b>Participation in the master class</b> for the preparation of the Georgian dessert <b>churchchalla </b>;</li>
                            <li>walk around the city of love <b>Sighnaghi </b>;</li>
                            <li>along the way you can admire beautiful views of the <b>Alazani valley</b> and stop in the center of Kakheti - the city ​​of <b>Telavi</b>;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (74, 3, '/images/tours/tour_8days_kaheti_500x300.jpg', 'Kakhheti וכרמים של גאורגיה', '', '<h5>День 2</h5>
                           <ul>
                            <li>главное мероприятие в этого дня -  <b>посещение одного из крупнейших винных погребов на заводе Хареба </b> в Кварели;</li>
                            <li> <b>дегустация </b> несколький уникальных сортов  <b>вина </b>;</li>
                            <li> <b>участие в  мастер-классе</b> по приготовлению грузинского дессерта  <b>чурчхелла </b>;</li>
                            <li>прогулка по городу влюбленных <b>Сигнахи</b>;</li>
                            <li>по пути можно будет полюбоваться красивыми видами на <b>Алазанскую долину</b> и остановится в центре Кахетии -  <b>город Телави </b>;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (74, 4, '/images/tours/tour_8days_kaheti_500x300.jpg', 'Кахетія і виноградники Грузії', '', '<h5> День 2 </h5> <ul> <li> Головний захід в цього дня - <b> відвідування одного з найбільших винних погребів на заводі Хареба </b> у Кварелі; </li> <li> <b> дегустація </b> кількох унікальних сортів <b> вина </b>; </li> <li> <b> участь в майстер-класі </b> з приготування грузинського десерту <b> Чурчхелла </b>; </li> <li> прогулянка містом закоханих під назвою <b> Сигнахи </b>; </li> <li> по дорозі можна буде помилуватися чарівними краєвидами на <b> Алазанську долину </b> і зупинитись у центрі Кахетії - <b> місті Телаві </b>; </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (75, 1, '/images/tours/tour_7days_culinary_1_500x300.jpg', 'хинкали', '', '<h5>День 3</h5> Отправляемся в горы! По пути посетим  <b>родину хинкали</b> - поселок Пассанаури, а также увидим: 
                             <ul>
                            <li><b>Жинвальское водохранилище</b> и историческая <b>крепость Ананури</b> эпохи раннего феодализма;</li>
                            <li>Место, где две реки <b>Белая и Чёрная Арагви сливаются в одно русло</b>, при этом их воды не смешиваются;</li>
                            <li><b>Горнолыжный курорт</b> Грузии - <b>Гудаури</b>, 2000 метров над уровнем моря. Виды со смотровой площадки вы никогда не забудете;</li>
                             </ul>
                            ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (75, 2, '/images/tours/tour_7days_culinary_1_500x300.jpg', 'Khinkali', '', '<h5>Day 3</h5> We go to the mountains! On the way we will visit the <b>homeland of khinkali</b> - the village of Passanauri, and also we will see: 
                             <ul>
                            <li><b>Zhinval water reservoir </b> and the historical <b>fortress Ananuri </b> of the early feudal period;</li>
                            <li>The place where the two rivers <b>White and Black Aragvi merge into one channel</b>, while their waters do not mix;</li>
                            <li><b>Mountain ski resort of Georgia - Gudauri</b>, 2000 meters above sea level. Views from the observation platform you will never forget;</li>
                             </ul>
                            ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (75, 3, '/images/tours/tour_7days_culinary_1_500x300.jpg', 'Khinkali', '', '<h5>День 3</h5> Отправляемся в горы! По пути посетим  <b>родину хинкали</b> - поселок Пассанаури, а также увидим: 
                             <ul>
                            <li><b>Жинвальское водохранилище</b> и историческая <b>крепость Ананури</b> эпохи раннего феодализма;</li>
                            <li>Место, где две реки <b>Белая и Чёрная Арагви сливаются в одно русло</b>, при этом их воды не смешиваются;</li>
                            <li><b>Горнолыжный курорт</b> Грузии - <b>Гудаури</b>, 2000 метров над уровнем моря. Виды со смотровой площадки вы никогда не забудете;</li>
                             </ul>
                            ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (75, 4, '/images/tours/tour_7days_culinary_1_500x300.jpg', 'хінкалі', '', '<h5> День 3 </h5> Вирушаємо в гори! По дорозі відвідаємо <b> батьківщину хінкалі </b> - селище Пассанаурі, а також побачимо: <ul> <li> <b> Жінвальске водосховище </b> і історичну <b> фортецю Ананурі </b> епохи раннього феодалізму; </li> <li> Місце, де дві річки <b> Біла і Чорна Арагві зливаються в одне русло </b>, при цьому їх води не змішуються; </li> <li> <b> Гірськолижний курорт </b> Грузії - <b> Гудаурі </b>, що знаходиться більш ніж 2000 метрів над рівнем моря. Краєвиди з оглядового майданчика ви ніколи не забудете; </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (76, 1, '/images/cards/kazbeg_500x300.jpg', 'храм Гергети', '', '  <ul> 
                           <li>Дорога через <b>Крестовый перевал</b>. Её также называют военно-грузинская дорога. Дух захватывает, когда проезжаешь по её извилистым серпантинам;</li>
                            <li><b>Доза адреналина</b>, когда смотришь на облака сверху и наблюдаешь как они проплывают внизу между вершинами гор;</li>
                            <li>Главный объект нашей эксскурсии - <b>храм Гергети</b>. Он находится на вершине горы и  <b>мы будем к нему подниматься на джипе</b>;</li>
                            </ul>
                            ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (76, 2, '/images/cards/kazbeg_500x300.jpg', 'Gergeti temple', '', '  <ul> 
                           <li>The road through the <b>Cross Pass </b>. It is also called the military-Georgian road. The spirit captures when you pass through its winding serpentines;</li>
                            <li><b>A dose of adrenaline</b>, when you look at the clouds from above and watch as they swim down between the tops of the mountains;</li>
                            <li>The main object of our excursion is <b>the Gergeti temple</b>. He is at the top of the mountain and <b>we will go up to him on a jeep</b>;</li>
                            </ul>
                            ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (76, 3, '/images/cards/kazbeg_500x300.jpg', 'Gergeti temple', '', '  <ul> 
                           <li>Дорога через <b>Крестовый перевал</b>. Её также называют военно-грузинская дорога. Дух захватывает, когда проезжаешь по её извилистым серпантинам;</li>
                            <li><b>Доза адреналина</b>, когда смотришь на облака сверху и наблюдаешь как они проплывают внизу между вершинами гор;</li>
                            <li>Главный объект нашей эксскурсии - <b>храм Гергети</b>. Он находится на вершине горы и  <b>мы будем к нему подниматься на джипе</b>;</li>
                            </ul>
                            ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (76, 4, '/images/cards/kazbeg_500x300.jpg', 'храм Гергеті', '', '<ul><li> Дорога лежить через <b> Хрестовий перевал </b>. Її також називають військово-грузинська дорога. Дух захоплює, коли проїжджаєш по її звивистим серпантинам; </li> <li> <b> Доза адреналіну зашкалює </b>, якщо подивитися на хмари зверху і спостерігати як вони пропливають внизу між вершинами гір; </li> <li> Головна пам\'ятка нашої екскурсіі - <b> храм Гергети </b>. Він знаходиться на вершині гори, тож <b> ми дістанемося до нього на джипі </b>;</li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (77, 1, '/images/tours/tour_7days_culinary_2_500x300.jpg', 'посетим известный столичный «Дом сыра» в Грузии', '', '<h5>День 4</h5>Грузия славится не только винодельческими традициями, но и разнообразием сортов сыра. 
                        Мы посетим известный <b>столичный «Дом сыра»</b> и узнаем о самых редких грузинских сортах сыра.
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (77, 2, '/images/tours/tour_7days_culinary_2_500x300.jpg', 'visit the famous capital «Cheese House»', '', '<h5>Day 4</h5>Georgia is famous not only for its winemaking traditions, but also for the variety of cheese. 
                    We will visit the famous <b> capital "House of Cheese"</b> and learn about the rarest Georgian cheeses.
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (77, 3, '/images/tours/tour_7days_culinary_2_500x300.jpg', 'посетим известный столичный «Дом сыра»', '', '<h5>День 4</h5>Грузия славится не только винодельческими традициями, но и разнообразием сортов сыра. 
                        Мы посетим известный <b>столичный «Дом сыра»</b> и узнаем о самых редких грузинских сортах сыра.
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (77, 4, '/images/tours/tour_7days_culinary_2_500x300.jpg', 'відвідаємо відомий столичний «Будинок сиру»', '', '<h5> День 4 </h5> Грузія славиться не тільки виноробними традиціями, а й різноманітністю сортів сиру. Ми відвідаємо відомий <b> столичний «Будинок сиру» </b> і дізнаємося про рідкісні грузинські сорти сиру.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (78, 1, '/images/cards/tour_weekend_500x300.jpg', 'монастырь Джвари и удивительный вид на Мцхету', '', 'Затем, отправимся в первую древнюю столицу Грузии - Мцхета. Нас ждет:
                         <ul>
                            <li>знаменитый <b>монастырь Джвари</b>, откуда открывается удивительный вид на Мцхету. Монастырь хранит в себе средневековую историю, начиная с VI века н.э.;</li>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., также его называют "Вторым Иерусалимом", потому что там находится много святых и культовых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> - духовный центр христианской Грузии и самое большое из древних сооружений страны;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                            <li>действующий <b>мужской монастырь ШиоМгвиме</b>, который основал в VI веке один из 13-ти святых ассирийских отцов - Шио;</li>
                         </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (78, 2, '/images/cards/tour_weekend_500x300.jpg', 'Jvari Monastery and amazing view of Mtskheta', '', 'Then, we will go to the first ancient capital of Georgia - Mtskheta. We are waiting for:
                         <ul>
                            <li>the famous <b>monastery of Jvari</b>, from where you can see an amazing view of Mtskheta. The monastery keeps a medieval history, starting from the VI century AD</li>
                            <li><b>city ​​- Mtskheta</b> - the ancient city of Georgia, founded in the V century BC, also called "Second Jerusalem", because there are many holy and cult places there;</li>
                            <li><b>Svetitskhoveli Cathedral</b> - is the spiritual center of Christian Georgia and the largest of the country\'s ancient buildings;</li>
                            <li>the functioning <b>female monastery of Samtavro</b>, built on the site where St. Nino lived;</li>
                            <li>operating  <b>monastery of ShioMgwime</b>, which was founded in the VI century by one of the 13 holy Assyrian fathers - Shio;</li>
                         </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (78, 3, '/images/cards/tour_weekend_500x300.jpg', 'монастырь Джвари и удивительный вид на Мцхету', '', 'Затем, отправимся в первую древнюю столицу Грузии - Мцхета. Нас ждет:
                         <ul>
                            <li>знаменитый <b>монастырь Джвари</b>, откуда открывается удивительный вид на Мцхету. Монастырь хранит в себе средневековую историю, начиная с VI века н.э.;</li>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., также его называют "Вторым Иерусалимом", потому что там находится много святых и культовых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> - духовный центр христианской Грузии и самое большое из древних сооружений страны;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                            <li>действующий <b>мужской монастырь ШиоМгвиме</b>, который основал в VI веке один из 13-ти святых ассирийских отцов - Шио;</li>
                         </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (78, 4, '/images/cards/tour_weekend_500x300.jpg', 'монастир Джварі і дивовижний вид на Мцхету', '', 'Далі вирушимо в першу древню столицю Грузії - Мцхета. На нас чекає: <ul> <li> відомий <b> монастир Джварі </b>, звідки відкривається дивовижний вид на Мцхету. Монастир зберігає в собі середньовічну історію, починаючи з VI століття н.е..; </li> <li> <b> місто Мцхета </b> - найдавніше місто Грузії, засноване в V столітті до н.е., також його називають "Другим Єрусалимом", бо там знаходиться багато святих і культових місць; </li> <li> <b> кафедральний собор Светіцховелі </b> - духовний центр християнської Грузії і найбільша з давніх споруд країни; </li> <li> діючий <b> жіночий монастир Самтавро </b>, побудований на місці, де жила свята Ніно; </li> <li> діючий <b> чоловічий монастир ШіоМгвіме </b>, який заснував в VI столітті один з 13-ти святих ассірійських батьків - Шио; </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (79, 1, '/images/cards/tour_7days_gurman_500x300.jpg', 'хлеб-пури выпекается в печи', '', '<h5>День 5</h5> В этот день нас ожидает <b>невероятная женщина, большой специалист по грузинской кухни</b> - Майя Арахамиа. 
                        <b>Вместе</b> с ней мы <b>приготовим</b> блюда из курицы на выбор: <b>сациви, чохохбили или чкмерули</b>, 
                        и обязательно <b>разберемся в</b> грузинских <b>соусах и приправах</b>.
                        После сытного обеда и отдыха, предлагаем вам <b>посетить</b> всем известные <b>тбилисские серные бани</b>   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (79, 2, '/images/cards/tour_7days_gurman_500x300.jpg', 'bread puri baked in the oven', '', '<h5>Day 5</h5> On this day, we are waiting for <b>an incredible woman, a great specialist in Georgian cuisine</b> - Maya Arahamia. 
                        <b>Together </b> with her we will <b>prepare </b> dishes from chicken for choice: <b>satsivi, chokhobili or chkmeruli</b>, 
                        and <b>we</b>  will certainly <b>understand</b> Georgian  <b>sauces and seasonings</b>.
                       After a hearty lunch and rest, we invite you <b>to visit</b> all the famous <b>Tbilisi sulfur baths</b>   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (79, 3, '/images/cards/tour_7days_gurman_500x300.jpg', 'хлеб-пури выпекается в печи', '', '<h5>День 5</h5> В этот день нас ожидает <b>невероятная женщина, большой специалист по грузинской кухни</b> - Майя Арахамиа. 
                        <b>Вместе</b> с ней мы <b>приготовим</b> блюда из курицы на выбор: <b>сациви, чохохбили или чкмерули</b>, 
                        и обязательно <b>разберемся в</b> грузинских <b>соусах и приправах</b>.
                        После сытного обеда и отдыха, предлагаем вам <b>посетить</b> всем известные <b>тбилисские серные бани</b>   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (79, 4, '/images/cards/tour_7days_gurman_500x300.jpg', 'хліб-пурі випікається в печі', '', '<h5> День 5 </h5> Цього дня на нас чекає <b> неймовірна жінка, великий фахівець з грузинської кухні </b> - Майя Арахаміа. <b> Разом </b> з нею ми <b> приготуємо </b> страви з курки на вибір: <b> сациві, чохохбілі або чкмерулі </b>, і обов\'язково <b> ознайомимося з </b> грузинськими <b> соусами і приправами </b>. Після ситного обіду і відпочинку пропонуємо вам <b> відвідати </b> всім відомі <b> тбіліські сірчані лазні </b>.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (80, 1, '/images/tours/tour_7days_culinary_3_500x300.jpg', 'сувениры на улицах Тбилиси', '', '<h5>День 6</h5> <b>Свободный день</b> для прогулок по городу Тбилиси. 
                            Возможность <b>пройтись по узким улочками</b>, заглянуть в <b>сувенирные лавки</b>, винные магазины, увидеть <b>представления на улицах города</b>, 
                            cделать много ярких фото... 
                            Отель находиться в самом центре Тбилиси, поэтому вам будет легко и быстро добраться до всех лучших мест города.
                            <p></p>
                            А ближе к ужину ждем вас на <b>кулинарный мастер-класс</b>, который будет проходить <b>в маране нашего отеля</b>.
                            Вы научитесь готовить <b>Хачапури, шашлык по-грузински</b>, испечете в печи свой собственный <b>хлеб пури</b>. 
                            Потом, как обычно, съедим всё это под <b>душевные грузинские тосты</b> с домашним вином.  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (80, 2, '/images/tours/tour_7days_culinary_3_500x300.jpg', 'souvenirs on the streets of Tbilisi', '', '<h5>Day 6</h5> <b>Free day</b> for walking around the city of Tbilisi. 
                            The opportunity to <b>walk through narrow streets</b>, look into <b>souvenir shops</b>,  wine shops, see <b>performances on the streets of the city</b>, 
                           make many bright photos ... The hotel is located in the very center of Tbilisi, so you will easily and quickly reach all the best places in the city.
                            <p></p>
                            And closer to supper we are waiting for you at the  <b>culinary master class</b>, which will take place <b>in the maran of our hotel</b>.
                           You will learn how to cook <b>Khachapuri, shish kebab in Georgian</b>, bake your own <b>puri bread</b>. 
                            in the oven . Then, as usual, we will eat all this under the <b>sincere Georgian toasts</b> with homemade wine.  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (80, 3, '/images/tours/tour_7days_culinary_3_500x300.jpg', 'сувениры на улицах Тбилиси', '', '<h5>День 6</h5> <b>Свободный день</b> для прогулок по городу Тбилиси. 
                            Возможность <b>пройтись по узким улочками</b>, заглянуть в <b>сувенирные лавки</b>, винные магазины, увидеть <b>представления на улицах города</b>, 
                            cделать много ярких фото... 
                            Отель находиться в самом центре Тбилиси, поэтому вам будет легко и быстро добраться до всех лучших мест города.
                            <p></p>
                            А ближе к ужину ждем вас на <b>кулинарный мастер-класс</b>, который будет проходить <b>в маране нашего отеля</b>.
                            Вы научитесь готовить <b>Хачапури, шашлык по-грузински</b>, испечете в печи свой собственный <b>хлеб пури</b>. 
                            Потом, как обычно, съедим всё это под <b>душевные грузинские тосты</b> с домашним вином.  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (80, 4, '/images/tours/tour_7days_culinary_3_500x300.jpg', 'сувеніри на вулицях Тбілісі', '', '<h5> День 6 </h5> <b> Вільний день </b> для прогулянок по місту Тбілісі. Можливість <b> пройтися вузькими вуличками </b>, зазирнути в <b> сувенірні лавки </b>, винні магазини, побачити <b> різноманітні заходи на вулицях міста </b>, зробити багато яскравих фото ... Готель знаходиться в самому центрі Тбілісі, тому вам буде легко і швидко дістатися до всіх кращих місць столиці. <p> </p> А ближче до вечері чекаємо вас на <b> кулінарному майстер-класі </b>, який відбудеться <b> в Марані нашого готелю </b>. Ви навчитеся готувати <b> Хачапурі, шашлик по-грузинськи </b>, спечете свій власний <b> хліб пури </b> у печі. Потім, як завжди, з\'їмо все це під <b> душевні грузинські тости </b> з домашнім вином.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (81, 1, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'Грузия любит тебя', '', '<h5>День 7</h5> Свободный <b>день для прощальных прогулок по городу Тбилиси</b>. 
                             Невозможно надышаться его воздухом и запахами еды и специй, невозможно забрать с собой коренных жителей, которые стали как родные к концу отдыха... 
                             Но вы <b>всегда сможете вернуться к нам снова!</b> И мы всегда сможем показать Вам ещё что-то новое!    
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (81, 2, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'Georgia loves you', '', '<h5>Day 7</h5> Free <b>day for farewell walks around the city of Tbilis</b>. 
                             It is impossible to breathe in its air and smells of food and spices, it is impossible to take with itself the indigenous people who became like family by the end of the rest ... 
                             But you  <b>can always come back to us again!</b> And we can always show you something new!   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (81, 3, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'Грузия любит тебя', '', '<h5>День 7</h5> Свободный <b>день для прощальных прогулок по городу Тбилиси</b>. 
                             Невозможно надышаться его воздухом и запахами еды и специй, невозможно забрать с собой коренных жителей, которые стали как родные к концу отдыха... 
                             Но вы <b>всегда сможете вернуться к нам снова!</b> И мы всегда сможем показать Вам ещё что-то новое!    
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (81, 4, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'Грузія кохає тебе', '', '<h5> День 7 </h5> Вільний <b> день для прощальних прогулянок містом Тбілісі </b>. Неможливо надихатися його повітрям і запахами їжі та спецій, неможливо забрати з собою корінних жителів, які стали немов рідні до кінця відпочинку... Але ви <b> зможете повернутися до нас знову! </b> І ми завжди здатні показати Вам ще щось нове!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (82, 1, '/images/tours/tour_3days_kaheti_2_500x300.jpg', 'покажем главные достопримечательности Тбилиси', 'Программа отдыха на выходные:', '<h5>День 1</h5> <b>Знакомство со столицей Грузии - Тбилиси</b>. Прогулка по городу в сопровождении гида, который покажет <b>главные достопримечательности</b> и расскажет много интересных историй об этих местах.
                         А вечером Тбилиси наполняется огнями, освещение меняет вид зданий настолько, что вы увидитет совсем не тот город, каким он был днём.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (82, 2, '/images/tours/tour_3days_kaheti_2_500x300.jpg', 'show the main sights of Tbilisi', 'Weekend program:', '<h5>Day 1</h5> <b>Acquaintance with the capital of Georgia - Tbilisi</b>. 
                             Walk around the city, accompanied by a guide who will show the <b>main attractions</b> and tell many interesting stories about these places. 
                             And in the evening Tbilisi is filled with lights, the lighting changes the appearance of the buildings so much that you will not see the same city as it was in the daytime.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (82, 3, '/images/tours/tour_3days_kaheti_2_500x300.jpg', 'покажем главные достопримечательности Тбилиси', 'Программа отдыха на выходные:', '<h5>День 1</h5> <b>Знакомство со столицей Грузии - Тбилиси</b>. Прогулка по городу в сопровождении гида, который покажет <b>главные достопримечательности</b> и расскажет много интересных историй об этих местах.
                         А вечером Тбилиси наполняется огнями, освещение меняет вид зданий настолько, что вы увидитет совсем не тот город, каким он был днём.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (82, 4, '/images/tours/tour_3days_kaheti_2_500x300.jpg', 'покажемо головні визначні пам\'ятки Тбілісі', 'Програма відпочинку на вихідні:', '<h5> День 1 </h5> <b> Знайомство зі столицею Грузії - Тбілісі </b>. Прогулянка по місту в супроводі гіда, який ознайомить Вас із <b> головними визначними пам\'ятками </b> і розповість багато цікавих історій про ці місця. А ввечері Тбілісі спалахує яскравими вогнями, освітлення змінює вигляд будинків настільки, що ви побачите зовсім не те місто, яким воно було удень.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (83, 1, '/images/tours/tour_3days_kaheti_1_500x300.jpg', 'дегустация нескольких сортов грузинского вина', '', '<h5>День 2</h5>Отправимся в путешествие на восток Грузии - край виноделия Кахетия. Вы увидите:
                         <ul>
                            <li><b>город-крепость Уджарма</b> - памятник средневековой архитектуры Грузии (III век н.э.);</li>
                            <li>знакомство с миром древних храмов и монастырей в городе <b>Телави</b>;</li>
                            <li><b>экскурсия по музею лозы и вина на заводе Шуми</b>, а также <b>дегустация</b> нескольких сортов <b>грузинского вина</b>;</li>
                            <li>обед в одном из национальных ресторанов;</li>
                            <li>прогулка по городу <b>Сигнахи</b>, который ещё называют городом влюбленных. Здесь открываются лучшие <b>виды на алазанскую долину</b>.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (83, 2, '/images/tours/tour_3days_kaheti_1_500x300.jpg', 'tasting several varieties of Georgian wine', '', '<h5>Day 2</h5>We will go on a journey to the east of Georgia - the edge of the wine-making of Kakheti. You will see:
                         <ul>
                            <li><b>the city-fortress of Ujarma</b> - a monument of the medieval architecture of Georgia (III century);</li>
                            <li>acquaintance with the world of ancient temples and monasteries in the city of  <b>Telavi</b>;</li>
                            <li><b>excursion to the museum of vines and wines at the Shumi factory</b>, as well as  <b>tasting of</b> several varieties of <b>Georgian wine</b>;</li>
                            <li>lunch at one of the national restaurants;</li>
                            <li>walk around the city of <b>Sighnaghi </b>, which is also called the city of lovers. Here you can see the best  <b>views of the Alazani Valley</b>.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (83, 3, '/images/tours/tour_3days_kaheti_1_500x300.jpg', 'дегустация нескольких сортов грузинского вина', '', '<h5>День 2</h5>Отправимся в путешествие на восток Грузии - край виноделия Кахетия. Вы увидите:
                         <ul>
                            <li><b>город-крепость Уджарма</b> - памятник средневековой архитектуры Грузии (III век н.э.);</li>
                            <li>знакомство с миром древних храмов и монастырей в городе <b>Телави</b>;</li>
                            <li><b>экскурсия по музею лозы и вина на заводе Шуми</b>, а также <b>дегустация</b> нескольких сортов <b>грузинского вина</b>;</li>
                            <li>обед в одном из национальных ресторанов;</li>
                            <li>прогулка по городу <b>Сигнахи</b>, который ещё называют городом влюбленных. Здесь открываются лучшие <b>виды на алазанскую долину</b>.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (83, 4, '/images/tours/tour_3days_kaheti_1_500x300.jpg', 'дегустація декількох сортів грузинського вина', '', '<h5> День 2 </h5> Вирушимо у подорож на схід Грузії - край виноробства Кахетія. Ви побачите: <ul> <li> <b> місто-фортеця Уджарма </b> - пам\'ятник середньовічної архітектури Грузії (III століття н.е..); </li> <li> знайомство зі світом стародавніх храмів і монастирів в місті <b> Телаві </b>; </li> <li> <b> екскурсія у музеї лози і вина на заводі Шуми </b>, а також <b> дегустація </b> декількох сортів <b> грузинського вина </b>; </li> <li> обід в одному з національних ресторанів; </li> <li> прогулянка містом <b> Сигнахи </b>, який ще називають містом закоханих. Тут відкриваються найкращі <b> краєвиди Алазанської долини </b>. </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (84, 1, '/images/tours/tour_3days_kaheti_3_500x300.jpg', 'атмосфера ночного Тбилиси', '', '<h5>День 3</h5> <b>Свободный день для прогулок по Тбилиси</b>. Отель находится в самом центре города, поэтому Вам будет легко добраться до самых интересных мест, чтобы купить сувениры, прогуляться по узким улочкам старого города и насладится атмосферой Грузии.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (84, 2, '/images/tours/tour_3days_kaheti_3_500x300.jpg', 'atmosphere of night Tbilisi', '', '<h5>Day 3</h5> <b>Free day for walking around Tbilisi </b>. The hotel is located in the heart of the city, so you will easily get to the most interesting places to buy souvenirs, stroll through the narrow streets of the old city and enjoy the atmosphere of Georgia');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (84, 3, '/images/tours/tour_3days_kaheti_3_500x300.jpg', 'атмосфера ночного Тбилиси', '', '<h5>День 3</h5> <b>Свободный день для прогулок по Тбилиси</b>. Отель находится в самом центре города, поэтому Вам будет легко добраться до самых интересных мест, чтобы купить сувениры, прогуляться по узким улочкам старого города и насладится атмосферой Грузии.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (84, 4, '/images/tours/tour_3days_kaheti_3_500x300.jpg', 'атмосфера нічного Тбілісі', '', '<h5> День 3 </h5> <b> Вільний день для прогулянок по Тбілісі </b>. Готель знаходиться в самому центрі міста, тому Вам буде легко дістатися найцікавіших місць, щоб купити сувеніри, прогулятися вузькими вуличками старого міста і насолодитися атмосферою Грузії.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (85, 1, '/images/tours/tour_3days_kazbeg_1_500x300.jpg', 'Первое знакомство с Тбилиси', 'Программа отдыха в Грузии на 3 дня:', '<h5>День 1</h5> Первое <b>знакомство с Тбилиси</b>. Лёгкая пешая прогулка по городу с гидом, который покажет <b>главные архитектурные объекты</b> 
                        и  <b>известные места в центре города </b>, а также расскажет много историй о них.
                        К вечеру Тбилиси меняется, ночное освещение зданий и улиц превращает его в сказачно красивый город. 
                        В этот день Вас ждет <b>ужин в национальном ресторане</b>, где наш гид-тамада сделает застолье по-настоящему грузинским!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (85, 2, '/images/tours/tour_3days_kazbeg_1_500x300.jpg', 'The first acquaintance with Tbilisi', 'The program of rest in Georgia for 3 days:', '<h5>Day 1</h5> The first <b>acquaintance with Tbilisi</b>. An easy walking tour of the city with a guide that will show the <b>main architectural sites</b> 
                        and  <b>famous places in the city center </b>, and also tell many stories about them. 
                        By evening Tbilisi is changing, night lighting of buildings and streets turns it into a beautifully beautiful city. 
                        On this day you will have  <b>dinner in the national restaurant</b>, where our guide-toastmaster will make a feast truly Georgian!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (85, 3, '/images/tours/tour_3days_kazbeg_1_500x300.jpg', 'Первое знакомство с Тбилиси', 'Программа отдыха в Грузии на 3 дня:', '<h5>День 1</h5> Первое <b>знакомство с Тбилиси</b>. Лёгкая пешая прогулка по городу с гидом, который покажет <b>главные архитектурные объекты</b> 
                        и  <b>известные места в центре города </b>, а также расскажет много историй о них.
                        К вечеру Тбилиси меняется, ночное освещение зданий и улиц превращает его в сказачно красивый город. 
                        В этот день Вас ждет <b>ужин в национальном ресторане</b>, где наш гид-тамада сделает застолье по-настоящему грузинским!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (85, 4, '/images/tours/tour_3days_kazbeg_1_500x300.jpg', 'Перше знайомство з Тбілісі', 'Програма відпочинку в Грузії на 3 дні::', '<h5> День 1 </h5> Перше <b> знайомство з Тбілісі </b>. Легка піша прогулянка по місту з гідом, який покаже <b> головні архітектурні об\'єкти </b> і <b> відомі місця в центрі міста </b>, а також розповість багато історій про них. Увечері Тбілісі змінюється, нічне освітлення будівель і вулиць перетворює його в казкове місто. В цей день на Вас чекає <b> вечеря в національному ресторані </b>, де наш гід-тамада зробить застілля по-справжньому грузинським!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (86, 1, '/images/tours/tour_3days_kazbeg_2_500x400.jpg', 'Главный объект этого дня - храм Гергети', '', '<h5>День 2</h5>Отправимся в горы - настоящие, высокие, кавказские, со снежными вершинами:
                         <ul>
                            <li><b>Жинвальское водохранилище</b> и древняя <b>крепость Ананури</b>;</li>
                            <li>покажем Вам место, где реки <b>Белая и Чёрная Арагви сливаются в одно русло</b>, их воды имеют разный цвет,
                                    при этом не смешиваются друг с другом;</li>
                            <li><b>Виды со смотровой площадки</b> на Гудаури, высота 2000 м над уровнем моря;</li>
                            <li>Дорога через красивейший <b>Крестовый перевал</b>, так называемая военно-грузинская дорога, где много серпантинов и облака видно сверху;</li>
                            <li>Главный объект этого дня - <b>храм Гергети</b>. Он находится на вершине горы, поэтому <b>подниматься к нему нужно на джипе</b>;</li>
                             <p></p>
                            Если у Вас будет желание, то мы можем организовать запоминающийся <b>пикник на склонах грузинских гор</b>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (86, 2, '/images/tours/tour_3days_kazbeg_2_500x400.jpg', 'The main object of this day is the temple of Gergeti', '', '<h5>Day 2</h5>Let\'s go to the mountains - real, high, Caucasian, with snowy peaks:
                         <ul>
                            <li><b>Zhinval water reservoir </b> and ancient <b>fortress Ananuri</b>;</li>
                            <li>Show you the place where the rivers <b>White and Black Aragvi merge into one channel </b>, their waters have a different color, and do not mix with each other;</li>
                            <li><b>Views from the observation deck</b> at Gudauri, height 2000 m above sea level;</li>
                            <li>The road through the beautiful <b>Cross Pass</b>, the so-called military-Georgian road, where many serpentines and clouds are visible from above;</li>
                            <li>The main object of this day is <b>the Gergeti Temple</b>. It is on the top of the mountain, thereforeу <b>it is necessary to climb to it on the jeep</b>;</li>
                             <p></p>
                           If you have a desire, we can organize a memorable <b> picnic on the slopes of the Georgian mountains</b>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (86, 3, '/images/tours/tour_3days_kazbeg_2_500x400.jpg', 'Главный объект этого дня - храм Гергети', '', '<h5>День 2</h5>Отправимся в горы - настоящие, высокие, кавказские, со снежными вершинами:
                         <ul>
                            <li><b>Жинвальское водохранилище</b> и древняя <b>крепость Ананури</b>;</li>
                            <li>покажем Вам место, где реки <b>Белая и Чёрная Арагви сливаются в одно русло</b>, их воды имеют разный цвет,
                                    при этом не смешиваются друг с другом;</li>
                            <li><b>Виды со смотровой площадки</b> на Гудаури, высота 2000 м над уровнем моря;</li>
                            <li>Дорога через красивейший <b>Крестовый перевал</b>, так называемая военно-грузинская дорога, где много серпантинов и облака видно сверху;</li>
                            <li>Главный объект этого дня - <b>храм Гергети</b>. Он находится на вершине горы, поэтому <b>подниматься к нему нужно на джипе</b>;</li>
                             <p></p>
                            Если у Вас будет желание, то мы можем организовать запоминающийся <b>пикник на склонах грузинских гор</b>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (86, 4, '/images/tours/tour_3days_kazbeg_2_500x400.jpg', 'Головний об\'єкт цього дня - храм Гергети', '', '<h5> День 2 </h5> Вирушимо в гори - справжні, високі, кавказькі, зі сніговими вершинами: <ul> <li> <b> Жінвальске водосховище </b> і давня <b> фортеця Ананурі </b>; </li> <li> покажемо Вам місце, де річки <b> Біла і Чорна Арагві зливаються в одне русло </b>, їх води мають різний колір, при цьому не змішуються один з одним; </li> <li> <b> Краєвиди з оглядового майданчика </b> на Гудаурі, висота 2000 м над рівнем моря; </li> <li> Дорога лежить через дивовижний <b> Хрестовий перевал </b> або так звану військово-грузинську дорогу, де багато серпантинів та хмари видно і  зверху, і знизу; </li> <li> Головний об\'єкт цього дня - <b> храм Гергети </b>. Він знаходиться на вершині гори, тому <b> підійматися до нього потрібно на джипі </b>; </li> <p> </p> Якщо у Вас буде бажання, то ми організуємо дивовижний <b> пікнік на схилах грузинських гір </b> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (87, 1, '/images/tours/tour_3days_kazbeg_3_500x300.jpg', 'День для прогулок по Тбилиси', '', '<h5>День 3</h5> <b>День для прогулок по Тбилиси</b>, чтобы купить сувениры, прогуляться по старому городу и насладится атмосферой Грузии. 
                            Отель находится в самом центре, поэтому Вам будет легко добраться до самых интересных мест.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (87, 2, '/images/tours/tour_3days_kazbeg_3_500x300.jpg', 'A day for exploring Tbilisi', '', '<h5>Day 3</h5> <b>A day for walking around Tbilisi</b>, to buy souvenirs, stroll through the old city and enjoy the atmosphere of Georgia. 
                            The hotel is in the very center, so you can easily reach the most interesting places.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (87, 3, '/images/tours/tour_3days_kazbeg_3_500x300.jpg', 'День для прогулок по Тбилиси', '', '<h5>День 3</h5> <b>День для прогулок по Тбилиси</b>, чтобы купить сувениры, прогуляться по старому городу и насладится атмосферой Грузии. 
                            Отель находится в самом центре, поэтому Вам будет легко добраться до самых интересных мест.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (87, 4, '/images/tours/tour_3days_kazbeg_3_500x300.jpg', 'День для прогулянок по Тбілісі', '', '<h5> День 3 </h5> <b> День для прогулянок по Тбілісі </b>, щоб купити сувеніри, прогулятися по старому місту й отримати насолоду від атмосфери Грузії. Готель знаходиться в самому центрі, тому Вам буде легко дістатися до найцікавіших місць.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (88, 1, '/images/tours/tour-new-year-5-days_500x300_5.jpg', 'Новогодний Тбилиси выглядит особенно сказочно', 'Тбилиси и его окрестности, горнолыжный курорт Гудаури - ждут Вас!', '<h5>День 1</h5> После прибытия в Тбилиси и небольшого отдыха, <b>отправимся на пешеходную экскурсию по городу</b>, украшенному к Новому Году. 
                            <p>Наш гид расскажет о том, чем отличается празднование Нового Года по-грузински, как его отмечают в Грузии: 
                            <b>особенная история, традиции</b>, новогоднее <b>деревце Чичилаки</b> и многое другое. 
                            Это всё нужно увидеть своими собственными глазами!</p> 
                           <b> Вечером</b>, в это время года, <b>Тбилиси выглядит</b> особенно <b>сказочно</b>!
                            ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (88, 2, '/images/tours/tour-new-year-5-days_500x300_5.jpg', 'New Year Tbilisi looks especially fabulous', 'Tbilisi and its environs, Gudauri ski resort is waiting for you!', '<h5> Day 1 </h5> After arriving in Tbilisi and a short break, <b> we will go on a walking tour of the city </b> decorated for the New Year.
                            <p> Our guide will talk about how the New Year celebration is different in Georgian, as it is noted in Georgia:
                            <b> special history, traditions </b>, New Year\'s <b> Chichilaki tree </b> and much more.
                            This is all you need to see with your own eyes! </P>
                            <b> In the evening </b>, at this time of the year, <b> Tbilisi </b> looks <b> fabulously </b>! 
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (88, 3, '/images/tours/tour-new-year-5-days_500x300_5.jpg', 'Новогодний Тбилиси выглядит особенно сказочно', 'Тбилиси и его окрестности, горнолыжный курорт Гудаури - ждут Вас!', '<h5>День 1</h5> После прибытия в Тбилиси и небольшого отдыха, <b>отправимся на пешеходную экскурсию по городу</b>, украшенному к Новому Году. 
                            <p>Наш гид расскажет о том, чем отличается празднование Нового Года по-грузински, как его отмечают в Грузии: 
                            <b>особенная история, традиции</b>, новогоднее <b>деревце Чичилаки</b> и многое другое. 
                            Это всё нужно увидеть своими собственными глазами!</p> 
                           <b> Вечером</b>, в это время года, <b>Тбилиси выглядит</b> особенно <b>сказочно</b>!
                            ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (88, 4, '/images/tours/tour-new-year-5-days_500x300_5.jpg', 'Новорічний Тбілісі виглядає особливо казково', 'Тбілісі і його околиці, гірськолижний курорт Гудаурі - чекають на Вас!', '<h5> День 1 </h5> Після прибуття в Тбілісі і невеликого відпочинку, <b> вирушимо на пішохідну екскурсію по місту </b>, прикрашеному до Нового Року. <p> Наш гід розповість про те, чим відрізняється святкування Нового Року по-грузинськи, як його відзначають в Грузії: <b> особлива історія, традиції </b>, новорічне <b> деревце Чічілакі </b> і багато іншого. Це все потрібно побачити власними очима! </p> <b> Увечері </b>, в цю пору року, <b> Тбілісі виглядає </b> особливо <b> казково </b>!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (89, 1, '/images/tours/tour-new-year-5-days_500x300_2.jpg', 'новогодняя атмосфера старого города', '', '<h5>День 2</h5><b>Познакомим</b> Вас <b>с двумя столицами</b> Грузии - современный <b>Тбилиси</b> и древняя <b>Мцхета</b>. Начнем с Тбилиси:
                         <ul>
                            <li>по-настоящему <b>новогодняя атмосфера старого города</b>: узкие улочки, украшенные лавки, винные погреба, кафе, сувенирные магазины... Вы сможете купить подарки и зарядится праздничным настроением;</li>
                            <li><b>мост Мира</b>;</li>
                            <li><b>Главный кафедральный собор</b> Грузии - Троица и церковь VI века - Метехи;</li>
                            <li> <b>поднимемся</b> по канатной дороге <b>на</b> древнюю <b>крепость Нарикала</b>. С этого места открывается восхитительный вид на праздничный город;</li>
                            <li>полюбуемся на <b>разноцветные тбилисские домики</b>;</li>
                            <li>Прогулка по Ботаническому саду;</li>
                            <li>посетим <b>главный кафедральный собор</b> Грузии <b>Самеба</b> (Святая троица).</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (89, 2, '/images/tours/tour-new-year-5-days_500x300_2.jpg', 'New Year\'s atmosphere of the old city', '', '<h5> Day 2 </h5> <b> Let\'s introduce </b> you <b> with two capitals </b> of Georgia - modern <b> Tbilisi </b> and ancient <b> Mtskheta.</b> Let\'s start with Tbilisi:
                         <ul>
                        <li> really <b> New Year\'s atmosphere of the old city </b>: narrow streets, decorated shops, wineries, cafes, souvenir shops ... you can buy presents and get charged with a festive mood; </li>
                        <li> <b> Peace Bridge </b>; </li>
                        <li> <b> Main Cathedral </b> of Georgia - Trinity and Church of the 6th century - Metekhi; </li>
                        <li> <b> climb </b> the cableway <b> to </b> the ancient <b> Narikala Fortress </b>. This place offers a magnificent view of the festive city; </li>
                        <li> admire the <b> multicolored Tbilisi houses </b>; </li>
                        <li> Walk through the Botanical Garden; </li>
                        <li> visit the <b> main cathedral </b> of Georgia <b> Sameba </b> (Holy Trinity). </li>
                        </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (89, 3, '/images/tours/tour-new-year-5-days_500x300_2.jpg', 'новогодняя атмосфера старого города', '', '<h5>День 2</h5><b>Познакомим</b> Вас <b>с двумя столицами</b> Грузии - современный <b>Тбилиси</b> и древняя <b>Мцхета</b>. Начнем с Тбилиси:
                         <ul>
                            <li>по-настоящему <b>новогодняя атмосфера старого города</b>: узкие улочки, украшенные лавки, винные погреба, кафе, сувенирные магазины... Вы сможете купить подарки и зарядится праздничным настроением;</li>
                            <li><b>мост Мира</b>;</li>
                            <li><b>Главный кафедральный собор</b> Грузии - Троица и церковь VI века - Метехи;</li>
                            <li> <b>поднимемся</b> по канатной дороге <b>на</b> древнюю <b>крепость Нарикала</b>. С этого места открывается восхитительный вид на праздничный город;</li>
                            <li>полюбуемся на <b>разноцветные тбилисские домики</b>;</li>
                            <li>Прогулка по Ботаническому саду;</li>
                            <li>посетим <b>главный кафедральный собор</b> Грузии <b>Самеба</b> (Святая троица).</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (89, 4, '/images/tours/tour-new-year-5-days_500x300_2.jpg', 'новорічна атмосфера старого міста', '', '<h5> День 2 </h5> <b> Познайомимо </b> Вас <b> з двома столицями </b> Грузії - сучасний <b> Тбілісі </b> і давня <b> Мцхета </b>. Почнемо з Тбілісі: <ul> <li> по-справжньому <b> новорічна атмосфера старого міста </b>: вузькі вулички, прикрашені лавки, винні погреби, кафе, сувенірні магазини ... Ви зможете придбати подарунки і зарядись святковим настроєм; </li> <li> <b> міст Миру </b>; </li> <li> <b> Головний кафедральний собор </b> Грузії - Трійця і церква VI століття - Метехі; </li> <li> <b> доберемося </b> канатною дорогою <b> до </b> давньої <b> фортеці Нарікала </b>. З цього місця відкривається чудовий вид на святкове місто; </li> <li> помилуємося <b> різнокольоровими тбіліськими будиночками </b>; </li> <li> Влаштуємо прогулянку по Ботанічному саду; </li> <li> відвідаємо <b> головний кафедральний собор </b> Грузії <b> Самеба </b> (Свята трійця). </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (90, 1, '/images/tours/tour-new-year-5-days_500x300_3.jpg', 'Светицховели - духовный центр христианской Грузии', '', 'Затем, отправляемся в древнюю столицу -  <b>город Мцхета</b>.
                        Вы увидите:
                         <ul>
                            <li>известный <b>монастырь Джвари</b> VI века н.э, откуда открывается удивительный вид на Мцхету;</li>
                            <li>Город <b>Мцхета</b> - это древнейший город Грузии, который был <b>основан в V веке до н.э.</b> Здесь реально ощущается средневековая история, а новогоднее настроение добавляет этому месту еще больше впечатлений;</li>
                           </ul>
Затем вернемся в Тбилиси и отправимся к Тбилисскому морю. Рядом находится монумент Хроники Грузии. Красивое место, откуда открывает вид на весь город ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (90, 2, '/images/tours/tour-new-year-5-days_500x300_3.jpg', 'Svetitskhoveli - the spiritual center of Christian Georgia', '', 'Then, go to the ancient capital - <b> city of Mtskheta </b>​.
                        You will see:
                        <ul>
                        <li> the famous <b> Jvari Monastery </b> of the 6th century AD, which offers an amazing view of Mtskheta; </li>
                        <li> City <b> Mtskheta </b> is the oldest city in Georgia, which was <b> founded in the 5th century BC. </b> Medieval history is really felt here, and the New Year mood adds even more to this place impressions; </li>
                        </ul>
Then we will return to Tbilisi and go to the Tbilisi Sea. Near is the monument -  The Chronicle of Georgia. A beautiful place with a view of the whole city						
						
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (90, 3, '/images/tours/tour-new-year-5-days_500x300_3.jpg', 'Светицховели - духовный центр христианской Грузии', '', 'Затем, отправляемся в древнюю столицу -  <b>город Мцхета</b>.
                        Вы увидите:
                         <ul>
                            <li>известный <b>монастырь Джвари</b> VI века н.э, откуда открывается удивительный вид на Мцхету;</li>
                            <li>Город <b>Мцхета</b> - это древнейший город Грузии, который был <b>основан в V веке до н.э.</b> Здесь реально ощущается средневековая история, а новогоднее настроение добавляет этому месту еще больше впечатлений;</li>
                           </ul>
Затем вернемся в Тбилиси и отправимся к Тбилисскому морю. Рядом находится монумент Хроники Грузии. Красивое место, откуда открывает вид на весь город ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (90, 4, '/images/tours/tour-new-year-5-days_500x300_3.jpg', 'Светіцховелі - духовний центр християнської Грузії', '', 'Далі вирушаємо в стародавню столицю - <b> місто Мцхета! </b>. Ви побачите: <ul> <li> відомий <b> монастир Джварі </b> VI століття н.е., звідки відкривається дивовижний вид на Мцхету; </li> <li> Місто <b> Мцхета </b> - це найдавніше місто Грузії, яке було <b> засноване в V столітті до н.е.. </b> Тут відчувається справжня середньовічна історія, а новорічний настрій додає цьому місцю ще більше вражень; </li>
Потім повернемося до Тбілісі й вирушимо до Тбіліського моря. Поруч знаходиться монумент Хроніки Грузії. Гарне місце, звiдки відкриває вид на увсе місто');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (91, 1, '/images/tours/NY_master1_500_375.png', 'кулинарный мастер-класс', '', '<h5>День 3</h5> 
<b>Праздничный день! Будем провожать старый год и встречать Новый год!</b>
<p>Это день отдыха и свободного времени провождения.</p>  
<p>Отель находиться в самом центре Тбилиси, поэтому вам будет легко и быстро добраться до всех лучших мест города.</p>
<p>Ближе к полудню Вас ждет <b>веселый и увлекательный кулинарный мастер-класс</b>, который пройдет в собственном маране нашего отеля.</p> 
<p>Вы <b>научитесь готовить</b> хачапури, хинкали, испечете в печи свой собственный хлеб пури. И конечно же - <b>шашлык!</b> 
А потом съедим всё это, запивая домашним вином, <b>под душевные грузинские тосты!</b></p>  

В этот вечер вы узнаете что такое <b>настоящее застолье по-грузински</b>, как сами грузины встречают Новый год и своими глазами увидите как <b>это весело</b>! 
Итак, мы <b>устроим праздничную вечеринку в нашем Guest House Zemeli</b>!

');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (91, 2, '/images/tours/NY_master1_500_375.png', 'Culinary master-klass', '', '<h5> Day 3 </h5>
<b>Holiday! We will see off the old year and celebrate the New Year! </b>
<p>This is a  day of rest and free time spending time.</p>
                            <p> The hotel is located in the very center of Tbilisi, so you will easily and quickly get to all the best places in the city. </p>
                            <p> Closer to noon you will find a <b> fun and exciting cooking workshop </b>, which will be held in our hotel’s own marana. </p>
                            <p> You will <b> learn to cook </b> khachapuri, khinkali, bake your own puri bread in the oven. And of course - <b> kebab! </B> 
                            And then we will eat it all with a glass of homemade wine, <b> with Georgian Georgian toast! </B> </p>
This evening you will learn what a <b>real Georgian feast</b>, how Georgians themselves celebrate the New Year and will see with your own eyes <b>how fun it is</b>!
So, we will have a <b>New Year Party at our Guest House Zemeli</b> this evening!                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (91, 3, '/images/tours/NY_master1_500_375.png', 'кулинарный мастер-класс', '', '<h5>День 3</h5> 
<b>Праздничный день! Будем провожать старый год и встречать Новый год!</b>
<p>Это день отдыха и свободного времени провождения.</p>  
<p>Отель находиться в самом центре Тбилиси, поэтому вам будет легко и быстро добраться до всех лучших мест города.</p>
<p>Ближе к полудню Вас ждет <b>веселый и увлекательный кулинарный мастер-класс</b>, который пройдет в собственном маране нашего отеля.</p> 
<p>Вы <b>научитесь готовить</b> хачапури, хинкали, испечете в печи свой собственный хлеб пури. И конечно же - <b>шашлык!</b> 
А потом съедим всё это, запивая домашним вином, <b>под душевные грузинские тосты!</b></p>  

В этот вечер вы узнаете что такое <b>настоящее застолье по-грузински</b>, как сами грузины встречают Новый год и своими глазами увидите как <b>это весело</b>! 
Итак, мы <b>устроим праздничную вечеринку в нашем Guest House Zemeli</b>!

');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (91, 4, '/images/tours/NY_master1_500_375.png', 'куліинарний майстер-клас', '', '<h5> День 3 </h5> 
<b>Святковий день! Будемо проводжати старий рік і зустрічати Новий рік! </b>
Це  день для самостійного проведення часу. <p> Готель знаходиться в самому центрі Тбілісі, тому легко буде дістатися до цікавих місць: старе місто, сувенірні лавки, винареї ... </p> <p> Опівдні </b> на вас чекає <b> кулінарний майстер-клас </b>. Він відбудеться <b> у власному Марані </b> (винному погребі) <b> нашого готелю </b>. Разом з нашим кухарем ми приготуємо Хачапурі, шашлик по-грузинськи, спечемо в печі свій власний хліб пурі й обов\'язково ознайомимося з грузинськими соусами та приправами. </p> <p> Потім з\'їмо все у супроводі душевних грузинських тостів з домашнім вином семирічної витримки! </p>
Цього вечора ви дізнаєтеся що таке <b>справжнє свято по-грузинськи</b>, як самі грузини зустрічають Новий рік і своїми очима побачите як <b>це весело</b>!
Отже, ми влаштуємо <b> святкову новорiчну вечірку в нашому Guest House Zemeli</b>!
');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (92, 1, '/images/tours/NY_Gudauri2_500_300.png', 'настоящие грузинские горы зимой', '', '<h5>День 4</h5>Настало время увидеть <b>настоящие грузинские горы - едем в Гудаури!</b>
                         <ul>
                            <li><b>Жинвальское водохранилище;</b></li>
                            <li><b>крепость Ананури</b> - это хорошо сохранившийся исторический объект эпохи раннего феодализма;</li>
                            <li>место, где увидим <b>две</b> уникальные <b>реки</b>, Белую и Черную Арагви, которые <b>сливаются в общее русло</b>, но <b>их</b> светлая и темная <b>воды</b> при этом <b>не смешиваются</b>;</li>
                            <li><b>Гудаурская смотровая площадка</b> - виды отсюда никого не оставят равнодушным Здесь очень красиво в любое время года, но зимой особенно!;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (92, 2, '/images/tours/NY_Gudauri2_500_300.png', 'real Georgian mountains in winter', '', '<h5> Day 4 </h5> It’s time to see <b> real Georgian mountains - we are going to Gudauri! </b>
                         <ul>
                            <li> <b> Zhinvalskoye reservoir; </b> </li>
                            <li> <b> Ananuri Fortress </b> is a well-preserved historical object from the era of early feudalism; </li>
                            <li> a place where we will see <b> two </b> unique <b> rivers </b>, White and Black Aragvi, which <b> merge into a common channel </b>,
                             but <b> them </b> light and dark <b> water </b> while <b> do not mix </b>; </li>
                            <li> <b> Gudaur observation deck </b> - the views from here will not leave anyone indifferent It is very beautiful here at any time of the year, but especially in the winter! </ li>
                            </ul>  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (92, 3, '/images/tours/NY_Gudauri2_500_300.png', 'настоящие грузинские горы зимой', '', '<h5>День 4</h5>Настало время увидеть <b>настоящие грузинские горы - едем в Гудаури!</b>
                         <ul>
                            <li><b>Жинвальское водохранилище;</b></li>
                            <li><b>крепость Ананури</b> - это хорошо сохранившийся исторический объект эпохи раннего феодализма;</li>
                            <li>место, где увидим <b>две</b> уникальные <b>реки</b>, Белую и Черную Арагви, которые <b>сливаются в общее русло</b>, но <b>их</b> светлая и темная <b>воды</b> при этом <b>не смешиваются</b>;</li>
                            <li><b>Гудаурская смотровая площадка</b> - виды отсюда никого не оставят равнодушным Здесь очень красиво в любое время года, но зимой особенно!;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (92, 4, '/images/tours/NY_Gudauri2_500_300.png', 'справжні грузинські гори взимку', '', '<h5> День 4 </h5> Настав час побачити <b> справжні грузинські гори - їдемо в Гудаурі! </b> <ul> <li> <b> Жінвальске водосховище; </b> </li> <li> <b> фортеця Ананурі </b> - це добре збережений історичний об\'єкт епохи раннього феодалізму; </li> <li> місце, де побачимо <b> дві </b> унікальні <b> річки </b>, Білу і Чорну Арагві, які <b> зливаються в загальне русло </b>, але <b> їх </b> світла і темна <b> води </b> при цьому <b> не змішуються </b>; </li> <li> <b> Гудаурский оглядовий майданчик </b> - краєвид звідси нікого не залишить байдужим. Тут дуже красиво в будь-яку пору року, але взимку особливо!; </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (93, 1, '/images/tours/NY_Gudauri_500_300.png', 'горнолыжный курорт Грузии – Гудаури', '', '  Далее нас ожидает <b>горнолыжный курорт</b> Грузии – <b>Гудаури</b>, расположенный на высоте более 2000 метров над уровнем моря.
                            <p><b>Желающие могут подняться на трассу</b> и <b>кататься</b> на лыжах и сноубордах (для начинающих лыжников предусмотрены услуги инструктора).</p> 
                            <p>Также <b>можно погреться в кафе</b>, <b>выпить</b> горячий <b>глинтвейн или</b> травяной <b>чай</b> с малиной.</p>
                            Возвращаемся в Тбилиси
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (93, 2, '/images/tours/NY_Gudauri_500_300.png', 'ski resort of Georgia - Gudauri', '', 'Next, we are waiting for <b> ski resort </b> of Georgia - <b> Gudauri </b>, located at an altitude of more than 2000 meters above sea level.
                            <p> <b> Those who wish can go up to the track </b> and <b> ride </b> on skis and snowboards (instructor services are provided for beginners) </p>
                            <p> Also <b> you can bask in the cafe </b>, <b> drink </b> hot <b> mulled wine or </b> herbal <b> tea </b> with raspberries. </p>
                            We return to Tbilisi  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (93, 3, '/images/tours/NY_Gudauri_500_300.png', 'горнолыжный курорт Грузии – Гудаури', '', '  Далее нас ожидает <b>горнолыжный курорт</b> Грузии – <b>Гудаури</b>, расположенный на высоте более 2000 метров над уровнем моря.
                            <p><b>Желающие могут подняться на трассу</b> и <b>кататься</b> на лыжах и сноубордах (для начинающих лыжников предусмотрены услуги инструктора).</p> 
                            <p>Также <b>можно погреться в кафе</b>, <b>выпить</b> горячий <b>глинтвейн или</b> травяной <b>чай</b> с малиной.</p>
                            Возвращаемся в Тбилиси
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (93, 4, '/images/tours/NY_Gudauri_500_300.png', 'гірськолижний курорт Грузії - Гудаурі', '', 'Далі на вас чекає <b> гірськолижний курорт </b> Грузії - <b> Гудаурі </b>, розташований на висоті більше ніж 2000 метрів над рівнем моря. <p> <b> Бажаючі можуть піднятися на трасу </b> і <b> кататися </b> на лижах і сноубордах (для початківців лижників передбачені послуги інструктора). </p> <p> Також <b> можна зігрітися в кафе </b>, <b> випити </b> гарячий <b> глінтвейн або </b> трав\'яний <b> чай </b> з малиною. </p> Повертаємося в Тбілісі.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (94, 1, '/images/tours/NY_tbilisi_500_300.png', 'всегда хочется вернуться в Тбилиси', '', '<h5>День 5</h5> Прощальные <b>прогулки по Тбилиси</b>, прощальные <b>впечатления</b> и прощальные <b>эмоции</b>, ну и, конечно, <b>время для составления планов</b>, где еще в хочется побывать в Грузии во время следующего приезда.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (94, 2, '/images/tours/NY_tbilisi_500_300.png', 'always want to return to Tbilisi', '', '<h5> Day 5 </h5> Farewell <b> walks in Tbilisi </b>, farewell <b> impressions </b> and farewell <b> emotions </b>, and, of course, <b> time for making plans </b>, where else you want to visit Georgia on your next visit.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (94, 3, '/images/tours/NY_tbilisi_500_300.png', 'всегда хочется вернуться в Тбилиси', '', '<h5>День 5</h5> Прощальные <b>прогулки по Тбилиси</b>, прощальные <b>впечатления</b> и прощальные <b>эмоции</b>, ну и, конечно, <b>время для составления планов</b>, где еще в хочется побывать в Грузии во время следующего приезда.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (94, 4, '/images/tours/NY_tbilisi_500_300.png', 'завжди хочеться повернутися в Тбілісі', '', '<h5> День 5 </h5> Прощальні <b> прогулянки по Тбілісі </b>, прощальні <b> враження </b> і прощальні <b> емоції </b>, ну і, звичайно, <b> час для складання планів </b>, де ще ви бажаєте побувати у Грузії під час наступного приїзду.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (95, 1, '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 'Тбилисские домики', 'Начнем путешествие по Грузии!', '<h5>День 1</h5> В этот день мы <b>познакомим Вас со столицей</b> Грузии - город <b>Тбилиси</b>. <b>Покажем Вам весь город!</b> 
                            Перечислять все места будет долго, поэтому вот некоторые из них:
                            <ul>
                            <li><b>Старый город Тбилиси</b>, прогулка по улице Шавтели, где находится известный <b>театр марионеток имени Габриадзе</b>; 
                            <li>прогулкам по узким улочкам старого города приведет к знаменитому <b>мосту Мира</b>;</li>
                            <li><b>подъем по канатной дороге</b> на <b>крепость Нарикала</b>. С этого места открывается вид на весь город Тбилиси;</li>
                            </ul>

                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (95, 2, '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 'Tbilisi houses', 'Let\'s start a trip to Georgia!', '<h5>Day 1</h5> On this day we will <b>introduce you to the capital of Georgia</b> - the city of <b>Tbilisi . Let\'s show you the whole city!</b> 
                            Enumerate all the places will be long, so here are some of them:
                            <ul>
                            <li><b>The old city of Tbilisi</b>, walk along Shavteli Street, where the famous <b>puppet theater named Gabriadze is located </b>; 
                            <li>walks through the narrow streets of the old city will lead to the famous <b>bridge of the World </b>;</li>
                            <li><b>climbing the cable car to the Narikala fortress.</b> From this place you can see the whole city of Tbilisi;</li>
                            </ul>
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (95, 3, '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 'Тбилисские домики', 'Начнем путешествие по Грузии!', '<h5>День 1</h5> В этот день мы <b>познакомим Вас со столицей</b> Грузии - город <b>Тбилиси</b>. <b>Покажем Вам весь город!</b> 
                            Перечислять все места будет долго, поэтому вот некоторые из них:
                            <ul>
                            <li><b>Старый город Тбилиси</b>, прогулка по улице Шавтели, где находится известный <b>театр марионеток имени Габриадзе</b>; 
                            <li>прогулкам по узким улочкам старого города приведет к знаменитому <b>мосту Мира</b>;</li>
                            <li><b>подъем по канатной дороге</b> на <b>крепость Нарикала</b>. С этого места открывается вид на весь город Тбилиси;</li>
                            </ul>

                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (95, 4, '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 'Тбіліські будиночки', 'Почнемо подорож по Грузії!', '<h5> День 1 </h5> Цього дня ми <b> відвідаємо столицю </b> Грузії - місто <b> Тбілісі </b>. <b> Познайомимо Вас з кожним цікавим куточком! </b> Столиця втілює в собі безліч вишуканих живописних місць, ось деякі з них: <ul> <li> <b> Старе місто Тбілісі </b>, вулиця Шавтелі, де знаходиться відомий <b> театр маріонеток імені Габріадзе </b>; <li> прогулянка вузькими вуличками старого міста приведе до відомого <b> моста Миру </b>; </li> <li> <b> підйом канатною дорогою </b> над <b> фортецею Нарікала </b>. З цього місця відкривається вид на усе місто Тбілісі; </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (96, 1, '/images/cards/tour_7days_gurman_500x300.jpg', 'Колесо обозрения в Тбилиси', '', ' <ul>
                            <li>тбилисские серные бани, инжирное ущелье, водопад, известные тбилисские домики на скале с разноцветными балконами;</li>
                            <li>храм Сиони, V-VI век н.э. и  <b>кафедральный собор Грузии Самеба</b> (Святая троица);</li>
                            <li>Подъём на <b>самую высокую точку</b> Тбилиси - <b>фуникулер Мтацминда.</b> 
                            Там вы сможете <b>увидеть весь город с колеса обозрения</b> и посетить <b>парк аттракционов.</b></li>
                            </ul>
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (96, 2, '/images/cards/tour_7days_gurman_500x300.jpg', 'Ferris wheel in Tbilisi', '', ' <ul>
                            <li>Tbilisi sulfur baths, a fig tree gorge, a waterfall, famous Tbilisi houses on a rock with multi-colored balconies;</li>
                            <li>Temple of Sioni, V-VI century AD. and <b>the Cathedral of Georgia Sameba</b> (Holy Trinity);</li>
                            <li>The ascent to <b>the highest point</b> of Tbilisi is <b>the Mtatsminda funicular.</b> 
                            There you can <b>see the whole city from the Ferris wheel</b> and visit the <b>amusement park.</b></li>
                            </ul>
                           ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (96, 3, '/images/cards/tour_7days_gurman_500x300.jpg', 'Колесо обозрения в Тбилиси', '', ' <ul>
                            <li>тбилисские серные бани, инжирное ущелье, водопад, известные тбилисские домики на скале с разноцветными балконами;</li>
                            <li>храм Сиони, V-VI век н.э. и  <b>кафедральный собор Грузии Самеба</b> (Святая троица);</li>
                            <li>Подъём на <b>самую высокую точку</b> Тбилиси - <b>фуникулер Мтацминда.</b> 
                            Там вы сможете <b>увидеть весь город с колеса обозрения</b> и посетить <b>парк аттракционов.</b></li>
                            </ul>
                          
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (96, 4, '/images/cards/tour_7days_gurman_500x300.jpg', 'Колесо огляду в Тбілісі', '', '<ul> <li> Тбіліські сірчані лазні, інжирна ущелина, водоспад, відомі тбіліські будиночки на скелі з різнокольоровими балконами; </li> <li> храм Сіоні, V-VI століття н.е. і <b> кафедральний собор Грузії Самеба </b> (Свята трійця); </li> <li> Підйом на <b> найвищу точку </b> Тбілісі - <b> фунікулер Мтацминда. </b> Там ви зможете <b> побачити все місто з оглядового колеса </b> і відвідати <b> парк атракціонів. </b> </li>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (97, 1, '/images/cards/kazbeg_500x300.jpg', 'Поднимемся к храму Гергети', '', '<h5>День 2</h5> Уезжаем в горы! По дороге вы увидите:
                           <ul>
                            <li><b>Жинвальское водохранилище</b> и историческая <b>крепость Ананури</b> эпохи раннего феодализма;</li>
                            <li>Место, где две реки <b>Белая и Чёрная Арагви сливаются в одно русло</b>, при этом их воды не смешиваются;</li>
                            <li><b>Горнолыжный курорт</b> Грузии - <b>Гудаури</b>, 2000 метров над уровнем моря. Виды со смотровой площадки вы никогда не забудете;</li>
                            <li>Главный объект нашей эксскурсии - <b>храм Гергети</b>. Он находится на вершине горы и  <b>мы будем к нему подниматься на джипе</b>;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (97, 2, '/images/cards/kazbeg_500x300.jpg', 'Rise to the temple of Gergeti', '', '<h5>Day 2</h5>We leave for the mountains! On the way you will see:
                           <ul>
                            <li><b>Zhinval water reservoirе</b> and the historical <b>fortress Ananuri</b> of the early feudal period;</li>
                            <li>The place where the two rivers <b>White and Black Aragvi merge into one channel</b>, while their waters do not mix;</li>
                            <li><b>Mountain ski resort  </b> of Georgia  - <b>Gudauri </b>,2000 meters above sea level. Views from the observation platform you will never forget;</li>
                            <li>The main object of our excursion is <b>the Gergeti temple</b>. It`s at the top of the mountain and <b>we will go up to him on a jeep</b>;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (97, 3, '/images/cards/kazbeg_500x300.jpg', 'Поднимемся к храму Гергети', '', '<h5>День 2</h5> Уезжаем в горы! По дороге вы увидите:
                           <ul>
                            <li><b>Жинвальское водохранилище</b> и историческая <b>крепость Ананури</b> эпохи раннего феодализма;</li>
                            <li>Место, где две реки <b>Белая и Чёрная Арагви сливаются в одно русло</b>, при этом их воды не смешиваются;</li>
                            <li><b>Горнолыжный курорт</b> Грузии - <b>Гудаури</b>, 2000 метров над уровнем моря. Виды со смотровой площадки вы никогда не забудете;</li>
                            <li>Главный объект нашей эксскурсии - <b>храм Гергети</b>. Он находится на вершине горы и  <b>мы будем к нему подниматься на джипе</b>;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (97, 4, '/images/cards/kazbeg_500x300.jpg', 'Підіймемось до храму Гергети', '', '<h5> День 2 </h5> Їдемо в гори! По дорозі ви побачите: <ul> <li> <b> Жінвальске водосховище </b> і історичну <b> фортецю Ананурі </b> епохи раннього феодалізму; </li> <li> Місце, де дві річки <b> Біла і Чорна Арагві зливаються в одне русло </b>, при цьому їх води не змішуються; </li> <li> <b> Гірськолижний курорт </b> Грузії - <b> Гудаурі </b>, 2000 метрів над рівнем моря. Краєвиди, що відкриваються з оглядового майданчика ви ніколи не забудете; </li> <li> Головна пам\'ятка нашої ексскурсіі - <b> храм Гергети </b>. Він знаходиться на вершині гори і <b> ми дістанемося до нього на джипі </b>; </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (98, 1, '/images/tours/tour_5days_tbilisi_batumi_12_500x300.jpg', 'знаменитый монастырь Джвари VI века н.э', '', '<h5>День 3</h5> Знакомство с древней столицей Грузии - Мцхета:
                           <ul>
                            <li>знаменитый <b>монастырь Джвари</b> VI века н.э, откуда открывается удивительный вид на слияние двух рек;</li>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., его также называют "Вторым Иерусалимом", потому что там находится много святых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> 
                            <li>действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                            <li>действующий <b>мужской монастырь ШиоМгвиме</b>, который основал в VI веке один из 13-ти святых ассирийских отцов - Шио;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (98, 2, '/images/tours/tour_5days_tbilisi_batumi_12_500x300.jpg', 'famous monastery Jvari VI century', '', '<h5>Day 3</h5> Acquaintance with the ancient capital of Georgia - Mtskheta:
                           <ul>
                            <li>the famous <b>Jvari monastery </b> of the VI century, where an amazing view of the fusion of two rivers opens up;</li>
                            <li><bcity ​​- Mtskheta</b> - the ancient city of Georgia, founded in the V century BC, it is also called the "Second Jerusalem", because there are many holy places there;</li>
                            <li><b>Svetitskhoveli Cathedral</b> 
                            <li>the functioning <b>female monastery of Samtavro</b>, built on the site where St. Nino lived;</li>
                            <li>operating  <b>monastery of ShioMgwime</b>, which was founded in the VI century by one of the 13 holy Assyrian fathers - Shio;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (98, 3, '/images/tours/tour_5days_tbilisi_batumi_12_500x300.jpg', 'знаменитый монастырь Джвари VI века н.э', '', '<h5>День 3</h5> Знакомство с древней столицей Грузии - Мцхета:
                           <ul>
                            <li>знаменитый <b>монастырь Джвари</b> VI века н.э, откуда открывается удивительный вид на слияние двух рек;</li>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., его также называют "Вторым Иерусалимом", потому что там находится много святых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> 
                            <li>действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                            <li>действующий <b>мужской монастырь ШиоМгвиме</b>, который основал в VI веке один из 13-ти святых ассирийских отцов - Шио;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (98, 4, '/images/tours/tour_5days_tbilisi_batumi_12_500x300.jpg', 'відомий монастир Джварі VI століття н.ст.', '', '<h5> День 3 </h5> Знайомство зі 
стародавньою столицею Грузії - містом Мцхета: <ul> <li> відомий <b> монастир Джварі </b> VI століття н.е., звідки відкривається дивовижний вид на злиття двох річок; </li> <li> <b> місто Мцхета </b> - найдавніше місто Грузії, заснований в V столітті до н.е., також його називають "Другим Єрусалимом", там знаходиться багато святих і культових місць; </li>
<li> <b> кафедральний собор Светіцховелі </b> - духовний центр християнської Грузії і всього з давніх споруд країни; </li>
<li> діючий <b> жіночий монастир Самтавро </b>, побудований на місці, де жила свята Ніно; </li>
<li> діючий <b> чоловічий монастир Шио-Мгвіме </b>, який заснував в VI столітті один з 13-ти святих ассірійських батьків - Шио; </li>
</ul>
');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (99, 1, '/images/tours/tour_8days_suvenirs500x300.jpg', 'Свободный день для прогулок по городу Тбилиси', '', '<h5>День 4</h5>  <b>Свободный день</b> для прогулок по городу Тбилиси. 
                            Возможность <b>пройтись по узким улочками</b>, заглянуть в <b>сувенирные лавки</b>, винные магазины, увидеть <b>представления на улицах города</b>, 
                            cделать много ярких фото... 
                            Отель находиться в самом центре Тбилиси, поэтому вам будет легко и быстро добраться до всех лучших мест города. 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (99, 2, '/images/tours/tour_8days_suvenirs500x300.jpg', 'Free day for exploring the city of Tbilisi', '', '<h5>Day 4</h5>  <b>Free day</b> for walking around the city of Tbilisi. The opportunity to <b>walk through narrow streets</b>, 
                            look into <b>souvenir shops</b>, wine shops, see <b>performances on the streets of the city</b>, 
                            make many bright photos ... The hotel is located in the very center of Tbilisi, so you will easily and quickly reach all the best places in the city. 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (99, 3, '/images/tours/tour_8days_suvenirs500x300.jpg', 'Свободный день для прогулок по городу Тбилиси', '', '<h5>День 4</h5>  <b>Свободный день</b> для прогулок по городу Тбилиси. 
                            Возможность <b>пройтись по узким улочками</b>, заглянуть в <b>сувенирные лавки</b>, винные магазины, увидеть <b>представления на улицах города</b>, 
                            cделать много ярких фото... 
                            Отель находиться в самом центре Тбилиси, поэтому вам будет легко и быстро добраться до всех лучших мест города. 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (99, 4, '/images/tours/tour_8days_suvenirs500x300.jpg', 'Вільний день для прогулянок по місту Тбілісі', '', '<h5> День 4 </h5> <b> Вільний день </b> для прогулянок по місту Тбілісі. Можливість <b> пройтися вузькими вуличками </b>, зазирнути в <b> сувенірні лавки </b>, винні магазини, побачити <b> різноманітні заходи на вулицях міста </b>, зробити багато яскравих фото ... Готель знаходиться в самому центрі Тбілісі, тому вам буде легко і швидко дістатися до всіх кращих місць столиці.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (100, 1, '/images/cards/borjomi_500x300.jpg', 'Прогулка по Боржоми', '', '<h5>День 5</h5> Уезжаем в город Боржоми! По дороге вы увидите:
                            <li>недалеко от Боржоми, заедем в уютный лес, где стоит <b>Зелёный монастырь</b>. Это место сказочной красоты и оно наполнено духовностью;</li>
                            <li><b>подъём по канатной дороге на Плато</b>, откуда открывается удивительный вид на Боржомское ущелье;</li>
                            <li>затем <b>прогуляемся по его Центральному парку</b>, где вы увидите настоящий <b>большой водопад</b>, 
                                тихо протекающая горная речка вдоль всего парка, <b>парк аттракционов</b> и <b>источник минеральной воды</b>, известной во всём мире;
                            <li><b>бассейны с горячей серной водой</b>, в которых можно будет искупаться;</li>
                           </ul>
                           Ночь в Боржоми.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (100, 2, '/images/cards/borjomi_500x300.jpg', 'Walk along Borjomii', '', '<h5>Day 5</h5> We leave to the city of Borjomi! On the way you will see:
                            <li>near Borjomi, we\'ll stop by the cozy forest where the  <b>Green Monastery</b>. stands . This place is a dreamlike beauty and it is filled with spirituality;</li>
                            <li><b>climbing the cable car to the Plateau </b>, from where you can see an amazing view of the Borjomi Gorge;</li>
                            <li>then  <b> walk along its Central Park</b>, where you will see a real  <b> big waterfall </b>, 
                                a quietly flowing mountain stream along the park, an <b>amusement park</b> and a <b>source of mineral water </b>, known all over the world;
                            <li><b>pools with hot sulfur water</b>, where you can swim;</li>
                           </ul>
                          Overnight in Borjomi.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (100, 3, '/images/cards/borjomi_500x300.jpg', 'Прогулка по Боржоми', '', '<h5>День 5</h5> Уезжаем в город Боржоми! По дороге вы увидите:
                            <li>недалеко от Боржоми, заедем в уютный лес, где стоит <b>Зелёный монастырь</b>. Это место сказочной красоты и оно наполнено духовностью;</li>
                            <li><b>подъём по канатной дороге на Плато</b>, откуда открывается удивительный вид на Боржомское ущелье;</li>
                            <li>затем <b>прогуляемся по его Центральному парку</b>, где вы увидите настоящий <b>большой водопад</b>, 
                                тихо протекающая горная речка вдоль всего парка, <b>парк аттракционов</b> и <b>источник минеральной воды</b>, известной во всём мире;
                            <li><b>бассейны с горячей серной водой</b>, в которых можно будет искупаться;</li>
                           </ul>
                           Ночь в Боржоми.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (100, 4, '/images/cards/borjomi_500x300.jpg', 'Прогулянка по Боржомі', '', '<h5> День 5 </h5> Прямуємо до міста Боржомі! По дорозі ви побачите: <li> недалеко від Боржомі, відвідаємо затишний ліс, де стоїть <b> Зелений монастир </b>. Це місце казкової краси, що наповнене духовністю; </li> <li> <b> підйом канатною дорогою на Плато </b>, звідки відкривається дивовижний вид на Боржомську ущелину; </li> <li> потім <b> влаштуємо прогулянку по Боржомському Центральному парку </b>, де ви побачите справжній <b> водоспад </b>, тиху гірську річку, що простягається вздовж усього парку, <b> джерело мінеральної води </b>, відомої в усьому світі  і <b> парк атракціонів </b> ; <li> <b> басейни з гарячою сірчаною водою </b>, в яких можна скупатися; </li> </ul> Ніч в Боржомі.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (101, 1, '/images/tours/tour_5days_tbilisi_batumi_6_500x400.jpg', 'Отправляемся в сторону Батуми', '', '<h5>День 6</h5> Наша цель - добраться до моря в Батуми! 
                         По пути мы заедем в <b>город Кутаиси</b>, где сохранились архитектурные объекты со времен средневековья. 
                         Хотим показать вам этот город и две его главные достопримечательности: 
                          <ul>
                            <li><b>храм Баграта</b> (находится под защитой ЮНЕСКО);</li>
                            <li><b>Гелатский монастырь</b> (украшенный мозаиками, которые почитаются лучшими во всем Закавказье);</li>
                           </ul>  
                          Дорога будет продолжительная, но интересная. Грузия имеет очень разнообразные пейзажи и рельефы. <b>Сделаем остановку в одном из горных сёл</b>, где выпекают <b>вкуснейший хлеб</b> и вы обязательно должны его попробовать! 
                          <p></p>
                          К концу дня приедем в <b>Батуми.</b> После заселения в отель можно будет <b>прогуляться по Набережной</b>.
                            Сделаем <b>краткую экскурсию по городу на автомобиле</b>, чтобы вы увидели его во всей красе. Город и его вечернее освещение завораживают!
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (101, 2, '/images/tours/tour_5days_tbilisi_batumi_6_500x400.jpg', 'Heading towards Batumi', '', '<h5>Day 6</h5> Our goal is to get to the sea in Batumi! Along the way we will visit the <b>city ​​of Kutaisi</b>, where architectural objects have been preserved since the Middle Ages. 
                            We want to show you this city and its two main attractions: 
                          <ul>
                            <li><b>the Bagrat temple</b> (under the protection of UNESCO);</li>
                            <li><b>Gelatsky monastery</b> (decorated with mosaics, which are considered the best in the whole of the Transcaucasus);</li>
                           </ul>  
                          The road will be long, but interesting. Georgia has very diverse landscapes and reliefs. <b>We will make a stop in one of the mountain villages </b>, there  <b>delicious bread </b> 
                          and you should definitely try it! 
                          <p></p>
                          By the end of the day we will arrive in <b>Batumi.</b> After settling in the hotel you can <b>walk along the Embankment</b>.
                            We will make a <b>brief tour of the city by car</b>, so that you can see it in all its glory. The city and its evening lighting are fascinating!
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (101, 3, '/images/tours/tour_5days_tbilisi_batumi_6_500x400.jpg', 'Отправляемся в сторону Батуми', '', '<h5>День 6</h5> Наша цель - добраться до моря в Батуми! 
                         По пути мы заедем в <b>город Кутаиси</b>, где сохранились архитектурные объекты со времен средневековья. 
                         Хотим показать вам этот город и две его главные достопримечательности: 
                          <ul>
                            <li><b>храм Баграта</b> (находится под защитой ЮНЕСКО);</li>
                            <li><b>Гелатский монастырь</b> (украшенный мозаиками, которые почитаются лучшими во всем Закавказье);</li>
                           </ul>  
                          Дорога будет продолжительная, но интересная. Грузия имеет очень разнообразные пейзажи и рельефы. <b>Сделаем остановку в одном из горных сёл</b>, где выпекают <b>вкуснейший хлеб</b> и вы обязательно должны его попробовать! 
                          <p></p>
                          К концу дня приедем в <b>Батуми.</b> После заселения в отель можно будет <b>прогуляться по Набережной</b>.
                            Сделаем <b>краткую экскурсию по городу на автомобиле</b>, чтобы вы увидели его во всей красе. Город и его вечернее освещение завораживают!
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (101, 4, '/images/tours/tour_5days_tbilisi_batumi_6_500x400.jpg', 'Вирушаємо в сторону Батумі', '', '<h5> День 6 </h5> Наша мета - дістатися до моря в Батумі! По дорозі ми заїдемо в <b> місто Кутаїсі </b>, де збереглися архітектурні об\'єкти з часів середньовіччя. Хочемо показати вам це місто і дві його головні визначні пам\'ятки: <ul> <li> <b> храм Баграта </b> (знаходиться під захистом ЮНЕСКО); </li> <li> <b> Гелатський монастир </b> (прикрашений мозаїками, які вважаються кращими в усьому Закавказзі); </li> </ul> Дорога буде тривала, але цікава. Грузія має дуже різноманітні пейзажі і рельєфи. <b> Зробимо зупинку в одному з гірських сіл </b>, де випікають <b> смачний хліб </b> і ви обов\'язково повинні його спробувати! <p> </p> Наприкінці дня дістанемося до <b> Батумі. </b> Після заселення в готель можна буде <b> прогулятися по Набережній </b>. Зробимо <b> коротку автомобільну екскурсію по місту </b>, щоб ви побачили його у всій красі. Батумі і його вечірнє освітлення заворожують!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (102, 1, '/images/tours/tour_7days_tbilisi_batumi_2_500x300.jpg', 'Ботанический сад, Батуми', '', '<h5>День 7</h5> <b>Море!</b> Наслаждение морской водой, воздухом и солнцем.
                        Весь день можно проводить на пляже, гулять по городу, развлекаться и делать что угодно!
                        Ближе к вечеру отправимся на экскурсию в <b>Батумский Ботанический сад</b> - очень большой и красивый парк.
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (102, 2, '/images/tours/tour_7days_tbilisi_batumi_2_500x300.jpg', 'Botanical Garden, Batumi', '', '<h5>Day 7</h5> <b>Sea!</b> Enjoying sea water, air and sun. All day you can spend on the beach, walk around the city, 
                        have fun and do anything! Closer to the evening we will go on an excursion to the <b>Batumi Botanical Garden</b> - a very large and beautiful park.
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (102, 3, '/images/tours/tour_7days_tbilisi_batumi_2_500x300.jpg', 'Ботанический сад, Батуми', '', '<h5>День 7</h5> <b>Море!</b> Наслаждение морской водой, воздухом и солнцем.
                        Весь день можно проводить на пляже, гулять по городу, развлекаться и делать что угодно!
                        Ближе к вечеру отправимся на экскурсию в <b>Батумский Ботанический сад</b> - очень большой и красивый парк.
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (102, 4, '/images/tours/tour_7days_tbilisi_batumi_2_500x300.jpg', 'Ботанічний сад, Батумі', '', '<h5> День 7 </h5> <b> Море! </b> Насолода морською водою, повітрям і сонцем. Весь день можна проводити на пляжі, гуляти по місту, розважатися й робити що завгодно! Увечорi ми відвідаємо <b> Батумський Ботанічний сад </b> - дуже великий та живописний парк.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (103, 1, '/images/tours/tour_7days_tbilisi_batumi_1_500x300.jpg', 'водопад Махунцети, Батуми', '', '<h5>День 8</h5> <b>Море!</b> Море развлечений и веселья в Батуми. После обеда отправимся к популярным достопримечательностям Аджарии - <b>водопад Махунцети</b> и <b>арочный мост царицы Тамары</b>.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (103, 2, '/images/tours/tour_7days_tbilisi_batumi_1_500x300.jpg', 'waterfall Mahunceti, Batumi', '', '<h5>Day 8</h5> <b>Sea!</b> A sea of ​​entertainment and fun in Batumi. After lunch, go to the popular sights of Adjara - <b>Mahuntseti waterfall</b> 
                    and the <b>arch bridge of Queen Tamara.</b>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (103, 3, '/images/tours/tour_7days_tbilisi_batumi_1_500x300.jpg', 'водопад Махунцети, Батуми', '', '<h5>День 8</h5> <b>Море!</b> Море развлечений и веселья в Батуми. После обеда отправимся к популярным достопримечательностям Аджарии - <b>водопад Махунцети</b> и <b>арочный мост царицы Тамары</b>.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (103, 4, '/images/tours/tour_7days_tbilisi_batumi_1_500x300.jpg', 'водопад Махунцеті, Батумі', '', '<h5> День 8 </h5> <b> Море! </b> Море розваг і веселощів в Батумі. Після обіду вирушимо до відомих пам\'яток Аджарії - <b> водоспад Махунцеті </b> і <b> арочний міст цариці Тамари </b>.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (104, 1, '/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg', 'Пляжный отдых в Батуми', '', '<h5>День 9</h5> <b>Море!</b> Батуми создан для того, чтобы давать туристам лучшие удовольствия: 
                    ухоженные пляжи, казино, рестораны, порт с катерами и многое другое. Вы точно не будете скучать!
                    <p>А какие там закаты! Солнце садится прямо в море!</p>   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (104, 2, '/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg', 'Beach holidays in Batumi', '', '<h5>Day 9</h5> <b>Sea!</b>Batumi was created in order to give tourists the best pleasure: 
                    well-groomed beaches, casinos, restaurants, a port with boats and much more. You definitely will not be bored!
                    <p>And the best kind of sunsets! The sun sets right in the sea!</p>   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (104, 3, '/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg', 'Пляжный отдых в Батуми', '', '<h5>День 9</h5> <b>Море!</b> Батуми создан для того, чтобы давать туристам лучшие удовольствия: 
                    ухоженные пляжи, казино, рестораны, порт с катерами и многое другое. Вы точно не будете скучать!
                    <p>А какие там закаты! Солнце садится прямо в море!</p>   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (104, 4, '/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg', 'Пляжний відпочинок в Батумі', '', '<h5> День 9 </h5> <b> Море! </b> Батумі створений для того, щоб надавати туристам кращі задоволення: доглянуті пляжі, казино, ресторани, порт з катерами й багато іншого. Це місто точно не залишить Вас байдужим! <p> А які там заходи сонця! Воно сідає прямо в море! </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (105, 1, '/images/cards/tour_9days_500x300.jpg', 'А закаты в Батуми ОСОБЕННЫЕ!', '', '<h5>День 10</h5>
                        Отдых на <b>море в Батуми!</b>
                       <p></p> 
                       Вылет домой может быть из любого аэропорта Грузии, но нужно предусмотреть время на дорогу из Батуми до аэропорта:
                       <ul>
                          <li> Батуми</li> 
                          <li> Кутаиси (около 3 часов)</li>  
                          <li> Тбилиси (около 5-6 часов)</li>
                       </ul>
                        
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (105, 2, '/images/cards/tour_9days_500x300.jpg', 'The sunsets in Batumi are SPECIAL!', '', '<h5>Day 10</h5>
                        Rest on the <b>sea ​​in Batumi!</b>
                       <p></p> 
                       Departure home can be from any airport in Georgia, but you need to provide time for the road from Batumi to the airport:
                       <ul>
                          <li> Batumi</li> 
                          <li> Kutaisi (about 3 hours)</li>  
                          <li> Tbilisi (about 5-6 hours)</li>
                       </ul>
                        
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (105, 3, '/images/cards/tour_9days_500x300.jpg', 'А закаты в Батуми ОСОБЕННЫЕ!', '', '<h5>День 10</h5>
                        Отдых на <b>море в Батуми!</b>
                       <p></p> 
                       Вылет домой может быть из любого аэропорта Грузии, но нужно предусмотреть время на дорогу из Батуми до аэропорта:
                       <ul>
                          <li> Батуми</li> 
                          <li> Кутаиси (около 3 часов)</li>  
                          <li> Тбилиси (около 5-6 часов)</li>
                       </ul>
                        
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (105, 4, '/images/cards/tour_9days_500x300.jpg', 'А сонце сідає в Батумі ОСОБЛИВО!', '', '<h5> День 10 </h5> Відпочинок на <b> узбережжі Чорного моря в Батумі! </b> <p> </p> Виліт додому може бути здійснений з будь-якого аеропорту Грузії, але насамперед потрібно передбачити час на дорогу з Батумі до аеропорту:
<ul> <li> Батумі </li> <li> Кутаїсі (близько 3 годин) </li> <li> Тбілісі (близько 5-6 годин) </li> </ul>
');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (106, 1, '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 'Покажем Вам Тбилиси', 'Начнем наше путешествие по Грузии!', '<h5>День 1</h5> В этот день мы <b>познакомим Вас со столицей</b> Грузии - город <b>Тбилиси</b>. <b>Покажем Вам весь город!</b> 
                            Перечислять все места будет долго, поэтому вот некоторые из них:
                            <ul>
                            <li><b>Старый город Тбилиси</b>, прогулка по улице Шавтели, где находится известный <b>театр марионеток имени Габриадзе</b>; 
                            <li>прогулкам по узким улочкам старого города приведет к знаменитому <b>мосту Мира</b>;</li>
                            <li><b>подъем по канатной дороге</b> на <b>крепость Нарикала</b>. С этого места открывается вид на весь город Тбилиси;</li>
                            </ul>

                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (106, 2, '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 'We will show you Tbilisi', 'Let\'s start our trip to Georgia!', '<h5>Day 1</h5> On this day we will <b>introduce you to the capital of Georgia </b> - the city of <b>Tbilisi . Let\'s show you the whole city! </b> 
                           Enumerate all the places will be long, so here are some of them:
                            <ul>
                            <li><b>The old city of Tbilisi</b>, walk along Shavteli Street, where the famous <b>puppet theater named Gabriadze is located</b>; 
                            <li>walks through the narrow streets of the old city will lead to the famous <b>bridge of the World </b>;</li>
                            <li><b>climbing the cable car to the Narikala fortress</b>. From this place you can see the whole city of Tbilisi;</li>
                            </ul>

                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (106, 3, '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 'נראה לך את טביליסי', 'Начнем наше путешествие по Грузии!', '<h5>День 1</h5> В этот день мы <b>познакомим Вас со столицей</b> Грузии - город <b>Тбилиси</b>. <b>Покажем Вам весь город!</b> 
                            Перечислять все места будет долго, поэтому вот некоторые из них:
                            <ul>
                            <li><b>Старый город Тбилиси</b>, прогулка по улице Шавтели, где находится известный <b>театр марионеток имени Габриадзе</b>; 
                            <li>прогулкам по узким улочкам старого города приведет к знаменитому <b>мосту Мира</b>;</li>
                            <li><b>подъем по канатной дороге</b> на <b>крепость Нарикала</b>. С этого места открывается вид на весь город Тбилиси;</li>
                            </ul>

                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (106, 4, '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 'Покажемо Вам Тбілісі', 'Почнемо нашу подорож по Грузії!', '<h5> День 1 </h5> Цього дня ми <b> відвідаємо столицю </b> Грузії - місто <b> Тбілісі </b>. <b> Познайомимо Вас з кожним цікавим куточком! </b> Столиця втілює в собі безліч вишуканих живописних місць, ось деякі з них: <ul> <li> <b> Старе місто Тбілісі </b>, вулиця Шавтелі, де знаходиться відомий <b> театр маріонеток імені Габріадзе </b>; <li> прогулянка вузькими вуличками старого міста приведе до відомого <b> моста Миру </b>; </li> <li> <b> підйом канатною дорогою </b> над <b> фортецею Нарікала </b>. З цього місця відкривається вид на усе місто Тбілісі; </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (107, 1, '/images/cards/tour_7days_gurman_500x300.jpg', 'Научитесь готовить Хачапури, шашлык по-грузински, испечете хлеб пури', '', ' <ul>
                            <li>тбилисские серные бани, инжирное ущелье, водопад, известные тбилисские домики на скале с разноцветными балконами;</li>
                            <li>храм Сиони, V-VI век н.э. и  <b>кафедральный собор Грузии Самеба</b> (Святая троица);</li>
                            <li>Подъём на <b>самую высокую точку</b> Тбилиси - <b>фуникулер Мтацминда.</b> 
                            Там вы сможете <b>увидеть весь город с колеса обозрения</b> и посетить <b>парк аттракционов.</b></li>
                            </ul>
                          

                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (107, 2, '/images/cards/tour_7days_gurman_500x300.jpg', 'You\'ll cooking Khachapuri, shish kebab in Georgian, bread puri', '', ' <ul>
                            <li>Tbilisi sulfur baths, a fig tree gorge, a waterfall, famous Tbilisi houses on a rock with multi-colored balconies;</li>
                            <li>Temple of Sioni, V-VI century and <b>the Cathedral of Georgia Sameba</b> (Holy Trinity);</li>
                            <li>The ascent to <b>the highest point of</b> Tbilisi is <b>the Mtatsminda funicular.</b> 
                            There you can <b> see the whole city from the Ferris wheel</b> and visit the <b>amusement park.</b></li>
                            </ul>
                          
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (107, 3, '/images/cards/tour_7days_gurman_500x300.jpg', 'Научитесь готовить Хачапури, шашлык по-грузински, испечете хлеб пури', '', ' <ul>
                            <li>тбилисские серные бани, инжирное ущелье, водопад, известные тбилисские домики на скале с разноцветными балконами;</li>
                            <li>храм Сиони, V-VI век н.э. и  <b>кафедральный собор Грузии Самеба</b> (Святая троица);</li>
                            <li>Подъём на <b>самую высокую точку</b> Тбилиси - <b>фуникулер Мтацминда.</b> 
                            Там вы сможете <b>увидеть весь город с колеса обозрения</b> и посетить <b>парк аттракционов.</b></li>
                            </ul>
                         
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (107, 4, '/images/cards/tour_7days_gurman_500x300.jpg', 'Ви будете готувати Хачапурі, шашлик по-грузинськи, хліб пури', '', '<ul> <li> тбіліські сірчані лазні, інжирна ущелина, водоспад, відомі тбіліські будиночки на скелі з різнокольоровими балконами; </li> <li> храм Сіоні, V-VI століття н.е. і <b> кафедральний собор Грузії Самеба </b> (Свята трійця); </li> <li> Підйом до <b> найвищої точки </b> Тбілісі - <b> фунікулер Мтацминда. </b> Там ви зможете <b> побачити усе місто з колеса огляду </b> та відвідати <b> парк атракціонів. </b> </li> </ul> 
Ночівля в Тбілісі.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (108, 1, '/images/tours/tour_5days_tbilisi_batumi_12_500x300.jpg', 'знаменитый монастырь Джвари', '', '<h5>День 2</h5> Уезжаем в город Боржоми! По дороге вы увидите:
                           <ul>
                            <li>знаменитый <b>монастырь Джвари</b> VI века н.э, откуда открывается удивительный вид на слияние двух рек;</li>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., его также называют "Вторым Иерусалимом", потому что там находится много святых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> и действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                            <li>затем, недалеко от Боржоми, заедем в уютный лес, где стоит <b>Зелёный монастырь</b>. Это место сказочной красоты и оно наполнено духовностью;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (108, 2, '/images/tours/tour_5days_tbilisi_batumi_12_500x300.jpg', 'famous monastery Jvari', '', '<h5>Day 2</h5> We leave to the city of Borjomi! On the way you will see:
                           <ul>
                            <li>the famous <b> Jvari monastery </b> of the VI century, where an amazing view of the fusion of two rivers opens up;</li>
                            <li><b>city ​​- Mtskheta</b> - the ancient city of Georgia, founded in the V century BC, it is also called the "Second Jerusalem", because there are many holy places there;</li>
                            <li><b>Svetitskhoveli Cathedral</b> and the operating <b>Samtavro Convent</b>, built on the site where St. Nino lived;</li>
                            <li>then, not far from Borjomi, we\'ll drive into the cozy forest, where the <b>Green Monastery</b>stands . This place is a dreamlike beauty and it is filled with spirituality;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (108, 3, '/images/tours/tour_5days_tbilisi_batumi_12_500x300.jpg', 'famous monastery Jvari', '', '<h5>День 2</h5> Уезжаем в город Боржоми! По дороге вы увидите:
                           <ul>
                            <li>знаменитый <b>монастырь Джвари</b> VI века н.э, откуда открывается удивительный вид на слияние двух рек;</li>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., его также называют "Вторым Иерусалимом", потому что там находится много святых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> и действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                            <li>затем, недалеко от Боржоми, заедем в уютный лес, где стоит <b>Зелёный монастырь</b>. Это место сказочной красоты и оно наполнено духовностью;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (108, 4, '/images/tours/tour_5days_tbilisi_batumi_12_500x300.jpg', 'відомий монастир Джварі', '', '<h5> День 2 </h5> Прямуємо до міста Боржомі! По дорозі ви побачите: <ul> <li> відомий <b> монастир Джварі </b> VI століття н.е., звідки відкривається дивовижний вид на злиття двох річок; </li> <li> <b> місто Мцхета </b> - найстріше місто Грузії, засноване в V столітті до н.е., його також називають "Другим Єрусалимом", бо там знаходиться багато святих місць; </li>
<li> <b> кафедральний собор Светіцховелі </b> і діючий <b> жіночий монастир Самтавро </b>, побудований на місці, де жила свята Ніно; </li> <li> Далі, недалеко від Боржомі, відвідаємо затишний ліс, де стоїть <b> Зелений монастир </b>. Це місце казкової краси, що наповнене духовністю; </li>
</ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (109, 1, '/images/cards/borjomi_500x300.jpg', 'город Боржоми', '', '   Ближе к концу дня приедем в <b>город Боржоми</b>:
                        <ul>
                            <li><b>подъём по канатной дороге на Плато</b>, откуда открывается удивительный вид на Боржомское ущелье;</li>
                            <li>затем <b>прогуляемся по его Центральному парку</b>, где вы увидите настоящий <b>большой водопад</b>, 
                                тихо протекающая горная речка вдоль всего парка, <b>парк аттракционов</b> и <b>источник минеральной воды</b>, известной во всём мире;
                           </ul>
                           Ночь в Боржоми.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (109, 2, '/images/cards/borjomi_500x300.jpg', 'Borjomi city', '', ' Towards the end of the day we will arrive in the <b>city ​​of Borjomi</b>:
                        <ul>
                            <li><b>climbing the cable car to the Plateau</b>, from where you can see an amazing view of the Borjomi Gorge;</li>
                            <li>then  <b>walk along its Central Park</b>, where you will see a real <b>big waterfall</b>, 
                               a quietly flowing mountain stream along the park, an <b>amusement park</b> and a <b>source of mineral water</b>,  known all over the world;
                           </ul>
                           Overnight in Borjomi.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (109, 3, '/images/cards/borjomi_500x300.jpg', 'Borjomi city', '', '   Ближе к концу дня приедем в <b>город Боржоми</b>:
                        <ul>
                            <li><b>подъём по канатной дороге на Плато</b>, откуда открывается удивительный вид на Боржомское ущелье;</li>
                            <li>затем <b>прогуляемся по его Центральному парку</b>, где вы увидите настоящий <b>большой водопад</b>, 
                                тихо протекающая горная речка вдоль всего парка, <b>парк аттракционов</b> и <b>источник минеральной воды</b>, известной во всём мире;
                           </ul>
                           Ночь в Боржоми.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (109, 4, '/images/cards/borjomi_500x300.jpg', 'місто Боржомі', '', 'Наприкінці дня потрапимо до <b> міста Боржомі</b>:<ul><li><b> підйом канатною дорогою на Плато </b>, звідки відкривається дивовижний вид на Боржомську ущелину; </li><li> потім <b> прогуляємося Центральним парком </b>, де ви побачите справжній <b> водоспад</b>, тиху гірську річку, що тече вздовж усього парку, <b> джерело мінеральної води </b>, відомої в усьому світі і <b> парк атракціонів </b>;</ul> Ночівля в Боржомі.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (110, 1, '/images/tours/tour_5days_tbilisi_batumi_6_500x400.jpg', 'Экскурсия по Батуми на автомобиле', '', '<h5>День 3</h5> Наша цель - добраться до моря в Батуми! 
                         По пути мы заедем в <b>город Кутаиси</b>, где сохранились архитектурные объекты со времен средневековья. 
                         Хотим показать вам этот город и две его главные достопримечательности: 
                          <ul>
                            <li><b>храм Баграта</b> (находится под защитой ЮНЕСКО);</li>
                            <li><b>Гелатский монастырь</b> (украшенный мозаиками, которые почитаются лучшими во всем Закавказье);</li>
                           </ul>  
                          Дорога будет продолжительная, но интересная. Грузия имеет очень разнообразные пейзажи и рельефы. <b>Сделаем остановку в одном из горных сёл</b>, где выпекают <b>вкуснейший хлеб</b> и вы обязательно должны его попробовать! 
                          <p></p>
                          К концу дня приедем в <b>Батуми.</b> После заселения в отель можно будет <b>прогуляться по Набережной</b>.
                            Сделаем <b>краткую экскурсию по городу на автомобиле</b>, чтобы вы увидели его во всей красе. Город и его вечернее освещение завораживают!
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (110, 2, '/images/tours/tour_5days_tbilisi_batumi_6_500x400.jpg', 'Batumi car tour', '', '<h5>Day 3</h5> Our goal is to get to the sea in Batumi! Along the way we will visit the <b>city ​​of Kutaisi</b>, where architectural objects have been preserved since the Middle Ages. 
                            We want to show you this city and its two main attractions: 
                          <ul>
                            <li><b>the Bagrat temple</b> (under the protection of UNESCO);</li>
                            <li><b>Gelatsky monastery</b> (decorated with mosaics, which are considered the best in the whole of the Transcaucasus);</li>
                           </ul>  
                          The road will be long, but interesting. Georgia has very diverse landscapes and reliefs. <b>We will make a stop in one of the mountain villages </b>, there  <b>delicious bread </b> 
                          and you should definitely try it! 
                          <p></p>
                          By the end of the day we will arrive in <b>Batumi.</b> After settling in the hotel you can <b>walk along the Embankment</b>.
                            We will make a <b>brief tour of the city by car</b>, so that you can see it in all its glory. The city and its evening lighting are fascinating!
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (110, 3, '/images/tours/tour_5days_tbilisi_batumi_6_500x400.jpg', 'Batumi car tour', '', '<h5>День 3</h5> Наша цель - добраться до моря в Батуми! 
                         По пути мы заедем в <b>город Кутаиси</b>, где сохранились архитектурные объекты со времен средневековья. 
                         Хотим показать вам этот город и две его главные достопримечательности: 
                          <ul>
                            <li><b>храм Баграта</b> (находится под защитой ЮНЕСКО);</li>
                            <li><b>Гелатский монастырь</b> (украшенный мозаиками, которые почитаются лучшими во всем Закавказье);</li>
                           </ul>  
                          Дорога будет продолжительная, но интересная. Грузия имеет очень разнообразные пейзажи и рельефы. <b>Сделаем остановку в одном из горных сёл</b>, где выпекают <b>вкуснейший хлеб</b> и вы обязательно должны его попробовать! 
                          <p></p>
                          К концу дня приедем в <b>Батуми.</b> После заселения в отель можно будет <b>прогуляться по Набережной</b>.
                            Сделаем <b>краткую экскурсию по городу на автомобиле</b>, чтобы вы увидели его во всей красе. Город и его вечернее освещение завораживают!
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (110, 4, '/images/tours/tour_5days_tbilisi_batumi_6_500x400.jpg', 'Екскурсія по Батумі на автомобілі', '', '<h5> День 3 </h5> Наша мета - дістатися до моря в Батумі! Дорогою ми завітаємо до <b> міста Кутаїсі </b>, де збереглися архітектурні об\'єкти з часів середньовіччя. Бажаємо показати вам це місто та дві його головні визначні пам\'ятки:
<ul> <li> <b> храм Баграта </b> (знаходиться під захистом ЮНЕСКО); </li> <li> <b> Гелатський монастир </b> (прикрашений мозаїками, що вважаються кращими на Закавказзі); </li>
</ul> Дорога буде тривала, але цікава. Грузія має дуже різноманітні пейзажі і рельєфи. <b> Зробимо зупинку в одному з гірських сіл </b>, де випікають <b> смачний хліб </b>, ви обов\'язково повинні його скуштивати! <p> </p> Наприкінці дня приїдемо в <b> Батумі. </b> Після заселення до готелю можна буде <b> прогулятися набережною </b>.
Зробимо <b> коротку екскурсію містом на автомобілі </b>, щоб ви побачили його в усій красі. Місто та його вечірнє освітлення заворожують погляд!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (111, 1, '/images/tours/tour_5days_tbilisi_batumi_2_500x300.jpg', 'Побережье Батуми', '', '<h5>День 4</h5> <b>Море!</b> Наслаждение морским воздухом, водой и отдыхом.
                        Весь день можно проводить на пляже, гулять по городу, развлекаться и делать что угодно!
                        Ближе к вечеру отправимся на экскурсии:
                        <ul>
                            <li><b>Батумский Ботанический сад</b> - очень большой и красивый парк;</li>
                            <li> излюбленные достопримечательности Аджарии - <b>водопад Махунцети</b> и <b>арочный мост царицы Тамары</b>.</li>
                           </ul> 
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (111, 2, '/images/tours/tour_5days_tbilisi_batumi_2_500x300.jpg', 'Coast of Batumi', '', '<h5>Day 4</h5> <b>Sea!</b> Enjoying the sea air, water and rest. All day you can spend on the beach, walk around the city, have fun and do anything!
                        Closer to the evening we will go on excursions:
                        <ul>
                            <li><b>Batumi Botanical Garden</b> is a very large and beautiful park;</li>
                            <li> Ajaria\'s favorite attractions are <b>the Mahuntseti waterfall </b> and the <b>arch bridge of Queen Tamara</b>.</li>
                           </ul> 
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (111, 3, '/images/tours/tour_5days_tbilisi_batumi_2_500x300.jpg', 'Coast of Batumi', '', '<h5>День 4</h5> <b>Море!</b> Наслаждение морским воздухом, водой и отдыхом.
                        Весь день можно проводить на пляже, гулять по городу, развлекаться и делать что угодно!
                        Ближе к вечеру отправимся на экскурсии:
                        <ul>
                            <li><b>Батумский Ботанический сад</b> - очень большой и красивый парк;</li>
                            <li> излюбленные достопримечательности Аджарии - <b>водопад Махунцети</b> и <b>арочный мост царицы Тамары</b>.</li>
                           </ul> 
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (111, 4, '/images/tours/tour_5days_tbilisi_batumi_2_500x300.jpg', 'узбережжя Батумі', '', '<h5> День 4 </h5> <b> Море! </b> Насолода морським повітрям, водою і відпочинком. Весь день можна проводити на пляжі, гуляти  містом, розважатися і робити що завгодно! Ближче до вечорана нас чекає: <ul><li> <b> Батумський Ботанічний сад </b> - величезний і гарний парк; </li> <li> улюблені пам\'ятки Аджарії - <b> водоспад Махунцеті </b> та <b> арочний міст цариці Тамари </b>. </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (112, 1, '/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg', 'пляж в Батуми', '', '<h5>День 5</h5>
                        Отдых на <b>море в Батуми!</b>
                       <p></p> 
                       Вылет домой может быть из любого аэропорта Грузии, но нужно предусмотреть время на дорогу из Батуми до аэропорта:
                       <ul>
                          <li> Батуми</li> 
                          <li> Кутаиси (около 3 часов)</li>  
                          <li> Тбилиси (около 5-6 часов)</li>
                       </ul>
                        
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (112, 2, '/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg', 'beach in Batumi', '', '<h5>Day 5</h5>
                        Rest on the <b> sea ​​in Batumi!</b>
                       <p></p> 
                      Departure home can be from any airport in Georgia, but you need to provide time for the road from Batumi to the airport:
                       <ul>
                          <li> Batumi</li> 
                          <li> Kutaisi (about 3 hours)</li>  
                          <li> Tbilisi (about 5-6 hours)</li>
                       </ul>
                        
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (112, 3, '/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg', 'beach in Batumi', '', '<h5>День 5</h5>
                        Отдых на <b>море в Батуми!</b>
                       <p></p> 
                       Вылет домой может быть из любого аэропорта Грузии, но нужно предусмотреть время на дорогу из Батуми до аэропорта:
                       <ul>
                          <li> Батуми</li> 
                          <li> Кутаиси (около 3 часов)</li>  
                          <li> Тбилиси (около 5-6 часов)</li>
                       </ul>
                        
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (112, 4, '/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg', 'пляж в Батумі', '', '<h5> День 5 </h5> Відпочинок на <b> морі в Батумі! </b><p></p>Виліт додому може бути з будь-якого аеропорту Грузії, але потрібно передбачити час на дорогу з Батумі до аеропорту: <ul><li> Батумі </li><li> Кутаїсі (близько 3 годин) </li><li> Тбілісі (близько 5-6 годин)</li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (113, 1, '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 'Панорама Тбилиси', 'Начнем знакомство с Грузией!', '<h5>День 1</h5> В этот день мы <b>познакомим Вас со столицей</b> Грузии - город <b>Тбилиси</b>. <b>Покажем Вам весь город!</b> 
                            Перечислять все места будет долго, поэтому вот некоторые из них:
                            <ul>
                            <li><b>Старый город Тбилиси</b>, прогулка по улице Шавтели, где находится известный <b>театр марионеток имени Габриадзе</b>; 
                            <li>прогулкам по узким улочкам старого города приведет к знаменитому <b>мосту Мира</b>;</li>
                            <li><b>подъем по канатной дороге</b> на <b>крепость Нарикала</b>. С этого места открывается вид на весь город Тбилиси;</li>
                            </ul>
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (113, 2, '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 'Panorama Tbilisi', 'Let\'s get acquainted with Georgia!', '<h5>Day 1</h5> On this day we will <b>introduce you to the capital of Georgia</b> - the city of <b>Tbilisi . Let\'s show you the whole city!</b> 
                            Enumerate all the places will be long, so here are some of them:
                            <ul>
                            <li><b>The old city of Tbilisi</b>, walk along Shavteli Street, where the famous <b>puppet theater named Gabriadze is located </b>; 
                            <li>walks through the narrow streets of the old city will lead to the famous <b>bridge of the World </b>;</li>
                            <li><b>climbing the cable car to the Narikala fortress.</b> From this place you can see the whole city of Tbilisi;</li>
                            </ul>
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (113, 3, '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 'Panorama Tbilisi', 'Начнем знакомство с Грузией!', '<h5>День 1</h5> В этот день мы <b>познакомим Вас со столицей</b> Грузии - город <b>Тбилиси</b>. <b>Покажем Вам весь город!</b> 
                            Перечислять все места будет долго, поэтому вот некоторые из них:
                            <ul>
                            <li><b>Старый город Тбилиси</b>, прогулка по улице Шавтели, где находится известный <b>театр марионеток имени Габриадзе</b>; 
                            <li>прогулкам по узким улочкам старого города приведет к знаменитому <b>мосту Мира</b>;</li>
                            <li><b>подъем по канатной дороге</b> на <b>крепость Нарикала</b>. С этого места открывается вид на весь город Тбилиси;</li>
                            </ul>
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (113, 4, '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 'Панорама Тбілісі', 'Почнемо знайомство із Грузією!', '<h5> День 1 </h5> Цього дня ми <b> познайомимо Вас зі столицею </b> Грузії - містом <b> Тбілісі </b>. <b> Покажемо Вам все місто! </b> Ми втратимо багато часу, якщо будемо перераховувати усі цікаві місця, тому ось деякі з них: <ul> <li> <b> Старе місто Тбілісі </b>, прогулянка по вулиці Шавтелі, де знаходиться відомий <b> театр маріонеток імені Габріадзе </b>; <li> прогулянка вузькими вуличками старого міста приведе до відомого <b> моста Миру </b>; </li> <li> <b> підйом канатною дорогою </b> над <b> фортецею Нарікала </b>. З цього місця відкривається вид на усе місто Тбілісі; </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (114, 1, '/images/cards/tour_7days_gurman_500x300.jpg', 'Близкое знакомство с грузинской кухней', '', ' <ul>
                            <li>тбилисские серные бани, инжирное ущелье, водопад, известные тбилисские домики на скале с разноцветными балконами;</li>
                            <li>храм Сиони, V-VI век н.э. и  <b>кафедральный собор Грузии Самеба</b> (Святая троица);</li>
                            <li>Подъём на <b>самую высокую точку</b> Тбилиси - <b>фуникулер Мтацминда.</b> 
                            Там вы сможете <b>увидеть весь город с колеса обозрения</b> и посетить <b>парк аттракционов.</b></li>
                            </ul>
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (114, 2, '/images/cards/tour_7days_gurman_500x300.jpg', 'Close acquaintance with Georgian cuisine', '', ' <ul>
                            <li>Tbilisi sulfur baths, a fig tree gorge, a waterfall, famous Tbilisi houses on a rock with multi-colored balconies;</li>
                            <li>Temple of Sioni, V-VI century AD. and <b>the Cathedral of Georgia Sameba</b> (Holy Trinity);</li>
                            <li>The ascent to <b>the highest point</b> of Tbilisi is <b>the Mtatsminda funicular.</b> 
                            There you can <b>see the whole city from the Ferris wheel</b> and visit the <b>amusement park.</b></li>
                            </ul>
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (114, 3, '/images/cards/tour_7days_gurman_500x300.jpg', 'Близкое знакомство с грузинской кухней', '', ' <ul>
                            <li>тбилисские серные бани, инжирное ущелье, водопад, известные тбилисские домики на скале с разноцветными балконами;</li>
                            <li>храм Сиони, V-VI век н.э. и  <b>кафедральный собор Грузии Самеба</b> (Святая троица);</li>
                            <li>Подъём на <b>самую высокую точку</b> Тбилиси - <b>фуникулер Мтацминда.</b> 
                            Там вы сможете <b>увидеть весь город с колеса обозрения</b> и посетить <b>парк аттракционов.</b></li>
                            </ul>
                         
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (114, 4, '/images/cards/tour_7days_gurman_500x300.jpg', 'Близьке знайомство з грузинською кухнею', '', '<ul> <li> тбіліські сірчані лазні, інжирна ущелина, водоспад, відомі тбіліські будиночки на скелі з різнокольоровими балконами; </li> <li> храм Сіоні, V-VI століття н.е. і <b> кафедральний собор Грузії Самеба </b> (Свята трійця); </li> <li> Підйом на <b> найвищу точку </b> Тбілісі - <b> фунікулер Мтацминда. </b> Там ви зможете <b> побачити усе місто з колеса огляду </b> і відвідати <b> парк атракціонів. </b> </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (115, 1, '/images/tours/tour_5days_tbilisi_batumi_12_500x300.jpg', 'Мцхета - ее называют вторым Иерусалимом', '', '<h5>День 2</h5> Уезжаем в город Боржоми! По дороге вы увидите:
                           <ul>
                            <li>знаменитый <b>монастырь Джвари</b> VI века н.э, откуда открывается удивительный вид на слияние двух рек;</li>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., его также называют "Вторым Иерусалимом", потому что там находится много святых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> и действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                            <li>затем, недалеко от Боржоми, заедем в уютный лес, где стоит <b>Зелёный монастырь</b>. Это место сказочной красоты и оно наполнено духовностью;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (115, 2, '/images/tours/tour_5days_tbilisi_batumi_12_500x300.jpg', 'Mtskheta - it is called the second Jerusalem', '', '<h5>Day 2</h5> We leave to the city of Borjomi! On the way you will see:
                           <ul>
                            <li>the famous <b> Jvari monastery </b> of the VI century, where an amazing view of the fusion of two rivers opens up;</li>
                            <li><b>city ​​- Mtskheta</b> - the ancient city of Georgia, founded in the V century BC, it is also called the "Second Jerusalem", because there are many holy places there;</li>
                            <li><b>Svetitskhoveli Cathedral</b> and the operating <b>Samtavro Convent</b>, built on the site where St. Nino lived;</li>
                            <li>then, not far from Borjomi, we\'ll drive into the cozy forest, where the <b>Green Monastery</b>stands . 
                            This place is a dreamlike beauty and it is filled with spirituality;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (115, 3, '/images/tours/tour_5days_tbilisi_batumi_12_500x300.jpg', 'Мцхета - ее называют вторым Иерусалимом', '', '<h5>День 2</h5> Уезжаем в город Боржоми! По дороге вы увидите:
                           <ul>
                            <li>знаменитый <b>монастырь Джвари</b> VI века н.э, откуда открывается удивительный вид на слияние двух рек;</li>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., его также называют "Вторым Иерусалимом", потому что там находится много святых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> и действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                            <li>затем, недалеко от Боржоми, заедем в уютный лес, где стоит <b>Зелёный монастырь</b>. Это место сказочной красоты и оно наполнено духовностью;</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (115, 4, '/images/tours/tour_5days_tbilisi_batumi_12_500x300.jpg', 'Мцхета - її називають другим Єрусалимом', '', '<h5> День 2 </h5> Їдемо до міста Боржомі! Дорогою побачимо:
<ul>
<li> відомий <b> монастир Джварі </b> VI століття н.е., звідки відкривається дивовижний вид на злиття двох річок; </li><li> <b> місто  Мцхета </b> - найдавніше місто Грузії, засноване у V столітті до н.е., його також називають "Другим Єрусалимом", бо там знаходиться багато святих місць; </li>
<li> <b> кафедральний собор Светіцховелі </b> і діючий <b> жіночий монастир Самтавро </b>, побудований на місці, де жила свята Ніно; </li><li> потім, недалеко від Боржомі, завітаємо до затишного лісу, де стоїть <b> Зелений монастир </b>. Це місце казкової краси і воно наповнене духовністю; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (116, 1, '/images/cards/borjomi_500x300.jpg', 'Знакомство с Боржоми', '', '   Ближе к концу дня приедем в <b>город Боржоми</b>:
                        <ul>
                            <li><b>подъём по канатной дороге на Плато</b>, откуда открывается удивительный вид на Боржомское ущелье;</li>
                            <li>затем <b>прогуляемся по его Центральному парку</b>, где вы увидите настоящий <b>большой водопад</b>, 
                                тихо протекающая горная речка вдоль всего парка, <b>парк аттракционов</b> и <b>источник минеральной воды</b>, известной во всём мире;
                            <li><b>бассейны с горячей серной водой</b>, в которых можно будет искупаться;</li>
                           </ul>
                           Ночь в Боржоми.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (116, 2, '/images/cards/borjomi_500x300.jpg', 'Meet Borjomi', '', ' Towards the end of the day we will arrive in the <b>city ​​of Borjomi</b>:
                        <ul>
                            <li><b>climbing the cable car to the Plateau</b>, from where you can see an amazing view of the Borjomi Gorge;</li>
                            <li>then  <b>walk along its Central Park</b>, where you will see a real <b>big waterfall</b>, 
                               a quietly flowing mountain stream along the park, an <b>amusement park</b> and a <b>source of mineral water</b>,  known all over the world;
                            <li><b>pools with hot sulfur water</b>, where you can swim;</li>
                           </ul>
                           Overnight in Borjomi.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (116, 3, '/images/cards/borjomi_500x300.jpg', 'Знакомство с Боржоми', '', '   Ближе к концу дня приедем в <b>город Боржоми</b>:
                        <ul>
                            <li><b>подъём по канатной дороге на Плато</b>, откуда открывается удивительный вид на Боржомское ущелье;</li>
                            <li>затем <b>прогуляемся по его Центральному парку</b>, где вы увидите настоящий <b>большой водопад</b>, 
                                тихо протекающая горная речка вдоль всего парка, <b>парк аттракционов</b> и <b>источник минеральной воды</b>, известной во всём мире;
                            <li><b>бассейны с горячей серной водой</b>, в которых можно будет искупаться;</li>
                           </ul>
                           Ночь в Боржоми.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (116, 4, '/images/cards/borjomi_500x300.jpg', 'Знайомство із Боржомі', '', 'Наприкінці дня відвідаємо <b> місто Боржомі </b>: <ul> <li> <b> підйом канатною дорогою на Плато </b>, звідки відкривається дивовижний вид на Боржомську ущелину; </li> <li> потім <b> влаштуємо прогулянку по Боржомському Центральному парку </b>, де ви побачите справжній <b> водоспад </b>, тиху гірську річку, що простягається вздовж усього парку, <b> джерело мінеральної води </b>, відомої в усьому світі  і <b> парк атракціонів </b> ; <li> <b> басейни з гарячою сірчаною водою </b>, в яких можна скупатися; </li> </ul> Ніч в Боржомі.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (117, 1, '/images/tours/tour_5days_tbilisi_batumi_6_500x400.jpg', 'Наша цель - добраться до моря в Батуми!', '', '<h5>День 3</h5> Наша цель - добраться до моря в Батуми! 
                         По пути мы заедем в <b>город Кутаиси</b>, где сохранились архитектурные объекты со времен средневековья. 
                         Хотим показать вам этот город и две его главные достопримечательности: 
                          <ul>
                            <li><b>храм Баграта</b> (находится под защитой ЮНЕСКО);</li>
                            <li><b>Гелатский монастырь</b> (украшенный мозаиками, которые почитаются лучшими во всем Закавказье);</li>
                           </ul>  
                          Дорога будет продолжительная, но интересная. Грузия имеет очень разнообразные пейзажи и рельефы. <b>Сделаем остановку в одном из горных сёл</b>, где выпекают <b>вкуснейший хлеб</b> и вы обязательно должны его попробовать! 
                          <p></p>
                          К концу дня приедем в <b>Батуми.</b> После заселения в отель можно будет <b>прогуляться по Набережной</b>.
                            Сделаем <b>краткую экскурсию по городу на автомобиле</b>, чтобы вы увидели его во всей красе. Город и его вечернее освещение завораживают!
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (117, 2, '/images/tours/tour_5days_tbilisi_batumi_6_500x400.jpg', 'Our goal is to get to the sea in Batumi!', '', '<h5>Day 3</h5> Our goal is to get to the sea in Batumi! Along the way we will visit the <b>city ​​of Kutaisi</b>, where architectural objects have been preserved since the Middle Ages. 
                            We want to show you this city and its two main attractions: 
                          <ul>
                            <li><b>the Bagrat temple</b> (under the protection of UNESCO);</li>
                            <li><b>Gelatsky monastery</b> (decorated with mosaics, which are considered the best in the whole of the Transcaucasus);</li>
                           </ul>  
                          The road will be long, but interesting. Georgia has very diverse landscapes and reliefs. <b>We will make a stop in one of the mountain villages </b>, there  <b>delicious bread </b> 
                          and you should definitely try it! 
                          <p></p>
                          By the end of the day we will arrive in <b>Batumi.</b> After settling in the hotel you can <b>walk along the Embankment</b>.
                            We will make a <b>brief tour of the city by car</b>, so that you can see it in all its glory. The city and its evening lighting are fascinating!
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (117, 3, '/images/tours/tour_5days_tbilisi_batumi_6_500x400.jpg', 'Наша цель - добраться до моря в Батуми!', '', '<h5>День 3</h5> Наша цель - добраться до моря в Батуми! 
                         По пути мы заедем в <b>город Кутаиси</b>, где сохранились архитектурные объекты со времен средневековья. 
                         Хотим показать вам этот город и две его главные достопримечательности: 
                          <ul>
                            <li><b>храм Баграта</b> (находится под защитой ЮНЕСКО);</li>
                            <li><b>Гелатский монастырь</b> (украшенный мозаиками, которые почитаются лучшими во всем Закавказье);</li>
                           </ul>  
                          Дорога будет продолжительная, но интересная. Грузия имеет очень разнообразные пейзажи и рельефы. <b>Сделаем остановку в одном из горных сёл</b>, где выпекают <b>вкуснейший хлеб</b> и вы обязательно должны его попробовать! 
                          <p></p>
                          К концу дня приедем в <b>Батуми.</b> После заселения в отель можно будет <b>прогуляться по Набережной</b>.
                            Сделаем <b>краткую экскурсию по городу на автомобиле</b>, чтобы вы увидели его во всей красе. Город и его вечернее освещение завораживают!
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (117, 4, '/images/tours/tour_5days_tbilisi_batumi_6_500x400.jpg', 'Наша мета - дістатися до моря в Батумі!', '', '<h5> День 3 </h5> Наша мета - дістатися до моря в Батумі! Дорогою ми завітаємо до <b> міста Кутаїсі </b>, де збереглися архітектурні об\'єкти з часів середньовіччя. Бажаємо показати вам це місто та дві його головні визначні пам\'ятки:
<ul> <li> <b> храм Баграта </b> (знаходиться під захистом ЮНЕСКО); </li> <li> <b> Гелатський монастир </b> (прикрашений мозаїками, що вважаються кращими на Закавказзі); </li>
</ul> Дорога буде тривала, але цікава. Грузія має дуже різноманітні пейзажі і рельєфи. <b> Зробимо зупинку в одному з гірських сіл </b>, де випікають <b> смачний хліб </b>, ви обов\'язково повинні його скуштивати! <p> </p> Наприкінці дня приїдемо в <b> Батумі. </b> Після заселення до готелю можна буде <b> прогулятися набережною </b>.
Зробимо <b> коротку екскурсію містом на автомобілі </b>, щоб ви побачили його в усій красі. Місто та його вечірнє освітлення заворожують погляд!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (118, 1, '/images/tours/tour_7days_tbilisi_batumi_2_500x300.jpg', 'Батумский Ботанический сад', '', '<h5>День 4</h5> <b>Море!</b> Наслаждение морской водой, воздухом и солнцем.
                        Весь день можно проводить на пляже, гулять по городу, развлекаться и делать что угодно!
                        Ближе к вечеру отправимся на экскурсию в <b>Батумский Ботанический сад</b> - очень большой и красивый парк.
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (118, 2, '/images/tours/tour_7days_tbilisi_batumi_2_500x300.jpg', 'Batumi Botanical Garden', '', '<h5>Day 4</h5> <b>Sea!</b> Enjoying sea water, air and sun. All day you can spend on the beach, walk around the city, 
                        have fun and do anything! Closer to the evening we will go on an excursion to the <b>Batumi Botanical Garden</b> - a very large and beautiful park.
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (118, 3, '/images/tours/tour_7days_tbilisi_batumi_2_500x300.jpg', 'Батумский Ботанический сад', '', '<h5>День 4</h5> <b>Море!</b> Наслаждение морской водой, воздухом и солнцем.
                        Весь день можно проводить на пляже, гулять по городу, развлекаться и делать что угодно!
                        Ближе к вечеру отправимся на экскурсию в <b>Батумский Ботанический сад</b> - очень большой и красивый парк.
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (118, 4, '/images/tours/tour_7days_tbilisi_batumi_2_500x300.jpg', 'Батумський Ботанічний сад', '', '<h5> День 4 </h5> <b> Море! </b> Насолода морською водою, повітрям і сонцем. Весь день можна проводити на пляжі, гуляти по місту, розважатися й робити що завгодно! Увечорi ми підемо на екскурсію в <b> Батумський Ботанічний сад </b> - дуже великий й живописний парк.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (119, 1, '/images/tours/tour_7days_tbilisi_batumi_1_500x300.jpg', 'водопад Махунцети', '', '<h5>День 5</h5> <b>Море!</b> Море развлечений и веселья в Батуми. После обеда отправимся к популярным достопримечательностям Аджарии - <b>водопад Махунцети</b> и <b>арочный мост царицы Тамары</b>.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (119, 2, '/images/tours/tour_7days_tbilisi_batumi_1_500x300.jpg', 'waterfall Mahunceti', '', '<h5>Day 5</h5> <b>Sea!</b> A sea of ​​entertainment and fun in Batumi. After lunch, go to the popular sights of Adjara - <b>Mahuntseti waterfall</b> 
                    and the <b>arch bridge of Queen Tamara.</b>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (119, 3, '/images/tours/tour_7days_tbilisi_batumi_1_500x300.jpg', 'водопад Махунцетид', '', '<h5>День 5</h5> <b>Море!</b> Море развлечений и веселья в Батуми. После обеда отправимся к популярным достопримечательностям Аджарии - <b>водопад Махунцети</b> и <b>арочный мост царицы Тамары</b>.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (119, 4, '/images/tours/tour_7days_tbilisi_batumi_1_500x300.jpg', 'водоспад Махунцеті', '', '<h5> День 5 </h5> <b> Море! </b> Море розваг і веселощів в Батумі. Післяобід вирушимо до відомих пам\'яток Аджарії - <b> водоспад Махунцеті </b> та <b> арочний міст цариці Тамари </b>.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (120, 1, '/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg', 'море в Батуми', '', '<h5>День 6</h5> <b>Море!</b> Батуми создан для того, чтобы давать туристам лучшие удовольствия: 
                    ухоженные пляжи, казино, рестораны, порт с катерами и многое другое. Вы точно не будете скучать!
                    <p>А какие там закаты! Солнце садится прямо в море!</p>   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (120, 2, '/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg', 'sea ​​in batumi', '', '<h5>Day 6</h5> <b>Sea!</b> Batumi was created in order to give tourists the best pleasure: 
                        well-groomed beaches, casinos, restaurants, a port with boats and much more. You definitely will not be bored!
                    <p>And the best kind of sunsets! The sun sets right in the sea!</p>   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (120, 3, '/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg', 'море в Батуми', '', '<h5>День 6</h5> <b>Море!</b> Батуми создан для того, чтобы давать туристам лучшие удовольствия: 
                    ухоженные пляжи, казино, рестораны, порт с катерами и многое другое. Вы точно не будете скучать!
                    <p>А какие там закаты! Солнце садится прямо в море!</p>   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (120, 4, '/images/tours/tour_5days_tbilisi_batumi_3_500x300.jpg', 'море в Батумі', '', '<h5> День 6 </h5> <b> Море! </b> Батумі створений для того, щоб надавати туристам найкращі задоволення: доглянуті пляжі, казино, ресторани, порт із катерами й багато іншого. Ви точно не будете нудьгувати!
<p> А як там сонце сідає! Прямо у море! </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (121, 1, '/images/cards/tour_9days_500x300.jpg', 'Закат в Батуми, где солнце садится прямо в море!', '', '<h5>День 7</h5>
                        Отдых на <b>море в Батуми!</b>
                       <p></p> 
                       Вылет домой может быть из любого аэропорта Грузии, но нужно предусмотреть время на дорогу из Батуми до аэропорта:
                       <ul>
                          <li> Батуми</li> 
                          <li> Кутаиси (около 3 часов)</li>  
                          <li> Тбилиси (около 5-6 часов)</li>
                       </ul>
                        
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (121, 2, '/images/cards/tour_9days_500x300.jpg', 'Sunset in Batumi, where the sun sets directly on the sea!', '', '<h5>Day 7</h5>
                        Rest on the <b>sea ​​in Batumi!</b>
                       <p></p> 
                       Departure home can be from any airport in Georgia, but you need to provide time for the road from Batumi to the airport:
                       <ul>
                          <li> Batumi</li> 
                          <li> Kutaisi (about 3 hours)</li>  
                          <li> Tbilisi (about 5-6 hours)</li>
                       </ul>
                        
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (121, 3, '/images/cards/tour_9days_500x300.jpg', 'Закат в Батуми, где солнце садится прямо в море!', '', '<h5>День 7</h5>
                        Отдых на <b>море в Батуми!</b>
                       <p></p> 
                       Вылет домой может быть из любого аэропорта Грузии, но нужно предусмотреть время на дорогу из Батуми до аэропорта:
                       <ul>
                          <li> Батуми</li> 
                          <li> Кутаиси (около 3 часов)</li>  
                          <li> Тбилиси (около 5-6 часов)</li>
                       </ul>
                        
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (121, 4, '/images/cards/tour_9days_500x300.jpg', 'В Батумі сонце сідає прямо в море!', '', '<h5> День 7 </h5>Відпочинок на <b> морі у Батумі! </b><p></p> Виліт додому може бути з будь-якого аеропорту Грузії, але потрібно передбачити час на дорогу з Батумі до аеропорту:<ul><li> Батумі </li><li> Кутаїсі (близько 3 годин) </li><li> Тбілісі (близько 5-6 годин) </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (122, 1, '/images/cards/tour_tbilisi_500x300.jpg', 'Экскурсия "Две столицы" - Тбилиси и Мцхета', 'Грузия и Армения - две кавказские страны, соседи, но такие разные. Проверим?', '<h5>День 1</h5> Познакомим Вас со столицей Грузии - <b>Тбилиси</b> и первой древней столицей - Мцхета. Вы увидите:
                        <ul>
                            <li>экскурсия по Тбилиси на автомобиле, чтобы показать Вам весь город и его главные достопримечатальности;</li>                        
                        </ul>
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (122, 2, '/images/cards/tour_tbilisi_500x300.jpg', 'Excursion "Two capitals" - Tbilisi and Mtskheta', 'Georgia and Armenia are two Caucasian countries, neighbors, but they are so different. Let`s check it?', '<h5>Day 1</h5> We will acquaint you with the capital of Georgia - <b>Tbilisi </b>  and the first ancient capital - Mtskheta. You will see:
                        <ul>
                            <li>tour of Tbilisi by car to show you the whole city and its main attractions;</li>                        
                        </ul>
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (122, 3, '/images/cards/tour_tbilisi_500x300.jpg', 'Экскурсия "Две столицы" - Тбилиси и Мцхета', 'Грузия и Армения - две кавказские страны, соседи, но такие разные. Проверим?', '<h5>День 1</h5> Познакомим Вас со столицей Грузии - <b>Тбилиси</b> и первой древней столицей - Мцхета. Вы увидите:
                        <ul>
                            <li>экскурсия по Тбилиси на автомобиле, чтобы показать Вам весь город и его главные достопримечатальности;</li>                        
                        </ul>
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (122, 4, '/images/cards/tour_tbilisi_500x300.jpg', 'Екскурсія "Дві столиці" - Тбілісі і Мцхета', 'Грузія і Вірменія - дві кавказькі країни, сусіди, але такі різні. Перевіримо?', '<h5> День 1 </h5> Познайомимо Вас зі столицею Грузії - <b> Тбілісі </b> та першої давньою столицею - Мцхета. На вас чекає: <ul><li> екскурсія по Тбілісі автомобілем, щоб показати Вам усе місто та його головні пам\'ятки; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (123, 1, '/images/cards/ex_mtskheta_4_500x300.jpg', 'Две реки сливаются в одно русло, но из воды не смешиваются', '', '<ul>
                        <li>затем, Вас ждет знаменитый <b>монастырь Джвари</b>, откуда открывается удивительный вид на Мцхету. Монастырь хранит в себе средневековую историю, начиная с VI века н.э.;</li>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., также его называют "Вторым Иерусалимом", потому что там находится много святых и культовых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> - духовный центр христианской Грузии и самый большой из древних сооружений страны;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                            <li>действующий <b>мужской монастырь Шио-Мгвиме</b>, который основал в VI веке один из 13-ти святых ассирийских отцов - Шио;</li> 
                          </ul>
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (123, 2, '/images/cards/ex_mtskheta_4_500x300.jpg', 'Two rivers merge into one channel, but do not mix out of water', '', '<ul>
                        <li>then, you will find the famous <b>monastery of Jvari </b>, from where you can see an amazing view of Mtskheta. The monastery keeps a medieval history, starting from the VI century AD;</li>
                            <li><b>city ​​- Mtskheta</b> - the ancient city of Georgia, founded in the V century BC, also called "Second Jerusalem", because there are many holy and cult places there;</li>
                            <li><b>Svetitskhoveli Cathedral</b> -  is the spiritual center of Christian Georgia and the largest of the country\'s ancient buildings;</li>
                            <li>operating  <b> female monastery of Samtavro</b>, built on the site where St. Nino lived;</li>
                            <li>operating  <b>monastery of Shio-Mgvime</b>, which was founded in the VI century by one of the 13 holy Assyrian fathers - Shio;</li> 
                          </ul>
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (123, 3, '/images/cards/ex_mtskheta_4_500x300.jpg', 'Две реки сливаются в одно русло, но из воды не смешиваются', '', '                        <ul>
                        <li>затем, Вас ждет знаменитый <b>монастырь Джвари</b>, откуда открывается удивительный вид на Мцхету. Монастырь хранит в себе средневековую историю, начиная с VI века н.э.;</li>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., также его называют "Вторым Иерусалимом", потому что там находится много святых и культовых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> - духовный центр христианской Грузии и самое большое из древних сооружений страны;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                            <li>действующий <b>мужской монастырь Шио-Мгвиме</b>, который основал в VI веке один из 13-ти святых ассирийских отцов - Шио;</li> 
                          </ul>
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (123, 4, '/images/cards/ex_mtskheta_4_500x300.jpg', 'Дві річки зливаються в одне русло, але з води не змішуються', '', '<ul>
<li> потім, на вас чекає відомий<b> монастир Джварі </b>, звідки відкривається дивовижний вид на Мцхету. Монастир зберігає в собі середньовічну історію, починаючи з VI століття н.е ..; </li>
<li> <b> місто Мцхета </b> - найстаріше місто Грузії, засноване у V столітті до н.е., також його називають "Другим Єрусалимом", бо там знаходиться багато святих і культових місць; </li>
<li> <b> кафедральний собор Светіцховелі </b> - духовний центр християнської Грузії й найбільша з стародавніх споруд країни; </li>
<li> діючий <b> жіночий монастир Самтавро </b>, побудований на місці, де жила свята Ніно; </li>
<li> діючий <b> чоловічий монастир Шио-Мгвіме </b>, що був заснований у VI столітті одним з 13-ти святих ассірійських батьків - Шио; </li>
</ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (124, 1, '/images/excoursions/kazbek/excursion_in_kagbeg_1_500x300.jpg', 'виды с Гудаурской смотровой площадки', '', '<h5>День 2</h5>Отправимся в горы, город Гудаури. По дороге увидим:
                         <ul>
                            <li>удивительно <b>красивые виды на Жинвальское водохранилище</b>;</li>
                            <li>прекрасно сохранившийся исторический объект эпохи раннего феодализма – <b>крепость Ананури;</b></li>
                            <li>родину хинкали - поселок Пасанаури, где увидим две уникальные реки, Белую и Черную Арагви, 
                                 которые сливаются в общее русло, но их светлая и темная воды при этом не смешиваются.;</li>
                            <li> Головокружительные <b>виды с гудаурской смотровой площадки</b> равнодушным не оставят никого.
                                 Здесь очень красиво <b>в любое время года</b>! </li>  
                            <li>Далее нас ожидает гордость Грузии – <b>горнолыжный курорт Гудаури</b> </li> 
                        </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (124, 2, '/images/excoursions/kazbek/excursion_in_kagbeg_1_500x300.jpg', 'views from the Gudaur viewing platform', '', '<h5>Day 2</h5>We will go to the mountains, the city of Gudauri. On the way we will see:
                         <ul>
                            <li>amazingly  <b>beautiful views of the Zhinval water reservoir</b>;</li>
                            <li>a perfectly preserved historical object of the era of early feudalism – <b>Ananuri fortress;</b></li>
                            <li>the homeland of khinkali - the village of Pasanauri, where we will see two unique rivers, the White and the Black Aragvi, 
                                which merge into a common channel, but their light and dark waters do not mix at the same time;</li>
                            <li> Dizzying <b>views from the Gudaur viewpoint </b>will not leave anyone indifferent. 
                                It is very beautiful <b>in all seasons</b>! </li>  
                            <li>Next, we are expecting the pride of Georgia - the <b>ski resort of Gudauri</b> </li> 
                        </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (124, 3, '/images/excoursions/kazbek/excursion_in_kagbeg_1_500x300.jpg', 'виды с Гудаурской смотровой площадки', '', '<h5>День 2</h5>Отправимся в горы, город Гудаури. По дороге увидим:
                         <ul>
                            <li>удивительно <b>красивые виды на Жинвальское водохранилище</b>;</li>
                            <li>прекрасно сохранившийся исторический объект эпохи раннего феодализма – <b>крепость Ананури;</b></li>
                            <li>родину хинкали - поселок Пасанаури, где увидим две уникальные реки, Белую и Черную Арагви, 
                                 которые сливаются в общее русло, но их светлая и темная воды при этом не смешиваются.;</li>
                            <li> Головокружительные <b>виды с гудаурской смотровой площадки</b> равнодушным не оставят никого.
                                 Здесь очень красиво <b>в любое время года</b>! </li>  
                            <li>Далее нас ожидает гордость Грузии – <b>горнолыжный курорт Гудаури</b> </li> 
                        </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (124, 4, '/images/excoursions/kazbek/excursion_in_kagbeg_1_500x300.jpg', 'види з Гудаурской оглядового майданчика', '', '<h5> День 2 </h5> Вирушимо у гори, місто Гудаурі. Дорогою побачимо: <ul><li> надиво <b> гарні краєвиди Жінвальского водосховища </b>; </li> <li> гарно збережений історичний об\'єкт епохи раннього феодалізму - <b> фортеця Ананурі; </b> </li> <li> батьківщину хінкалі - селище Пасанаурі, де побачимо дві унікальні річки, Білу і Чорну Арагві, котрі зливаються у загальне русло, але їх світла й темна води при цьому не змішуються.;</li><li>Запаморочливі <b> види із гудаурского оглядового майданчика </b> байдужим не залишать нікого. Тут дуже гарно <b> у будь-яку пору року </b>!</li><li> Далі нас чекає гордість Грузії - <b> гірськолижний курорт Гудаурі </b></li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (125, 1, '/images/cards/masterklass_shashlik.png', 'мастер-класс по приготовлению шашлыка', '', '<h5>День 3</h5><p><b>День для самостоятельного проведения времени</b>. 
                             Отель находится в самом центре Тбилиси, поэтому Вам легко будет добраться до интересных мест: 
                             старый город, сувенирные лавки, винареи...</p>
                             <p><b>А вечером</b> вас ждет <b>кулинарный мастер-класс</b>. Он пройдет <b>в собственном маране</b> (винном погребе) <b>нашего отеля</b>. Вместе с нашим поваром мы приготовим Хачапури, шашлык по-грузински, испечем в печи свой собственный хлеб пури и обязательно разберемся в грузинских соусах и приправах.</p>
                             <p>Потом съедим всё это под душевные грузинские тосты с домашним вином 7-летней выдержки!</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (125, 2, '/images/cards/masterklass_shashlik.png', 'kebab cooking workshop', '', '<h5>Day 3</h5><p><b>Day for self-time</b>. 
                            The hotel is located in the very center of Tbilisi, so you can easily get to interesting places: the old town, souvenir shops, wineries ...</p>
                             <p><b>In the evening</b>  you will find a <b> culinary master class</b>. It will be held <b>in our own marana</b> (wine cellar) <b>of our hotel</b>. 
                             Together with our chef we will cook Khachapuri, shish kebab in Georgian, bake your own puri bread in the oven and be sure to understand Georgian sauces and seasonings.</p>
                             <p>Then we will eat all this under the hearty Georgian toasts with the home wine of 7 years old!</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (125, 3, '/images/cards/masterklass_shashlik.png', 'мастер-класс по приготовлению шашлыка', '', '<h5>День 3</h5><p><b>День для самостоятельного проведения времени</b>. 
                             Отель находится в самом центре Тбилиси, поэтому Вам легко будет добраться до интересных мест: 
                             старый город, сувенирные лавки, винареи...</p>
                             <p><b>А вечером</b> вас ждет <b>кулинарный мастер-класс</b>. Он пройдет <b>в собственном маране</b> (винном погребе) <b>нашего отеля</b>. Вместе с нашим поваром мы приготовим Хачапури, шашлык по-грузински, испечем в печи свой собственный хлеб пури и обязательно разберемся в грузинских соусах и приправах.</p>
                             <p>Потом съедим всё это под душевные грузинские тосты с домашним вином 7-летней выдержки!</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (125, 4, '/images/cards/masterklass_shashlik.png', 'майстер-клас з приготування шашлику', '', '<h5> День 3 </h5> <p> <b> День для самостійного проведення часу </b>.                              Готель знаходиться у самому центрі Тбілісі, тому легко буде дістатися до цікавих місць: старе місто, сувенірні лавки, винареї... </p>                              <p> <b> А ввечері </b> на вас чекає <b> кулінарний майстер-клас </b>. Він відбудеться <b> у власному Марані </b> (винному погребі) <b> нашого готелю </b>. Разом із нашим кухарем ми приготуємо Хачапурі, шашлик по-грузинськи, випечемо у печі свій власний хліб-пурі й обов\'язково ознайомимеся з грузинськими соусами та приправами. </p>                              <p>А далі, з\'їмо все це у супроводі  душевних грузинських тостів з домашнім вином семирічної витримки! </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (126, 1, '/images/cards/armenia_500x300.jpg', 'Ереван', 'Следующие два дня предстоит увлекательная  поездка  в Армению', '<h5>День 4</h5> Покидаем гостеприимную Грузию и отправляемся на границу с удивительной Арменией. 
                            <b>Прохождение границы</b> обычно занимает не очень много времени.
                            <p></p>
                            На заметку: для всей территории Армении характерно сложное строение рельефа, оно придает ее пейзажам своеобразное очарование.
                            90% территории Армении поднято выше 1000 м над уровнем моря, свыше 3000 км горных хребтов окрамляет её территорию.  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (126, 2, '/images/cards/armenia_500x300.jpg', 'Yerevan', 'The next two days to be an exciting trip to Armenia', '<h5>Day 4</h5> We leave hospitable Georgia and go to the border with the amazing Armenia.
                            <b>Passage of the border </b> usually does not take very long.
                            <p></p>
                            To the note: for the entire territory of Armenia is characterized by a complex structure of relief, it gives its landscapes a peculiar charm. 
                            90% of the territory of Armenia is raised above 1000 m above sea level, over 3000 km of mountain ranges stain its territory.  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (126, 3, '/images/cards/armenia_500x300.jpg', 'Ереван', 'Следующие два дня предстоит увлекательная  поездка  в Армению', '<h5>День 4</h5> Покидаем гостеприимную Грузию и отправляемся на границу с удивительной Арменией. 
                            <b>Прохождение границы</b> обычно занимает не очень много времени.
                            <p></p>
                            На заметку: для всей территории Армении характерно сложное строение рельефа, оно придает ее пейзажам своеобразное очарование.
                            90% территории Армении поднято выше 1000 м над уровнем моря, свыше 3000 км горных хребтов окрамляет её территорию.  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (126, 4, '/images/cards/armenia_500x300.jpg', 'Єреван', 'Наступні два дні має бути захоплююча поїздка до Вірменії', '<h5> День 4 </h5> Залишаємо гостинну Грузію та вирушаємо до кордону із дивовижною Вірменією.
<b> Проходження кордону </b> зазвичай займає не дуже багато часу.
<p> </p>
Цікаво: для усієї території Вірменії характерна складна будова рельєфу, воно надає її пейзажам своєрідну чарівність. 90% території Вірменії знаходиться вище 1000 м над рівнем моря, понад 3000 км гірських хребтів обгортує її територію.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (127, 1, '/images/excoursions/armenia/ex_armenia_1_500x300.jpg', 'Озеро Севан', '', 'Затем, после продолжительного переезда <b>остановимся в курортном городе Дилижан</b>, где есть всё, что нужно туристу: 
                          живописные улочки, прекрасная природа вокруг с горами, лесами и озёрами и исторические достопримечательности, которыми можно повосхищаться. 
                          Поэтому прогулка по этому городу будет очень приятная.
                          <p></p>
                            Далее, <b>доберемся до высокогорном озера Севан</b>, где полюбуемся прозрачными водами крупнейшего пресноводного озера в мире. 
                            У вас будет <b>возможность попробовать шашлык из знаменитого севанского сига или раков</b>.
                           <p></p>
                            К вечеру приедем в Ереван, поселение в отель.
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (127, 2, '/images/excoursions/armenia/ex_armenia_1_500x300.jpg', 'Lake Sevan', '', 'Then, after a long journey, we <b>will stop in the resort town of Dilijan</b>,  where there is everything that the tourist needs: 
                            picturesque streets, beautiful nature around with mountains, forests and lakes and historical sights that you can admire. 
                            Therefore, a walk around this city will be very pleasant.
                          <p></p>
                            Next, we <b>will get to the high-mountainous Lake Sevan</b>, where we will admire the transparent waters of the largest freshwater lake in the world. 
                            You will have the  <b>opportunity to taste a shish kebab from the famous Sevan whitefish or crayfish</b>.
                           <p></p>
                            In the evening we will arrive in Yerevan, settlement in the hotel.
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (127, 3, '/images/excoursions/armenia/ex_armenia_1_500x300.jpg', 'Озеро Севан', '', 'Затем, после продолжительного переезда <b>остановимся в курортном городе Дилижан</b>, где есть всё, что нужно туристу: 
                          живописные улочки, прекрасная природа вокруг с горами, лесами и озёрами и исторические достопримечательности, которыми можно повосхищаться. 
                          Поэтому прогулка по этому городу будет очень приятная.
                          <p></p>
                            Далее, <b>доберемся до высокогорном озера Севан</b>, где полюбуемся прозрачными водами крупнейшего пресноводного озера в мире. 
                            У вас будет <b>возможность попробовать шашлык из знаменитого севанского сига или раков</b>.
                           <p></p>
                            К вечеру приедем в Ереван, поселение в отель.
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (127, 4, '/images/excoursions/armenia/ex_armenia_1_500x300.jpg', 'озеро Севан', '', 'Потім, після тривалого переїзду <b> зупинимося в курортному місті Діліжан </b>, де є усе, що потрібно туристу: мальовничі вулички, гарна природа навколо із горами, лісами й озерами та історичні пам\'ятки, якими можна захоплюватись. Тому прогулянка цим містом буде дуже приємна. <p> </p>                             Далі, <b> доберемося до високогірного озера Севан </b>, де можна милуватися прозорими водами найбільшого прісноводного озера у світі. У вас буде <b> можливість спробувати шашлик із відомого Севанського сига або раків.</b> <p></p>                             Наприкінці дня приїдемо до Єревану, заселення до готелю.                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (128, 1, '/images/excoursions/armenia/ex_armenia_3_500x300.jpg', 'Каскад в Ереване', '', '<h5>День 5</h5> 
                            <b>Знакомство с Ереваном</b>. Он известен как город роз и привлекает путешественников своими великолепными пейзажами. 
                            Обзорная <b>экскурсия</b> по городу <b>начнется с</b> посещения <b>Каскада</b> - это мега-лестница высотой 500 метров и шириной 50 метров.
                            Отсюда вы можете увидеть оперу, гору Арарат, Ереванское лебединое озеро, площадь Республики и улицу Абовяна, 
                            по которой мы потом обязательно пройдемся. 
                            Если наша поездка будет в выходной день, мы <b>остановимся на Vernissage</b> - известном <b>рынке сувениров и антиквариата</b>.
                            <p></p>
                            Продолжение экскурсии в <b>Кафедральный собор Эчмиадзин</b>, который является резиденцией главы Армянской Апостольской церкви.
                            <p></p>
                            Возвращение в Тбилиси  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (128, 2, '/images/excoursions/armenia/ex_armenia_3_500x300.jpg', 'Cascade in Yerevan', '', '<h5>Day 5</h5> 
                            <b>Acquaintance with Yerevan</b>. It is known as a city of roses and attracts travelers with its magnificent scenery. 
                            Sightseeing <b>tour  </b> of the city <b>begins with</b> a visit  <b>Cascade </b> - is a mega-ladder 500 meters and a width of 50 meters. 
                            From here you can see the opera, Mount Ararat, the Yerevan swan lake, the Republic Square and Abovyan Street, which we will definitely go through later. 
                            If our trip is on a day off, we will  <b>stop at Vernissage</b> - a well-known  <b>market of souvenirs and antiques</b>.
                            <p></p>
                            Continuation of the excursion to <b>the Cathedral of Etchmiadzin</b>, which is the residence of the head of the Armenian Apostolic Church.
                            <p></p>
                            Return to Tbilisi  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (128, 3, '/images/excoursions/armenia/ex_armenia_3_500x300.jpg', 'Каскад в Ереване', '', '<h5>День 5</h5> 
                            <b>Знакомство с Ереваном</b>. Он известен как город роз и привлекает путешественников своими великолепными пейзажами. 
                            Обзорная <b>экскурсия</b> по городу <b>начнется с</b> посещения <b>Каскада</b> - это мега-лестница высотой 500 метров и шириной 50 метров.
                            Отсюда вы можете увидеть оперу, гору Арарат, Ереванское лебединое озеро, площадь Республики и улицу Абовяна, 
                            по которой мы потом обязательно пройдемся. 
                            Если наша поездка будет в выходной день, мы <b>остановимся на Vernissage</b> - известном <b>рынке сувениров и антиквариата</b>.
                            <p></p>
                            Продолжение экскурсии в <b>Кафедральный собор Эчмиадзин</b>, который является резиденцией главы Армянской Апостольской церкви.
                            <p></p>
                            Возвращение в Тбилиси  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (128, 4, '/images/excoursions/armenia/ex_armenia_3_500x300.jpg', 'Каскад в Єревані', '', '<h5> День 5 </h5> <b> Знайомство з Єреваном </b>. Він відомий як місто троянд та приваблює мандрівників своїми чудовими пейзажами. Оглядова <b> екскурсія </b> містом <b> почнеться із </b> відвідування <b> Каскаду </b> - це є мега-сходи заввишки 500 метрів й шириною 50 метрів. Звідси ви можете побачити оперу, гору Арарат, Єреванське лебедине озеро, площу Республіки та вулицю Абовяна, якою ми потім обов\'язково пройдемося. Якщо наша мандрівка буде у вихідний день, ми <b> зупинимося на Vernissage </b> - відомому <b> ринку сувенірів й антикваріату </b>. <p> </p>
 Продовження екскурсії e <b> Кафедральному соборі Ечміадзін </b>, який є резиденцією голови Вірменської Апостольської церкви. <p> </p>
Повернення до Тбілісі');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (129, 1, '/images/tours/tour_6days_armenia_2_500x300.jpg', 'Грузия любит тебя!', '', '<h5>День 6</h5> Прощальные прогулки по Тбилиси, прощальные впечатления и прощальные эмоции, ну и, конечно, время для составления планов, где еще в хочется побывать в Грузии во время следующего приезда.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (129, 2, '/images/tours/tour_6days_armenia_2_500x300.jpg', 'Georgia loves you!', '', '<h5>Day 6</h5> Farewell walks in Tbilisi, farewell impressions and farewell emotions, and, of course, time for drawing up plans, where you still want to visit Georgia during your next visit.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (129, 3, '/images/tours/tour_6days_armenia_2_500x300.jpg', 'Грузия любит тебя!', '', '<h5>День 6</h5> Прощальные прогулки по Тбилиси, прощальные впечатления и прощальные эмоции, ну и, конечно, время для составления планов, где еще в хочется побывать в Грузии во время следующего приезда.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (129, 4, '/images/tours/tour_6days_armenia_2_500x300.jpg', 'Грузія кохає тебе!', '', '<h5> День 6 </h5> Прощавальні прогулянки по Тбілісі, прощавальні враження й проващальні емоції, ну і, звичайно, час для складання планів, де ж ще схочеться побувати у Грузії під час наступного приїзду.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (130, 1, '/images/tours/tour_5days_tbilisi_Kazbek_1_500_300.jpg', 'Старый Тбилиси', '', '<h5>День 1</h5>Время для настоящего знакомства с Тбилиси. Вы увидите:
                         <ul>
                            <li><b>Черепашье озеро</b> - очень красивое и романтическое место;</li>
                            <li><b>Спуск и подъём на канатных дорогах</b>, во время которых, даже те кто боится высоты, забывают об этом и делают нереально красивые фото;</li>
                            <li><b>Главный кафедральный собор</b> Грузии - Троица и церковь VI века - Метехи;</li>
                            <li>Парк Рике, мост Мира, площадь Эрекле II, театр Габриаде, улица Шарден;</li>
                            <li>Мост Метехи и подъем на канатной дороге на <b>крепость Нарикала</b>;</li>
                            <li>Прогулка по Ботаническому саду;</li>
                            <li>Подъём на <b>самую высокую точку Тбилиси - фуникулер</b> Мтацминда. Там вы сможете увидеть весь город с колеса обозрения и посетить парк аттракционов.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (130, 2, '/images/tours/tour_5days_tbilisi_Kazbek_1_500_300.jpg', 'Old city Tbilisi', '', '<h5>Day 1</h5>It\'s time for a real acquaintance with Tbilisi. You will see:
                         <ul>
                            <li><b>Turtle Lake</b> is a very beautiful and romantic place;</li>
                            <li><b>Descent and ascent on cable cars</b>, during which, even those who are afraid of heights, forget about it and make unreal beautiful photos;</li>
                            <li><b>The main cathedral of</b> Georgia - the Trinity and the church of the VI century - Metekhi;</li>
                            <li>Ricke Park, Peace Bridge, Erekle II Square, Gabriade Theater, Chardin Street</li>
                            <li>Metekhi Bridge and the ascent on the cable car to <b>Narikala Fortress</b>;</li>
                            <li>Walk on the Botanical Gardens;</li>
                            <li>The ascent to <b>the highest point of Tbilisi is the</b> Mtatsminda <b>funicular</b>. There you can see the whole city from the Ferris wheel and visit the amusement park..</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (130, 3, '/images/tours/tour_5days_tbilisi_Kazbek_1_500_300.jpg', 'Старый Тбилиси', '', '<h5>День 1</h5>Время для настоящего знакомства с Тбилиси. Вы увидите:
                         <ul>
                            <li><b>Черепашье озеро</b> - очень красивое и романтическое место;</li>
                            <li><b>Спуск и подъём на канатных дорогах</b>, во время которых, даже те кто боится высоты, забывают об этом и делают нереально красивые фото;</li>
                            <li><b>Главный кафедральный собор</b> Грузии - Троица и церковь VI века - Метехи;</li>
                            <li>Парк Рике, мост Мира, площадь Эрекле II, театр Габриаде, улица Шарден;</li>
                            <li>Мост Метехи и подъем на канатной дороге на <b>крепость Нарикала</b>;</li>
                            <li>Прогулка по Ботаническому саду;</li>
                            <li>Подъём на <b>самую высокую точку Тбилиси - фуникулер</b> Мтацминда. Там вы сможете увидеть весь город с колеса обозрения и посетить парк аттракционов.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (130, 4, '/images/tours/tour_5days_tbilisi_Kazbek_1_500_300.jpg', 'Старе місто Тбілісі', '', '<h5> День 1 </h5> Час для справжнього знайомства з Тбілісі. Ви побачите: <ul> <li> <b> Черепахове озеро </b> - дуже красиве і романтичне місце; </li> <li> <b> Спуск і підйом канатними дорогами </b>, під час яких, навіть ті хто бояться висоти, забувають про це і роблять нереально красиві фото; </li> <li> <b> Головний кафедральний собор </b> Грузії - Трійця і церква VI століття - Метехі; </li> <li> Парк Ріці, міст Миру, площа Ереклє II, театр Габріаде, вулиця Шарден; </li> <li> міст Метехі і підйом на канатній дорозі до <b> фортеці Нарікала </b>; </li> <li> Прогулянка по Ботанічному саду; </li> <li> Підйом на <b> найвищу точку Тбілісі - фунікулер </b> Мтацминда. Там ви зможете побачити все місто з оглядового колеса і відвідати парк атракціонів. </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (131, 1, '/images/tours/tour_5days_tbilisi_Kazbek_2_500_300.jpg', 'Монастырь Шио-Мгвиме', '', '<h5> День 2 </h5> Экскурсия в грод Мцхета - древняя столица Грузии. Скромная древняя архитектура располагает настроиться на то настроение, с которым люди должны приходить в храм. 
                        <ul>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., также его называют "Вторым Иерусалимом", потому что там находится много святых и культовых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> - духовный центр христианской Грузии и самое большое из древних сооружений страны;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (131, 2, '/images/tours/tour_5days_tbilisi_Kazbek_2_500_300.jpg', 'Shio-Mgvime Monastery', '', '<h5>Day 1</h5> Tour to Mtskheta - old capital of Georgia. Modest ancient architecture has a mood for the mood with which people must come to the temple. 
                        <ul>
                            <li><b>city ​​- Mtskheta</b> - the ancient city of Georgia, founded in the V century BC, also called "Second Jerusalem", because there are many holy and cult places there;</li>
                            <li><b>Svetitskhoveli Cathedral</b> - is the spiritual center of Christian Georgia and the largest of the country\'s ancient buildings;</li>
                            <li>the functioning <b>female monastery of Samtavro</b>, built on the site where St. Nino lived;</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (131, 3, '/images/tours/tour_5days_tbilisi_Kazbek_2_500_300.jpg', 'Монастырь Шио-Мгвиме', '', '<h5> День 2 </h5>  Экскурсия в грод Мцхета - древняя столица Грузии. Скромная древняя архитектура располагает настроиться на то настроение, с которым люди должны приходить в храм. 
                        <ul>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., также его называют "Вторым Иерусалимом", потому что там находится много святых и культовых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> - духовный центр христианской Грузии и самое большое из древних сооружений страны;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (131, 4, '/images/tours/tour_5days_tbilisi_Kazbek_2_500_300.jpg', 'Монастирь Шио-Мгвіме', '', ' <h5> День 2 </h5>  Екскурсія до міста Мцхета - давня столиця Грузиї. Скромна давня архітектура має налаштувати вас на той настрій, з яким людина має приходити до храму. <ul><li> <b> місто - Мцхета </b> - найдавніше місто Грузії, засноване у V столітті до н.е., також його називають "Другим Єрусалимом", бо там знаходиться багато святих і культових місць; </li><li> <b> кафедральний собор Светіцховелі </b> - духовний центр християнської Грузії і найбільше з стародавніх споруд країни; </li><li> діючий <b> жіночий монастир Самтавро </b>, що побудований на місці, де жила свята Ніно; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (132, 1, '/images/tours/tour_5days_tbilisi_Kazbek_3_500_300.jpg', 'Вид со смотровой площадки Гудаури', ' ', ' <h5> День 3 </h5>  Едем в горы!
<ul>
                            <li><b>Жинвальское водохранилище</b> и историческая <b>крепость Ананури</b> эпохи раннего феодализма;</li>
                            <li>Место, где две реки <b>Белая и Чёрная Арагви сливаются в одно русло</b>, при этом их воды не смешиваются;</li>
                            <li><b>Горнолыжный курорт</b> Грузии - <b>Гудаури</b>, 2000 метров над уровнем моря. Виды со смотровой площадки вы никогда не забудете;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (132, 2, '/images/tours/tour_5days_tbilisi_Kazbek_3_500_300.jpg', 'View from the observation deck Gudauri', ' ', '<h5> Day 3 </h5>  Let`s go to mountains!
<ul>
                            <li><b>Zhinval water reservoir</b> and the historical <b>fortress Ananuri</b> of the early feudal period;</li>
                            <li>The place where the two rivers <b>White and Black Aragvi merge into one channel</b>, while their waters do not mix;</li>
                            <li><b>Mountain ski resort of</b> Georgia  - <b>Gudauri </b>, 2000 meters above sea level. Views from the observation platform you will never forget;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (132, 3, '/images/tours/tour_5days_tbilisi_Kazbek_3_500_300.jpg', 'נוף של ההר מסיפון התצפית בגודאורי', ' ', ' <h5> День 3 </h5>  Едем в горы!
<ul>  <li><b>Жинвальское водохранилище</b> и историческая <b>крепость Ананури</b> эпохи раннего феодализма;</li>
                            <li>Место, где две реки <b>Белая и Чёрная Арагви сливаются в одно русло</b>, при этом их воды не смешиваются;</li>
                            <li><b>Горнолыжный курорт</b> Грузии - <b>Гудаури</b>, 2000 метров над уровнем моря. Виды со смотровой площадки вы никогда не забудете;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (132, 4, '/images/tours/tour_5days_tbilisi_Kazbek_3_500_300.jpg', 'Вид з оглядового майданчика Гудаурі', ' ', ' <h5> День 3 </h5>  Їдемо у гори! <ul><li> <b> Жінвальского водосховище </b> та історична <b> фортеця Ананурі </b> епохи раннього феодалізму; </li><li> Місце, де дві річки <b> Біла і Чорна Арагві зливаються в одне русло </b>, при цьому їх води не змішуються; </li><li> <b> Гірськолижний курорт </b> Грузії - <b> Гудаурі </b>, 2000 метрів над рівнем моря. Види з його оглядового майданчика ви не забудете ніколи; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (133, 1, '/images/tours/tour_5days_tbilisi_Kazbek_5_500_300.jpg', 'Кулинарный мастер-класс в нашем отеле Zemeli Guest House', '', '<h5>День 4</h5> <p><b>День для самостоятельного проведения времени</b>. 
                             Отель находится в самом центре Тбилиси, поэтому Вам легко будет добраться до интересных мест: 
                             старый город, сувенирные лавки, винареи...</p>
                             <p><b>А вечером</b> вас ждет <b>кулинарный мастер-класс</b>. Он пройдет <b>в собственном маране</b> (винном погребе) <b>нашего отеля</b>. Вместе с нашим поваром мы приготовим Хачапури, шашлык по-грузински, испечем в печи свой собственный хлеб пури и обязательно разберемся в грузинских соусах и приправах. Потом съедим всё это под душевные грузинские тосты с домашним вином 7-летней выдержки!</p>  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (133, 2, '/images/tours/tour_5days_tbilisi_Kazbek_5_500_300.jpg', 'Maran in our hotel Zemeli Guest House', '', '<h5>Day 4</h5> <p><b>Day for self-time</b>. 
                             The hotel is located in the very center of Tbilisi, so you can easily get to interesting places: the old town, souvenir shops, wineries ...</p>
                             <p><b>In the evening,</b> you will find a <b>culinary master class</b>. It will be held <b>in our own marana </b> (wine cellar) <b>of our hotel</b>. 
                             Together with our chef we will cook Khachapuri, shish kebab in Georgian, bake your own puri bread in the oven and be sure to understand Georgian sauces and seasonings.</p>
                             <p>Then we will eat all this under the hearty Georgian toasts with the home wine of 7 years old!</p>  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (133, 3, '/images/tours/tour_5days_tbilisi_Kazbek_5_500_300.jpg', 'Maran in our hotel Zemeli Guest House', '', '<h5>День 4</h5> <p><b>День для самостоятельного проведения времени</b>. 
                             Отель находится в самом центре Тбилиси, поэтому Вам легко будет добраться до интересных мест: 
                             старый город, сувенирные лавки, винареи...</p>
                             <p><b>А вечером</b> вас ждет <b>кулинарный мастер-класс</b>. Он пройдет <b>в собственном маране</b> (винном погребе) <b>нашего отеля</b>. Вместе с нашим поваром мы приготовим Хачапури, шашлык по-грузински, испечем в печи свой собственный хлеб пури и обязательно разберемся в грузинских соусах и приправах. Потом съедим всё это под душевные грузинские тосты с домашним вином 7-летней выдержки!</p>  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (133, 4, '/images/tours/tour_5days_tbilisi_Kazbek_5_500_300.jpg', 'Кулінарний майстер-клас  в нашому готелі Zemeli Guest House', '', '<h5> День 4 </h5> Це <b> день для самостійного проведення часу </b>. <p> Готель знаходиться в самому центрі Тбілісі, тому легко буде дістатися до цікавих місць: старе місто, сувенірні лавки, винареї ... </p> <p><b>  А ввечері  </b> на вас чекає <b> кулінарний майстер-клас  </b>. Він відбудеться <b> у власному марані </b> (винному погребі) <b> нашого готелю </b>. Разом з нашим кухарем ми приготуємо Хачапурі, шашлик по-грузинськи, спечемо в печі свій власний хліб пурі й обов\'язково ознайомимося з грузинськими соусами та приправами. Потім з\'їмо все у супроводі душевних грузинських тостів з домашнім вином семирічної витримки! </p> ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (134, 1, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'прогулки по Тбилиси', '', '<h5>День 5</h5> Прощальные прогулки по Тбилиси, прощальные впечатления и прощальные эмоции, ну и, конечно, время для составления планов, где еще в хочется побывать в Грузии во время следующего приезда.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (134, 2, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'walks in Tbilisi', '', '<h5>Day 5</h5> Farewell walks in Tbilisi, farewell impressions and farewell emotions, and, of course, time for drawing up plans, where you still want to visit Georgia during your next visit.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (134, 3, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'walks in Tbilisi', '', '<h5>День 5</h5> Прощальные прогулки по Тбилиси, прощальные впечатления и прощальные эмоции, ну и, конечно, время для составления планов, где еще в хочется побывать в Грузии во время следующего приезда.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (134, 4, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'прогулянки по Тбілісі', '', '<h5> День 5 </h5> Останні прогулянки по Тбілісі, прощавальні враження і емоції, ну і, звичайно, час для складання планів на наступний приїзд до Грузії.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (135, 1, '/images/tours/tour_5days_gudauri_2_500x300.jpg', 'Снег в Тбилиси - это редкость', 'Как проведём эти 6 дней в Грузии?', '<h5>День 1</h5> Наш веселый и дружелюбный гид познакомит Вас со столицей Грузии - <b>Тбилиси</b>. 
                         Это будет <b>пешеходная прогулка по центральным улицам</b> города. 
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (135, 2, '/images/tours/tour_5days_gudauri_2_500x300.jpg', 'Snow in Tbilisi is a rarity', 'How to spend these 6 days in Georgia?', '<h5>Day 1</h5> Our cheerful and friendly guide will introduce you to the capital of Georgia  - <b>Tbilisi </b>. 
                         It will be a <b>pedestrian walk along the central streets </b> of the city.An excursion at the end of the road will take you to a famous place - the  - <b>Tbilisi sulfur baths</b>, 
                         where  <b>you can relax and rest </b> after a long journey, dip <b>into the pool with hot sulfur water directly from the spring</b>, 
                         drink herbal tea or taste real Georgian wine. 
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (135, 3, '/images/tours/tour_5days_gudauri_2_500x300.jpg', 'Снег в Тбилиси - это редкость', 'Как проведём эти 6 дней в Грузии?', '<h5>День 1</h5> Наш веселый и дружелюбный гид познакомит Вас со столицей Грузии - <b>Тбилиси</b>. 
                         Это будет <b>пешеходная прогулка по центральным улицам</b> города. Экскурсия в конце пути приведет Вас к известному месту - <b>тбилисские серные бани</b>, 
                         где <b>вы сможете расслабиться и отдохнуть</b> после долгой дороги, окунуться <b>в бассейн с горячей серной водой прямо из источника</b>, 
                         выпить травяной чай или отведать настоящее грузинское вино. 
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (135, 4, '/images/tours/tour_5days_gudauri_2_500x300.jpg', 'Сніг в Тбілісі - це рідкість', 'Як проведемо ці 6 днів у Грузії?', '<h5> День 1 </h5> Наш веселий та доброзичливий гід познайомить Вас зі столицею Грузії - <b> Тбілісі </b>.Це буде <b> пішохідна прогулянка по центральних вулицях </b> міста. Екскурсія на прикінці шляху призведе Вас до відомого місця - <b> тбіліські сірчані лазні </b>, де <b> ви зможете розслабитися й відпочити </b> після довгої дороги, зануритися <b> в басейн з гарячою сірчаною водою прямо із джерела </b>, випити трав\'яний чай або покуштувати справжнє грузинське вино.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (136, 1, '/images/tours/tour_5days_gudauri_1_500x300.jpg', 'Смотровая площадка, Гудаури', '', '<h5>День 2</h5>Отправляемся в Гудаури. Вы увидите:
                         <ul>
                            <li>удивительно <b>красивые виды на Жинвальское водохранилище</b>;</li>
                            <li>прекрасно сохранившийся исторический объект эпохи раннего феодализма – <b>крепость Ананури;</b></li>
                            <li>поселок Пасанаури, где увидим <b>две уникальные реки</b>, Белую и Черную Арагви, 
                                 которые <b>сливаются в общее русло</b>, <b>но их светлая и темная воды при этом не смешиваются</b>. 
                                 Зимой их воды не замерзают;</li>
                            <li>катание на лыжах в Гудаури</li>
                         </ul>
                         Ночь в Пасанаури (недалеко от Гудаури)
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (136, 2, '/images/tours/tour_5days_gudauri_1_500x300.jpg', 'Observation deck, Gudauri', '', '<h5>Day 2</h5>We leave for Gudauri. You will see:
                         <ul>
                            <li>amazingly <b>beautiful views of the Zhinval water reservoir</b>;</li>
                            <li>a perfectly preserved historical object of the era of early feudalism – <b>Ananuri fortress;</b></li>
                            <li>Pasanauri village, where we will see <b>two unique rivers</b>,  the White and the Black Aragvi, 
                                which <b> merge into a common channel , but their light and dark waters do not mix</b>. 
                                 In winter their waters do not freeze;</li>
                            <li>skiing in Gudauri</li>
                         </ul>
                         Overnight in Psanauri (near Gudauri)
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (136, 3, '/images/tours/tour_5days_gudauri_1_500x300.jpg', 'Смотровая площадка, Гудаури', '', '<h5>День 2</h5>Отправляемся в Гудаури. Вы увидите:
                         <ul>
                            <li>удивительно <b>красивые виды на Жинвальское водохранилище</b>;</li>
                            <li>прекрасно сохранившийся исторический объект эпохи раннего феодализма – <b>крепость Ананури;</b></li>
                            <li>поселок Пасанаури, где увидим <b>две уникальные реки</b>, Белую и Черную Арагви, 
                                 которые <b>сливаются в общее русло</b>, <b>но их светлая и темная воды при этом не смешиваются</b>. 
                                 Зимой их воды не замерзают;</li>
                            <li>катание на лыжах в Гудаури</li>
                         </ul>
                        Ночь в Пасанаури (недалеко от Гудаури)
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (136, 4, '/images/tours/tour_5days_gudauri_1_500x300.jpg', 'Оглядовий майданчик, Гудаурі', '', '<h5> День 2 </h5> Вирушаємо до Гудаурі. Ви побачите: <ul><li> дивно <b> гарні краєвиди на Жінвальского водосховище </b>; </li> <li> чудово збережений історичний об\'єкт епохи раннього феодалізму - <b> фортеця Ананурі; </b> </li><li> селище Пасанаурі, де побачимо <b> дві унікальні річки </b>, Білу та Чорну Арагві, які <b> зливаються в загальне русло </b>, <b> але їх світла і темна води при цьому не змішуються </b>.Узимку їх води не замерзають; </li><li> катання на лижах в Гудаурі </li></ul> Ніч у Пасанаурі (недалеко від Гудаурі)');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (137, 1, '/images/excoursions/ex_gudauri_3_500x300.jpg', 'Полет на пароплане в Гудаури', '', '<h5>День 3</h5>Весь день проведем на горнолыжном курорте. Наслаждайтесь зимними видами на горы и отдохните всей душой.
                        <ul>  
                            <li>полёт на пароплане;</li>
                            <li>катание на лыжах и сноубордах;</li>
                            <li> <b>Для начинающих</b> лыжников предусмотрены <b>услуги инструктора</b></li>
                        </ul>
                          <p>Возвращение в Тбилиси.</p>
                          
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (137, 2, '/images/excoursions/ex_gudauri_3_500x300.jpg', 'Flight on a paroplane in Gudauri', '', '<h5>Day 3</h5>We will spend the whole day at the ski resort. Enjoy winter views of the mountains and relax with all your heart.
                        <ul>  
                            <li>flight on a steamer;</li>
                            <li>skiing and snowboarding;</li>
                            <li> <b>Beginners are</b> provided with the <b>services of an instructor</b></li>
                        </ul>
                          <p>Return to Tbilisi.</p>
                          
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (137, 3, '/images/excoursions/ex_gudauri_3_500x300.jpg', 'Полет на пароплане в Гудаури', '', '<h5>День 3</h5>Весь день проведем на горнолыжном курорте. Наслаждайтесь зимними видами на горы и отдохните всей душой.
                        <ul>  
                            <li>полёт на пароплане;</li>
                            <li>катание на лыжах и сноубордах;</li>
                            <li> <b>Для начинающих</b> лыжников предусмотрены <b>услуги инструктора</b></li>
                        </ul>
                          <p>Возвращение в Тбилиси.</p>
                          
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (137, 4, '/images/excoursions/ex_gudauri_3_500x300.jpg', 'Політ на пароплані в Гудаурі', '', '<h5> День 3 </h5> Цілий день проведемо на гірськолижному курорті. Насолоджуйтесь зимовими видами на гори і відпочиньте всією душею. <ul><li> політ на пароплані; </li><li> катання на лижах і сноубордах; </li><li> <b> Для початківців </b> лижників передбачені <b> послуги інструктора </b> </li></ul><p> Повернення до Тбілісі. </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (138, 1, '/images/tours/tour_5days_gudauri_3_500x300.jpg', 'Яркие тбилисские домики в снегу', '', '<h5>День 4</h5> <p>День для близкого знакомства с зимним Тбилиси. Вы увидите:</p> 
                         <ul>
                            <li><b>Черепашье озеро</b> - очень красивое и романтическое место;</li>
                            <li><b>Спуск и подъём на канатных дорогах</b>, во время которых, даже те кто боится высоты, забывают об этом и делают нереально красивые фото;</li>
                            <li><b>Главный кафедральный собор</b> Грузии - Троица и церковь VI века - Метехи;</li>
                            <li>Парк Рике, мост Мира, площадь Эрекле II, театр Габриаде, улица Шарден;</li>
                            <li>Мост Метехи и подъем на канатной дороге на <b>крепость Нарикала</b>;</li>
                            <li>Прогулка по Ботаническому саду;</li>
                            <li>Подъём на <b>самую высокую точку Тбилиси - фуникулер</b> Мтацминда. Там вы сможете увидеть весь город с колеса обозрения и посетить парк аттракционов.</li>
                           </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (138, 2, '/images/tours/tour_5days_gudauri_3_500x300.jpg', 'Bright Tbilisi houses in the snow', '', '<h5>Day 4</h5> <p>Day for a close acquaintance with the winter Tbilisi. You will see:</p> 
                         <ul>
                            <li><b>Turtle Lake</b> - is a very beautiful and romantic place;</li>
                            <li><b>Descent and ascent on cable cars</b>, during which, even those who are afraid of heights, forget about it and make unreal beautiful photos;</li>
                            <li><b>The main cathedral</b> of Georgia - the Trinity and the church of the VI century - Metekhi;</li>
                            <li>Ricke Park, Peace Bridge, Erekle II Square, Gabriade Theater, Chardin Street;</li>
                            <li>Metekhi Bridge and the ascent on the cable car to <b>Narikala Fortress</b>;</li>
                            <li>Walk on the Botanical Gardens;</li>
                            <li>The ascent to <b>the highest point of Tbilisi is the</b> Mtatsminda <b> funicular</b>>. There you can see the whole city from the Ferris wheel and visit the amusement park.</li>
                           </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (138, 3, '/images/tours/tour_5days_gudauri_3_500x300.jpg', 'Яркие тбилисские домики в снегу', '', '<h5>День 4</h5> <p>День для близкого знакомства с зимним Тбилиси. Вы увидите:</p>
                         <ul>
                            <li><b>Черепашье озеро</b> - очень красивое и романтическое место;</li>
                            <li><b>Спуск и подъём на канатных дорогах</b>, во время которых, даже те кто боится высоты, забывают об этом и делают нереально красивые фото;</li>
                            <li><b>Главный кафедральный собор</b> Грузии - Троица и церковь VI века - Метехи;</li>
                            <li>Парк Рике, мост Мира, площадь Эрекле II, театр Габриаде, улица Шарден;</li>
                            <li>Мост Метехи и подъем на канатной дороге на <b>крепость Нарикала</b>;</li>
                            <li>Прогулка по Ботаническому саду;</li>
                            <li>Подъём на <b>самую высокую точку Тбилиси - фуникулер</b> Мтацминда. Там вы сможете увидеть весь город с колеса обозрения и посетить парк аттракционов.</li>
                           </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (138, 4, '/images/tours/tour_5days_gudauri_3_500x300.jpg', 'Яскраві тбіліські будиночки в снігу', '', '<h5> День 4 </h5> <p> День для близького знайомства із зимовим Тбілісі. Ви побачите: </p><ul><li><b> Черепашине озеро </b> - дуже гарне, романтичне місце; </li><li> <b> Спуск та підйом по канатниій дорозі </b>, під час яких, навіть ті хто боїться висоти, забувають про це і роблять нереально красиві фото; </li><li> <b> Головний кафедральний собор </b> Грузії - Трійця і церква VI століття - Метехі; </li><li> Парк Ріке, міст Миру, площа Ереклє II, театр Габріадзе, вулиця Шарден; </li> <li> Міст Метехі і підйом по канатній дорозі на <b> фортецю Нарікала </b>; </li> <li> Прогулянка по Ботанічному саду; </li> <li> Підйом на <b> найвищу точку Тбілісі - фунікулер </b> Мтацминда. Там ви зможете побачити усе місто з колеса огляду і відвідати парк атракціонів. </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (139, 1, '/images/tours/tour_8days_master_klass500x300.jpg', 'Хачапури, хинкали, шашлык по-грузински - ждут Вас!', '', '    <p><b>А вечером</b> вас ждет <b>кулинарный мастер-класс</b>. Он пройдет <b>в собственном маране</b> (винном погребе) <b>нашего отеля</b>. Вместе с нашим поваром мы приготовим Хачапури, шашлык по-грузински, испечем в печи свой собственный хлеб пури и обязательно разберемся в грузинских соусах и приправах.</p>
                             <p>Потом съедим всё это под душевные грузинские тосты с домашним вином 7-летней выдержки!</p>  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (139, 2, '/images/tours/tour_8days_master_klass500x300.jpg', 'Khachapuri, khinkali, shish kebab in Georgian are waiting for you!', '', '    <p><b>In the evening</b> you will find a <b>culinary master class</b>.  It will be held <b>in our own marana</b> (wine cellarе) <b>of our hotel</b>. 
                            Together with our chef we will cook Khachapuri, shish kebab in Georgian, bake your own puri bread in the oven and be sure to understand Georgian sauces and seasonings.
                             <p>Then we will eat all this under the hearty Georgian toasts with the home wine of 7 years old!</p>  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (139, 3, '/images/tours/tour_8days_master_klass500x300.jpg', 'Хачапури, хинкали, шашлык по-грузински - ждут Вас!', '', '    <p><b>А вечером</b> вас ждет <b>кулинарный мастер-класс</b>. Он пройдет <b>в собственном маране</b> (винном погребе) <b>нашего отеля</b>. Вместе с нашим поваром мы приготовим Хачапури, шашлык по-грузински, испечем в печи свой собственный хлеб пури и обязательно разберемся в грузинских соусах и приправах.</p>
                             <p>Потом съедим всё это под душевные грузинские тосты с домашним вином 7-летней выдержки!</p>  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (139, 4, '/images/tours/tour_8days_master_klass500x300.jpg', 'Хачапурі, хінкалі, шашлик по-грузинськи - чекають на Вас!', '', '<p><b> А ввечері </b> на вас чекає <b> кулінарний майстер-клас </b>. Він відбуватиметься <b> у власному Марані </b> (винному погребі) <b> нашого готелю </b>. Разом із нашим кухарем ми приготуємо Хачапурі, шашлик по-грузинськи, випечемо у печі свій власний хліб-пурі й обов\'язково розберемося у грузинських соусах та приправах. </p>
   <p> Потім з\'їмо усе це під душевні грузинські тости із домашнім вином 7-річної витримки! </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (140, 1, '/images/tours/tour_8days_bani500x300.jpg', 'Район серных бань, Тбилиси', '', '<h5>День 5</h5> Свободный день для прогулок по городу, шопинга, посещения сувенирных лавок, приобретения душистых специй, украшений и сувениров.
                        А вечером вас ожидает приятное времяпровождение в известных тбилисских серных банях, где <b>вы сможете расслабиться и отдохнуть</b>, окунуться <b>в бассейн с горячей серной водой прямо из источника</b>, 
                         выпить травяной чай или отведать настоящее грузинское вино.     
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (140, 2, '/images/tours/tour_8days_bani500x300.jpg', 'Territory of ​​sulfur bathes, Tbilisi', '', '<h5>Day 5</h5> Free day for exploring the city, shopping, visiting souvenir shops, buying fragrant spices, jewelry and souvenirs. 
In the evening, you will have a pleasant time in the famous Tbilisi sulfur baths, where <b> you can relax and unwind </b>, plunge <b> into the pool with hot sulfuric water directly from the source </b>,
drink herbal tea or taste real Georgian wine. 
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (140, 3, '/images/tours/tour_8days_bani500x300.jpg', 'Район серных бань, Тбилиси', '', '<h5>День 5</h5> Свободный день для прогулок по городу, шопинга, посещения сувенирных лавок, приобретения душистых специй, украшений и сувениров.
                        А вечером вас ожидает приятное времяпровождение в известных тбилисских серных банях, где <b>вы сможете расслабиться и отдохнуть</b>, окунуться <b>в бассейн с горячей серной водой прямо из источника</b>, 
                         выпить травяной чай или отведать настоящее грузинское вино.  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (140, 4, '/images/tours/tour_8days_bani500x300.jpg', 'Район сірчаних лазень, Тбілісі', '', '<h5>День 5</h5>Вільний день для прогулянок по місту, шопінгу, відвідування сувенірних крамниць, придбання запашних спецій, прикрас і сувенірів. А ввечері вас чекає приємне проведення часу в відомих тбіліських сірчаних лазнях, де <b> ви зможете розслабитися і відпочити </b>, зануритися <b> в басейн з гарячою сірчаною водою прямо з джерела </b>, випити трав\'яний чай або покуштувати справжнє грузинське вино.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (141, 1, '/images/tours/tour_5days_gudauri_4_500x300.jpg', 'Набережная, Тбилиси', '', '<h5>День 6</h5> Прощальные прогулки по Тбилиси, прощальные впечатления и прощальные эмоции, ну и, конечно, 
                    время для составления планов, где еще в хочется побывать в Грузии во время следующего приезда.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (141, 2, '/images/tours/tour_5days_gudauri_4_500x300.jpg', 'Quay, Tbilisi', '', '<h5>Day 6</h5> Farewell walks in Tbilisi, farewell impressions and farewell emotions, and, of course, time for drawing up plans, where you still want to visit Georgia during your next visit.  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (141, 3, '/images/tours/tour_5days_gudauri_4_500x300.jpg', 'Набережная, Тбилиси', '', '<h5>День 6</h5> Прощальные прогулки по Тбилиси, прощальные впечатления и прощальные эмоции, ну и, конечно, 
                    время для составления планов, где еще в хочется побывать в Грузии во время следующего приезда.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (141, 4, '/images/tours/tour_5days_gudauri_4_500x300.jpg', 'Набережна, Тбілісі', '', '<h5>День 6</h5> Прощальні прогулянки по Тбілісі, прощальні враження і прощальні емоції, ну і, звичайно,
                час для складання планів, де ще в хочеться побувати в Грузії під час наступного приїзду.  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (142, 1, '/images/wedding/wed_kaheti_all_1_500x300.jpg', 'отель находиться в живописном месте среди виноградников', '', '<h5>День 1</h5> 
                         После прибытия в Тбилиси предлагаем Вам <b>небольшой отдых в нашем отеле</b> в центре города, где Вы сможете принять душ и позавтракать. 
                         <p>Затем, запланирована <b>встреча с нотариусом для оформления</b> всех необходимые <b>документов</b> для регистрации брака. 
                         После этого необходжимо время, чтобы <b>обсудить</b> с молодоженами все <b>ньюансы свадьбы</b>.</p>
                         Далее, <b>путь в Кахетию</b> и поселение в отеле, который находиться в живописном месте среди виноградников.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (142, 2, '/images/wedding/wed_kaheti_all_1_500x300.jpg', 'the hotel is located in a picturesque place among vineyards', '', '<h5>Day 1</h5> 
                         After arriving in Tbilisi we offer you a <b>mall rest in our hotel </b> in the city center where you can take a shower and have breakfast. 
                         <p>Then, a <b>meeting with a notary is</b> planned  <b> to complete</b> all necessary <b> documents</b> 
                         for the registration of marriage. After this, it is necessary to  <b>discuss </b> with the newlyweds all the  <b>nuances of the wedding</b>.</p>
                         Further, the <b>way to Kakheti</b> and settlement in the hotel, which is in a picturesque place among the vineyards.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (142, 3, '/images/wedding/wed_kaheti_all_1_500x300.jpg', 'המלון ממוקם במיקום ציורי בין הכרמים', '', '<h5>День 1</h5> 
                         После прибытия в Тбилиси предлагаем Вам <b>небольшой отдых в нашем отеле</b> в центре города, где Вы сможете принять душ и позавтракать. 
                         <p>Затем, запланирована <b>встреча с нотариусом для оформления</b> всех необходимые <b>документов</b> для регистрации брака. 
                         После этого необходжимо время, чтобы <b>обсудить</b> с молодоженами все <b>ньюансы свадьбы</b>.</p>
                         Далее, <b>путь в Кахетию</b> и поселение в отеле, который находиться в живописном месте среди виноградников.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (142, 4, '/images/wedding/wed_kaheti_all_1_500x300.jpg', 'готель знаходиться в мальовничому місці серед виноградників', '', '<h5> День 1 </h5>Після прибуття в Тбілісі пропонуємо Вам <b> невеличкий перепочинок у нашому готелі </b> в центрі міста, де Ви зможете прийняти душ та поснідати.<p> Потім, запланована <b> зустріч із нотаріусом для оформлення </b> всіх необхідних <b> документів </b> для реєстрації шлюбу. Після цього необходно час, щоб <b> обговорити </b> із молодятами усі <b> тонкощі весілля </b>. </p>Далі, <b> шлях до Кахетії </b> і поселення у готелі, який знаходиться в мальовничому місці серед виноградників.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (143, 1, '/images/wedding/wed_kaheti_all_2_500x300.jpg', 'фотосессия для молодоженов среди виноградников', '', '<h5>День 2</h5>
                        <b>Самый долгожданный и важный день - Свадьба!</b>    
                       <ul>
                            <li><b>роспись среди виноградников</b>, в специально украшенном месте;</li>
                            <li><b>фотосессия</b> для молодоженов в красивейших живописных местах недалеко от отеля;</li>
                       </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (143, 2, '/images/wedding/wed_kaheti_all_2_500x300.jpg', 'photo session for newlyweds among the vineyards', '', '<h5>Day 2</h5>
                        <b>The most long-awaited and important day is the Wedding!</b>    
                       <ul>
                            <li><b>Marriage registration ceremony among vineyards</b> in a specially decorated place;</li>
                            <li><b>photo session</b> for a newly-married couple in the most beautiful scenic spots near the hotel;</li>
                       </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (143, 3, '/images/wedding/wed_kaheti_all_2_500x300.jpg', 'צילום עבור זוגות חדשים בין הכרמים', '', '<h5>День 2</h5>
                        <b>Самый долгожданный и важный день - Свадьба!</b>    
                       <ul>
                            <li><b>роспись среди виноградников</b>, в специально украшенном месте;</li>
                            <li><b>фотосессия</b> для молодоженов в красивейших живописных местах недалеко от отеля;</li>
                       </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (143, 4, '/images/wedding/wed_kaheti_all_2_500x300.jpg', 'фотосесія для молодят серед виноградників', '', '<h5> День 2 </h5><b> Найочікуваніший й найважливіший день - Весілля! </b><ul><li><b> процедура розпису серед виноградників </b>, у спеціально прикрашеному місці; </li><li> <b> фотосесія </b> для молодят у найкрасивіших мальовничих місцях недалеко від готелю; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (144, 1, '/images/wedding/wed_kaheti_all_3_500x300.jpg', 'развлечения для гостей на винном заводе', '', '<ul>
                            <li><b>развлечение для гостей</b> на винном заводе, недалеко от отеля;</li>
                                    <ul>
                                    <li><b>дегустация</b> разных сортов вина;</li>
                                    <li>участие в процессе виноделия;</li>
                                    <li><b>мастер-класс</b> по приготовлению чурчхеллы;</li>
                                    </ul> 
                            <li><b>конкурсы и фуршет</b> во время экскурсии на заводе;</li>
                         </ul> 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (144, 2, '/images/wedding/wed_kaheti_all_3_500x300.jpg', 'entertainment for guests at the winery', '', '<ul>
                            <li><b>entertainment for guests</b> нat the winery, near the hotel;</li>
                                    <ul>
                                    <li><b>tasting</b> different types of wine;</li>
                                    <li>participation in the winemaking process;</li>
                                    <li><b>master class</b> on preparing churchchella;</li>
                                    </ul> 
                            <li><b>competitions and a buffet table</b>  during the excursion at the factory;</li>
                         </ul> 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (144, 3, '/images/wedding/wed_kaheti_all_3_500x300.jpg', 'בידור עבור אורחים ביקב', '', '<ul>
                            <li><b>развлечение для гостей</b> на винном заводе, недалеко от отеля;</li>
                                    <ul>
                                    <li><b>дегустация</b> разных сортов вина;</li>
                                    <li>участие в процессе виноделия;</li>
                                    <li><b>мастер-класс</b> по приготовлению чурчхеллы;</li>
                                    </ul> 
                            <li><b>конкурсы и фуршет</b> во время экскурсии на заводе;</li>
                         </ul> 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (144, 4, '/images/wedding/wed_kaheti_all_3_500x300.jpg', 'розваги для гостей на винному заводі', '', '<ul><li> <b> розваги для гостей </b> на винному заводі, недалеко від готелю; </li><ul><li> <b> дегустація </b> різноманітних сортів вин; </li><li> участь в процесі виноробства; </li><li> <b> майстер-клас </b> з приготування Чурчхелли; </li></ul><li> <b> конкурси та фуршет </b> під час екскурсії на заводі; </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (145, 1, '/images/wedding/wed_kaheti_all_4_500x300.jpg', 'праздничное застолье по-грузински', '', '<ul>
                            <li>невероятное <b>праздничное застолье</b> с весёлым и колоритным грузинским тамадой;</li>
                            <li><b>танцы и песни</b> в лучших грузинских традициях!</li>
                         </ul> ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (145, 2, '/images/wedding/wed_kaheti_all_4_500x300.jpg', 'holiday feast by Georgian', '', '<ul>
                            <li>an incredible <b>festive feast</b> with cheerful and colorful Georgian toastmaster;</li>
                            <li><b>dances and songs</b> in the best Georgian traditions!</li>
                         </ul> ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (145, 3, '/images/wedding/wed_kaheti_all_4_500x300.jpg', 'חג על ידי גיאורגית', '', '<ul>
                            <li>невероятное <b>праздничное застолье</b> с весёлым и колоритным грузинским тамадой;</li>
                            <li><b>танцы и песни</b> в лучших грузинских традициях!</li>
                         </ul> ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (145, 4, '/images/wedding/wed_kaheti_all_4_500x300.jpg', 'святкове застілля по-грузинськи', '', '<ul><li> неймовірне <b> святкове застілля </b> з веселим із колоритним грузинським тамадою; </li><li> <b> танці й пісні </b> у найкращих грузинських традиціях! </li></ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (146, 1, '/images/wedding/wed_kaheti_all_5_500x300.jpg', 'Тбилиси - старый город', '', '<h5>День 3</h5>
                         После завтрака в отеле - <b>возвращение в Тбилиси</b>. Небольшая <b>прогулка по старому городу</b> и его узким улочкам, чтобы сделать ещё больше фото на память 
                         и купить сувениры.   
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (146, 2, '/images/wedding/wed_kaheti_all_5_500x300.jpg', 'Tbilisi - Old Town', '', '<h5>Day 3</h5>
                         After breakfast at the hotel - <b>return to Tbilisi</b>. A short  <b>walk through the old town</b> 
                         and its narrow streets to make even more pictures for memory and buy souvenirs.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (146, 3, '/images/wedding/wed_kaheti_all_5_500x300.jpg', 'טביליסי - העיר העתיקה', '', '<h5>День 3</h5>
                         После завтрака в отеле - <b>возвращение в Тбилиси</b>. Небольшая <b>прогулка по старому городу</b> и его узким улочкам, чтобы сделать ещё больше фото на память 
                         и купить сувениры.   
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (146, 4, '/images/wedding/wed_kaheti_all_5_500x300.jpg', 'Тбілісі - Старе місто', '', '<h5> День 3 </h5>Після сніданку в готелі - <b> повернення в Тбілісі </b>. Невелика <b> прогулянка старим містом </b> та його вузькими вуличках, щоб зробити ще більше фото на пам\'ять та купити сувеніри.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (147, 1, '/images/tours/tour_3days_kaheti_2_500x300.jpg', 'Небольшое знакомство с Тбилиси', 'Программа свадьбы:', '<h5>День 1</h5> 
                         После поселения в отеле и небольшого отдыха необходимо оформить у нотариуса все необходимые документы для регистрации брака, 
                         а также обсудить ньюансы свадьбы.
                         <p>Затем,  мы  познакомим Вас со столицей Грузии - <b>Тбилиси</b>. 
                         Прогулка по городу в сопровождении гида, который покажет <b>главные достопримечательности</b> 
                         и расскажет много интересных историй об этих местах.</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (147, 2, '/images/tours/tour_3days_kaheti_2_500x300.jpg', 'Little acquaintance with Tbilisi', 'Wedding program:', '<h5>Day 1</h5> 
                         After settling in the hotel and a short rest, you need to register with the notary all the necessary documents for registering the marriage, 
                         as well as discuss the wedding details.
                         <p>Then, we will introduce you to the capital of Georgia - <b>Tbilisi </b>. 
                          Walk around the city, accompanied by a guide who will show the <b>main attractions</b> 
                         and tell many interesting stories about these places.</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (147, 3, '/images/tours/tour_3days_kaheti_2_500x300.jpg', 'Небольшое знакомство с Тбилиси', 'Программа свадьбы:', '<h5>День 1</h5> 
                         После поселения в отеле и небольшого отдыха необходимо оформить у нотариуса все необходимые документы для регистрации брака, 
                         а также обсудить ньюансы свадьбы.
                         <p>Затем,  мы  познакомим Вас со столицей Грузии - <b>Тбилиси</b>. 
                         Прогулка по городу в сопровождении гида, который покажет <b>главные достопримечательности</b> 
                         и расскажет много интересных историй об этих местах.</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (147, 4, '/images/tours/tour_3days_kaheti_2_500x300.jpg', 'Невелике знайомство із Тбілісі', 'Програма весілля:', '<h5> День 1 </h5>Після поселення в готелі й невеликоuj відпочинку необхідно оформити у нотаріуса всі необхідні документи для реєстрації шлюбу, а також обговорити нюанси весілля.<p> Потім, ми познайомимо Вас із столицею Грузії - <b> Тбілісі </b>.Прогулянка містом у супроводі гіда, який покаже <b> найголовніші визначні пам\'ятки </b>й розповість багато цікавих історій про ці місця. </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (148, 1, '/images/wedding/wed_kaheti_1_500x300.jpg', 'Приготовления невесты', '', '<h5>День 2</h5>
                        Утренние приготовления:
                        <ul>
                            <li>Для идеальной фотосессии перед выездом предлагаем вам воспользоваться профессиональными услугами специалиста <b>make-up</b> (макияж).</li>
                            <li>По вашему желанию для молодоженов будут предоставлены богато украшенные <b>грузинские национальные костюмы</b>.</li>
                        </ul>
                        <b>Художник-фотограф</b> готов работать с вами весь день. Обработанные фотографии будут пересланы вам в электронном виде.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (148, 2, '/images/wedding/wed_kaheti_1_500x300.jpg', 'The bride is ready', '', '<h5>Day 2</h5>
                        Morning preparations:
                        <ul>
                            <li>For an ideal photo shoot before going out, we suggest you use the professional services of a <b>make-up</b> specialist</li>
                            <li>At your request for the newlyweds will be provided with richly decorated  <b>Georgian national costumes</b>.</li>
                        </ul>
                        <b>The artist-photographer</b>  is ready to work with you all day. The processed photos will be sent to you in electronic form.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (148, 3, '/images/wedding/wed_kaheti_1_500x300.jpg', 'Приготовления невесты', '', '<h5>День 2</h5>
                        Утренние приготовления:
                        <ul>
                            <li>Для идеальной фотосессии перед выездом предлагаем вам воспользоваться профессиональными услугами специалиста <b>make-up</b> (макияж).</li>
                            <li>По вашему желанию для молодоженов будут предоставлены богато украшенные <b>грузинские национальные костюмы</b>.</li>
                        </ul>
                        <b>Художник-фотограф</b> готов работать с вами весь день. Обработанные фотографии будут пересланы вам в электронном виде.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (148, 4, '/images/wedding/wed_kaheti_1_500x300.jpg', 'Приготування нареченої', '', '<h5> День 2 </h5>Ранкові приготування:<ul><li> Для ідеальної фотосесії перед виїздом пропонуємо вам скористатися професійними послугами спеціаліста <b> make-up </b> (макіяж). </li><li> За вашим бажанням для молодят будуть надані пишні <b> грузинські національні костюми </b>. </li></ul><b> Художник-фотограф </b> готовий працювати із вами увесь день. Оброблені фотографії будуть надіслані вам в електронному вигляді.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (149, 1, '/images/wedding/wed_kaheti_1_3_500x300.jpg', 'знаменитый город влюбленных – Сигнахи', '', 'Отправимся в знаменитый <b>город влюбленных – Сигнахи</b>.  
                         Этот город известен тем, что <b>дворец бракосочетания там работает круглосуточно</b> - заключить брак здесь можно в любое время дня и ночи.  
                         Именно <b>здесь и пройдет церемония бракосочетания</b> наших влюбленных. 
                         Это место располагает к проявлению лучших чувств благодаря милой европейской архитектуре, 
                         а также отсюда открывается <b>завораживающий вид на Алазанскую долину</b>. 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (149, 2, '/images/wedding/wed_kaheti_1_3_500x300.jpg', 'famous city of love - Sighnaghi', '', 'Let\'s go to the famous <b>city ​​of love - Sighnaghi</b>.  
                         This city is known for the fact that <b>the wedding palace works there around the clock</b> - you can get married here at any time of the day or night. 
                         It is <b>here that the ceremony of marriage </b> of our newlyweds will take place. 
                        This place has to display the best feelings thanks to the cute European architecture, and from here a <b>fascinating view of the Alazani valley</b> opens. 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (149, 3, '/images/wedding/wed_kaheti_1_3_500x300.jpg', 'знаменитый город влюбленных – Сигнахи', '', 'Отправимся в знаменитый <b>город влюбленных – Сигнахи</b>.  
                         Этот город известен тем, что <b>дворец бракосочетания там работает круглосуточно</b> - заключить брак здесь можно в любое время дня и ночи.  
                         Именно <b>здесь и пройдет церемония бракосочетания</b> наших влюбленных. 
                         Это место располагает к проявлению лучших чувств благодаря милой европейской архитектуре, 
                         а также отсюда открывается <b>завораживающий вид на Алазанскую долину</b>. 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (149, 4, '/images/wedding/wed_kaheti_1_3_500x300.jpg', 'знамените місто закоханих - Сигнахи', '', 'Відправимося до відомого <b> міста закоханих - Сигнахі </b>.
Це місто відоме тим, що <b> палац одруження там працює цілодобово </b> - укласти шлюб тут можна в будь-який час дня і ночі. Саме <b> тут і пройде церемонія одруження </b> наших закоханих. Це місце спонукає до прояву кращих почуттів завдяки милій європейській архітектурі, а також звідси відкривається <b> дивовижний краєвид на Алазанську долину </b>.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (150, 1, '/images/wedding/wed_kaheti_1_4_500x300.jpg', 'Живописные фото возле монастыря Джвари', '', '<b>Продолжим праздник в</b> первой столице Грузии, <b>городе Мцхета</b>, где невероятное количество святых и культовых мест, 
                         за что этот древний город называют «Вторым Иерусалимом».  
                         <b>После прогулки</b> по городу все гости будут приглашены к трапезе в формате <b>фуршет</b>.
                         А за волшебными впечатлениями и максимально эффектными видами для фото мы отправимся в <b>старинный живописнейший монастырь Джвари</b>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (150, 2, '/images/wedding/wed_kaheti_1_4_500x300.jpg', 'Picturesque photos near the monastery Jvari', '', '<b>We will continue the holiday in the</b> first capital of Georgia, the <b>city ​​of Mtskheta</b>, 
                            where an incredible number of holy and cult places, for which this ancient city is called the "Second Jerusalem".
                         <b>After a walk</b> around the city, all guests will be invited to a meal in the <b>buffet table </b>.
                         And for the magical impressions and the most spectacular views for the photo we will go to the <b>old picturesque monastery of Jvari</b>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (150, 3, '/images/wedding/wed_kaheti_1_4_500x300.jpg', 'Живописные фото возле монастыря Джвари', '', '<b>Продолжим праздник в</b> первой столице Грузии, <b>городе Мцхета</b>, где невероятное количество святых и культовых мест, 
                         за что этот древний город называют «Вторым Иерусалимом».  
                         <b>После прогулки</b> по городу все гости будут приглашены к трапезе в формате <b>фуршет</b>.
                         А за волшебными впечатлениями и максимально эффектными видами для фото мы отправимся в <b>старинный живописнейший монастырь Джвари</b>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (150, 4, '/images/wedding/wed_kaheti_1_4_500x300.jpg', 'Мальовничі фото біля монастиря Джварі', '', '<b> Продовжимо свято в </b> першої столиці Грузії, <b> місті Мцхета </b>, де неймовірна кількість святих і культових місць, за що це cтародавнє місто називають «Другим Єрусалимом». <b> Після прогулянки </b> містом усі гості будуть запрошені до трапези у форматі <b> фуршет </b>. А за чарівними враженнями й максимально ефектними видами для фото ми відправимося до <b> старовинного мальовничого монастиря Джварі </b>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (151, 1, '/images/wedding/wed_kaheti_1_2_500x300.jpg', 'Грузинское застолье', '', 'К  концу дня  <b>вернемся в Тбилиси, где</b> после небольшого отдыха вы сможете броситься с головой в водоворот грузинского веселья, 
                         потому что только для вас и вашей компании в уникальном аутентичном ресторанном комплексе «Мельница» 
                         (либо "Керия", "Старый город", "Мравал Жамиэри") <b>будет организовано</b> настоящее традиционное <b>грузинское застолье</b>, 
                         которое по праву считается культурным наследием Грузии и имеет статус памятника нематериальной культуры.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (151, 2, '/images/wedding/wed_kaheti_1_2_500x300.jpg', 'Georgian feast', '', 'By the end of the day  <b>we will return to Tbilisi where</b> after a short rest you will be able to rush headlong into the whirlpool of Georgian fun, 
                        because only for you and your company in the unique authentic restaurant complex "Melnitsa" (or Keriya, Old Town, Zhamiari ") 
                        a real traditional <b>Georgian feast will be organized</b>  which is considered to be the cultural heritage of Georgia and has the status 
                        of a monument of intangible culture.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (151, 3, '/images/wedding/wed_kaheti_1_2_500x300.jpg', 'Грузинское застолье', '', 'К  концу дня  <b>вернемся в Тбилиси, где</b> после небольшого отдыха вы сможете броситься с головой в водоворот грузинского веселья, 
                         потому что только для вас и вашей компании в уникальном аутентичном ресторанном комплексе «Мельница» 
                         (либо "Керия", "Старый город", "Мравал Жамиэри") <b>будет организовано</b> настоящее традиционное <b>грузинское застолье</b>, 
                         которое по праву считается культурным наследием Грузии и имеет статус памятника нематериальной культуры.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (151, 4, '/images/wedding/wed_kaheti_1_2_500x300.jpg', 'грузинське застілля', '', 'До завершення дня <b> повернемося у Тбілісі, де </b> після невеличкого відпочинку ви зможете кинутися із головою у вир грузинських веселощів, тому що тільки для вас та вашої компанії в унікальному автентичному ресторанному комплексі «Млин» (Або "Керія", "Старе місто", "Мравал Жаміері") <b> буде організовано </b> дане традиційне <b> грузинське застілля </b>,  яке по праву вважається культурною спадщиною Грузії і має статус пам\'ятника нематеріальної культури.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (152, 1, '/images/tours/tour_3days_kaheti_3_500x300.jpg', 'Свободный день для прогулок по Тбилиси.', '', '<h5>День 3</h5> <b>Свободный день для прогулок по Тбилиси</b>. 
                            Отель находится в самом центре города, поэтому Вам будет легко добраться до самых интересных мест, 
                            чтобы купить сувениры, прогуляться по узким улочкам старого города и насладится атмосферой Грузии.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (152, 2, '/images/tours/tour_3days_kaheti_3_500x300.jpg', 'Free day for exploring Tbilisi', '', '<h5>Day 3</h5> <b>Free day for walking around Tbilisi</b>. 
                            The hotel is located in the heart of the city, so you will easily get to the most interesting places to buy souvenirs, 
                            stroll through the narrow streets of the old city and enjoy the atmosphere of Georgia');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (152, 3, '/images/tours/tour_3days_kaheti_3_500x300.jpg', 'Свободный день для прогулок по Тбилиси.', '', '<h5>День 3</h5> <b>Свободный день для прогулок по Тбилиси</b>. 
                            Отель находится в самом центре города, поэтому Вам будет легко добраться до самых интересных мест, 
                            чтобы купить сувениры, прогуляться по узким улочкам старого города и насладится атмосферой Грузии.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (152, 4, '/images/tours/tour_3days_kaheti_3_500x300.jpg', 'Вільний день для прогулянок по Тбілісі', '', '<h5> День 3 </h5> <b> Вільний день для прогулянок по Тбілісі </b>.
Готель знаходиться в самому центрі міста, тому Вам буде легко дістатися до найцікавіших місць, щоб купити сувеніри, прогулятися по вузьких вуличках старого міста і насолодитися атмосферою Грузії.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (153, 1, '/images/wedding/wed_kazbegi_1_5_500x300.jpg', 'храм Метехи, Тбилиси', 'Программа свадьбы:', '<h5>День 1</h5> 
                         <b>После поселения в отеле</b> и небольшого отдыха <b>запланирована встреча с нотариусом</b>, чтобы оформить все необходимые документы для регистрации брака, 
                         а также, <b>время для обсуждения ньюансов свадьбы</b>.
                         <p>Затем, наш гид познакомит Вас со столицей Грузии - <b>Тбилиси</b>. 
                         Прогулка по городу, во время которой он покажет <b>главные достопримечательности</b> города 
                         и расскажет интересные факты и истории об этих местах.</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (153, 2, '/images/wedding/wed_kazbegi_1_5_500x300.jpg', 'Temple Metekhi, Tbilisi', 'Wedding program:', '<h5>Day 1</h5> 
                         After settling in the hotel and a short rest, you need to register with the notary all the necessary documents for registering the marriage, 
                         as well as discuss the wedding details.
                         <p>Then, we will introduce you to the capital of Georgia - <b>Tbilisi </b>. 
                          Walk around the city, accompanied by a guide who will show the <b>main attractions</b> 
                         and tell many interesting stories about these places.</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (153, 3, '/images/wedding/wed_kazbegi_1_5_500x300.jpg', 'храм Метехи, Тбилиси', 'Программа свадьбы:', '<h5>День 1</h5> 
                         <b>После поселения в отеле</b> и небольшого отдыха <b>запланирована встреча с нотариусом</b>, чтобы оформить все необходимые документы для регистрации брака, 
                         а также, <b>время для обсуждения ньюансов свадьбы</b>.
                         <p>Затем, наш гид познакомит Вас со столицей Грузии - <b>Тбилиси</b>. 
                         Прогулка по городу, во время которой он покажет <b>главные достопримечательности</b> города 
                         и расскажет интересные факты и истории об этих местах.</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (153, 4, '/images/wedding/wed_kazbegi_1_5_500x300.jpg', 'храм Метехі, Тбілісі', 'Програма весілля:', '<h5> День 1 </h5><b> Після поселення в готелі </b> і невеликого відпочинку <b> запланована зустріч із нотаріусом </b>, щоб оформити усі необхідні документи для реєстрації шлюбу, а також, <b> час для обговорення нюансів весілля </b>.<p> Потім, наш гід познайомить Вас зі столицею Грузії - <b> Тбілісі </b>.Прогулянка по місту, під час якої він покаже <b> головні визначні пам\'ятки </b> міста та розповість цікаві факти й історії про ці місця. </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (154, 1, '/images/wedding/wed_kazbegi_1_1_500x300.jpg', 'make-up для невесты', '', '<h5>День 2</h5>
                        Утренние приготовления:
                        <ul>
                            <li>Для идеальной фотосессии перед выездом предлагаем вам воспользоваться профессиональными услугами специалиста <b>make-up</b> (макияж).</li>
                            <li>По вашему желанию для молодоженов будут предоставлены богато украшенные <b>грузинские национальные костюмы</b>.</li>
                        </ul>
                        <b>Художник-фотограф</b> готов работать с вами весь день. Обработанные фотографии будут пересланы вам в электронном виде.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (154, 2, '/images/wedding/wed_kazbegi_1_1_500x300.jpg', 'make-up for the bride', '', '<h5>Day 2</h5>
                        Morning preparations:
                        <ul>
                            <li>For an ideal photo shoot before going out, we suggest you use the professional services of a <b>make-up</b> specialist</li>
                            <li>At your request for the newlyweds will be provided with richly decorated  <b>Georgian national costumes</b>.</li>
                        </ul>
                        <b>The artist-photographer</b>  is ready to work with you all day. The processed photos will be sent to you in electronic form.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (154, 3, '/images/wedding/wed_kazbegi_1_1_500x300.jpg', 'make-up для невесты', '', '<h5>День 2</h5>
                        Утренние приготовления:
                        <ul>
                            <li>Для идеальной фотосессии перед выездом предлагаем вам воспользоваться профессиональными услугами специалиста <b>make-up</b> (макияж).</li>
                            <li>По вашему желанию для молодоженов будут предоставлены богато украшенные <b>грузинские национальные костюмы</b>.</li>
                        </ul>
                        <b>Художник-фотограф</b> готов работать с вами весь день. Обработанные фотографии будут пересланы вам в электронном виде.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (154, 4, '/images/wedding/wed_kazbegi_1_1_500x300.jpg', 'make-up для нареченої', '', '<h5> День 2 </h5>Ранкові приготування:<ul><li> Для ідеальної фотосесії перед виїздом 
 пропонуємо вам скористатися професійними послугами спеціаліста <b> make-up </b> (макіяж). </li><li> За вашим бажанням для молодят будуть надані пишні <b> грузинські національні костюми</b>. </li></ul><b> Художник-фотограф </b> готовий працювати з вами цілий день. Оброблені фотографії будуть переслані вам у електронному вигляді.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (155, 1, '/images/wedding/wed_kazbegi_1_2_500x300.jpg', 'Дом Юстиции, Тбилиси', '', '<b>Начнем</b> этот день <b>с регистрации брака в Доме Юстиции</b> в городе Тбилиси. 
                        Затем <b>отправляемся</b> за волшебными впечатлениями и удивительными видами для фото <b>к старинному живописнейшему монастырю Джвари</b>. 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (155, 2, '/images/wedding/wed_kazbegi_1_2_500x300.jpg', 'House of Justice, Tbilisi', '', '<b>Let\'s start </b> this day <b>with the registration of marriage in the House of Justice</b> in Tbilisi. 
                        Then we <b>go </b> for the magical impressions and amazing views for the photo  <b>to the ancient picturesque monastery of Jvari .</b>. 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (155, 3, '/images/wedding/wed_kazbegi_1_2_500x300.jpg', 'Дом Юстиции, Тбилиси', '', '<b>Начнем</b> этот день <b>с регистрации брака в Доме Юстиции</b> в городе Тбилиси. 
                        Затем <b>отправляемся</b> за волшебными впечатлениями и удивительными видами для фото <b>к старинному живописнейшему монастырю Джвари</b>. 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (155, 4, '/images/wedding/wed_kazbegi_1_2_500x300.jpg', 'Будинок Юстиції, Тбілісі', '', '<b> Почнемо </b> цей день <b> з реєстрації шлюбу в Будинку Юстиції </b> e місті Тбілісі. Потім <b> вирушаємо </b> за чарівними враженнями і дивовижними краєвидами для фото <b> до старовинного мальовничого монастирю Джварі </b>.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (156, 1, '/images/wedding/wed_kazbegi_1_3_500x300.jpg', 'Свадебные фото среди грузинских гор', 'Но, мы же с Вами в Грузии!', 'Поэтому <b>максимальное наслаждение</b> необходимо получать <b>среди высоких гор</b>. 
                         Для этого <b>едем к</b> легендарному <b>храму Гергети</b>, находящемуся на высоте 2170 м у подножие горы Казбек.
                         Подниматься туда нужно на джипах. Это место, где молодожены получат незабываемые ощущения от фотосессии и переполнения чувств.  
                         <b>По дороге обратно</b> в Тбилиси, <b>сделаем остановку</b> в живописном месте и все гости будут приглашены к трапезе <b>в формате фуршет.</b>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (156, 2, '/images/wedding/wed_kazbegi_1_3_500x300.jpg', 'Wedding photos among the Georgian mountains', 'But, we are in Georgia!', 'Therefore, the <b>maximum enjoyment</b> must be obtained <b> among the high mountains </b>. 
                         For this <b> we go to the</b> legendary  <b>Gergeti temple</b>, which is located at an altitude of 2,170 m at the foot of Mount Kazbek. 
                         It is necessary to climb there in jeeps. This is the place where the newlyweds will get unforgettable sensations from the photo session and the overflow of feelings 
                         <b> On the way back</b> to Tbilisi, we <b>will stop</b> in a picturesque place and all guests will be invited to a meal <b>in the buffet table.</b>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (156, 3, '/images/wedding/wed_kazbegi_1_3_500x300.jpg', 'Свадебные фото среди грузинских гор', 'Но, мы же с Вами в Грузии!', 'Поэтому <b>максимальное наслаждение</b> необходимо получать <b>среди высоких гор</b>. 
                         Для этого <b>едем к</b> легендарному <b>храму Гергети</b>, находящемуся на высоте 2170 м у подножие горы Казбек.
                         Подниматься туда нужно на джипах. Это место, где молодожены получат незабываемые ощущения от фотосессии и переполнения чувств.  
                         <b>По дороге обратно</b> в Тбилиси, <b>сделаем остановку</b> в живописном месте и все гости будут приглашены к трапезе <b>в формате фуршет.</b>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (156, 4, '/images/wedding/wed_kazbegi_1_3_500x300.jpg', 'Весільні фото серед грузинських гір', 'Але, ми ж із Вами у Грузії!', 'Тому <b> максимальну насолоду </b> необхідно отримувати <b> серед високих гір </b>. Для цього <b> їдемо до </b> легендарного <b> храму Гергеті </b>, що знаходиться на висоті 2170 м у підніжжя гори Казбек. Підійматися туди потрібно на джипах. Це місце, де молодята отримають незабутні відчуття від фотосесії і переповнення почуттів.<b> Шляхом назад </b> в Тбілісі, <b> зробимо зупинку </b> у мальовничому місці та усі гості будуть запрошені до трапези <b> у форматі фуршет. </b>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (157, 1, '/images/wedding/wed_kazbegi_1_4_500x300.jpg', 'традиционное грузинское застолье, с песнями и танцами', '', 'Ближе к концу  дня  <b>вернемся в Тбилиси, где</b> после небольшого отдыха вы сможете броситься с головой в водоворот грузинского веселья, 
                         потому что только для вас и вашей компании в уникальном аутентичном ресторанном комплексе «Мельница» 
                         (либо "Керия", "Старый город", "Мравал Жамиэри") <b>будет организовано</b> настоящее <b>традиционное грузинское застолье</b>, 
                         с песнями, танцами и музыкой!
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (157, 2, '/images/wedding/wed_kazbegi_1_4_500x300.jpg', 'traditional Georgian feast, with songs and dances', '', 'By the end of the day  <b>we will return to Tbilisi where</b> after a short rest you will be able to rush headlong into the whirlpool of Georgian fun, 
                        because only for you and your company in the unique authentic restaurant complex "Melnitsa" (or Keriya, Old Town, Zhamiari ") 
                        a real traditional <b>Georgian feast will be organized</b>  which is considered to be the cultural heritage of Georgia and has the status 
                        of a monument of intangible culture.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (157, 3, '/images/wedding/wed_kazbegi_1_4_500x300.jpg', 'традиционное грузинское застолье, с песнями и танцами', '', 'Ближе к концу  дня  <b>вернемся в Тбилиси, где</b> после небольшого отдыха вы сможете броситься с головой в водоворот грузинского веселья, 
                         потому что только для вас и вашей компании в уникальном аутентичном ресторанном комплексе «Мельница» 
                         (либо "Керия", "Старый город", "Мравал Жамиэри") <b>будет организовано</b> настоящее <b>традиционное грузинское застолье</b>, 
                         с песнями, танцами и музыкой!
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (157, 4, '/images/wedding/wed_kazbegi_1_4_500x300.jpg', 'традиційне грузинське застілля, з піснями і танцями', '', 'Ближче до завершення дня <b> повернемося в Тбілісі, де </b> після невеликого відпочинку ви зможете кинутися з головою у вир грузинських веселощів, тому що тільки для вас та вашої компанії в унікальному автентичному ресторанному комплексі «Млин» (Або "Керія", "Старе місто", "Мравал Жаміері") <b> буде організовано </b> дане <b> традиційне грузинське застілля </b>, із піснями, танцями й музикою!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (158, 1, '/images/cards/tbilisi_500x300.jpg', 'Тбилисские домики и крепость Нарикала', '', '<h5>День 3</h5> <b>Свободный день для прогулок по Тбилиси</b>. 
                            Отель находится в самом центре города, поэтому Вам будет легко добраться до самых интересных мест, 
                            чтобы купить сувениры, прогуляться по узким улочкам старого города и насладится атмосферой Грузии.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (158, 2, '/images/cards/tbilisi_500x300.jpg', 'Tbilisi houses and Narikala fortress', '', '<h5>Day 3</h5> <b>Free day for walking around Tbilisi</b>. 
                            The hotel is located in the heart of the city, so you will easily get to the most interesting places to buy souvenirs, 
                            stroll through the narrow streets of the old city and enjoy the atmosphere of Georgia');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (158, 3, '/images/cards/tbilisi_500x300.jpg', 'Тбилисские домики и крепость Нарикала', '', '<h5>День 3</h5> <b>Свободный день для прогулок по Тбилиси</b>. 
                            Отель находится в самом центре города, поэтому Вам будет легко добраться до самых интересных мест, 
                            чтобы купить сувениры, прогуляться по узким улочкам старого города и насладится атмосферой Грузии.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (158, 4, '/images/cards/tbilisi_500x300.jpg', 'Тбіліські будиночки і фортеця Нарікала', '', '<h5> День 3 </h5> <b> Вільний день для прогулянок по Тбілісі </b>. Готель знаходиться в самому центрі міста, тому Вам буде легко дістатися до найцікавіших місць, 
 щоб купити сувеніри, прогулятися по вузьких вуличках старого міста і насолодитися атмосферою Грузії.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (159, 1, '/images/wedding/wed_tbilisi_1_500x300.jpg', 'Романтический вечер в Тбилиси', 'Программа свадьбы:', '<h5>День 1</h5> 
                         После поселения в отеле и небольшого отдыха необходимо оформить у нотариуса все необходимые документы для регистрации брака, 
                         а также обсудить ньюансы свадьбы.
                         <p>Затем,  мы  познакомим Вас со столицей Грузии - <b>Тбилиси</b>. 
                         Прогулка по городу в сопровождении гида, который покажет <b>главные достопримечательности</b> 
                         и расскажет много интересных историй об этих местах.</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (159, 2, '/images/wedding/wed_tbilisi_1_500x300.jpg', 'Romantic evening in Tbilisir', 'Wedding program:', '<h5>Day 1</h5> 
                         After settling in the hotel and a short rest, you need to register with the notary all the necessary documents for registering the marriage, 
                         as well as discuss the wedding details.
                         <p>Then, we will introduce you to the capital of Georgia - <b>Tbilisi </b>. 
                          Walk around the city, accompanied by a guide who will show the <b>main attractions</b> 
                         and tell many interesting stories about these places.</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (159, 3, '/images/wedding/wed_tbilisi_1_500x300.jpg', 'Романтический вечер в Тбилиси', 'Программа свадьбы:', '<h5>День 1</h5> 
                         После поселения в отеле и небольшого отдыха необходимо оформить у нотариуса все необходимые документы для регистрации брака, 
                         а также обсудить ньюансы свадьбы.
                         <p>Затем,  мы  познакомим Вас со столицей Грузии - <b>Тбилиси</b>. 
                         Прогулка по городу в сопровождении гида, который покажет <b>главные достопримечательности</b> 
                         и расскажет много интересных историй об этих местах.</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (159, 4, '/images/wedding/wed_tbilisi_1_500x300.jpg', 'Романтичний вечір в Тбілісі', 'Програма весілля:', '<h5> День 1 </h5> Після поселення в готелі й невеликого відпочинку необхідно оформити у нотаріуса всі необхідні документи для реєстрації шлюбу, а також обговорити нюанси весілля.<p> Потім, ми познайомимо Вас із столицею Грузії - <b> Тбілісі </b>. Прогулянка по місту в супроводі гіда, який покаже <b> головні визначні пам\'ятки </b> і розповість багато цікавих історій про ці місця.</p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (160, 1, '/images/wedding/wed_tbilisi_2_500x300.jpg', 'Макияж для невесты', '', '<h5>День 2</h5>
                        Утром приготовления к важному событию:
                        <ul>
                            <li>Для лучшей фотосессии перед выездом <b>предлагаем вам воспользоваться</b> профессиональными услугами специалиста <b>make-up</b> (макияж).</li>
                            <li>По вашему желанию для молодоженов будут предоставлены богато украшенные <b>грузинские национальные костюмы</b>.</li>
                        </ul>
                        <b>Художник-фотограф</b> готов работать с вами весь день. Обработанные фотографии будут пересланы вам в электронном виде.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (160, 2, '/images/wedding/wed_tbilisi_2_500x300.jpg', 'ice makeup for the bride', '', '<h5>Day 2</h5>
                        Morning preparations:
                        <ul>
                            <li>For an ideal photo shoot before going out, we suggest you use the professional services of a <b>make-up</b> specialist</li>
                            <li>At your request for the newlyweds will be provided with richly decorated  <b>Georgian national costumes</b>.</li>
                        </ul>
                        <b>The artist-photographer</b>  is ready to work with you all day. The processed photos will be sent to you in electronic form.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (160, 3, '/images/wedding/wed_tbilisi_2_500x300.jpg', 'Макияж для невесты', '', '<h5>День 2</h5>
                        Утром приготовления к важному событию:
                        <ul>
                            <li>Для лучшей фотосессии перед выездом <b>предлагаем вам воспользоваться</b> профессиональными услугами специалиста <b>make-up</b> (макияж).</li>
                            <li>По вашему желанию для молодоженов будут предоставлены богато украшенные <b>грузинские национальные костюмы</b>.</li>
                        </ul>
                        <b>Художник-фотограф</b> готов работать с вами весь день. Обработанные фотографии будут пересланы вам в электронном виде.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (160, 4, '/images/wedding/wed_tbilisi_2_500x300.jpg', 'Макіяж для нареченої', '', '<h5> День 2 </h5>Вранці приготування до важливої ​​події:<ul><li> Для кращої фотосесії перед виїздом <b> пропонуємо вам скористатися </b> професійними послугами cпеціаліста <b> make-up </b> (макіяж). </li><li> За вашим бажанням для молодят будуть надані пишні <b> грузинські національні костюми </b>. </li></ul><b> Художник-фотограф </b> готовий працювати з вами весь день. Оброблені фотографії будуть переслані вам в електронному вигляді.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (161, 1, '/images/wedding/wed_tbilisi_3_500x300.jpg', 'регистрации брака в Доме Юстиции', '', '<b>Начнем</b> этот день <b>с регистрации брака в Доме Юстиции</b> в городе Тбилиси. 
                        <p></p>
                         Далее, <b>отправляемся по самым красивым местам Тбилиси</b>, который славится как своими древними достопримечательностями, 
                         так и новыми суперсовременными  архитектурными строениями: улица Давида Агмашенебели, кафедральный собор Грузии Троица, 
                         прогулка по парку Рике, мост Мира, старые тихие улочки Тбилиси, мост Метехи, крепость Нарикала и многое другое…
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (161, 2, '/images/wedding/wed_tbilisi_3_500x300.jpg', 'marriage registration in the House of Justice', '', '<b>Let\'s start</b> this day <b> with the registration of marriage in the House of Justice</b> in Tbilisi. 
                        <p></p>
                         Next, we <b>go to the most beautiful places of Tbilisi</b>, which is famous for its ancient sights as well as new super modern architectural structures:
                          David Agmashenebeli Street, Georgia Trinity Cathedral, walk through Rick Park, Peace Bridge, old quiet streets Tbilisi, Metekhi Bridge, Narikala Fortress and much more…
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (161, 3, '/images/wedding/wed_tbilisi_3_500x300.jpg', 'регистрации брака в Доме Юстиции', '', '<b>Начнем</b> этот день <b>с регистрации брака в Доме Юстиции</b> в городе Тбилиси. 
                        <p></p>
                         Далее, <b>отправляемся по самым красивым местам Тбилиси</b>, который славится как своими древними достопримечательностями, 
                         так и новыми суперсовременными  архитектурными строениями: улица Давида Агмашенебели, кафедральный собор Грузии Троица, 
                         прогулка по парку Рике, мост Мира, старые тихие улочки Тбилиси, мост Метехи, крепость Нарикала и многое другое…
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (161, 4, '/images/wedding/wed_tbilisi_3_500x300.jpg', 'реєстрації шлюбу в Будинку Юстиції', '', '<b>Почнемо </b> цей день <b> з реєстрації шлюбу у Будинку Юстиції </b> в місті Тбілісі.
<p></p>
Далі, <b> вирушаємо по найкрасивіших місцях Тбілісі </b>, який славиться як своїми давніми пам\'ятками, так і новими суперсучасними архітектурними будівлями: вулиця Давида Агмашенебелі, кафедральний собор Грузії Трійця, прогулянка по парку Ріці, міст Миру, старі тихі вулички Тбілісі, міст Метехі, фортеця Нарікала і багато іншого ...');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (162, 1, '/images/wedding/wed_tbilisi_4_500x300.jpg', 'фотосессия по самым красивым местам Тбилиси', '', ' После прогулки по городу все гости будут приглашены к трапезе в формате фуршет.
                          <b>Отправляемся</b> за волшебными впечатлениями и удивительными видами для фото <b>к старинному монастырю Джвари</b>. 
                          Это одно из живописнейших мест в Грузии.
                           <p></p>
                          А <b>продолжим</b> праздник <b>в древнем городе Мцхета</b>, где есть много святых и культовых мест. 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (162, 2, '/images/wedding/wed_tbilisi_4_500x300.jpg', 'photo session on the most beautiful places in Tbilisi', '', ' After a walk around the city, all guests will be invited to a meal in the buffet table.
                          <b>We leave</b>  behind magical impressions and amazing views for the photo <b>to the ancient monastery of Jvari</b>. 
                          This is one of the most picturesque places in Georgia.
                           <p></p>
                          And we <b>will continue the</b> holiday  <b>in the ancient city of Mtskheta</b>, where there are many holy and cult places.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (162, 3, '/images/wedding/wed_tbilisi_4_500x300.jpg', 'фотосессия по самым красивым местам Тбилиси', '', ' После прогулки по городу все гости будут приглашены к трапезе в формате фуршет.
                          <b>Отправляемся</b> за волшебными впечатлениями и удивительными видами для фото <b>к старинному монастырю Джвари</b>. 
                          Это одно из живописнейших мест в Грузии.
                           <p></p>
                          А <b>продолжим</b> праздник <b>в древнем городе Мцхета</b>, где есть много святых и культовых мест. 
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (162, 4, '/images/wedding/wed_tbilisi_4_500x300.jpg', 'фотосесія серед найкрасивіших місць Тбілісі', '', 'Після прогулянки по місту всі гості будуть запрошені до трапези в форматі фуршет.
<b> Вирушаємо </b> за чарівними враженнями і дивовижними краєвидами для фото <b> до старовинного монастиря Джварі </b>.
Це одне з наймальовничіших місць в Грузії.
<p></p>
А <b> продовжимо </b> свято <b> в стародавньому місті Мцхета </b>, де є багато святих і культових місць.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (163, 1, '/images/wedding/wed_tbilisi_5_500x300.jpg', 'Свадебное застолье по-грузински', '', 'Ближе к концу  дня  вернемся в Тбилиси, где после небольшого отдыха вы сможете броситься с головой в водоворот грузинского веселья, 
                         потому что только <b>для вас и вашей компании</b> в уникальном аутентичном ресторанном комплексе «Мельница» 
                         (либо "Керия", "Старый город", "Мравал Жамиэри") <b>будет организовано настоящее традиционное грузинское застолье</b>.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (163, 2, '/images/wedding/wed_tbilisi_5_500x300.jpg', 'Georgian Wedding Celebration', '', 'By the end of the day  <b>we will return to Tbilisi where</b> after a short rest you will be able to rush headlong into the whirlpool of Georgian fun, 
                        because only for you and your company in the unique authentic restaurant complex "Melnitsa" (or Keriya, Old Town, Zhamiari ") 
                        a real traditional <b>Georgian feast will be organized</b>  which is considered to be the cultural heritage of Georgia and has the status 
                        of a monument of intangible culture.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (163, 3, '/images/wedding/wed_tbilisi_5_500x300.jpg', 'Свадебное застолье по-грузински', '', 'Ближе к концу  дня  вернемся в Тбилиси, где после небольшого отдыха вы сможете броситься с головой в водоворот грузинского веселья, 
                         потому что только <b>для вас и вашей компании</b> в уникальном аутентичном ресторанном комплексе «Мельница» 
                         (либо "Керия", "Старый город", "Мравал Жамиэри") <b>будет организовано настоящее традиционное грузинское застолье</b>.
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (163, 4, '/images/wedding/wed_tbilisi_5_500x300.jpg', 'Весільне застілля по-грузинськи', '', 'Ближче до кінця дня повернемося в Тбілісі, де після невеликого відпочинку ви зможете кинутися з головою у вир грузинського веселощів,
тому що тільки <b> для вас і вашої компанії </b> в унікальному автентичному ресторанному комплексі «Млин»
(Або "Керія", "Старе місто", "Мравал Жаміері") <b> буде організовано справжнє традиційне грузинське застілля </b>.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (164, 1, '/images/wedding/wed_tbilisi_6_500x300.jpg', 'Узким улочки старого города Тбилиси', '', '<h5>День 3</h5> <b>Свободный день для прогулок по Тбилиси</b>. 
                            Отель находится в самом центре города, поэтому Вам будет легко добраться до самых интересных мест, 
                            чтобы купить сувениры, прогуляться по узким улочкам старого города и насладится атмосферой Грузии.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (164, 2, '/images/wedding/wed_tbilisi_6_500x300.jpg', 'Narrow streets of old Tbilisi', '', '<h5>Day 3</h5> <b>Free day for walking around Tbilisi</b>. 
                            The hotel is located in the heart of the city, so you will easily get to the most interesting places to buy souvenirs, 
                            stroll through the narrow streets of the old city and enjoy the atmosphere of Georgia');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (164, 3, '/images/wedding/wed_tbilisi_6_500x300.jpg', 'Узким улочки старого города Тбилиси', '', '<h5>День 3</h5> <b>Свободный день для прогулок по Тбилиси</b>. 
                            Отель находится в самом центре города, поэтому Вам будет легко добраться до самых интересных мест, 
                            чтобы купить сувениры, прогуляться по узким улочкам старого города и насладится атмосферой Грузии.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (164, 4, '/images/wedding/wed_tbilisi_6_500x300.jpg', 'Вузькі вулички старого міста Тбілісі', '', '<h5> День 3 </h5> <b> Вільний день для прогулянок по Тбілісі </b>.
Готель знаходиться в самому центрі міста, тому Вам буде легко дістатися до найцікавіших місць,
щоб купити сувеніри, прогулятися по вузьких вуличках старого міста і насолодитися атмосферою Грузії.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (165, 1, '/images/team/our_team_Zaza_Tamara.jpg', 'Наша команда', 'Насыщенные и интересные экскурсии', '<ul>
                            <li><b>мы хотим</b> показавать Вам нашу страну, рассказать о её истории и <b>отвезти Вас в самые лучшие места</b>;</li>
                            <li>все маршруты мы проходим неоднократно, поэтому <b>программа</b> тура <b>всегда насыщенная и интересная, но,</b> в то же время, <b>не вызывает усталости</b>;</li>
                            <li>экскурсии проводят наши <b>общительные и весёлые гиды</b>, которые знают историю, религию, кулинарию, политику, спорт и даже что-то о воспитании детей! 
                                Общение с ними заражает каждого нашего гостя любовью к Грузии и желанием приезжать сюда снова и снова;</li>
                           <li> <b>мы говорим на разных языках</b>: русский, английский, украинский, грузинский, иврит </li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (165, 2, '/images/team/our_team_Zaza_Tamara.jpg', 'Our team', 'Saturated and interesting excursions', '<ul>
                            <li><b>we want</b> to show you our country, tell you about its history and <b>take you to the best places;</b></li>
                            <li>all routes we pass repeatedly, so the tour program is always full and interesting, but at the same time, it does not cause fatigue;</li>
                            <li>excursions are conducted by our <b>sociable and cheerful guides</b> who know history, religion, cooking, politics, 
                                sports and even something about raising children! 
                                Communicating with them infects every guest with his love for Georgia and the desire to come here again and again;</li>
                           <li><b>we speak different languages</b>: Russian, English, Ukrainian, Georgian, Hebrew</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (165, 3, '/images/team/our_team_Zaza_Tamara.jpg', 'Наша команда', 'Насыщенные и интересные экскурсии', '<ul>
                            <li><b>мы хотим</b> показавать Вам нашу страну, рассказать о её истории и <b>отвезти Вас в самые лучшие места</b>;</li>
                            <li>все маршруты мы проходим неоднократно, поэтому <b>программа</b> тура <b>всегда насыщенная и интересная, но,</b> в то же время, <b>не вызывает усталости</b>;</li>
                            <li>экскурсии проводят наши <b>общительные и весёлые гиды</b>, которые знают историю, религию, кулинарию, политику, спорт и даже что-то о воспитании детей! 
                                Общение с ними заражает каждого нашего гостя любовью к Грузии и желанием приезжать сюда снова и снова;</li>
                           <li> <b>мы говорим на разных языках</b>: русский, английский, украинский, грузинский, иврит </li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (165, 4, '/images/team/our_team_Zaza_Tamara.jpg', 'Наша команда', 'Насичені та цікаві екскурсії', '<ul>
                            <li><b>ми бажаємо</b> показати вам нашу країну, розповісти про свою історію та <b>відвести вас до найгарніших місць</b>;</li>
                            <li>всі маршрути ми проходимо неодноразово, тому <b>програма</b> туру <b>завжди повна і цікава, але </b> в той же час це <b>не викликає втоми</b>;</li>
                            <li>екскурсії проводять наші <b>товариські та веселі гіди</b>, які знають історію, релігію, кулінарну діяльність, політику, спорт і навіть щось про виховання дітей! 
                                Спілкування з ними заражає кожного гостя своїм коханням до Грузії та бажанням прийти сюди знову і знову;</li>
                           <li><b>ми розмовляємо різними мовами</b>: російською, англійською, українською, грузинською, івритом</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (166, 1, '/images/team/master-klass1.jpg', 'Кулинарные мастер-классы', 'Кулинарные мастер-классы', '<b>В нашем собственном маране</b> проходят кулинарные мастер-классы:
                            <ul>
                                <li>приготовление блюда из курицы: сациви, чохохбили или чкмерули;</li>
                                <li>хачапури;</li>
                                <li>хинкали;</li>
                                <li>шашлык по-грузински;</li>
                                <li>выпекание в печи хлеба пури;</li>
                                <li>изучение специй и соусов;</li>
                                <li><b>и отдельный супер мастер-класс по произнесению грузинских тостов!</b> ;)</li>
                            </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (166, 2, '/images/team/master-klass1.jpg', 'Culinary master classes', 'Culinary master classes', 'Cooking workshops are held <b>in our own maran</b>:
                            <ul>
                                <li>Preparation of a dish from a chicken: Satsivi, Chokhobili or Chkmeruli;</li>
                                <li>khachapuri;</li>
                                <li>khinkali;</li>
                                <li>shish kebab in Georgian;</li>
                                <li>baking in the oven of puri bread;</li>
                                <li>study of spices and sauces;</li>
                                <li><b>and a separate super master class on uttering Georgian toasts!</b> ;)</li>
                            </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (166, 3, '/images/team/master-klass1.jpg', 'Кулинарные мастер-классы', 'Кулинарные мастер-классы', '<b>В нашем собственном маране</b> проходят кулинарные мастер-классы:
                            <ul>
                                <li>приготовление блюда из курицы: сациви, чохохбили или чкмерули;</li>
                                <li>хачапури;</li>
                                <li>хинкали;</li>
                                <li>шашлык по-грузински;</li>
                                <li>выпекание в печи хлеба пури;</li>
                                <li>изучение специй и соусов;</li>
                                <li><b>и отдельный супер мастер-класс по произнесению грузинских тостов!</b> ;)</li>
                            </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (166, 4, '/images/team/master-klass1.jpg', 'Кулинарні майстер-класи', 'Кулинарні майстер-класи', '<b>У нашому власному марані</b> проходять кулинарні майстер-класи:
                            <ul>
                                <li>Готування страв із курки: Сациві, Чохобілі або Чкмерулі;</li>
                                <li>хачапурі;</li>
                                <li>хінкалі;</li>
                                <li>шашлик по-грузинські;</li>
                                <li>випікання у печі хліба пурі;</li>
                                <li>вивчення спецій та соусів;</li>
                                <li><b>и окремий супер майстер-класс з виголошення грузинських тостів!</b> ;)</li>
                            </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (167, 1, '/images/excoursions/rafting22.jpg', 'Безопасность прежде всего', 'Безопасность прежде всего', '<ul>
                            <li>наши <b>водители - имеют большой стаж вождения</b> и осторожно водят автомобиль, несмотря на грузинский темперамент;</li>
                            <li><b>обязательно</b> предусмотрена <b>техника безопасности</b> во время активных туров: рафтинг, спелеотуризм, восхождение в горах и так далее;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (167, 2, '/images/excoursions/rafting22.jpg', 'Safety first', 'Safety first', '<ul>
                            <li>our <b>drivers have a long driving experience</b> and drive car cautiously, despite the Georgian temperament;</li>
                            <li><b>safety is provided during active tours</b>: rafting, speleotourism, climbing in the mountains and so on;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (167, 3, '/images/excoursions/rafting22.jpg', 'Безопасность прежде всего', 'Безопасность прежде всего', '<ul>
                            <li>наши <b>водители - имеют большой стаж вождения</b> и осторожно водят автомобиль, несмотря на грузинский темперамент;</li>
                            <li><b>обязательно</b> предусмотрена <b>техника безопасности</b> во время активных туров: рафтинг, спелеотуризм, восхождение в горах и так далее;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (167, 4, '/images/excoursions/rafting22.jpg', 'Безпека насамперед', 'Безпека насамперед', '<ul>
                            <li>наші <b> водії - мають великий стаж водіння </b> і обережно водять автомобіль, незважаючи на грузинський темперамент;</li>
                            <li><B> обов\'язково </b> передбачена <b> техніка безпеки </b> під час активних турів: рафтинг, спелеотуризм, сходження в горах і таке інше;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (168, 1, '/images/team/bmw_1_500x300.jpg', 'Надёжный и комфортабельный транспорт', 'Надёжный и комфортабельный транспорт', 'Наши <b>автомобили оборудованы всем необходимым</b> для того, чтобы путешествие по Грузии было для Вас приятным:
                        <ul>
                            <li>легковой автомобиль <b>BMW E60</b> - для группы туристов до 4х человек;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (168, 2, '/images/team/bmw_1_500x300.jpg', 'Reliable and comfortable transport', 'Reliable and comfortable transport', 'Our <b>cars are equipped with everything necessary</b> to make the trip around Georgia pleasant for you:
                        <ul>
                            <li>car <b>BMW E60</b> - for a group of tourists up to 4 people;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (168, 3, '/images/team/bmw_1_500x300.jpg', 'Надёжный и комфортабельный транспорт', 'Надёжный и комфортабельный транспорт', 'Наши <b>автомобили оборудованы всем необходимым</b> для того, чтобы путешествие по Грузии было для Вас приятным:
                        <ul>
                            <li>легковой автомобиль <b>BMW E60</b> - для группы туристов до 4х человек;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (168, 4, '/images/team/bmw_1_500x300.jpg', 'Надійний і комфортабельний транспорт', 'Надійний і комфортабельний транспорт', 'Наші <b> автомобілі оснащені всім необхідним </b> для того, щоб подорож по Грузії була для Вас приємною:
                        <ul>
                            <li>легковий автомобіль <b> BMW E60 </b> - для групи туристів до 4-х осіб;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (169, 1, '/images/team/team_cars_3_500x300.jpg', 'Наши автомобили', ' ', '<ul>
                            <li> минивен <b>Mazda MPV</b> - для группы туристов до 7ми человек;</li>
                            <li> микроавтобусы <b>Mersedes VITO</b> - для группы туристов до 17ти человек;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (169, 2, '/images/team/team_cars_3_500x300.jpg', 'Our cars', ' ', '<ul>
                            <li> minivan <b>Mazda MPV</b> - for a group of tourists up to 7 people;</li>
                            <li> minibuses <b>Mersedes VITO</b> - for a group of tourists up to 17 people;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (169, 3, '/images/team/team_cars_3_500x300.jpg', 'Наши автомобили', ' ', '<ul>
                            <li> минивен <b>Mazda MPV</b> - для группы туристов до 7ми человек;</li>
                            <li> микроавтобусы <b>Mersedes VITO</b> - для группы туристов до 17ти человек;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (169, 4, '/images/team/team_cars_3_500x300.jpg', 'Наші автомобілі', ' ', '<ul>
                            <li>мінівен <b> Mazda MPV </b> - для групи туристів до 7ми осіб;</li>
                            <li>мікроавтобуси <b> Mercedes VITO </b> - для групи туристів до 17 ти осіб;</li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (170, 1, '/images/team/team_8_500x300.jpg', 'Питание в лучших ресторанах Грузии', 'Питание в лучших ресторанах Грузии', 'Грузинская кухня - это национальная особенность Грузии. Поэтому <b>мы поведем Вас в самые лучшие места</b>, 
                        чтобы Вы наслаждались каждым завтраком, обедом и ужином! Познакомим Вас с различными видами блюд 
                        и расскажем, что, как и с чем едят настоящие грузины.
                        <p>
                        Отдельное особое внимание также стоит обратить на ещё одну особенность Грузии - виноделие! Обязательно <b>угостим Вас домашним вином</b> 7-летней выдержки и <b>научим говорить тосты по-грузински!</b>     
                        </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (170, 2, '/images/team/team_8_500x300.jpg', 'Nutrition in the best restaurants in Georgia', 'Nutrition in the best restaurants in Georgia', 'Georgian cuisine is a national feature of Georgia. 
                        Therefore, <b>we will take you to the best places</b> so that you enjoy every breakfast, lunch and dinner! 
                        We will acquaint you with different types of dishes and tell you what, how and with what the real Georgians eat..
                        <p>
                       Special attention should also be paid to another feature of Georgia - winemaking! Must to <b> taste you with home wine </b> 7-years old and <b> teach to say the toasts in Georgian! </b>     
                        </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (170, 3, '/images/team/team_8_500x300.jpg', 'Питание в лучших ресторанах Грузии', 'Питание в лучших ресторанах Грузии', 'Грузинская кухня - это национальная особенность Грузии. Поэтому <b>мы поведем Вас в самые лучшие места</b>, 
                        чтобы Вы наслаждались каждым завтраком, обедом и ужином! Познакомим Вас с различными видами блюд 
                        и расскажем, что, как и с чем едят настоящие грузины.
                        <p>
                        Отдельное особое внимание также стоит обратить на ещё одну особенность Грузии - виноделие! Обязательно <b>угостим Вас домашним вином</b> 7-летней выдержки и <b>научим говорить тосты по-грузински!</b>     
                        </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (170, 4, '/images/team/team_8_500x300.jpg', 'Харчування в найкращих ресторанах Грузії', 'Харчування в найкращих ресторанах Грузії', 'Грузинська кухня - це національна особливість Грузії. Тому <b> ми поведемо Вас в найкращі місця </b>,
                         щоб Ви насолоджувалися кожним сніданком, обідом і вечерею! Познайомимо Вас з різними видами страв
                         і розповімо, що, як і з чим їдять справжні грузини.
                        <p>
                        Окрему особливу увагу також варто звернути на ще одну особливість Грузії - виноробство! Обов\'язково <b> почастуємо Вас домашнім вином </b> 7-річної витримки і <b> навчимо говорити тости по-грузинськи! </b>     
                        </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (171, 1, '/images/team/team_6_500x300.jpg', 'Поехали в Грузию с нами!', 'Поехали в Грузию с нами!', 'Грузия - уникальная страна! 
                        <p>Древние <b>традиции</b>, национальная <b>культура</b>, кавказская <b>кухня</b>, патриотизм, <b>душевное гостеприимство</b> и <b>новые друзья</b> - вот что Вас здесь ждёт!
                        <b>Приезжайте скорее!</b></p>
                        
                        <p></p>
                        С уважением, 
                        <p><b>ваши друзья - команда CoolGeorgia!</b></p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (171, 2, '/images/team/team_6_500x300.jpg', 'Let\'s go to Georgia with us!', 'Let\'s go to Georgia with us!', 'Georgia is a unique country! 
                       <p> Ancient <b> traditions </b>, national <b> culture </b>, Caucasian <b> cuisine </b>, patriotism, <b> spiritual hospitality </b> 
                       and <b> new friends </b> - that\'s what awaits you here!
                        <b>Come faster!</b></p>
                        
                        <p></p>
                        Yours faithfully, 
                        <p><b>your friends are the Cool Georgia team!</b></p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (171, 3, '/images/team/team_6_500x300.jpg', 'Поехали в Грузию с нами!', 'Поехали в Грузию с нами!', 'Грузия - уникальная страна! 
                        <p>Древние <b>традиции</b>, национальная <b>культура</b>, кавказская <b>кухня</b>, патриотизм, <b>душевное гостеприимство</b> и <b>новые друзья</b> - вот что Вас здесь ждёт!
                        <b>Приезжайте скорее!</b></p>
                        
                        <p></p>
                        С уважением, 
                        <p><b>ваши друзья - команда CoolGeorgia!</b></p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (171, 4, '/images/team/team_6_500x300.jpg', 'Поїхали до Грузії разом із нами!', 'Поїхали до Грузії разом з нами!', 'Грузія - це унікальна країна! 
                       <P> Стародавні <b> традиції </b>, національна <b> культура </b>, кавказька <b> кухня </b>, патріотизм, <b> душевна гостинність </b> і <b> нові друзі </b> - ось що Вас тут чекає!
                        <b>Приїжджайте швидше!</b></p>
                        
                        <p></p>
                        З повагою,
                        <P> <b> ваші друзі - команда Cool Georgia Travel! </b></P>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (172, 1, '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 'Теплый и гостеприимный Тбилиси', ' ', '<b>Наша цель</b> - показать людям Грузию и соседние страны Кавказа. Это удивительный край земли, окруженный высокими горами, который хранит в себе историю с древних времен.
                            <p></p>
                            <b>Мы разработали уникальные авторские туры</b>, которые подходят даже для путешественников с особыми туристическими запросами:  
                         <ul>
                         <li>
                                максимально <b>насыщенные программы</b>, 
                                <b>комфортное проживание</b> и <b>транспортное обслуживание</b>, 
                                и, самое важное, 
                                <b>интересные экскурсии с опытным</b> коммуникабельным <b>гидом</b>, знающим своё дело и историю страны. 
                         </li>   
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (172, 2, '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 'Warm and hospitable Tbilisi', ' ', '<b> Our goal </b> is to show people Georgia and the neighboring countries of the Caucasus. 
                            This is an amazing edge of the earth, surrounded by high mountains, which keeps a history from ancient times.
                            <p> </p>
                        <b> We have developed unique author\'s tours </b>, which are suitable even for travelers with special tourist requests:
                         <ul>
                            <li>maximum <b> rich programs </b>,
                            <b> Comfortable accommodation </b> and <b> Transport services </b>,
                            and the most important,
                            <b> interesting excursions with an experienced </b> communicative <b> guide </b>, who knows their business and the history of the country.
                         </li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (172, 3, '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 'Теплый и гостеприимный Тбилиси', ' ', '<b>Наша цель</b> - показать людям Грузию и соседние страны Кавказа. Это удивительный край земли, окруженный высокими горами, который хранит в себе историю с древних времен.
                            <p></p>
                            <b>Мы разработали уникальные авторские туры</b>, которые подходят даже для путешественников с особыми туристическими запросами:  
                         <ul>
                         <li>
                                максимально <b>насыщенные программы</b>, 
                                <b>комфортное проживание</b> и <b>транспортное обслуживание</b>, 
                                и, самое важное, 
                                <b>интересные экскурсии с опытным</b> коммуникабельным <b>гидом</b>, знающим своё дело и историю страны. 
                         </li>   
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (172, 4, '/images/tours/tour_5days_tbilisi_batumi_11_500x300.jpg', 'Теплий та гостинний Тбілісі', ' ', '<b> Наша мета </b> - показати людям Грузію і сусідні країни Кавказу. Це дивовижний край землі, оточений високими горами, який зберігає в собі історію з давніх часів.
                            <p> </p>
                            <b> Ми розробили унікальні авторські тури </b>, які підходять навіть для мандрівників з особливими туристичними запитами:
                         <ul>
                         <li>
                                максимально <b> насичені програми </b>,
                                <B> комфортне проживання </b> і <b> транспортне обслуговування </b>,
                                і, найважливіше,
                                <b> цікаві екскурсії з досвідченим </b> комунікабельним <b> гідом </b>, які знають свою справу і історію країни.
                         </li>
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (173, 1, '/images/team/partners_500x300.jpg', 'Уважаем и ценим наших партнеров!', 'Давайте делать это вместе!', 'У нас в наличии:
                        <ul>
                            <li><b>Готовые</b> интересные <b>туры с экскурсионными программами и проживанием</b>;</li>
                            <li><b>Индивидуальная разработка программы тура</b> для туристов с особыми запросами и пожеланиями;</li>
                            <li>Программы <b>для корпоративного отдыха</b>;</li> 
                            <li>Большой <b>выбор</b> отдельных <b>однодневных экскурсии</b>;</li>
                            
                            <li>Наш <b>гостевой дом в центре Тбилиси</b>, <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=6317b6dee3874a6a0090a6de6499a009;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1529145361;srfid=1c15dbaae63fae33b181072856770031b852bf6bX1;srpvid=06b54a87694b0158;type=total;ucfs=1"> Guest House Zemeli</a>
                                (имеет высокий рейтинг на booking.com);</li>
                            <li><b>комфортабельный транспорт</b> для оказания услуг любой группе туристов;</li>
                            <li><b>наличие контрактов с другими отелями</b> в центре Тбилиси и других городах Грузии (3,4,5 звезд)</li> 
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (173, 2, '/images/team/partners_500x300.jpg', 'We respect and value our partners!', 'Let\'s do it together!', 'In our possession:
                            <ul>
                            <li> <b> Finished </b> interesting <b> tours with excursions and accommodation </b>; </li>
                            <li> <b> Individual development of the tour program </b> for tourists with special requests and wishes </li>
                            <li> Programs <b> for corporate leisure </b>; </li>
                            <li> Large <b> select </b> individual <b> day trips </b>; </li>
                            
                            
                            <li> Our <b> guest house in the center of Tbilisi,</b> <a href=https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=ec43d76d04cd484423152ac636c53518;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1531075492;srfid=19429175a9d39fdc0556fa60969b656d16fde775X1;srpvid=098483d174030423;type=total;ucfs=1"> Guest House Zemeli</a>
                            (has a high rating on booking.com); </li>
                            <li> <b> comfortable transport </b> to provide services to any group of tourists </li>
                            <li> <b> availability of contracts with other hotels </b> in the center of Tbilisi and other cities of Georgia (3,4,5 stars) </li>
                            </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (173, 3, '/images/team/partners_500x300.jpg', 'Уважаем и ценим наших партнеров!', 'Давайте делать это вместе!', 'У нас в наличии:
                        <ul>
                            <li><b>Готовые</b> интересные <b>туры с экскурсионными программами и проживанием</b>;</li>
                            <li><b>Индивидуальная разработка программы тура</b> для туристов с особыми запросами и пожеланиями;</li>
                            <li>Программы <b>для корпоративного отдыха</b>;</li> 
                            <li>Большой <b>выбор</b> отдельных <b>однодневных экскурсии</b>;</li>
                            
                            <li>Наш <b>гостевой дом в центре Тбилиси</b>, <a href="https://www.booking.com/hotel/ge/guest-house-zemeli.ru.html?aid=315714;label=guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atiaud-285284111406%3Akwd-419186961192%3Alp1012864%3Ali%3Adec%3Adm;sid=6317b6dee3874a6a0090a6de6499a009;dest_id=900047975;dest_type=city;dist=0;hapos=1;hpos=1;room1=A%2CA;sb_price_type=total;srepoch=1529145361;srfid=1c15dbaae63fae33b181072856770031b852bf6bX1;srpvid=06b54a87694b0158;type=total;ucfs=1"> Guest House Zemeli</a>
                                (имеет высокий рейтинг на booking.com);</li>
                            <li><b>комфортабельный транспорт</b> для оказания услуг любой группе туристов;</li>
                            <li><b>наличие контрактов с другими отелями</b> в центре Тбилиси и других городах Грузии (3,4,5 звезд)</li> 
                         </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (173, 4, '/images/team/partners_500x300.jpg', 'Поважаємо і цінуємо наших партнерів!', 'Давайте робити це разом!', 'У нас в наявності: <ul> <li> <b> Готові </b> цікаві <b> тури з екскурсійними програмами і проживанням </b>; </li> <li> <b> Індивідуальна розробка програми туру </b> для туристів з особливими потребами й побажаннями; </li> <li> Програми <b> для корпоративного відпочинку </b>; </li> <li> Великий <b> вибір </b> окремих <b> одноденних екскурсії </b>; </li> <li> Наш <b> гостьовий будинок в центрі Тбілісі </b>, <a href = "https://www.booking.com/hotel/ge/guest-house- zemeli.ru.html? aid = 315714; label = guest-house-zemeli-oGmcTqCQ4T30QfZX1mY6NQS161700161450% 3Apl% 3Ata% 3Ap1% 3Ap2% 3Aac% 3Aap1t1% 3Aneg% 3Afi% 3Atiaud-+285284111406% ​​3Akwd-+419186961192% 3Alp1012864% 3Ali% 3Adec% 3Adm; sid = 6317b6dee3874a6a0090a6de6499a009; dest_id = 900047975; dest_type = city; dist = 0; hapos = 1; hpos = 1; room1 = A% 2CA; sb_price_typ e = total; srepoch = 1529145361; srfid = 1c15dbaae63fae33b181072856770031b852bf6bX1; srpvid = 06b54a87694b0158; type = total; ucfs = 1 "> Guest House Zemeli </a> (має високий рейтинг на booking.com); </li> <li> < b> комфортабельний транспорт </b> для надання послуг будь-якій групі туристів; </li> <li> <b> наявність контрактів з іншими готелями </b> в центрі Тбілісі та інших містах Грузії (3,4,5 зірок) < /li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (174, 1, '/images/team/team_6_500x300.jpg', 'Рады сотрудничеству с новыми партнерами', '', '<b>Рассмотрим ваши предложения по удобным для Вас форматам сотрудничества.</b>
                        <p></p>
                          <p>Мы всегда рады сотрудничеству с новыми партнерами и очень ценим тех, кто остается с нами.</p> 
                               
                        <p></p>
                       <b>С уважением</b>, учредители <b>LLC Zemeli Tour (агенство Cool Georgia Travel)</b> 
                       <p> Заза Мтчедлишвили и Елена Гордиенко</p> 
                        <p></p>
                       <a href="http://coolgeorgia.com/page/contacts.html"> <b><u>СВЯЖИТЕСЬ С НАМИ</u></b></a> любым удобным для Вас способом');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (174, 2, '/images/team/team_6_500x300.jpg', 'We are glad to cooperate with new partners', '', '<b> Consider your suggestions for a convenient format for cooperation. </b>
                        <p> </p>
                        <p> We are always glad to cooperate with new partners and very much appreciate those who remain with us. </p>
                        
                        <p> </p>
                        <b> Sincerely, </b>the founders of LLC Cool Georgia Travel </b>
                        <p> Zaza Mtchedlishvili and Elena Gordienko </p>
                        <p> </p>
                        <a href="http://coolgeorgia.com/en/page/contacts.html"> <b> <u> CONTACT US </u> </b> </a>  in any way convenient for you');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (174, 3, '/images/team/team_6_500x300.jpg', 'Рады сотрудничеству с новыми партнерами', '', '<b>Рассмотрим ваши предложения по удобным для Вас форматам сотрудничества.</b>
                        <p></p>
                          <p>Мы всегда рады сотрудничеству с новыми партнерами и очень ценим тех, кто остается с нами.</p> 
                               
                        <p></p>
                       <b>С уважением</b>, учредители <b>LLC Zemeli Tour (агенство Cool Georgia Travel)</b> 
                       <p> Заза Мтчедлишвили и Елена Гордиенко</p> 
                        <p></p>
                       <a href="http://coolgeorgia.com/page/contacts.html"> <b><u>СВЯЖИТЕСЬ С НАМИ</u></b></a> любым удобным для Вас способом');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (174, 4, '/images/team/team_6_500x300.jpg', 'Раді співпраці з новими партнерами', '', '<b> Розглянемо ваші пропозиції по зручним для Вас форматам співпраці. </b>
                        <p> </p>
                          <p> Ми завжди раді співпраці з новими партнерами і дуже цінуємо тих, хто залишається з нами. </p>
                        <p> </p>
                       <b> З повагою </b>, засновники <b> LLC Zemeli Tour (агенція Cool Georgia Travel) </b>
                       <p> Заза Мтчедлішвілі і Олена Гордієнко </p>
                        <p> </p>
                       <a href="http://coolgeorgia.com/page/contacts.html"> <b> <u> ЗВ\'ЯЖІТЬСЯ З НАМИ </u> </b> </a> будь-яким зручним для Вас способом');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (175, 1, '/images/tours/marshrut1.png', 'В Грузию на автомобиле. День 1', null, '<h5>День 1</h5> <p>Дорога предстоит дальняя, но очень интересная!</p><p>Выезд из Украины; город Сумы или город Харьков. Прохождение границы Украина-Россия занимает около 1,5 - 2 часа.  Проезжаем в первый день 850 км до города Ростов-на-Дону. Там останавливаемся на ночь в отеле, чтобы отдохнуть и принять душ.</p> <p> Питание в дороге самостоятельное: можно взять с собой бутерброды, овощи, фрукты, термос (кофе, чай).</p>
');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (175, 2, '/images/tours/marshrut1.png', 'В Грузию на автомобиле. День 1', null, '<h5>День 1</h5> <p>Дорога предстоит дальняя, но очень интересная!</p><p>Выезд из Украины; город Сумы или город Харьков. Прохождение границы Украина-Россия занимает около 1,5 - 2 часа.  Проезжаем в первый день 850 км до города Ростов-на-Дону. Там останавливаемся на ночь в отеле, чтобы отдохнуть и принять душ.</p> <p> Питание в дороге самостоятельное: можно взять с собой бутерброды, овощи, фрукты, термос (кофе, чай).</p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (175, 3, '/images/tours/marshrut1.png', 'В Грузию на автомобиле. День 1', null, '<h5>День 1</h5> <p>Дорога предстоит дальняя, но очень интересная!</p><p>Выезд из Украины; город Сумы или город Харьков. Прохождение границы Украина-Россия занимает около 1,5 - 2 часа.  Проезжаем в первый день 850 км до города Ростов-на-Дону. Там останавливаемся на ночь в отеле, чтобы отдохнуть и принять душ.</p> <p> Питание в дороге самостоятельное: можно взять с собой бутерброды, овощи, фрукты, термос (кофе, чай).</p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (175, 4, '/images/tours/marshrut1.png', 'В Грузию на автомобиле. День 1', null, '<h5>День 1</h5> <p>Дорога предстоит дальняя, но очень интересная!</p><p>Выезд из Украины; город Сумы или город Харьков. Прохождение границы Украина-Россия занимает около 1,5 - 2 часа.  Проезжаем в первый день 850 км до города Ростов-на-Дону. Там останавливаемся на ночь в отеле, чтобы отдохнуть и принять душ.</p> <p> Питание в дороге самостоятельное: можно взять с собой бутерброды, овощи, фрукты, термос (кофе, чай).</p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (176, 1, '/images/tours/marshrut2.png', 'В Грузию на автомобиле. День 2', null, '<h5>День 2</h5> <p>Ранний выезд утром, в 06:00. Наша цель приехать в Грузию около 17:00, чтобы успеть увидеть красоту Казбека и Крестового перевала. Но, в случае задержки при прохождении границы Россия – Грузия (пункт пропуска «Верхний Ларс») увидеть эти места в светлое время суток мы сможем на обратном пути.</p>
<p>Питание в дороге самостоятельное: это уже второй день в пути, поэтому остановимся в проверенном кафе, где можно покушать горячее первое блюдо, или что-то ещё…готовят там быстро и вкусно.</p>
<p>К концу дня приедем в Тбилиси, где нас встретят, накормят и угостят вкусным домашним вином.</p>
<p>Ночь в Тбилиси.</p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (176, 2, '/images/tours/marshrut2.png', 'В Грузию на автомобиле. День 2', null, '<h5>День 2</h5> <p>Ранний выезд утром, в 06:00. Наша цель приехать в Грузию около 17:00, чтобы успеть увидеть красоту Казбека и Крестового перевала. Но, в случае задержки при прохождении границы Россия – Грузия (пункт пропуска «Верхний Ларс») увидеть эти места в светлое время суток мы сможем на обратном пути.</p>
<p>Питание в дороге самостоятельное: это уже второй день в пути, поэтому остановимся в проверенном кафе, где можно покушать горячее первое блюдо, или что-то ещё…готовят там быстро и вкусно.</p>
<p>К концу дня приедем в Тбилиси, где нас встретят, накормят и угостят вкусным домашним вином.</p>
<p>Ночь в Тбилиси.</p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (176, 3, '/images/tours/marshrut2.png', 'В Грузию на автомобиле. День 2', null, '<h5>День 2</h5> <p>Ранний выезд утром, в 06:00. Наша цель приехать в Грузию около 17:00, чтобы успеть увидеть красоту Казбека и Крестового перевала. Но, в случае задержки при прохождении границы Россия – Грузия (пункт пропуска «Верхний Ларс») увидеть эти места в светлое время суток мы сможем на обратном пути.</p>
<p>Питание в дороге самостоятельное: это уже второй день в пути, поэтому остановимся в проверенном кафе, где можно покушать горячее первое блюдо, или что-то ещё…готовят там быстро и вкусно.</p>
<p>К концу дня приедем в Тбилиси, где нас встретят, накормят и угостят вкусным домашним вином.</p>
<p>Ночь в Тбилиси.</p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (176, 4, '/images/tours/marshrut2.png', 'В Грузию на автомобиле. День 2', null, '<h5>День 2</h5> <p>Ранний выезд утром, в 06:00. Наша цель приехать в Грузию около 17:00, чтобы успеть увидеть красоту Казбека и Крестового перевала. Но, в случае задержки при прохождении границы Россия – Грузия (пункт пропуска «Верхний Ларс») увидеть эти места в светлое время суток мы сможем на обратном пути.</p>
<p>Питание в дороге самостоятельное: это уже второй день в пути, поэтому остановимся в проверенном кафе, где можно покушать горячее первое блюдо, или что-то ещё…готовят там быстро и вкусно.</p>
<p>К концу дня приедем в Тбилиси, где нас встретят, накормят и угостят вкусным домашним вином.</p>
<p>Ночь в Тбилиси.</p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (177, 1, '/images/tours/avto_11.png', 'Тбилиси и его цветные домики', '', '<h5>День 3</h5>Настало время для настоящего знакомства с Тбилиси. Вы увидите:
                         <ul>
                            <li><b>Черепашье озеро</b> - очень красивое и романтическое место;</li>
                            <li><b>Спуск и подъём на канатных дорогах</b>, во время которых, даже те кто боится высоты, забывают об этом и делают нереально красивые фото;</li>
                            <li><b>Главный кафедральный собор</b> Грузии - Троица и церковь VI века - Метехи;</li>
                            <li>Парк Рике, мост Мира, площадь Эрекле II, театр Габриаде, улица Шарден;</li>
                            <li>Мост Метехи и подъем на канатной дороге на <b>крепость Нарикала</b>;</li>
                            <li>Прогулка по Ботаническому саду;</li>
                            <li>Подъём на <b>самую высокую точку Тбилиси - фуникулер</b> Мтацминда. Там вы сможете увидеть весь город с колеса обозрения и посетить парк аттракционов.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (177, 2, '/images/tours/avto_11.png', 'Тбилиси и его цветные домики', '', '<h5>Day 3</h5>It\'s time for a real acquaintance with Tbilisi. You will see:
                         <ul>
                            <li><b>Turtle Lake</b> is a very beautiful and romantic place;</li>
                            <li><b>Descent and ascent on cable cars</b>, during which, even those who are afraid of heights, forget about it and make unreal beautiful photos;</li>
                            <li><b>The main cathedral of</b> Georgia - the Trinity and the church of the VI century - Metekhi;</li>
                            <li>Ricke Park, Peace Bridge, Erekle II Square, Gabriade Theater, Chardin Street</li>
                            <li>Metekhi Bridge and the ascent on the cable car to <b>Narikala Fortress</b>;</li>
                            <li>Walk on the Botanical Gardens;</li>
                            <li>The ascent to <b>the highest point of Tbilisi is the</b> Mtatsminda <b>funicular</b>. There you can see the whole city from the Ferris wheel and visit the amusement park..</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (177, 3, '/images/tours/avto_11.png', 'Тбилиси и его цветные домики', '', '<h5>День 3</h5>Настало время для настоящего знакомства с Тбилиси. Вы увидите:
                         <ul>
                            <li><b>Черепашье озеро</b> - очень красивое и романтическое место;</li>
                            <li><b>Спуск и подъём на канатных дорогах</b>, во время которых, даже те кто боится высоты, забывают об этом и делают нереально красивые фото;</li>
                            <li><b>Главный кафедральный собор</b> Грузии - Троица и церковь VI века - Метехи;</li>
                            <li>Парк Рике, мост Мира, площадь Эрекле II, театр Габриаде, улица Шарден;</li>
                            <li>Мост Метехи и подъем на канатной дороге на <b>крепость Нарикала</b>;</li>
                            <li>Прогулка по Ботаническому саду;</li>
                            <li>Подъём на <b>самую высокую точку Тбилиси - фуникулер</b> Мтацминда. Там вы сможете увидеть весь город с колеса обозрения и посетить парк аттракционов.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (177, 4, '/images/tours/avto_11.png', 'Тбилиси и его цветные домики', '', '<h5> День 3 </h5> Настав час для справжнього знайомства з Тбілісі. Ви побачите: <ul> <li> <b> Черепахове озеро </b> - дуже красиве і романтичне місце; </li> <li> <b> Спуск і підйом канатними дорогами </b>, під час яких, навіть ті хто бояться висоти, забувають про це і роблять нереально красиві фото; </li> <li> <b> Головний кафедральний собор </b> Грузії - Трійця і церква VI століття - Метехі; </li> <li> Парк Ріці, міст Миру, площа Ереклє II, театр Габріаде, вулиця Шарден; </li> <li> міст Метехі і підйом на канатній дорозі до <b> фортеці Нарікала </b>; </li> <li> Прогулянка по Ботанічному саду; </li> <li> Підйом на <b> найвищу точку Тбілісі - фунікулер </b> Мтацминда. Там ви зможете побачити все місто з оглядового колеса і відвідати парк атракціонів. </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (178, 1, '/images/cards/tour_weekend_500x300.jpg', 'Эксукрсия к древней столице Грузии - Мцхета', '', '<h5>День 4</h5>Экскурсия к древней столице Грузии - <b>Мцхета</b>, где находится много святых и культовых мест:
                         <ul>
                            <li>знаменитый <b>монастырь Джвари</b>, который был построен конце VI века на вершине горы, возле места слияния двух рек Куры и Арагви;</li>
                            <li><b>кафедральный собор Светицховели</b>;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>;</li>
                            <li>действующий <b>мужской монастырь Шио-Мгвиме</b>;</li>
                            <li>прогулка по городу Мцхета</li>
                           </ul>
						    
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (178, 2, '/images/cards/tour_weekend_500x300.jpg', 'Excursion to the ancient capital of Georgia - Mtskheta', '', '<h5>Day 4</h5>Tour to the ancient capital of Georgia - <b>Mtskheta </b>, where there are many holy and cult places:
                         <ul>
                            <li>the famous <b>Jvari Monastery</b>, which was built at the end of the 6th century on the top of the mountain, near the confluence of the two rivers Kura and Aragvi;</li>
                            <li><b>Svetitskhoveli Cathedral</b>;</li>
                            <li>The operating <b>Samtavro Convent </b>;</li>
                            <li>The operating <b>monastery of Shio-Mgvime</b>;</li>
                            <li>walk around the city of Mtskheta</li>
                           </ul>
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (178, 3, '/images/cards/tour_weekend_500x300.jpg', 'Excursion to the ancient capital of Georgia - Mtskheta', '', '<h5>День 4</h5>Экскурсия к древней столице Грузии - <b>Мцхета</b>, где находится много святых и культовых мест:
                         <ul>
                            <li>знаменитый <b>монастырь Джвари</b>, который был построен конце VI века на вершине горы, возле места слияния двух рек Куры и Арагви;</li>
                            <li><b>кафедральный собор Светицховели</b>;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>;</li>
                            <li>действующий <b>мужской монастырь Шио-Мгвиме</b>;</li>
                            <li>прогулка по городу Мцхета</li>
                           </ul>
						   
                        
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (178, 4, '/images/cards/tour_weekend_500x300.jpg', 'Ексукрсія до древньої столиці Грузії - Мцхета', '', '<h5> День 4 </h5> Екскурсія у стародавній столиці Грузії - <b> 
місті Мцхета </b>, де знаходиться багато святих і культових місць: <ul> <li> відомий <b> монастир Джварі </b>, який був побудований наприкінці VI століття на вершині гори, біля місця злиття двох річок Кури і Арагві; </li> <li> <b> кафедральний собор Светіцховелі </b>; </li> <li> діючий <b> жіночий монастир Самтавро </b>; </li> <li> діючий <b> чоловічий монастир Шио-Мгвіме </b>; </li> <li> прогулянка по місту Мцхета </li> </ul>
');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (179, 1, '/images/tours/avto_14.png', 'маран в нашем отеле Zemeli Guest House', '', '<h5>День 5</h5> <p><b>День для самостоятельного проведения времени</b>. 
                             Отель находится в самом центре Тбилиси, поэтому Вам легко будет добраться до интересных мест: 
                             старый город, сувенирные лавки, винареи...</p>
<p>К концу дня, желающие, могут посетить известные <b>тбилисские серные бани</b>. Окунуться в бассейн с горячей водой, выпить травяной чай, заказать массаж и расслабиться</p>							 
                            
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (179, 2, '/images/tours/avto_14.png', 'Maran in our hotel Zemeli Guest House', '', '<h5>Day 5</h5> <p><b>Day for self-time</b>. 
                             The hotel is located in the very center of Tbilisi, so you can easily get to interesting places: the old town, souvenir shops, wineries ...</p>
<p> By the end of the day, those who wish can visit the famous Tbilisi <b>sulfur baths</b>. Plunge into the pool with hot water, drink herbal tea, order a massage and relax </p>
                        
						');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (179, 3, '/images/tours/avto_14.png', 'Maran in our hotel Zemeli Guest House', '', '<h5>День 5</h5> <p><b>День для самостоятельного проведения времени</b>. 
                             Отель находится в самом центре Тбилиси, поэтому Вам легко будет добраться до интересных мест: 
                             старый город, сувенирные лавки, винареи...</p>
							 <p>К концу дня, желающие, могут посетить известные <b>тбилисские серные бани.</b> Окунуться в бассейн с горячей водой, выпить травяной чай, заказать массаж и расслабиться</p>
                            ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (179, 4, '/images/tours/avto_14.png', 'Маран в нашому готелі Zemeli Guest House', '', '<h5> День 5 </h5> Це <b> день для самостійного проведення часу </b>. <p> Готель знаходиться в самому центрі Тбілісі, тому легко буде дістатися до цікавих місць: старе місто, сувенірні лавки, винареї ... </p> 
<P> Наприкінці цього дня, бажаючі, можуть відвідати відомі <b>тбіліські сірчані лазні</b>. Поринути в басейн з гарячою водою, випити трав\'яний чай, замовити масаж і розслабитися </ p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (180, 1, '/images/tours/tour_8days_kaheti_500x300.jpg', 'Путешествие в Кахетию', '', '<h5>День 6</h5><b>Путешествие в Кахетию</b> - край виноделия и любви. Вас ждёт:
                         <ul>
                            <li><b>Сигнахи</b> - город влюбленных. Красивый небольшой город с красными крышами, откуда открывается удивительный вид на Алазанскую долину;</li>
                            <li><b>монастырь Бодбе</b>, который знаменит источником с целебной водой. Место, куда специально приезжают люди из разных стран в надежде получить исцеление и проходят при этом 657 ступеней во время спуска к источнику;</li>
                            <li><b>экскурсия на</b> современном <b>винном заводе Хареба</b>.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (180, 2, '/images/tours/tour_8days_kaheti_500x300.jpg', 'Travel to Kakheti', '', '<h5>Day 6</h5><b>Traveling to Kakheti</b> is the land of winemaking and love. Is waiting for you:
                         <ul>
                            <li><b>Sighnaghi </b>  is a city of love. A beautiful small town with red roofs, from where you can see amazing views of the Alazani Valley;</li>
                            <li><b>the monastery of Bodbe</b>, which is famous for its source of healing water. 
                                    A place specially visited by people from different countries in the hope of receiving healing and pass at this 657 steps during the descent to the source;</li>
                            <li><b>excursion at the</b> modern  <b>winery of Khareba</b>.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (180, 3, '/images/tours/tour_8days_kaheti_500x300.jpg', 'מסעות אל Kakheti', '', '<h5>День 6</h5><b>Путешествие в Кахетию</b> - край виноделия и любви. Вас ждёт:
                         <ul>
                            <li><b>Сигнахи</b> - город влюбленных. Красивый небольшой город с красными крышами, откуда открывается удивительный вид на Алазанскую долину;</li>
                            <li><b>монастырь Бодбе</b>, который знаменит источником с целебной водой. Место, куда специально приезжают люди из разных стран в надежде получить исцеление и проходят при этом 657 ступеней во время спуска к источнику;</li>
                            <li><b>экскурсия на</b> современном <b>винном заводе Хареба</b>.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (180, 4, '/images/tours/tour_8days_kaheti_500x300.jpg', 'Подорож до Кахетії', '', '<h5> День 6 </h5> <b> Подорож до Кахетії </b> - край виноробства і кохання. На вас чекає:
                         <ul>
                            <li> <b> Сигнахі </b> - місто закоханих. Гарне невеличке місто з червоними дахами, звідти відкривається дивовижний вид на Алазанську долину; </li>
                            <li> <b> монастир Бодбе </b>, де є відоме джерело із цілющою водою. Місце, куди спеціально приїзджають люди з різних країн в надії отримати зцілення і проходять при цьому 657 ступенів під час спуску сходами до джерела; </li>
                            <li> <b> екскурсія до </b> сучасного <b> винного заводу Хареба </b>. </li>
                           </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (181, 1, '/images/tours/avto_3_500_385.png', 'Путешествие в Грузию на автомобиле', ' ', '<h5>Чем этот тур отличается от всех автобусных туров в Грузию?</h5>
<ul>
<li>Едем на комфортном 7-ми местном минивэне Mersedes Benz VITO, который создан для дальних поездок. <b>« НЕТ» длинным очередям</b> на заправках за кофе или в уборную, <b>«НЕТ» долгим ожиданиям </b>, пока все 40 человек соберутся и можно продолжать путь</li>
<li>В отличие от автобусных туров, данное путешествие комфортнее, так как <b>компания</b> собирается <b>небольшая</b> и уже с первых минут поездки <b>все становятся друзьями!</b>  Новые истории из жизни, опыт, разные профессии, разный возраст – всё это делает путешествием по-настоящему  увлекательным!</li>
<li><b>Никаких ночных переездов!</b> В пути предусмотрена ночь в отеле. Делаем <b>остановки по желанию</b> группы, также учитываем возраст наших гостей, чтобы всем было удобно и комфортно </li>
<li>Наш водитель – профессионал, который имеет большой стаж вождения и хорошее чувство юмора, что делает поездку весёлой и интересной! И ещё до приезда в Грузию он расскажет вам много про эту страну и её жителей</li>
</ul>
<p><b>ПОЕХАЛИ!</b></p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (181, 2, '/images/tours/avto_3_500_385.png', 'Путешествие в Грузию на автомобиле', ' ', '<h5>Чем этот тур отличается от всех автобусных туров в Грузию?</h5>
<ul>
<li>Едем на комфортном 7-ми местном минивэне Mersedes Benz VITO, который создан для дальних поездок. Есть поговорка: «меньше народа – больше кислорода» ))) , « НЕТ» длинным очередям на заправках за кофе или в уборную, «НЕТ» долгим ожиданиям, пока все 40 человек соберутся и можно продолжать путь</li>
<li>В отличие от автобусных туров, данное путешествие комфортнее, так как компания собирается небольшая и уже с первых минут поездки все становятся друзьями!  Новые истории из жизни, опыт, разные профессии, разный возраст – всё это делает путешествием по-настоящему  увлекательным!</li>
<li>Никаких ночных переездов! В пути предусмотрена ночь в отеле. Делаем остановки по желанию группы, также учитываем возраст наших гостей, чтобы всем было удобно и комфортно </li>
<li>Наш водитель – профессионал, который имеет большой стаж вождения и хорошее чувство юмора, что делает поездку весёлой и интересной! И ещё до приезда в Грузию он расскажет вам много про эту страну и её жителей</li>
</ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (181, 3, '/images/tours/avto_3_500_385.png', 'Путешествие в Грузию на автомобиле', ' ', '<h5>Чем этот тур отличается от всех автобусных туров в Грузию?</h5>
<ul>
<li>Едем на комфортном 7-ми местном минивэне Mersedes Benz VITO, который создан для дальних поездок. Есть поговорка: «меньше народа – больше кислорода» ))) , « НЕТ» длинным очередям на заправках за кофе или в уборную, «НЕТ» долгим ожиданиям, пока все 40 человек соберутся и можно продолжать путь</li>
<li>В отличие от автобусных туров, данное путешествие комфортнее, так как компания собирается небольшая и уже с первых минут поездки все становятся друзьями!  Новые истории из жизни, опыт, разные профессии, разный возраст – всё это делает путешествием по-настоящему  увлекательным!</li>
<li>Никаких ночных переездов! В пути предусмотрена ночь в отеле. Делаем остановки по желанию группы, также учитываем возраст наших гостей, чтобы всем было удобно и комфортно </li>
<li>Наш водитель – профессионал, который имеет большой стаж вождения и хорошее чувство юмора, что делает поездку весёлой и интересной! И ещё до приезда в Грузию он расскажет вам много про эту страну и её жителей</li>
</ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (181, 4, '/images/tours/avto_3_500_385.png', 'Путешествие в Грузию на автомобиле', '', '<h5>Чем этот тур отличается от всех автобусных туров в Грузию?</h5>
<ul>
<li>Едем на комфортном 7-ми местном минивэне Mersedes Benz VITO, который создан для дальних поездок. Есть поговорка: «меньше народа – больше кислорода» ))) , « НЕТ» длинным очередям на заправках за кофе или в уборную, «НЕТ» долгим ожиданиям, пока все 40 человек соберутся и можно продолжать путь</li>
<li>В отличие от автобусных туров, данное путешествие комфортнее, так как компания собирается небольшая и уже с первых минут поездки все становятся друзьями!  Новые истории из жизни, опыт, разные профессии, разный возраст – всё это делает путешествием по-настоящему  увлекательным!</li>
<li>Никаких ночных переездов! В пути предусмотрена ночь в отеле. Делаем остановки по желанию группы, также учитываем возраст наших гостей, чтобы всем было удобно и комфортно </li>
<li>Наш водитель – профессионал, который имеет большой стаж вождения и хорошее чувство юмора, что делает поездку весёлой и интересной! И ещё до приезда в Грузию он расскажет вам много про эту страну и её жителей</li>
</ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (182, 1, '/images/tours/avto_8.jpg', 'Кулинарный мастер-класс в маране', '', 'А вечером</b> вас ждет <b>кулинарный мастер-класс</b>. Он пройдет <b>в собственном маране</b> (винном погребе) <b>нашего отеля</b>. Вместе с нашим поваром мы приготовим Хачапури, шашлык по-грузински, испечем в печи свой собственный хлеб пури и обязательно разберемся в грузинских соусах и приправах.</p>
                         <p>Потом съедим всё это под <b>душевные грузинские тосты с домашним вином</b> 7-летней выдержки!</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (182, 2, '/images/tours/avto_8.jpg', 'Culinary master class in marani', '', 'In the evening, you will find a <b> culinary master class </b>.  It will be held <b>in our own marana</b> (wine cellar) <b>of our hotel</b>. Together with our chef we will cook Khachapuri, shish kebab in Georgian, bake your own puri bread in the oven and be sure to understand Georgian sauces and seasonings..</p>
                         <p>Then we will eat all this under the <b>hearty Georgian toasts with the home wine</b> of 7 years old!</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (182, 3, '/images/tours/avto_8.jpg', 'Culinary master class in marani', '', 'А вечером</b> вас ждет <b>кулинарный мастер-класс</b>. Он пройдет <b>в собственном маране</b> (винном погребе) <b>нашего отеля</b>. Вместе с нашим поваром мы приготовим Хачапури, шашлык по-грузински, испечем в печи свой собственный хлеб пури и обязательно разберемся в грузинских соусах и приправах.</p>
                         <p>Потом съедим всё это под <b>душевные грузинские тосты с домашним вином</b> 7-летней выдержки!</p>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (182, 4, '/images/tours/avto_8.jpg', 'Кулінарний Майстер-клас в Марані', '', 'А ввечері  </b> на вас чекає <b> кулінарний майстер-клас  </b>. Він відбудеться <b> у власному марані </b> (винному погребі) <b> нашого готелю </b>. Разом з нашим кухарем ми приготуємо Хачапурі, шашлик по-грузинськи, спечемо в печі свій власний хліб пурі й обов\'язково ознайомимося з грузинськими соусами та приправами. </p> <p> Потім з\'їмо все у супроводі душевних грузинських тостів з домашнім вином семирічної витримки! </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (183, 1, '/images/tours/avto_20_500x400.png', 'Прощальные фото среди Кавказских гор', ' ', '<h5>День 7</h5>Как бы сильно не хотелось остаться в Грузии, но пора возвращаться домой. В этот день будет ранний завтрак (07:00), чтобы успеть увидеть Казбек: 
<p>По дороге до границы мы увидим:</p>
<ul>
   <li><b>Жинвальское водохранилище</b> и древняя крепость Ананури;</li>
   <li>покажем Вам <b>место, где реки Белая и Чёрная Арагви</b> сливаются в одно русло, их воды имеют разный цвет, при этом не смешиваются друг с другом;</li>
   <li>Виды со <b>смотровой площадки на Гудаури</b>, высота 2000 м над уровнем моря;</li>
   <li>Дорога через красивейший <b>Крестовый перевал</b>, так называемая военно-грузинская дорога, где много серпантинов и облака видно сверху;</li>
   <li><b>храм Гергети</b>, который находится на вершине горы.  Место наполнено духовностью и стоит того, чтобы посетить его перед  долгой дорогой домой. </li>
</ul>
<p>Ночь проведем в отеле в пути. Стараемся доехать до Ростова-на-дону, но многое зависит от времени прохождения границы Грузия – Россия. </p>
						    
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (183, 2, '/images/tours/avto_20_500x400.png', 'Прощальные фото среди Кавказских гор', ' ', '<h5>День 7</h5>Как бы сильно не хотелось остаться в Грузии, но пора возвращаться домой. В этот день будет ранний завтрак (07:00), чтобы успеть увидеть Казбек: 
<p>По дороге до границы мы увидим:</p>
<ul>
   <li><b>Жинвальское водохранилище</b> и древняя крепость Ананури;</li>
   <li>покажем Вам <b>место, где реки Белая и Чёрная Арагви</b> сливаются в одно русло, их воды имеют разный цвет, при этом не смешиваются друг с другом;</li>
   <li>Виды со <b>смотровой площадки на Гудаури</b>, высота 2000 м над уровнем моря;</li>
   <li>Дорога через красивейший <b>Крестовый перевал</b>, так называемая военно-грузинская дорога, где много серпантинов и облака видно сверху;</li>
   <li><b>храм Гергети</b>, который находится на вершине горы.  Место наполнено духовностью и стоит того, чтобы посетить его перед  долгой дорогой домой. </li>
</ul>
<p>Ночь проведем в отеле в пути. Стараемся доехать до Ростова-на-дону, но многое зависит от времени прохождения границы Грузия – Россия. </p>
						    
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (183, 3, '/images/tours/avto_20_500x400.png', 'Прощальные фото среди Кавказских гор', ' ', '<h5>День 7</h5>Как бы сильно не хотелось остаться в Грузии, но пора возвращаться домой. В этот день будет ранний завтрак (07:00), чтобы успеть увидеть Казбек: 
<p>По дороге до границы мы увидим:</p>
<ul>
   <li><b>Жинвальское водохранилище</b> и древняя крепость Ананури;</li>
   <li>покажем Вам <b>место, где реки Белая и Чёрная Арагви</b> сливаются в одно русло, их воды имеют разный цвет, при этом не смешиваются друг с другом;</li>
   <li>Виды со <b>смотровой площадки на Гудаури</b>, высота 2000 м над уровнем моря;</li>
   <li>Дорога через красивейший <b>Крестовый перевал</b>, так называемая военно-грузинская дорога, где много серпантинов и облака видно сверху;</li>
   <li><b>храм Гергети</b>, который находится на вершине горы.  Место наполнено духовностью и стоит того, чтобы посетить его перед  долгой дорогой домой. </li>
</ul>
<p>Ночь проведем в отеле в пути. Стараемся доехать до Ростова-на-дону, но многое зависит от времени прохождения границы Грузия – Россия. </p>
						    
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (183, 4, '/images/tours/avto_20_500x400.png', 'Прощальные фото среди Кавказских гор', ' ', '<h5>День 7</h5>Как бы сильно не хотелось остаться в Грузии, но пора возвращаться домой. В этот день будет ранний завтрак (07:00), чтобы успеть увидеть Казбек: 
<p>По дороге до границы мы увидим:</p>
<ul>
   <li><b>Жинвальское водохранилище</b> и древняя крепость Ананури;</li>
   <li>покажем Вам <b>место, где реки Белая и Чёрная Арагви</b> сливаются в одно русло, их воды имеют разный цвет, при этом не смешиваются друг с другом;</li>
   <li>Виды со <b>смотровой площадки на Гудаури</b>, высота 2000 м над уровнем моря;</li>
   <li>Дорога через красивейший <b>Крестовый перевал</b>, так называемая военно-грузинская дорога, где много серпантинов и облака видно сверху;</li>
   <li><b>храм Гергети</b>, который находится на вершине горы.  Место наполнено духовностью и стоит того, чтобы посетить его перед  долгой дорогой домой. </li>
</ul>
<p>Ночь проведем в отеле в пути. Стараемся доехать до Ростова-на-дону, но многое зависит от времени прохождения границы Грузия – Россия. </p>
						    
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (184, 1, '/images/tours/avto_30.png', 'Дорога домой', ' ', '<h5>День 8</h5>Путь домой. Ориентировочное время прибытия 23:00.
                       ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (184, 2, '/images/tours/avto_30.png', 'Дорога домой', ' ', '<h5>День 8</h5>Путь домой. Ориентировочное время прибытия 23:00.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (184, 3, '/images/tours/avto_30.png', 'Дорога домой', ' ', '<h5>День 8</h5>Путь домой. Ориентировочное время прибытия 23:00.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (184, 4, '/images/tours/avto_30.png', 'Дорога домой', ' ', '<h5>День 8</h5>Путь домой. Ориентировочное время прибытия 23:00.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (185, 1, '/images/cards/tour_tbilisi_500x300.jpg', 'столица Грузии - Тбилиси', 'Чем будем заниматься эти 5 дней в Грузии?', '<h5>День 1</h5> Наш веселый и дружелюбный гид познакомит Вас со столицей Грузии - <b>Тбилиси</b>. 
Это будет <b>пешеходная прогулка по центральным улицам</b> города. Экскурсия в конце пути приведет Вас к известному месту - <b>тбилисские серные бани</b>, 
где <b>вы сможете расслабиться и отдохнуть</b> после долгой дороги, окунуться <b>в бассейн с горячей серной водой прямо из источника</b>, 
выпить травяной чай или отведать настоящее грузинское вино.       
');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (185, 2, '/images/cards/tour_tbilisi_500x300.jpg', 'the capital of Georgia is Tbilisi', 'What are we going to do these 5 days in Georgia?', '<h5>Day 1</h5> Our cheerful and friendly guide will introduce you to the capital of Georgia - <b>Tbilisi </b>. 
                         It will be a <b>pedestrian walk along the central streets </b>of the city. An excursion at the end of the road will take you to a famous place - the <b>Tbilisi sulfur baths </b>, 
                         where  <b>you can relax and rest </b> after a long journey, dip <b>into the pool with hot sulfur water directly from the spring </b>, 
                         drink herbal tea or taste real Georgian wine 
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (185, 3, '/images/cards/tour_tbilisi_500x300.jpg', 'the capital of Georgia is Tbilisi', 'Чем будем заниматься эти 5 дней в Грузии?', '<h5>День 1</h5> Наш веселый и дружелюбный гид познакомит Вас со столицей Грузии - <b>Тбилиси</b>. 
                         Это будет <b>пешеходная прогулка по центральным улицам</b> города. Экскурсия в конце пути приведет Вас к известному месту - <b>тбилисские серные бани</b>, 
                         где <b>вы сможете расслабиться и отдохнуть</b> после долгой дороги, окунуться <b>в бассейн с горячей серной водой прямо из источника</b>, 
                         выпить травяной чай или отведать настоящее грузинское вино. 
                          ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (185, 4, '/images/cards/tour_tbilisi_500x300.jpg', 'столиця Грузиї - Тбілісі', 'Чим будемо займатися ці 5 днів у Грузії?', '<h5> День 1 </h5> Наш веселий і доброзичливий гід познайомить Вас зі столицею Грузії - <b> Тбілісі </b>. Це буде <b> пішохідна прогулянка по центральних вулицях </b> міста. Екскурсія в кінці шляху приведе Вас до відомого місця - <b> тбіліські сірчані лазні </b>, де <b> ви зможете розслабитися і відпочити </b> після довгої дороги, зануритися <b> в басейн з гарячою сірчаною водою прямо з джерела </b>, випити трав\'яний чай або спробувати справжнє грузинське вино.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (186, 1, '/images/tours/tour_5days_bani_500x300.jpg', 'Тбилисские серные бани', '', '<h5>День 2</h5>Настало время для настоящего знакомства с Тбилиси. Вы увидите:
                         <ul>
                            <li><b>Черепашье озеро</b> - очень красивое и романтическое место;</li>
                            <li><b>Спуск и подъём на канатных дорогах</b>, во время которых, даже те кто боится высоты, забывают об этом и делают нереально красивые фото;</li>
                            <li><b>Главный кафедральный собор</b> Грузии - Троица и церковь VI века - Метехи;</li>
                            <li>Парк Рике, мост Мира, площадь Эрекле II, театр Габриаде, улица Шарден;</li>
                            <li>Мост Метехи и подъем на канатной дороге на <b>крепость Нарикала</b>;</li>
                            <li>Прогулка по Ботаническому саду;</li>
                            <li>Подъём на <b>самую высокую точку Тбилиси - фуникулер</b> Мтацминда. Там вы сможете увидеть весь город с колеса обозрения и посетить парк аттракционов.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (186, 2, '/images/tours/tour_5days_bani_500x300.jpg', 'Tbilisi sulfur baths', '', '<h5>Day 2</h5>It\'s time for a real acquaintance with Tbilisi. You will see:
                         <ul>
                            <li><b>Turtle Lake</b> is a very beautiful and romantic place;</li>
                            <li><b>Descent and ascent on cable cars</b>, during which, even those who are afraid of heights, forget about it and make unreal beautiful photos;</li>
                            <li><b>The main cathedral of</b> Georgia - the Trinity and the church of the VI century - Metekhi;</li>
                            <li>Ricke Park, Peace Bridge, Erekle II Square, Gabriade Theater, Chardin Street</li>
                            <li>Metekhi Bridge and the ascent on the cable car to <b>Narikala Fortress</b>;</li>
                            <li>Walk on the Botanical Gardens;</li>
                            <li>The ascent to <b>the highest point of Tbilisi is the</b> Mtatsminda <b>funicular</b>. There you can see the whole city from the Ferris wheel and visit the amusement park..</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (186, 3, '/images/tours/tour_5days_bani_500x300.jpg', 'Tbilisi sulfur baths', '', '<h5>День 2</h5>Настало время для настоящего знакомства с Тбилиси. Вы увидите:
                         <ul>
                            <li><b>Черепашье озеро</b> - очень красивое и романтическое место;</li>
                            <li><b>Спуск и подъём на канатных дорогах</b>, во время которых, даже те кто боится высоты, забывают об этом и делают нереально красивые фото;</li>
                            <li><b>Главный кафедральный собор</b> Грузии - Троица и церковь VI века - Метехи;</li>
                            <li>Парк Рике, мост Мира, площадь Эрекле II, театр Габриаде, улица Шарден;</li>
                            <li>Мост Метехи и подъем на канатной дороге на <b>крепость Нарикала</b>;</li>
                            <li>Прогулка по Ботаническому саду;</li>
                            <li>Подъём на <b>самую высокую точку Тбилиси - фуникулер</b> Мтацминда. Там вы сможете увидеть весь город с колеса обозрения и посетить парк аттракционов.</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (186, 4, '/images/tours/tour_5days_bani_500x300.jpg', 'Тбіліські сірчані лазні', '', '<h5> День 2 </h5> Настав час для справжнього знайомства з Тбілісі. Ви побачите: <ul> <li> <b> Черепахове озеро </b> - дуже красиве і романтичне місце; </li> <li> <b> Спуск і підйом канатними дорогами </b>, під час яких, навіть ті хто бояться висоти, забувають про це і роблять нереально красиві фото; </li> <li> <b> Головний кафедральний собор </b> Грузії - Трійця і церква VI століття - Метехі; </li> <li> Парк Ріці, міст Миру, площа Ереклє II, театр Габріаде, вулиця Шарден; </li> <li> міст Метехі і підйом на канатній дорозі до <b> фортеці Нарікала </b>; </li> <li> Прогулянка по Ботанічному саду; </li> <li> Підйом на <b> найвищу точку Тбілісі - фунікулер </b> Мтацминда. Там ви зможете побачити все місто з оглядового колеса і відвідати парк атракціонів. </li> </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (187, 1, '/images/cards/tour_weekend_500x300.jpg', 'Эксукрсия к древней столице Грузии - Мцхета', '', '<h5>День 3</h5>Эксукрсия к древней столице Грузии - <b>Мцхета</b>, где находится много святых и культовых мест:
                         <ul>
                            <li>знаменитый <b>монастырь Джвари</b>, который был построен конце VI века на вершине горы, возле места слияния двух рек Куры и Арагви;</li>
                            <li><b>кафедральный собор Светицховели</b>;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>;</li>
                            <li>действующий <b>мужской монастырь Шио-Мгвиме</b>;</li>
                            <li>прогулка по городу Мцхета</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (187, 2, '/images/cards/tour_weekend_500x300.jpg', 'Excursion to the ancient capital of Georgia - Mtskheta', '', '<h5>Day 3</h5>Exukursiya to the ancient capital of Georgia - <b>Mtskheta </b>, where there are many holy and cult places:
                         <ul>
                            <li>the famous <b>Jvari Monastery</b>, which was built at the end of the 6th century on the top of the mountain, near the confluence of the two rivers Kura and Aragvi;</li>
                            <li><b>Svetitskhoveli Cathedral</b>;</li>
                            <li>The operating <b>Samtavro Convent </b>;</li>
                            <li>The operating <b>monastery of Shio-Mgvime</b>;</li>
                            <li>walk around the city of Mtskheta</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (187, 3, '/images/cards/tour_weekend_500x300.jpg', 'Excursion to the ancient capital of Georgia - Mtskheta', '', '<h5>День 3</h5>Эксукрсия к древней столице Грузии - <b>Мцхета</b>, где находится много святых и культовых мест:
                         <ul>
                            <li>знаменитый <b>монастырь Джвари</b>, который был построен конце VI века на вершине горы, возле места слияния двух рек Куры и Арагви;</li>
                            <li><b>кафедральный собор Светицховели</b>;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>;</li>
                            <li>действующий <b>мужской монастырь Шио-Мгвиме</b>;</li>
                            <li>прогулка по городу Мцхета</li>
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (187, 4, '/images/cards/tour_weekend_500x300.jpg', 'Ексукрсія до древньої столиці Грузії - Мцхета', '', '<h5> День 3 </h5> Ексукрсія у стародавній столиці Грузії - <b> 
місті Мцхета </b>, де знаходиться багато святих і культових місць: <ul> <li> відомий <b> монастир Джварі </b>, який був побудований наприкінці VI століття на вершині гори, біля місця злиття двох річок Кури і Арагві; </li> <li> <b> кафедральний собор Светіцховелі </b>; </li> <li> діючий <b> жіночий монастир Самтавро </b>; </li> <li> діючий <b> чоловічий монастир Шио-Мгвіме </b>; </li> <li> прогулянка по місту Мцхета </li> </ul>
');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (188, 1, '/images/tours/tour_5days_maran500x300.jpg', 'маран в нашем отеле Zemeli Guest House', '', '<h5>День 4</h5> <p><b>День для самостоятельного проведения времени</b>. 
                             Отель находится в самом центре Тбилиси, поэтому Вам легко будет добраться до интересных мест: 
                             старый город, сувенирные лавки, винареи...</p>
                             <p><b>А вечером</b> вас ждет <b>кулинарный мастер-класс</b>. Он пройдет <b>в собственном маране</b> (винном погребе) <b>нашего отеля</b>. Вместе с нашим поваром мы приготовим Хачапури, шашлык по-грузински, испечем в печи свой собственный хлеб пури и обязательно разберемся в грузинских соусах и приправах.</p>
                             <p>Потом съедим всё это под душевные грузинские тосты с домашним вином 7-летней выдержки!</p>  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (188, 2, '/images/tours/tour_5days_maran500x300.jpg', 'Maran in our hotel Zemeli Guest House', '', '<h5>Day 4</h5> <p><b>Day for self-time</b>. 
                             The hotel is located in the very center of Tbilisi, so you can easily get to interesting places: the old town, souvenir shops, wineries ...</p>
                             <p><b>In the evening,</b> you will find a <b>culinary master class</b>. It will be held <b>in our own marana </b> (wine cellar) <b>of our hotel</b>. 
                             Together with our chef we will cook Khachapuri, shish kebab in Georgian, bake your own puri bread in the oven and be sure to understand Georgian sauces and seasonings.</p>
                             <p>Then we will eat all this under the hearty Georgian toasts with the home wine of 7 years old!</p>  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (188, 3, '/images/tours/tour_5days_maran500x300.jpg', 'Maran in our hotel Zemeli Guest House', '', '<h5>День 4</h5> <p><b>День для самостоятельного проведения времени</b>. 
                             Отель находится в самом центре Тбилиси, поэтому Вам легко будет добраться до интересных мест: 
                             старый город, сувенирные лавки, винареи...</p>
                             <p><b>А вечером</b> вас ждет <b>кулинарный мастер-класс</b>. Он пройдет <b>в собственном маране</b> (винном погребе) <b>нашего отеля</b>. Вместе с нашим поваром мы приготовим Хачапури, шашлык по-грузински, испечем в печи свой собственный хлеб пури и обязательно разберемся в грузинских соусах и приправах.</p>
                             <p>Потом съедим всё это под душевные грузинские тосты с домашним вином 7-летней выдержки!</p>  
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (188, 4, '/images/tours/tour_5days_maran500x300.jpg', 'Маран в нашому готелі Zemeli Guest House', '', '<h5> День 4 </h5> Це <b> день для самостійного проведення часу </b>. <p> Готель знаходиться в самому центрі Тбілісі, тому легко буде дістатися до цікавих місць: старе місто, сувенірні лавки, винареї ... </p> <p><b>  А ввечері  </b> на вас чекає <b> кулінарний майстер-клас  </b>. Він відбудеться <b> у власному марані </b> (винному погребі) <b> нашого готелю </b>. Разом з нашим кухарем ми приготуємо Хачапурі, шашлик по-грузинськи, спечемо в печі свій власний хліб пурі й обов\'язково ознайомимося з грузинськими соусами та приправами. </p> <p> Потім з\'їмо все у супроводі душевних грузинських тостів з домашнім вином семирічної витримки! </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (189, 1, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'прогулки по Тбилиси', '', '<h5>День 5</h5> Прощальные прогулки по Тбилиси, прощальные впечатления и прощальные эмоции, ну и, конечно, время для составления планов, где еще в хочется побывать в Грузии во время следующего приезда.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (189, 2, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'walks in Tbilisi', '', '<h5>Day 5</h5> Farewell walks in Tbilisi, farewell impressions and farewell emotions, and, of course, time for drawing up plans, where you still want to visit Georgia during your next visit.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (189, 3, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'walks in Tbilisi', '', '<h5>День 5</h5> Прощальные прогулки по Тбилиси, прощальные впечатления и прощальные эмоции, ну и, конечно, время для составления планов, где еще в хочется побывать в Грузии во время следующего приезда.   
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (189, 4, '/images/tours/tour_5days_ilovetbilisi500x300.jpg', 'прогулянки по Тбілісі', '', '<h5> День 5 </h5> Останні прогулянки по Тбілісі, прощавальні враження і емоції, ну і, звичайно, час для складання планів на наступний приїзд до Грузії.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (190, 1, '/images/tours/Tbilisi_4days_8.png', 'Вечерний Тбилиси ', '', '<h5>День 1</h5> В день приезда мы не будем сильно нагружать Вас долгими экскурсиями, но познакомить Вас с Тбилиси - мы обязаны! Вас ждёт увлекательная пешая прогулка с нашим гидом по центральной улице города. Он расскажет интересные истории о Грузии и покажет самое высокое место Тбилиси – <b>Фуникулер Мтацминда</b>. Там вы сможете увидеть весь город с колеса обозрения. В конце нашей прогулки уже стемнеет и вы увидите совсем другой город Тбилиси. Он наполнится светом от фонарей, которые меняют вид всего, что можете увидеть днём! ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (190, 2, '/images/tours/Tbilisi_4days_8.png', 'Evening Tbilisi', '', ' <h5> Day 1 </h5> On the day of arrival, we won’t load you with long excursions, but we are obliged to introduce you to Tbilisi! An exciting walk with our guide along the main street of the city awaits you. He will tell you interesting stories about Georgia and show the highest place in Tbilisi - <b> Mtatsminda Funicular </b>. There you can see the whole city from the Ferris wheel. At the end of our walk it will be dark and you will see a completely different city of Tbilisi. It will be filled with light from lanterns that change the appearance of everything that you can see during the day!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (190, 3, '/images/tours/Tbilisi_4days_8.png', 'Вечерний Тбилиси ', '', ' <h5>День 1</h5> В день приезда мы не будем сильно нагружать Вас долгими экскурсиями, но познакомить Вас с Тбилиси - мы обязаны! Вас ждёт увлекательная пешая прогулка с нашим гидом по центральной улице города. Он расскажет интересные истории о Грузии и покажет самое высокое место Тбилиси – <b>Фуникулер Мтацминда</b>. Там вы сможете увидеть весь город с колеса обозрения. В конце нашей прогулки уже стемнеет и вы увидите совсем другой город Тбилиси. Он наполнится светом от фонарей, которые меняют вид всего, что можете увидеть днём! ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (190, 4, '/images/tours/Tbilisi_4days_8.png', 'Вечірній Тбілісі', '', ' <h5> День 1 </h5> У день приїзду ми не будемо сильно напружувати вас довими екскурсіями, але познайомити вас із Тбілісі - ми зобов\'язані ! На вас чекає цікава піша прогулянка з нашим гідом по центральній вулиці міста. Він розповість  цікаві історії про Грузію та покаже саме високе місце Тбілісі - <b> Фунікулер Мтацмінда </b>. Там ви зможете побачити усе місто з колеса огляду. Наприкінцій нашої прогулянки вже зтемнішає і ви побачите інше місто Тбілісі. Він наповнюється світлом від ліхтарів, яке змінює вигляд всього, що ви можете побачити вдень!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (191, 1, '/images/tours/Tbilisi_4days_4.png', 'Большая экскурсия по Тбилиси', '', '<h5>День 2</h5> А теперь настало время для настоящего знакомства с Тбилиси. Вы увидите:
                         <ul>
                            <li><b>Черепашье озеро</b> - очень красивое и романтическое место;</li>
							<li><b>Этнографический музей</b> - хорошее место, чтобы узнать историю, традиции и быт грузинского народа;</li>
                            <li><b>Спуск и подъём на канатных дорогах</b>, во время которых, даже те кто боится высоты, забывают об этом и делают нереально красивые фото;</li>
                            <li><b>Главный кафедральный собор</b> Грузии - Троица и церковь VI века - Метехи;</li>
                            <li>Парк Рике, мост Мира, площадь Эрекле II, театр Габриаде, улица Шарден;</li>
                            <li>Мост Метехи и подъем на канатной дороге на <b>крепость Нарикала</b>;</li>
                            
                           
                           </ul>
                         ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (191, 2, '/images/tours/Tbilisi_4days_4.png', 'Great tour of Tbilisi', '', ' <h5> Day 2 </h5> And now it\'s time for a real acquaintance with Tbilisi. You will see:
                         <ul><li> <b> Turtle Lake </b> is a very beautiful and romantic place; </li>
<li> <b> Ethnographic Museum </b> is a good place to learn about the history, traditions and life of the Georgian people; </li>
<li> <b> Ascent on cable cars </b> during which even those who are afraid of heights forget about it and make unrealistically beautiful photos; </li>
<li> <b> Georgia\'s Main Cathedral </b> - Trinity and VIth Century Church - Metekhi; </li>
<li> Rike Park, Peace Bridge, Erekle II Square, Gabriade Theater, Chardin Street; </li>
<li> Metekhi Bridge and cable car lift to<b> Narbala Fort </b>; </li>
</ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (191, 3, '/images/tours/Tbilisi_4days_4.png', 'Большая экскурсия по Тбилиси', '', '<h5>День 2</h5> А теперь настало время для настоящего знакомства с Тбилиси. Вы увидите:
                         <ul>
                            <li><b>Черепашье озеро</b> - очень красивое и романтическое место;</li>
							<li><b>Этнографический музей</b> - хорошее место, чтобы узнать историю, традиции и быт грузинского народа;</li>
                            <li><b>Спуск и подъём на канатных дорогах</b>, во время которых, даже те кто боится высоты, забывают об этом и делают нереально красивые фото;</li>
                            <li><b>Главный кафедральный собор</b> Грузии - Троица и церковь VI века - Метехи;</li>
                            <li>Парк Рике, мост Мира, площадь Эрекле II, театр Габриаде, улица Шарден;</li>
                            <li>Мост Метехи и подъем на канатной дороге на <b>крепость Нарикала</b>;</li>
                            
                           
                           </ul>
                         
						 ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (191, 4, '/images/tours/Tbilisi_4days_4.png', 'Велика екскурсія по Тбілісі', '', '<h5> День 2 </h5> І ось час для справжнього знайомства з Тбілісі. Ти побачиш:
<ul>
<li> <b> Черепашине Озеро </b> - дуже гарне і романтичне місце; </li>
<li> <b> Етнографічний музей </b> - ознайомлення з історією, традиціями та побутом грузинського народу; </li>
<li> <b> Підйом на канатній дорозі </b>, під час якого навіть ті, хто боїться висоти, про це забувають і роблять нереально красиві фотографії; </li>
<li> <b> Головний собор Грузії </b> - Троїцька  церква і VI століття -  церква Метехі; </li>
<li> Парк Ріке, Міст Миру, площа Ерекле II, театр Габріаде, вулиця Шардена; </li>
<li> Міст Метехі та підйом на канатній дорозі до <b>фортеці Нарекала </b>; </li>
</ul> ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (192, 1, '/images/tours/Tbilisi_4days_9.png', 'Эксукрсия к древней столице Грузии - Мцхета', '', ' Затем, отправляемся в <b>древний город Мцхета</b>. По пути вы увидите:
                        <ul>
                                <li>знаменитый <b>монастырь Джвари</b>, откуда открывается удивительный вид на Мцхету. 
                                    Монастырь хранит в себе средневековую историю, начиная с VI века н.э</li>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., также его называют "Вторым Иерусалимом", потому что там находится много святых и культовых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> - духовный центр христианской Грузии и самое большое из древних сооружений страны;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                         </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (192, 2, '/images/tours/Tbilisi_4days_9.png', 'Excursion to the ancient capital of Georgia - Mtskheta', '', ' Then, we leave for the <b> ancient city of Mtskheta </b>. On the way you will see:
<ul>
<li> the famous <b> Jvari Monastery </b>, which offers an amazing view of Mtskheta. The monastery keeps a medieval history, dating back to the VI century BC </li>
<li> <b> city - Mtskheta </b> - the oldest city in Georgia, founded in the 5th century BC, it is also called the “Second Jerusalem” because there are many holy and religious places; </li>
<li> <b> Svetitskhoveli Cathedral </b> - the spiritual center of Christian Georgia and the largest of the country\'s ancient structures; </li>
<li> the existing <b> Samtavro nunnery </b>, built on the site where Saint Nino lived; </li>
</ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (192, 3, '/images/tours/Tbilisi_4days_9.png', 'Эксукрсия к древней столице Грузии - Мцхета', '', '  Затем, отправляемся в <b>древний город Мцхета</b>. По пути вы увидите:
                        <ul>
                                <li>знаменитый <b>монастырь Джвари</b>, откуда открывается удивительный вид на Мцхету. 
                                    Монастырь хранит в себе средневековую историю, начиная с VI века н.э</li>
                            <li><b>город - Мцхета</b> - древнейший город Грузии, основан в V веке до н.э., также его называют "Вторым Иерусалимом", потому что там находится много святых и культовых мест;</li>
                            <li><b>кафедральный собор Светицховели</b> - духовный центр христианской Грузии и самое большое из древних сооружений страны;</li>
                            <li>действующий <b>женский монастырь Самтавро</b>, построенный на месте, где жила святая Нино;</li>
                         </ul>
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (192, 4, '/images/tours/Tbilisi_4days_9.png', 'Екскурсія до давньої столиці Грузії - Мцхета', '', 'Далі, вирушаємо в <b> давнє місто Мцхета </b>. Дорогою ви побачите:
<Ul>
<Li> відомий<b> монастир Джварі </b>, звідки відкривається дивовижний вид на Мцхету. Монастир зберігає у собі середньовічну історію, починаючи з VI століття н.е. </li>
<Li> <b> місто - Мцхета </b> - найдавніше місто Грузії, засноване у V столітті до н.е., також його називають "Другим Єрусалимом", бо там знаходиться багато святих і культових місць; </li>
<Li> <b> кафедральний собор Светіцховелі </b> - духовний центр християнської Грузії і найдавніше з споруд країни; </li>
<Li> діючий <b> жіночий монастир Самтавро </b>, побудований на місці, де жила свята Ніно; </li>
</Ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (194, 1, '/images/tours/Tbilisi_4days_1.png', 'в Тбилиси много классных мест, где можно погулять самостоятельно', ' ', '<h5>День 3</h5> <p><b>День для самостоятельного проведения времени</b>. 
Отель находится в самом центре Тбилиси, поэтому Вам легко будет добраться до интересных мест: 
старый город, сувенирные лавки, винареи...</p>
<p>Трансфер в аэропорт. Вылет домой</p>
                             
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (194, 2, '/images/tours/Tbilisi_4days_1.png', 'Tbilisi has a lot of cool places where you can take a walk on your own', ' ', ' <h5> Day 3 </h5> <p> <b> Day for self-spending time </b>.
The hotel is located in the center of Tbilisi, so it will be easy for you to get to interesting places: old town, souvenir shops, wineries ... </p>
<p>Transfer to airport.</p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (194, 3, '/images/tours/Tbilisi_4days_1.png', 'в Тбилиси много классных мест, где можно погулять самостоятельно', ' ', ' <h5>День 3</h5> <p><b>День для самостоятельного проведения времени</b>. 
Отель находится в самом центре Тбилиси, поэтому Вам легко будет добраться до интересных мест: 
старый город, сувенирные лавки, винареи...</p>
<p>Трансфер в аэропорт. Вылет домой.</p>
                             
                        ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (194, 4, '/images/tours/Tbilisi_4days_1.png', 'в Тбілісі багато класних місць, де можна погуляти самостійно', ' ', ' <H5> День 3 </h5> <p> <b> День для самостійного проведення часу </b>.
Готель знаходиться в самому центрі Тбілісі, тому легко буде дістатися до цікавих місць: старе місто, сувенірні лавки, винареї ... </p>
<P>Трансфер до аеропорту. Виліт додому.</P>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (196, 1, '/images/excoursions/armenia/new_ex_armenia_Ahpat_500x300.png', 'Монастырский комплекс Ахпат', ' ', 'Первыми объектами на нашем пути будут:

<li>Монастырский комплекс <b>Ахпат</b> , в настоящее время является действующим монастырем.</li>  
<li>Монастырь <b>Санаин</b> - памятник армянской архитектуры, церковный комплекс X—XIII веков, к которому ведет древний мост Sanahin Bridge. </li>
<p></p>
Ахпат и Санаин входят в список Всемирного наследия ЮНЕСКО
');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (196, 2, '/images/excoursions/armenia/new_ex_armenia_Ahpat_500x300.png', 'Monastery complex Haghpat', ' ', 'The first objects on our way will be:

<li> The monastery complex <b> Haghpat </b>, is currently a functioning monastery. </li>
<li> Monastery <b> Sanahin </b> - a monument of Armenian architecture, the church complex of the X-XIII centuries, to which the ancient Sanahin Bridge leads. </li>
<p> </p>
Haghpat and Sanahin are UNESCO World Heritage');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (196, 3, '/images/excoursions/armenia/new_ex_armenia_Ahpat_500x300.png', 'Монастырский комплекс Ахпат', ' ', 'Первыми объектами на нашем пути будут:

<li>Монастырский комплекс <b>Ахпат</b> , в настоящее время является действующим монастырем.</li>  
<li>Монастырь <b>Санаин</b> - памятник армянской архитектуры, церковный комплекс X—XIII веков, к которому ведет древний мост Sanahin Bridge. </li>
<p></p>
Ахпат и Санаин входят в список Всемирного наследия ЮНЕСКО
');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (196, 4, '/images/excoursions/armenia/new_ex_armenia_Ahpat_500x300.png', 'Монастирський комплекс Ахпат', ' ', 'Першими об\'єктами на нашому шляху будуть:

<Li> Монастирський комплекс <b> Ахпат </b>, що в даний час є чинним монастирем. </Li>
<Li> Монастир <b> Санаїн </b> - пам\'ятник вірменської архітектури, церковний комплекс X-XIII століть, до якого веде давній міст Sanahin Bridge. </Li>
<P> </p>
Ахпат і Санаїн входять до списку Всесвітньої спадщини ЮНЕСКО');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (197, 1, '/images/excoursions/armenia/new_ex_Armenia_2_500x300.png', 'Одно из ущельев Армении по дороге из Грузии', ' ', 'Едем, делаем остановки в красивых местах и любуемся видами на ущелья и горы!
<p></p> 
На заметку: для всей территории Армении характерно сложное строение рельефа, оно придает ее пейзажам своеобразное очарование.
90% территории Армении поднято выше 1000 м над уровнем моря, свыше 3000 км горных хребтов окрамляет её территорию.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (197, 2, '/images/excoursions/armenia/new_ex_Armenia_2_500x300.png', 'One of the gorges of Armenia on the road from Georgia', ' ', 'We go, make stops in beautiful places and  looks the views of the gorges and mountains!
<p> </p>
Note: the whole territory of Armenia is characterized by a complex relief structure, it gives its landscapes a peculiar charm.
90% of the territory of Armenia is raised above 1000 m above sea level, over 3000 km of mountain ranges surrounds its territory.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (197, 3, '/images/excoursions/armenia/new_ex_Armenia_2_500x300.png', 'Одно из ущельев Армении по дороге из Грузии', ' ', 'Едем, делаем остановки в красивых местах и любуемся видами на ущелья и горы!
<p></p> 
На заметку: для всей территории Армении характерно сложное строение рельефа, оно придает ее пейзажам своеобразное очарование.
90% территории Армении поднято выше 1000 м над уровнем моря, свыше 3000 км горных хребтов окрамляет её территорию.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (197, 4, '/images/excoursions/armenia/new_ex_Armenia_2_500x300.png', 'Одне з ущелин Вірменії по дорозі з Грузії', ' ', 'Їдемо дал , робимо зупинки в цікавих місцях та милуємося краєвидами ущелин і гор!
<P> </p>
На примітку: для всієї території Вірменії характерна складна будова рельєфу, вона надає її пейзажам своєрідну чарівність.
90% території Вірменії підіймається вище 1000 м над рівнем моря, понад 3000 км гірських хребтів окрамляє її територію.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (198, 1, '/images/excoursions/armenia/new_ex_Armenia_4_500x300.png', 'Озеро Севан', ' ', ' Ближе к обеду <b>доберемся до высокогорного озера Севан</b>, - крупнейшего пресноводного озера в мире.
 Рядом находится <b>монастырь Севанованк</b> - комплекс древних строений, откуда открываются потрясающие живописные виды!
');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (198, 2, '/images/excoursions/armenia/new_ex_Armenia_4_500x300.png', 'Lake Sevan', ' ', 'Closer to dinner <b> we get to the high-altitude lake Sevan </b>, - the largest freshwater lake in the world.
Nearby is the <b> Sevanovank Monastery </b> - a complex of ancient buildings with stunning scenic views!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (198, 3, '/images/excoursions/armenia/new_ex_Armenia_4_500x300.png', 'Озеро Севан', ' ', ' Ближе к обеду <b>доберемся до высокогорного озера Севан</b>, - крупнейшего пресноводного озера в мире.
 Рядом находится <b>монастырь Севанованк</b> - комплекс древних строений, откуда открываются потрясающие живописные виды!
');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (198, 4, '/images/excoursions/armenia/new_ex_Armenia_4_500x300.png', 'Озеро Севан', ' ', 'Ближче до обіду <b> доберемося до високогірного озера Севан </b>, - найбільшого прісноводного озера у світі.
Поруч знаходиться <b> монастир Севанованк </b> - комплекс стародавніх будівель, звідки відкриваються приголомшливі мальовничі краєвиди!');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (199, 1, '/images/excoursions/armenia/new_ex_Armenia_7_500x300.png', 'Хор Вирап', ' ', 'Продолжаем путешествие по Армении и <b>едем к подножию горы Арарат</b> - в монастырь <b>Хор Вирап</b> ( VI-XVII века).
Монастырь находится у самой границы Армении с Турцией, на холме.
<p>В древности именно на этой территории располагался город Арташат - древняя столица Армении. 
Этот монастырь является местом паломничества, одно из самых почитаемых мест Армении.</p>

');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (199, 2, '/images/excoursions/armenia/new_ex_Armenia_7_500x300.png', 'Khor Virap', ' ', 'We continue our journey around Armenia and <b> go to the foot of Mount Ararat </b> - to the monastery <b> Khor Virap </b> (VI-XVII centuries).
The monastery is located on the border of Armenia with Turkey, on a hill.
<p> In ancient times, it was on this territory that the city of Artashat was located - the ancient capital of Armenia.
This monastery is a place of pilgrimage, one of the most revered places in Armenia. </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (199, 3, '/images/excoursions/armenia/new_ex_Armenia_7_500x300.png', 'Хор Вирап', ' ', 'Продолжаем путешествие по Армении и <b>едем к подножию горы Арарат</b> - в монастырь <b>Хор Вирап</b> ( VI-XVII века).
Монастырь находится у самой границы Армении с Турцией, на холме.
<p>В древности именно на этой территории располагался город Арташат - древняя столица Армении. 
Этот монастырь является местом паломничества, одно из самых почитаемых мест Армении.</p>

');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (199, 4, '/images/excoursions/armenia/new_ex_Armenia_7_500x300.png', 'Хор Вирап', ' ', 'Продовжуємо подорож Вірменією та <b> їдемо ближче до гори Арарат </b> - в монастир <b> Хор Вірап </b> (VI-XVII століття).
Монастир знаходиться біля самого кордону Вірменії із Туреччиною, на пагорбі.
<P> В давнину саме на цій території розташовувалось місто Арташаті - стародавня столиця Вірменії.
Цей монастир є місцем паломництва, одне з найбільш шанованих місць Вірменії. </P>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (200, 1, '/images/excoursions/armenia/new_ex_Armenia_8_500x300.png', 'Эчмиадзин', null, 'Заедем в <b>Кафедральный собор Эчмиадзин</b>, который является резиденцией главы Армянской Апостольской церкви.
<p></p>

На обратном пути в Грузию, ещё раз остановимся на озере Севан.

<p>Позднее возвращение в Тбилиси.</p> ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (200, 2, '/images/excoursions/armenia/new_ex_Armenia_8_500x300.png', 'Эчмиадзин', null, 'We’ll go to the <b> Etchmiadzin Cathedral </b>, which is the residence of the head of the Armenian Apostolic Church.
<p> </p>

On the way back to Georgia, let us stop again on Lake Sevan.

<p> Late return to Tbilisi. </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (200, 3, '/images/excoursions/armenia/new_ex_Armenia_8_500x300.png', 'Эчмиадзин', null, 'Заедем в <b>Кафедральный собор Эчмиадзин</b>, который является резиденцией главы Армянской Апостольской церкви.
<p></p>

На обратном пути в Грузию, ещё раз остановимся на озере Севан.

<p>Позднее возвращение в Тбилиси.</p> ');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (200, 4, '/images/excoursions/armenia/new_ex_Armenia_8_500x300.png', 'Эчмиадзин', null, 'Заїдемо до <b> Кафедрального собору Ечміадзін </b>, який є резиденцією голови Вірменської Апостольської церкви.
<p></p>
На зворотному шляху до Грузії, ще раз зупинимося на озері Севан.

<P> Пізно увечорі повернемось до Тбілісі. </p>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (201, 1, '/images/excoursions/armenia/new_ex_Armenia_5_500x300.png', 'Обед в ресторане на берегу озера Севан', ' ', 'На берегу озера есть хороший ресторан, где нас ждет поздний обед и <b>возможность попробовать шашлык из знаменитого севанского сига или раков</b>, подышать чистым горным воздухом, послушать чайек, подумать о чем-то своём...
<p></p>
К вечеру приедем в Ереван, поселение в отель.
');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (201, 2, '/images/excoursions/armenia/new_ex_Armenia_5_500x300.png', 'Обед в ресторане на берегу озера Севан', ' ', 'There is a good restaurant on the Sevan lake where we are will take a lunch and <b> the opportunity to testing kebabs from the famous Sevan whitefish or crayfish </b>, breathe in the clear mountain air
<p> </p>
In the evening we will arrive in Yerevan, checking into a hotel.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (201, 3, '/images/excoursions/armenia/new_ex_Armenia_5_500x300.png', 'Обед в ресторане на берегу озера Севан', ' ', 'На берегу озера есть хороший ресторан, где нас ждет поздний обед и <b>возможность попробовать шашлык из знаменитого севанского сига или раков</b>, подышать чистым горным воздухом, послушать чайек, подумать о чем-то своём...
<p></p>
К вечеру приедем в Ереван, поселение в отель.
');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (201, 4, '/images/excoursions/armenia/new_ex_Armenia_5_500x300.png', 'Обід в ресторані на березі озера Севан', ' ', 'На березі озера є гарний ресторан, де на нас чекає обід та <b> можливість скуштувати шашлик з відомого Севанського сига або раків </b>, подихаємо чистим гірським повітрям, кожен поміркує про щось своє ...
<P> </ p>
Увечорі приїдемо до Єревану, заселення в готель.');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (202, 1, '/images/tours/tour_5days_tbilisi_Kazbek_4_500_300.jpg', 'Храм Гергети', '', '<ul>
                            <li>Дорога через <b>Крестовый перевал</b>. Её также называют военно-грузинская дорога. Дух захватывает, когда проезжаешь по её извилистым серпантинам;</li>
                            <li><b>Доза адреналина</b>, когда смотришь на облака сверху и наблюдаешь как они проплывают внизу между вершинами гор;</li>
                            <li>Главный объект нашей эксскурсии - <b>храм Гергети</b>. Он находится на вершине горы и  <b>мы будем к нему подниматься на джипе</b>;</li>
                             
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (202, 2, '/images/tours/tour_5days_tbilisi_Kazbek_4_500_300.jpg', 'Gergeti Temple', '', '<ul>
                             <li>The road through the <b> Cross Pass </b>. It is also called the military-Georgian road. The spirit captures when you pass through its winding serpentines;</li>
                            <li><b>A dose of adrenaline</b>, when you look at the clouds from above and watch as they swim down between the tops of the mountains;</li>
                            <li>The main object of our excursion is <b>the Gergeti temple</b>. He is at the top of the mountain and  <b>we will go up to him on a jeep</b>;</li>
                             
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (202, 3, '/images/tours/tour_5days_tbilisi_Kazbek_4_500_300.jpg', 'Gergeti Temple', '', '<ul>
                            <li>Дорога через <b>Крестовый перевал</b>. Её также называют военно-грузинская дорога. Дух захватывает, когда проезжаешь по её извилистым серпантинам;</li>
                            <li><b>Доза адреналина</b>, когда смотришь на облака сверху и наблюдаешь как они проплывают внизу между вершинами гор;</li>
                            <li>Главный объект нашей эксскурсии - <b>храм Гергети</b>. Он находится на вершине горы и  <b>мы будем к нему подниматься на джипе</b>;</li>
                             
                        </ul>');
INSERT INTO gbua_cgdb.CardOptionsData (OptionID, LangID, ImageSrc, ImageAlt, Title, Descryption) VALUES (202, 4, '/images/tours/tour_5days_tbilisi_Kazbek_4_500_300.jpg', 'Храм Гергеті', '', '<ul><li> Дорога через <b> Хрестовий перевал </b>. Її також називають військово-грузинська дорога. Дух захоплює, коли проїзджаєш її звивистими серпантинами; </li><li> <b> Доза адреналіну </b>, коли дивишся на хмари зверху й спостерігаєш як вони пропливають внизу поміж вершинами гір; </li><li> Головний об\'єкт нашої ексскурсіі - <b> храм Гергеті </b>. Він знаходиться на вершині гори,  <b> ми підймемось до нього на джипі </b>; </li></ul>');
