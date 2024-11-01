create table PageReviewsTranslation
(
    LangID         int                            null,
    FormTranslator text collate cp1251_general_ci null
)
    collate = utf8_general_ci;

INSERT INTO gbua_cgdb.PageReviewsTranslation (LangID, FormTranslator) VALUES (1, '<div class="col-12 text-center mb-5">
            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal">Оставить отзыв!</button>
        </div><div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                          <div class="modal-dialog" role="document">
                              <div class="modal-content">
                                  <div class="modal-header">
                                      <h5 class="modal-title" id="exampleModalLabel">Заполните данне для отправки отзыва</h5>
                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                          <span aria-hidden="true">&times;</span>
                                      </button>
                                  </div>
                                  <div class="modal-body">
                                      <form action="callback.php" method="post">
                                          <div class="form-group">
                                              <label for="exampleFormControlInput1">Имя</label>
                                              <input required type="text" class="form-control" name="username" id="exampleFormControlInput1" placeholder="Ваше имя">
                                          </div>
                                          <div class="form-group">
                                              <label for="exampleFormControlInput1">Ваша почта</label>
                                              <input required type="text" name="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                                          </div>
                                          <div class="form-group">
                                              <label for="exampleFormControlTextarea1">Страна, город :</label>
                                              <textarea required class="form-control" name="country" id="exampleFormControlTextarea1" rows="1"></textarea>
                                          </div>
                                          <div class="form-group">
                                              <label for="exampleFormControlTextarea1">Заголовок :</label>
                                              <textarea required class="form-control" name="heading" id="exampleFormControlTextarea1" rows="1"></textarea>
                                          </div>
                                          <div class="form-group">
                                              <label for="exampleFormControlTextarea1">Отзыв :</label>
                                              <textarea required class="form-control" name="text" id="exampleFormControlTextarea1" rows="3"></textarea>
                                          </div>
                                          <label for="exampleFormControlTextarea2">Оцените нас :</label>
                                          <div class="rating-area">
                                              <input type="radio" id="star-5" name="rating" value="5">
                                              <label for="star-5" title="Оценка «5»"></label>
                                              <input type="radio" id="star-4" name="rating" value="4">
                                              <label for="star-4" title="Оценка «4»"></label>
                                              <input type="radio" id="star-3" name="rating" value="3">
                                              <label for="star-3" title="Оценка «3»"></label>
                                              <input type="radio" id="star-2" name="rating" value="2">
                                              <label for="star-2" title="Оценка «2»"></label>
                                              <input type="radio" id="star-1" name="rating" value="1">
                                              <label for="star-1" title="Оценка «1»"></label>
                                          </div>
                                          <!-- data-dismiss="modal" -->
              
                                          <input type="hidden" id="g-recaptcha-response" data-sitekey="reCAPTCHA_site_key"  name="g-recaptcha-response" /><br /><br />
                                  </div>
                                  <div class="modal-footer" style="justify-content: flex-start!important;">
                                      <button type="submit" value="submit" class="btn btn-success" name="submit" data-target="#exampleModalsend">Отправить</button>
                                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
                                      </form>
                                      
                                  </div>
                              </div>
                          </div>
                      </div>');
INSERT INTO gbua_cgdb.PageReviewsTranslation (LangID, FormTranslator) VALUES (2, '<div class="col-12 text-center mb-5">
    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal">Leave a Review!</button>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Fill in the details to submit a review</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="callback.php" method="post">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Name</label>
                        <input required type="text" class="form-control" name="username" id="exampleFormControlInput1" placeholder="Your name">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Your Email</label>
                        <input required type="text" name="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Country, City:</label>
                        <textarea required class="form-control" name="country" id="exampleFormControlTextarea1" rows="1"></textarea>
                    </div>
                    <div class "form-group">
                        <label for="exampleFormControlTextarea1">Heading:</label>
                        <textarea required class="form-control" name="heading" id="exampleFormControlTextarea1" rows="1"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Review:</label>
                        <textarea required class="form-control" name="text" id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>
                    <label for="exampleFormControlTextarea2">Rate Us:</label>
                    <div class="rating-area">
                        <input type="radio" id="star-5" name="rating" value="5">
                        <label for="star-5" title="Rating \'5\'"></label>
                        <input type="radio" id="star-4" name="rating" value="4">
                        <label for "star-4" title="Rating \'4\'"></label>
                        <input type="radio" id="star-3" name="rating" value="3">
                        <label for="star-3" title="Rating \'3\'"></label>
                        <input type="radio" id="star-2" name="rating" value="2">
                        <label for="star-2" title="Rating \'2\'"></label>
                        <input type="radio" id="star-1" name="rating" value="1">
                        <label for="star-1" title="Rating \'1\'"></label>
                    </div>
                    <input type="hidden" id="g-recaptcha-response" data-sitekey="reCAPTCHA_site_key" name="g-recaptcha-response" /><br /><br />
                </form>
            </div>
            <div class="modal-footer" style="justify-content: flex-start!important;">
                <button type="submit" value="submit" class="btn btn-success" name="submit" data-target="#exampleModalsend">Submit</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
');
INSERT INTO gbua_cgdb.PageReviewsTranslation (LangID, FormTranslator) VALUES (3, '');
INSERT INTO gbua_cgdb.PageReviewsTranslation (LangID, FormTranslator) VALUES (4, '<div class="col-12 text-center mb-5">
    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal">Залишити відгук!</button>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Заповніть дані для надсилання відгуку</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Закрити">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="callback.php" method="post">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Ім\'я</label>
                        <input required type="text" class="form-control" name="username" id="exampleFormControlInput1" placeholder="Ваше ім\'я">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Ваша пошта</label>
                        <input required type="text" name="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Країна, місто:</label>
                        <textarea required class="form-control" name="country" id="exampleFormControlTextarea1" rows="1"></textarea>
                    </div>
                    <div class="form-group">
                        <label for "exampleFormControlTextarea1">Заголовок:</label>
                        <textarea required class="form-control" name="heading" id="exampleFormControlTextarea1" rows="1"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Відгук:</label>
                        <textarea required class="form-control" name="text" id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>
                    <label for="exampleFormControlTextarea2">Оцініть нас:</label>
                    <div class="rating-area">
                        <input type="radio" id="star-5" name="rating" value="5">
                        <label for="star-5" title="Оцінка «5»"></label>
                        <input type="radio" id="star-4" name="rating" value="4">
                        <label for="star-4" title="Оцінка «4»"></label>
                        <input type="radio" id="star-3" name="rating" value="3">
                        <label for="star-3" title="Оцінка «3»"></label>
                        <input type="radio" id="star-2" name="rating" value="2">
                        <label for="star-2" title="Оцінка «2»"></label>
                        <input type="radio" id="star-1" name="rating" value="1">
                        <label for="star-1" title="Оцінка «1»"></label>
                    </div>
                    <!-- data-dismiss="modal" -->
                    <input type="hidden" id="g-recaptcha-response" data-sitekey="reCAPTCHA_site_key"  name="g-recaptcha-response" /><br /><br />
                </div>
                <div class="modal-footer" style="justify-content: flex-start!important;">
                    <button type="submit" value="submit" class="btn btn-success" name="submit" data-target="#exampleModalsend">Надіслати</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрити</button>
                </form>
            </div>
        </div>
    </div>
</div>
');
