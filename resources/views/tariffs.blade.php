

@section('tariffs')

<section class="form" id="form" data-aos="fade-right" data-aos-offset="200" data-aos-duration="1000">
        <div class="container">
            <div class="form-wrapper">
                <div class="form__title sectionTitle">
                    <h2>Давайте начнём исправлять</h2>
                </div>
                <div class="row justify-content-beteween align-items-center">
                    <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                        <div style="text-align: center; margin-top: 40px;">
                            <span class="step"></span>
                            <span class="step"></span>
                            <span class="step"></span>
                            <span class="step"></span>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="form__steps">
                            Шаг 1 из 4
                        </div>
                    </div>
                </div>
                <form action="" id="form">
                    <!-- Tab #1 -->
                    <div class="tab">
                        <h3>Контактная информация</h3>
                        <div class="row">
                            <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                                <div class="form__content-input">
									<input class="js-text-mask" onkeypress="noDigits(event)" type="text" id="surname" placeholder="Иванов" required>
                                    <label for="surname">Фамилия</label>
									<div class="input-err">Укажите фамилию</div>
                                </div>
                            </div>
                            <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                                <div class="form__content-input">
									<input class="js-text-mask" onkeypress="noDigits(event)" type="text" id="name" placeholder="Алексей" required>
                                    <label for="name">Имя</label>
									<div class="input-err">Укажите имя</div>
                                </div>
                            </div>
                            <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                                <div class="form__content-input">
									<input class="js-text-mask" onkeypress="noDigits(event)" type="text" id="patronymic" placeholder="Петрович" required>
                                    <label for="patronymic">Отчество</label>
									<div class="input-err">Укажите отчество</div>
                                </div>
                            </div>
                            <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                                <div class="form__content-input">
									<input class="js-tel-mask" type="text" id="phone" placeholder="+7 (921) 123-45-67" autocomplete="on" required>
                                    <label for="phone">Мобильный телефон</label>
									<div class="input-err">Необходимо указать номер телефона</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Tab #2 -->
                    <div class="tab">
                        <h3>Заполните паспортные данные</h3>
                        <div class="row">
                            <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                                <div class="form__content-input">
									<input class="js-text-mask imask-validator" type="text" id="birthday" required>
                                    <label for="birthday">Дата рождения</label>
									<div class="input-err">Укажите дату рождения</div>
                                </div>
                            </div>
                            <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                                <div class="form__content-input">
									<input class="js-text-mask imask-validator" type="text" id="serial" required>
                                    <label for="serial">серия и номер</label>
									<div class="input-err">Укажите серию и номер паспорта</div>
                                </div>
                            </div>
                            <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                                <div class="form__content-input">
									<input class="js-text-mask imask-validator" type="text" id="release_date" required>
                                    <label for="release_date">Дата выдачи</label>
									<div class="input-err">Укажите дату выдачи</div>
                                </div>
                            </div>
                            <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                                <div class="form__content-input">
									<input class="js-text-mask imask-validator" type="text" id="division_code" required>
                                    <label for="division_code">Код подразделения</label>
									<div class="input-err">Укажите код подразделения</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Tab #3 -->
                    <div class="tab">
                        <h3>Адресс постоянной регистрации</h3>
                        <div class="row">
                            <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                                <div class="form__content-input">
									<input class="js-text-mask imask-validator" type="text" id="index">
                                    <label for="index">Индекс</label>
									<div class="input-err">Укажите индекс</div>
                                </div>
                            </div>
                            <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                                <div class="form__content-input">
									<input class="js-text-mask" onkeypress="noDigits(event)" type="text" id="region" required>
                                    <label for="region">Регион</label>
									<div class="input-err">Укажите регион</div>
                                </div>
                            </div>
                            <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                                <div class="form__content-input">
									<input class="js-text-mask" onkeypress="noDigits(event)" type="text" id="city" required>
                                    <label for="city">Район или город</label>
									<div class="input-err">Укажите район или город</div>
                                </div>
                            </div>
                            <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                                <div class="form__content-input">
									<input class="js-text-mask" onkeypress="noDigits(event)" type="text" id="country" required>
                                    <label for="country">Населённый пункт</label>
									<div class="input-err">Укажите населённый пунк</div>
                                </div>
                            </div>
                            <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                                <div class="form__content-input">
									<input class="" onkeypress="noDigits(event)" type="text" id="street">
                                    <label for="street">Улица</label>
									<div class="input-err">Укажите улицу</div>
                                </div>
                            </div>
                            <div class="col-md-3 offset-md-3 col-lg-2 offset-lg-4">
                                <div class="form__content-input">
                                    <input class="js-text-mask" type="text" id="house" required>
									<label for="house">Дом</label>
									<div class="input-err">Укажите номер дома</div>
                                </div>
                            </div>
                            <div class="col-md-3 col-lg-2">
                                <div class="form__content-input">
                                    <input class="" onkeypress="noDigits(event)" type="text" id="housing">
									<label for="housing">Корпус</label>
									<div class="input-err">Укажите корпус</div>
                                </div>
                            </div>
                            <div class="col-md-3 offset-md-3 col-lg-2 offset-lg-4">
                                <div class="form__content-input">
									<input class="" type="text" id="flat">
                                    <label for="flat">Квартира</label>
									<div class="input-err">Укажите номер квартиры</div>
                                </div>
                            </div>
                            <div class="col-md-3 col-lg-2">
                                <div class="form__content-input">
									<input class="js-text-mask" type="text" id="rooms" required>
                                    <label for="rooms">Кол-во комнат</label>
									<div class="input-err">Укажите кол-во комнат</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Tab #4 -->
                    <div class="tab">
                        <h3>Чтобы отправить данные введите код из СМС</h3>
                        <div class="row">
                            <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4">
                                <div class="form__content-input">
                                    <input class="js-text-mask imask-validator" type="text" id="sms" required>
									<label for="sms">Код из СМС</label>
									<div class="input-err">Введите код из СМС</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form__buttons">
						<label class="checkbox" id="mycheck">
							<input id="privacy" type="checkbox" name="privacy" checked="checked">
							<span class="checkbox__wrap"></span>
							<span class="checkbox__text">Принимаю условия 
								передачи информации</span>
						  </label>
                        <button type="button" id="prevBtn" onclick="nextPrev(-1)">Назад</button>
                        <button type="button" id="nextBtn" onclick="nextPrev(1)">Далее</button>
                    </div>
                    <p id="empty__fiyelds">Вы заполнили не все поля!</p>
                    <div class="form__submit">
                        <input type="submit" value="Отправить">
                    </div>
                </form>
            </div>
        </div>
    </section>
    
@endsection