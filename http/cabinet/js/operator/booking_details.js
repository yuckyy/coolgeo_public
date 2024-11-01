function booking_edit(button) {

    button_id = $(button).attr('data-button-id');
    booking_id = $(button).attr('data-booking-id');

    switch (button_id) {
        case "SendMessage":
            showSendMessageForm(button_id, booking_id);
            break;
        case "ChangeStatus":
            showChangeStatusForm(button_id, booking_id);
            break;
        case "ChangeService":
            showChangeBookingForm(button_id, booking_id);
            break;
        case "ChangeDateStart":
            showChangePeriodForm(button_id, booking_id);
            break;
        case "ChangeDateEnd":
            showChangePeriodForm(button_id, booking_id);
            break;
        case "ChangePeopleCount":
            showChangeBookingForm(button_id, booking_id);
            break;
        case "ChangeHotelID":
            showChangeBookingForm(button_id, booking_id);
            break;
        case "ChangeCurrencyID":
            showChangeBookingForm(button_id, booking_id);
            break;
        case "ChangeAmountCorrection":
            showChangeBookingForm(button_id, booking_id);
            break;
        case "ChangeHotelListID":
            showChangeHotelListForm(button_id, booking_id);
            break;
        case "ChangeHotelRoomsCount":
            showChangeHotelListForm(button_id, booking_id);
            break;
        case "ChangeOperatorNotes":
            showChangeOperatorNotesForm(button_id, booking_id);
            break;
        case "ChangePassportSurName":
            showChangePassportForm(button_id, booking_id);
            break;
        case "ChangePassportName":
            showChangePassportForm(button_id, booking_id);
            break;
        case "ChangePassportMiddleName":
            showChangePassportForm(button_id, booking_id);
            break;
        case "ChangePassportSerial":
            showChangePassportForm(button_id, booking_id);
            break;
        case "ChangePassportIssuedBy":
            showChangePassportForm(button_id, booking_id);
            break;
        case "ChangePassportIssuedDate":
            showChangePassportForm(button_id, booking_id);
            break;
        default:
            alert( 'Я таких значений не знаю' );
    }
}

//---------------------- SEND MESSAGE FORM ---------------------------------------
function showSendMessageForm(button_id, booking_id){
    $.ajax({
        url: '/cabinet/ajax/operator/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'show_' + button_id,
            BookingID: booking_id
        },
        success: function(response) {
            if (response.status == 'success') {

                messageTextArea = $('<textarea>').attr('id','messageValue').attr('class','form-control').attr('rows', 10);
                messageBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'messageValue').append(
                        response.messageLabel
                    ),
                    messageTextArea
                );

                modal = $('<div>').attr('class', 'modal fade').attr('id', 'ChangeStatusForm');
                modal_dialog = $('<div>').attr('class', 'modal-dialog modal-dialog-centered');
                modal_content = $('<div>').attr('class', 'modal-content');
                modal_header = $('<div>').attr('class', 'modal-header');
                modal_header.append(
                    $('<h4>').attr('class', 'modal-title').append(
                        response.FormHeader
                    ),
                    $('<button>').attr('type', 'button').attr('class', 'close').attr('data-dismiss', 'modal').append(
                        '&times;'
                    )
                )
                modal_footer = $('<div>').attr('class', 'modal-footer').append(
                    $('<button>').attr('type', 'button').attr('class', 'btn btn-secondary').attr('data-dismiss', 'modal').append(
                        response.ButtonClose
                    ),
                    $('<button>').attr('type', 'button').attr('class', 'btn btn-primary').append(
                        response.ButtonOK
                    ).on("click", function () {
                        //console.log(serviceSelect);
                        SendMessage(booking_id, messageTextArea, modal);
                    } )
                );
                modal.append(
                    modal_dialog.append(
                        modal_content.append(
                            modal_header,
                            messageBody,
                            modal_footer
                        )
                    )
                )
                $(modal).modal('show');
            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}

function SendMessage(booking_id, messageTextArea, modal){
    BookingID = booking_id;
    Message = $(messageTextArea).val();

    $.ajax({
        url: '/cabinet/ajax/operator/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'save_' + button_id,
            BookingID: BookingID,
            Message: Message
        },
        success: function(response) {
            if (response.status == 'success') {
                $('#OperatorNotes')[0].innerHTML = response.OperatorNotes;
                $(modal).modal('hide');
            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}
//---------------------- SEND MESSAGE FORM ---------------------------------------

//---------------------- PASSPORT FORM ---------------------------------------
function showChangePassportForm(button_id, booking_id) {
    $.ajax({
        url: '/cabinet/ajax/operator/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'show_' + button_id,
            BookingID: booking_id
        },
        success: function(response) {
            if (response.status == 'success') {

                PasportSurName = $('<input>').attr('type', 'text').attr('id','PasportSurNameValue').attr('class','form-control').attr('value', response.PasportSurName);
                PasportSurNameBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'PasportSurNameValue').append(
                        response.PasportSurNameLabel
                    ),
                    PasportSurName
                );

                PasportName = $('<input>').attr('type', 'text').attr('id','PasportNameValue').attr('class','form-control').attr('value', response.PasportName);
                PasportNameBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'PasportNameValue').append(
                        response.PasportNameLabel
                    ),
                    PasportName
                );

                PasportMiddleName = $('<input>').attr('type', 'text').attr('id','PasportMiddleNameValue').attr('class','form-control').attr('value', response.PasportMiddleName);
                PasportMiddleNameBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'PasportMiddleNameValue').append(
                        response.PasportMiddleNameLabel
                    ),
                    PasportMiddleName
                );
                PasportSerial = $('<input>').attr('type', 'text').attr('id','PasportSerialValue').attr('class','form-control').attr('value', response.PasportSerial);
                PasportSerialBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'PasportSerialValue').append(
                        response.PasportSerialLabel
                    ),
                    PasportSerial
                );
                PasportIssuedBy = $('<input>').attr('type', 'text').attr('id','PasportIssuedByValue').attr('class','form-control').attr('value', response.PasportIssuedBy);
                PasportIssuedByBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'PasportIssuedByValue').append(
                        response.PasportIssuedByLabel
                    ),
                    PasportIssuedBy
                );
                PasportWhenIssued = $('<input>').attr('type', 'text').attr('id','PasportWhenIssuedValue').attr('class','form-control').attr('value', response.PasportIssuedDate);
                PasportWhenIssuedBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'PasportWhenIssuedValue').append(
                        response.PasportIssuedDateLabel
                    ),
                    PasportWhenIssued
                );
                modal = $('<div>').attr('class', 'modal fade').attr('id', 'ChangeStatusForm');
                modal_dialog = $('<div>').attr('class', 'modal-dialog modal-dialog-centered');
                modal_content = $('<div>').attr('class', 'modal-content');
                modal_header = $('<div>').attr('class', 'modal-header');
                modal_header.append(
                    $('<h4>').attr('class', 'modal-title').append(
                        response.FormHeader
                    ),
                    $('<button>').attr('type', 'button').attr('class', 'close').attr('data-dismiss', 'modal').append(
                        '&times;'
                    )
                )
                modal_footer = $('<div>').attr('class', 'modal-footer').append(
                    $('<button>').attr('type', 'button').attr('class', 'btn btn-secondary').attr('data-dismiss', 'modal').append(
                        response.ButtonClose
                    ),
                    $('<button>').attr('type', 'button').attr('class', 'btn btn-primary').append(
                        response.ButtonOK
                    ).on("click", function () {
                        //console.log(serviceSelect);
                        ChangePassport(booking_id, PasportSurName, PasportName, PasportMiddleName, PasportSerial, PasportIssuedBy, PasportWhenIssued, modal);
                    } )
                );
                modal.append(
                    modal_dialog.append(
                        modal_content.append(
                            modal_header,
                            PasportSurNameBody,
                            PasportNameBody,
                            PasportMiddleNameBody,
                            PasportSerialBody,
                            PasportIssuedByBody,
                            PasportWhenIssuedBody,
                            modal_footer
                        )
                    )
                )
                $(modal).modal('show');
            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}
function ChangePassport(booking_id, PasportSurNameInput, PasportNameInput, PasportMiddleNameInput, PasportSerialInput, PasportIssuedByInput, PasportWhenIssuedInput, modal){
    BookingID = booking_id;
    PasportSurName = $(PasportSurNameInput).val();
    PasportName = $(PasportNameInput).val();
    PasportMiddleName = $(PasportMiddleNameInput).val();
    PasportSerial = $(PasportSerialInput).val();
    PasportIssuedBy = $(PasportIssuedByInput).val();
    PasportIssuedDate = $(PasportWhenIssuedInput).val();

    $.ajax({
        url: '/cabinet/ajax/operator/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'save_' + button_id,
            BookingID: BookingID,
            PasportSurName: PasportSurName,
            PasportName: PasportName,
            PasportMiddleName: PasportMiddleName,
            PasportSerial: PasportSerial,
            PasportIssuedBy: PasportIssuedBy,
            PasportIssuedDate: PasportIssuedDate

        },
        success: function(response) {
            if (response.status == 'success') {
                $('#PasportSurName')[0].innerHTML = response.PasportSurName;
                $('#PasportName')[0].innerHTML = response.PasportName;
                $('#PasportMiddleName')[0].innerHTML = response.PasportMiddleName;
                $('#PasportSerial')[0].innerHTML = response.PasportSerial;
                $('#PasportIssuedBy')[0].innerHTML = response.PasportIssuedBy;
                $('#PasportWhenIssued')[0].innerHTML = response.PasportIssuedDate;
                $(modal).modal('hide');
            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}
//---------------------- PASSPORT FORM ---------------------------------------

//---------------------- OPERATOR NOTES FORM ---------------------------------------
function showChangeOperatorNotesForm(button_id, booking_id) {
    $.ajax({
        url: '/cabinet/ajax/operator/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'show_' + button_id,
            BookingID: booking_id
        },
        success: function(response) {
            if (response.status == 'success') {

                operatorNotesTextArea = $('<textarea>').attr('id','OperatorNotesValue').attr('class','form-control').attr('rows', 10).append(
                    response.OperatorNotes
                ) ;
                operatorNotesBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'OperatorNotesValue').append(
                        response.operatorNotesLabel
                    ),
                    operatorNotesTextArea
                );

                modal = $('<div>').attr('class', 'modal fade').attr('id', 'ChangeStatusForm');
                modal_dialog = $('<div>').attr('class', 'modal-dialog modal-dialog-centered');
                modal_content = $('<div>').attr('class', 'modal-content');
                modal_header = $('<div>').attr('class', 'modal-header');
                modal_header.append(
                    $('<h4>').attr('class', 'modal-title').append(
                        response.FormHeader
                    ),
                    $('<button>').attr('type', 'button').attr('class', 'close').attr('data-dismiss', 'modal').append(
                        '&times;'
                    )
                )
                modal_footer = $('<div>').attr('class', 'modal-footer').append(
                    $('<button>').attr('type', 'button').attr('class', 'btn btn-secondary').attr('data-dismiss', 'modal').append(
                        response.ButtonClose
                    ),
                    $('<button>').attr('type', 'button').attr('class', 'btn btn-primary').append(
                        response.ButtonOK
                    ).on("click", function () {
                        //console.log(serviceSelect);
                        ChangeOperatorNotes(booking_id, operatorNotesTextArea, modal);
                    } )
                );
                modal.append(
                    modal_dialog.append(
                        modal_content.append(
                            modal_header,
                            operatorNotesBody,
                            modal_footer
                        )
                    )
                )
                $(modal).modal('show');
            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}

function ChangeOperatorNotes(booking_id, operatorNotesTextArea, modal){
    BookingID = booking_id;
    OperatorNotes = $(operatorNotesTextArea).val();
    console.log(OperatorNotes);

    $.ajax({
        url: '/cabinet/ajax/operator/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'save_' + button_id,
            BookingID: BookingID,
            OperatorNotes: OperatorNotes
        },
        success: function(response) {
            if (response.status == 'success') {
                $('#OperatorNotes')[0].innerHTML = response.OperatorNotes;
                $(modal).modal('hide');
            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}

//---------------------- OPERATOR NOTES FORM ---------------------------------------

//---------------------- HOTELLIST FORM ---------------------------------------
function showChangeHotelListForm(button_id, booking_id) {
    $.ajax({
        url: '/cabinet/ajax/operator/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'show_' + button_id,
            BookingID: booking_id
        },
        success: function(response) {
            if (response.status == 'success') {

                hotelListSelect = $(response.hotelListSelect);
                hotelListBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'hotelListIDValue').append(
                        response.hotelListLabel
                    ),
                    hotelListSelect
                );

                hotelRoomsCount = $('<input>').attr('type', 'number').attr('id','HotelRoomsCountValue').attr('class','form-control').attr('min', 1).attr('max', 30).attr('value', response.HotelRoomsCount);
                hotelRoomsCountBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'HotelRoomsCountValue').append(
                        response.hotelRoomsCountLabel
                    ),
                    hotelRoomsCount
                );

                modal = $('<div>').attr('class', 'modal fade').attr('id', 'ChangeStatusForm');
                modal_dialog = $('<div>').attr('class', 'modal-dialog modal-dialog-centered');
                modal_content = $('<div>').attr('class', 'modal-content');
                modal_header = $('<div>').attr('class', 'modal-header');
                modal_header.append(
                    $('<h4>').attr('class', 'modal-title').append(
                        response.FormHeader
                    ),
                    $('<button>').attr('type', 'button').attr('class', 'close').attr('data-dismiss', 'modal').append(
                        '&times;'
                    )
                )
                modal_footer = $('<div>').attr('class', 'modal-footer').append(
                    $('<button>').attr('type', 'button').attr('class', 'btn btn-secondary').attr('data-dismiss', 'modal').append(
                        response.ButtonClose
                    ),
                    $('<button>').attr('type', 'button').attr('class', 'btn btn-primary').append(
                        response.ButtonOK
                    ).on("click", function () {
                        //console.log(serviceSelect);
                        ChangeHotelList(booking_id, hotelListSelect, hotelRoomsCount, modal);
                    } )
                );
                modal.append(
                    modal_dialog.append(
                        modal_content.append(
                            modal_header,
                            hotelListBody,
                            hotelRoomsCountBody,
                            modal_footer
                        )
                    )
                )
                $(modal).modal('show');
            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}

function ChangeHotelList(booking_id, hotelListSelect, hotelRoomsCount, modal){
    BookingID = booking_id;
    HotelListID = $(hotelListSelect).val();
    HotelRoomsCount = $(hotelRoomsCount).val();

    $.ajax({
        url: '/cabinet/ajax/operator/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'save_' + button_id,
            BookingID: BookingID,
            HotelListID: HotelListID,
            HotelRoomsCount: HotelRoomsCount
        },
        success: function(response) {
            if (response.status == 'success') {
                $('#HotelListID')[0].innerHTML = response.HotelListName;
                $('#HotelRoomsCount')[0].innerHTML = response.HotelRoomsCount;
                $(modal).modal('hide');
            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}

//---------------------- HOTELLIST FORM ---------------------------------------


//---------------------- BOOKING FORM ---------------------------------------
function showChangeBookingForm(button_id, booking_id) {
    $.ajax({
        url: '/cabinet/ajax/operator/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'show_' + button_id,
            BookingID: booking_id
        },
        success: function(response) {
            if (response.status == 'success') {

                serviceSelect = $(response.serviceSelect);
                serviceBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'CardID').append(
                        response.serviceLabel
                    ),
                    serviceSelect
                );

                peopleCount = $('<input>').attr('type', 'number').attr('id','PeopleCount').attr('class','form-control').attr('min', 1).attr('max', 80).attr('value', response.PeopleCount);
                peopleCountBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'PeopleCount').append(
                        response.peopleCountLabel
                    ),
                    peopleCount
                );

                hotelSelect = $(response.hotelSelect);
                hotelBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'HotelID').append(
                        response.hotelLabel
                    ),
                    hotelSelect
                );

                amountCurrencySelect = $(response.amountCurrencySelect);
                amountCurrencyBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'TotalAmountCurrency').append(
                        response.amountCurrencyLabel
                    ),
                    amountCurrencySelect
                );

                amountCorrection = $('<input>').attr('type', 'number').attr('id','AmountCorrection').attr('class','form-control').attr('value', response.TotalAmountCorrection);
                amountCorrectionBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'AmountCorrection').append(
                        response.AmountCorrectionLabel
                    ),
                    amountCorrection
                );


                modal = $('<div>').attr('class', 'modal fade').attr('id', 'ChangeStatusForm');
                modal_dialog = $('<div>').attr('class', 'modal-dialog modal-dialog-centered');
                modal_content = $('<div>').attr('class', 'modal-content');
                modal_header = $('<div>').attr('class', 'modal-header');
                modal_header.append(
                    $('<h4>').attr('class', 'modal-title').append(
                        response.FormHeader
                    ),
                    $('<button>').attr('type', 'button').attr('class', 'close').attr('data-dismiss', 'modal').append(
                        '&times;'
                    )
                )
                modal_footer = $('<div>').attr('class', 'modal-footer').append(
                    $('<button>').attr('type', 'button').attr('class', 'btn btn-secondary').attr('data-dismiss', 'modal').append(
                        response.ButtonClose
                    ),
                    $('<button>').attr('type', 'button').attr('class', 'btn btn-primary').append(
                        response.ButtonOK
                    ).on("click", function () {
                        //console.log(serviceSelect);
                        ChangeBooking(booking_id, serviceSelect, peopleCount, hotelSelect, amountCurrencySelect, amountCorrection, modal);
                    } )
                );
                modal.append(
                    modal_dialog.append(
                        modal_content.append(
                            modal_header,
                            serviceBody,
                            peopleCountBody,
                            hotelBody,
                            amountCurrencyBody,
                            amountCorrectionBody,
                            modal_footer
                        )
                    )
                )
                $(modal).modal('show');
            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}

function ChangeBooking(booking_id, serviceSelect, peopleCount, hotelSelect, amountCurrencySelect, amountCorrection, modal){
    BookingID = booking_id;
    CardID = $(serviceSelect).val();
    PeopleCount = $(peopleCount).val();
    HotelID = $(hotelSelect).val();
    TotalAmountCurrency = $(amountCurrencySelect).val();
    TotalAmountCorrection = $(amountCorrection).val();

    $.ajax({
        url: '/cabinet/ajax/operator/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'save_' + button_id,
            BookingID: BookingID,
            CardID: CardID,
            PeopleCount: PeopleCount,
            HotelID: HotelID,
            TotalAmountCurrency: TotalAmountCurrency,
            TotalAmountCorrection: TotalAmountCorrection

        },
        success: function(response) {
            if (response.status == 'success') {
                $('#CardID')[0].innerHTML = response.CardID;
                $('#PeopleCount')[0].innerHTML = response.PeopleCount;
                $('#HotelID')[0].innerHTML = response.HotelID;
                $('#TotalAmountCurrency')[0].innerHTML = response.TotalAmountCurrency;
                $('#BaseAmount')[0].innerHTML = response.BaseAmount;
                $('#TotalAmountCorrection')[0].innerHTML = response.TotalAmountCorrection;
                $('#TotalAmount')[0].innerHTML = response.TotalAmount;
                $(modal).modal('hide');
            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}
//---------------------- BOOKING FORM ---------------------------------------

//---------------------- PERIOD FORM ---------------------------------------
function showChangePeriodForm(button_id, booking_id) {
    $.ajax({
        url: '/cabinet/ajax/operator/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'show_' + button_id,
            BookingID: booking_id
        },
        success: function(response) {
            if (response.status == 'success') {

                yellow_days   = []; //['01.04.2019','10.04.2019','20.04.2019', '03.03.2019','13.03.2019','23.03.2019'];
                blue_days     = []; //['08.04.2019','16.04.2019','24.04.2019', '07.03.2019','13.03.2019','25.03.2019'];
                hot_days      = []; //['19.04.2019','11.04.2019','03.05.2019','27.03.2019'];

                dateFrom = $('<input>').attr('type', 'text').attr('id', 'DateFrom').attr('class', 'form-control text-center').attr('value', response.DateBooking)
                    .datepicker({
                    language: "{LangValue}",
                    autoclose: true,
                    inline: true,
                    startDate: "today",
                    sideBySide: true,
                    format: "dd.mm.yyyy",
                    clearBtn: true,
                    beforeShowDay: function (date) {
                        calender_date = ('0'+date.getDate()).slice(-2) + '.' + (('0'+(date.getMonth()+1)).slice(-2)) + '.' + date.getFullYear() ;
                        var yellow_index = $.inArray(calender_date, yellow_days);
                        var blue_index = $.inArray(calender_date, blue_days);
                        var hot_index = $.inArray(calender_date, hot_days);
                        if (yellow_index > -1){
                            return {classes: 'yellow-day', tooltip: 'Еще нет нет скидки в этот день (забронировало 1-6 человек)'};
                        }
                        if (blue_index > -1){
                            return {classes: 'blue-day', tooltip: 'Скидка 5% (забронировало 7-14 человек)'};
                        }
                        if (hot_index > -1){
                            return {classes: 'hot-day', tooltip: 'Скидка 10% (забронировало больше 15 человек)'};
                        }
                    }
                });

                dateTo = $('<input>').attr('type', 'text').attr('id', 'DateTo').attr('class', 'form-control text-center').attr('value', response.DateBookingEnd)
                    .datepicker({
                    language: "{LangValue}",
                    autoclose: true,
                    inline: true,
                    startDate: "today",
                    sideBySide: true,
                    format: "dd.mm.yyyy",
                    clearBtn: true
                });

                dateFromBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'DateFrom').append(
                        response.DateFromLabel
                    ),
                    dateFrom
                );

                dateToBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'DateFrom').append(
                        response.DateToLabel
                    ),
                    dateTo
                );
                modal = $('<div>').attr('class', 'modal fade').attr('id', 'ChangeStatusForm');
                modal_dialog = $('<div>').attr('class', 'modal-dialog modal-dialog-centered');
                modal_content = $('<div>').attr('class', 'modal-content');
                modal_header = $('<div>').attr('class', 'modal-header');
                modal_header.append(
                    $('<h4>').attr('class', 'modal-title').append(
                        response.FormHeader
                    ),
                    $('<button>').attr('type', 'button').attr('class', 'close').attr('data-dismiss', 'modal').append(
                        '&times;'
                    )
                )
                modal_footer = $('<div>').attr('class', 'modal-footer').append(
                    $('<button>').attr('type', 'button').attr('class', 'btn btn-secondary').attr('data-dismiss', 'modal').append(
                        response.ButtonClose
                    ),
                    $('<button>').attr('type', 'button').attr('class', 'btn btn-primary').append(
                        response.ButtonOK
                    ).on("click", function () {ChangePeriod(booking_id, dateFrom, dateTo, modal);} )
                );
                modal.append(
                    modal_dialog.append(
                        modal_content.append(
                            modal_header,
                            dateFromBody,
                            dateToBody,
                            modal_footer
                        )
                    )
                )
                $(modal).modal('show');
            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}

function ChangePeriod(booking_id, dateFrom, dateTo, modal){
    BookingID = booking_id;
    DateBooking = $(dateFrom).val();
    DateBookingEnd = $(dateTo).val();
    $.ajax({
        url: '/cabinet/ajax/operator/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'save_' + button_id,
            BookingID: BookingID,
            DateBooking: DateBooking,
            DateBookingEnd: DateBookingEnd
        },
        success: function(response) {
            if (response.status == 'success') {
                $('#DateBooking')[0].innerHTML = response.DateBooking;
                $('#DateEnd')[0].innerHTML = response.DateBookingEnd;
                $(modal).modal('hide');
            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}
//---------------------- PERIOD FORM ---------------------------------------

//---------------------- STATUS FORM ---------------------------------------
function showChangeStatusForm(button_id, booking_id) {
    $.ajax({
        url: '/cabinet/ajax/operator/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'show_' + button_id,
            BookingID: booking_id
        },
        success: function(response) {
            if (response.status == 'success') {

                statusSelect = $(response.StatusSelect);

                modal = $('<div>').attr('class', 'modal fade').attr('id', 'ChangeStatusForm');
                modal_dialog = $('<div>').attr('class', 'modal-dialog modal-dialog-centered');
                modal_content = $('<div>').attr('class', 'modal-content');
                modal_header = $('<div>').attr('class', 'modal-header');
                modal_header.append(
                    $('<h4>').attr('class', 'modal-title').append(
                        response.FormHeader
                    ),
                    $('<button>').attr('type', 'button').attr('class', 'close').attr('data-dismiss', 'modal').append(
                        '&times;'
                    )
                )
                modal_body = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'BookingStatusID').append(
                        response.StatusLabel
                    ),
                    statusSelect
                );
                modal_footer = $('<div>').attr('class', 'modal-footer').append(
                    $('<button>').attr('type', 'button').attr('class', 'btn btn-secondary').attr('data-dismiss', 'modal').append(
                        response.ButtonClose
                    ),
                    $('<button>').attr('type', 'button').attr('class', 'btn btn-primary').append(
                        response.ButtonOK
                    ).on("click", function () {ChangeStatus(booking_id, statusSelect, modal);} )
                );
                modal.append(
                    modal_dialog.append(
                        modal_content.append(
                            modal_header,
                            modal_body,
                            modal_footer
                        )
                    )
                )
                $(modal).modal('show');
            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}

function ChangeStatus(booking_id, statusSelect, modal){
    BookingID = booking_id;
    BookingStatusID = $(statusSelect).val();
    $.ajax({
        url: '/cabinet/ajax/operator/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'save_' + button_id,
            BookingID: BookingID,
            BookingStatusID: BookingStatusID
        },
        success: function(response) {
            if (response.status == 'success') {
                $('#StatusID')[0].innerHTML = response.StatusName;
                $(modal).modal('hide');
            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}
//---------------------- STATUS FORM ---------------------------------------




