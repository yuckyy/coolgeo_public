function buyit_button_click(button){

    console.log(button);

    lang = $(button).attr('data-langpage');
    card_name = $(button).attr('data-cartpage');

    $.ajax({ // отправляем данные
        url: '/ajax/request.php',
        dataType: "json",
        method: "GET",
        data: {
            lang: lang,
            card_name: card_name
        },
        success: function (response) {
            if (response.status == 'success')
            {
                //console.log(response);

                $.datepicker.setDefaults(
                    {
                        closeText: response.DatePinkerLocalisation.closeText,
                        prevText: response.DatePinkerLocalisation.prevText,
                        currentText: response.DatePinkerLocalisation.currentText,
                        monthNames: response.DatePinkerLocalisation.monthNames,
                        monthNamesShort: response.DatePinkerLocalisation.monthNamesShort,
                        dayNames: response.DatePinkerLocalisation.dayNames,
                        dayNamesShort: response.DatePinkerLocalisation.dayNamesShort,
                        dayNamesMin: response.DatePinkerLocalisation.dayNamesMin,
                        weekHeader: response.DatePinkerLocalisation.weekHeader,
                        dateFormat: response.DatePinkerLocalisation.dateFormat,
                        firstDay: response.DatePinkerLocalisation.firstDay
                    });

                buyit_form = $('<div>').attr('title', response.FormTitle);

                /*
                buyit_form.append(
                    $('<p>').append(response.LabelEventsDate)
                )
                */
                //<p class="validateTips">All form fields are required.</p>



                form_height = 400;
                form_width = 450;


                fieldsetHidden = $('<fieldset>').attr('style','display: none').append(

                    $('<input>').attr('type', 'hidden').attr('id', 'currentLabelTotalPrice').attr('value',response.LabelTotalPrice),
                    $('<input>').attr('type', 'hidden').attr('id', 'currentPrice').attr('value',''),
                    $('<input>').attr('type', 'hidden').attr('id', 'currentCurrency').attr('value',''),
                );
                fieldsetPeoplePrice = $('<fieldset>').attr('id','fieldsetPeoplePrice').attr('class', 'text-center');
                fieldsetPlanadDate = $('<fieldset>').attr('id','fieldsetPlanadDate').attr('class', 'text-center');
                fieldsetEnotherDate = $('<fieldset>').attr('id','fieldsetEnotherDate').attr('class', 'text-center');
                fieldsetContacts = $('<fieldset>').attr('id','fieldsetPhone').attr('class', 'text-center');
                fieldsetTotal = $('<fieldset>').attr('id','fieldsetTotal').attr('class', 'text-center');
                fieldsetRecaptha = $('<div>').attr('id', 'dialod_recaptcha').attr('data-sitekey','6LdDIF4UAAAAABOyHqUgmDkg61Fas67Q_oMb5H75').attr('class', 'g-recaptcha');

                //fieldset
                buyit_form.append(
                    fieldsetHidden,
                    fieldsetPeoplePrice,
                    fieldsetPlanadDate,
                    fieldsetEnotherDate,
                    fieldsetContacts,
                    fieldsetTotal,
                    fieldsetRecaptha
                );

                PreparefieldsetPeoplePrice(fieldsetPeoplePrice, response);

                if (Object.keys(response.EventsDate).length > 0){
                    PreparefieldsetPlanadDate(fieldsetPlanadDate, response);
                }
                else {
                    PreparefieldsetEnotherDate(fieldsetEnotherDate, response);
                }

                //

                PreparefieldsetfieldsetContacts(fieldsetContacts, response);
                //PreparefieldsetTotal(response);



                //emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;

                emailRegex = /^[-a-z0-9!#$%&'*+/=?^_`{|}~]+(?:\.[-a-z0-9!#$%&'*+/=?^_`{|}~]+)*@(?:[a-z0-9]([-a-z0-9]{0,61}[a-z0-9])?\.)*(?:aero|arpa|asia|biz|cat|com|coop|edu|gov|info|int|jobs|mil|mobi|museum|name|net|org|pro|tel|travel|[a-z][a-z])$/;
                dateRegex = /^\s*(3[01]|[12][0-9]|0?[1-9])\.(1[012]|0?[1-9])\.((?:19|20)\d{2})\s*$/;
                $(buyit_form).dialog(
                    {
                        autoOpen: false,
                        modal: true,
                        buttons:
                            [
                                {
                                    text: response.ButtonBuyValue,
                                    click: function(){

                                        PreparefieldsetTotal();

                                        $('.ui-state-error').removeClass('ui-state-error');


                                        AllFieldsValid = true;

                                        // Проверка валидности емайл
                                        Email = $( "input[name$='Email']" );
                                        valid = true && checkRegexp( Email, emailRegex);
                                        AllFieldsValid = AllFieldsValid && valid;

                                        EventDate =  $( "input[name='EventDateRadio']:checked" );
                                        if (!EventDate.val()){
                                            EventDate =  $( "input[name='EventDateInput']" );
                                        }
                                        //console.log(checkRegexp( EventDate, dateRegex));
                                        valid = true && checkRegexp( EventDate, dateRegex);
                                        AllFieldsValid = AllFieldsValid && valid;



                                        PeopleCount = $( "input[name$='PeopleCount']" );
                                        if (PeopleCount.val().length == 0){
                                            valid = false;
                                            PeopleCount.addClass('ui-state-error')
                                        }

                                        PeoplePrice = $( "#currentPrice" ).val();
                                        PriceCurrency = $( "#currentCurrency" ).val();
                                        Phone = $( "input[name$='Phone']" ).val();
                                        TotalPrice = $('#TotalPriceH3').html();

                                        if ( AllFieldsValid ) {

                                            console.log('Email' + Email.val());
                                            console.log('EventDate' + EventDate.val());
                                            console.log('PeopleCount' + PeopleCount.val());
                                            console.log('PeoplePrice' + PeoplePrice);
                                            console.log('PriceCurrency' + PriceCurrency);
                                            console.log('Phone' + Phone);

                                            $.ajax({ // отправляем данные
                                                url: '/ajax/OrderData.php',
                                                dataType: "json",
                                                method: "GET",
                                                data: {
                                                    Email: Email.val(),
                                                    EventDate: EventDate.val(),
                                                    PeopleCount: PeopleCount.val(),
                                                    PeoplePrice: PeoplePrice,
                                                    PriceCurrency: PriceCurrency,
                                                    Phone: Phone,
                                                    EventTitle: response.FormTitle,
                                                    TotalPrice: TotalPrice,
                                                    captcha: grecaptcha.getResponse()
                                                },
                                                dataType: "json",
                                                success: function (response) {
                                                    if (response.status == 'success'){
                                                        $(buyit_form).dialog( "close" );
                                                    }
                                                }
                                            })

                                        }


                                    }
                                },
                                {
                                    text: response.ButtonCancelValue,
                                    click: function () {
                                        $(this).dialog( "close" );
                                    }
                                }
                            ],

                        open : function() {
                            var t = $(this).parent(), w = window;
                            var dialogHeight = t[0]['clientHeight'];
                            t.offset({
                                top: (w.innerHeight / 2) + w.scrollY - (dialogHeight / 2)
                            });

                            $('.radio-date-selector').checkboxradio();
                            $('.price-selector').selectmenu();
                            $('.ui-menu-item').addClass('text-center');

                            $('#currentCurrency').val($('option:selected', this).attr('Currensy'));
                            $('#currentPrice').val($('option:selected', this).val());

                            grecaptcha.render('dialod_recaptcha', {
                                sitekey: '6LdDIF4UAAAAABOyHqUgmDkg61Fas67Q_oMb5H75',

                            });


                            PreparefieldsetTotal(response);
                        },
                        close: function()
                        {
                            $( this ).remove();
                        }
                    }
                );

                buyit_form.dialog( "open" );


            }
            else{
                console.log(response);
            }
        }
    })

}

function PreparefieldsetPeoplePrice(fieldsetPeoplePrice, response, fieldsetHidden){
    fieldsetPeoplePrice.empty();
    // Цена
    EventsPriceLenght = Object.keys(response.EventsPricePerPerson).length;
    PriceSelector = $('<select>')
        .attr('id', 'PricePerPerson')
        .attr('class', 'price-selector text-center')
        .on('selectmenuchange', function() {
            $('#currentCurrency').val($('option:selected', this).attr('Currensy'));
            $('#currentPrice').val($(this).val());
            PreparefieldsetTotal(response);
        });

    //change(function() {});
    for (i = 1; i <= EventsPriceLenght; i++){
        PriceSelector.append(
            $('<option>').attr('value', response.EventsPricePerPerson[i].Price)
                .attr('Currensy', response.EventsPricePerPerson[i].Currency)
                .append(response.EventsPricePerPerson[i].Name)
        )
    }

    fieldsetPeoplePrice.append(
        $('<p>').attr('style', 'margin: 3px; width: 230px;') .append(response.LabelPricePerOnePerson),
        PriceSelector
    );
    // Люди
    fieldsetPeoplePrice.append(
        $('<input>')
            .attr('name', 'PeopleCount')
            .attr('id', 'PeopleCount')
            .mask('00', {placeholder: response.LabelPeopleCount})
            .attr("style", 'width: 230px; text-align: center; margin-top: 5px')
            .on('input', function() {
                PreparefieldsetTotal(response);
            })
    )
}

function PreparefieldsetPlanadDate(fieldsetPlanadDate, response){
    // Даты плановые
    fieldsetPlanadDate.append(
        $('<hr>'),
        $('<p>').attr('style', 'margin: 3px') .append(response.LabelEventsDate)
    );
    EventsDateLenght = Object.keys(response.EventsDate).length;
    for (i = 1; i <= EventsDateLenght; i++){
        RadioId = 'radio-'+i;
        RadioClass = 'radio-date-selector';

        label = $('<label>').attr('for', RadioId)
            .attr("style", 'width: 230px; text-align: center')
            .append(response.EventsDate[i]);
        input = $('<input>').attr('type', 'radio')
            .attr('class', RadioClass)
            .attr('name', 'EventDateRadio')
            .attr('id', RadioId)
            .attr('value', response.EventsDate[i]);
        if (i == 1 ){input.attr('checked','checked')};
        fieldsetPlanadDate.append(label, input)
    }
    // Даты другая дата
    fieldsetPlanadDate.append(
        $('<label>').attr('for', 'EnotherDate')
            .attr("style", 'width: 230px; text-align: center')
            .append(response.LabelEnotherDate),
        $('<input>').attr('type', 'radio')
            .attr('class', 'radio-date-selector')
            .attr('name', 'EventDateRadio')
            .attr('id', 'EnotherDate')
            .attr('value', response.LabelEnotherDate)
            .click(function() {
                fieldsetPlanadDate.empty();
                fieldsetEnotherDate = $('#fieldsetEnotherDate');
                PreparefieldsetEnotherDate(fieldsetEnotherDate, response);
            })
    )
}

function PreparefieldsetEnotherDate(fieldsetEnotherDate, response){
    // Даты
    fieldsetEnotherDate.append(
        $('<hr>'),
        $('<p>').attr('style', 'margin: 3px') .append(response.LabelEventsDate),
        $('<input>').attr('type', 'text').attr('name', 'EventDateInput').attr('id', 'EnotherDate')
            .attr("style", 'width: 230px; text-align: center')
            .mask('00.00.0000')
            .datepicker(),
        $('<input>').attr('type', 'button').attr('value', response.LabelPlanedDate).attr('style','margin-top:5px')
            .click(function() {
                fieldsetEnotherDate.empty();
                fieldsetPlanadDate = $('#fieldsetPlanadDate');
                PreparefieldsetPlanadDate(fieldsetPlanadDate, response);
                $('.radio-date-selector').checkboxradio();
            }),

    )
}
function PreparefieldsetfieldsetContacts(fieldsetContacts, response){
    fieldsetContacts.append(
        $('<hr>'),
        $('<input>').attr('name', 'Phone').attr('id', 'Phone').mask('+00(000)000-00-00', {placeholder: response.LabelPhone}).attr("style", 'width: 230px; text-align: center'),
        $('<div>').append(response.LabelPhoneOrEmail),
        $('<input>').attr('name', 'Email').attr('id', 'Email').mask('ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ',
            {
                translation: {
                    'Z': {
                        pattern: /[a-zA-Z0-9_.@]/, optional: true
                    }
                },
                placeholder: response.LabelEmail}
        ).attr("style", 'width: 230px; text-align: center')
    )
}

function PreparefieldsetTotal(){

    fieldsetTotal = $('#fieldsetTotal');
    PeopleCount = $( "input[name='PeopleCount']" ).val();
    PeoplePrice = $( "#currentPrice" ).val();
    PriceCurrency = $( "#currentCurrency" ).val();
    LabelTotalPrice= $( "#currentLabelTotalPrice" ).val();

    if (PeopleCount == ''){
        PeopleCount = 0
    }
    if (PeoplePrice == ''){
        PeoplePrice = 0
    }

    TotalPrice = PeopleCount * PeoplePrice;

    fieldsetTotal.empty();
    fieldsetTotal.append(
        $('<hr>'),
        $('<h6>').append(LabelTotalPrice),
        $('<h3>').attr('id', 'TotalPriceH3').append(TotalPrice,PriceCurrency)
    )

    /*
    console.log('PeopleCount: '+ PeopleCount );
    console.log('PeoplePrice: '+ PeoplePrice );
    console.log('PriceCurrency: '+ PriceCurrency );
    */
}




function checkLength( o, n, min, max ) {
    if ( o.val().length > max || o.val().length < min ) {
        o.addClass( "ui-state-error" );
        return false;
    } else {
        return true;
    }
}

function checkRegexp( o, regexp ) {
    if ( !( regexp.test( o.val().toLowerCase() ) ) ) {
        o.addClass( "ui-state-error" );
        return false;
    } else {
        return true;
    }
}


