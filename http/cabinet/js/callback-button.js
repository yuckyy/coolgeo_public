var input;
var errorMsg;
var errorMap;

function callback_button(button){
    CardID = $(button).attr('data-card-id');
    $.ajax({
        url: '/cabinet/ajax/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'CallbackFormOpen',
            CardID: CardID
        },
        success: function(response) {
            if (response.status == 'success') {
                $('#CallBackPhone').val(response.Phone);
                $('#CallBackCardID').val(CardID);
                $('#ModalForm').modal('show');
            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}


function validatePhone(input, errorMsg, errorMap) {
    isValid = false;
    if (input.value.trim()) {
        if (iti.isValidNumber()) {
            isValid = true;
        } else {
            input.classList.add("error");
            var errorCode = iti.getValidationError();
            ErrorMsg = errorMap[errorCode];
            if (ErrorMsg != undefined){
                errorMsg.innerHTML = errorMap[errorCode];
                errorMsg.classList.remove("hide");
            } else {
                input.classList.remove("error");
            }
            isValid = false;
        }
    }
    return isValid;
}

function get_callback(){
    Phone = $('#CallBackPhone').val();
    CardID= $('#CallBackCardID').val();
    LangID= $('#PageLang').val();
    $.ajax({
        url: '/cabinet/ajax/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'GetCallBack',
            CardID: CardID,
            Phone: Phone,
            LangID: LangID
        },
        success: function(response) {
            if (response.status == 'success') {

                message_form();

            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}

function message_form(){
    $('#ModalForm').modal('hide');

    $.ajax({
        url: '/cabinet/ajax/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'show_CallBack_message_form'
        },
        success: function(response) {
            if (response.status == 'success') {


                PasportSerialBody = $('<div>').attr('class', 'modal-body font-wids').append(
                    $('<p>').attr('class', 'font-weight-bold text-center text-success').append(
                        response.Message
                    )
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
                );
                modal.append(
                    modal_dialog.append(
                        modal_content.append(
                            modal_header,
                            PasportSerialBody,
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