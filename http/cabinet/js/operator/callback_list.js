function callback_change_status(button){
    CallBackID = $(button).attr('data-callback-id');
    //console.log(button);
    //$('#exampleModalCenter').modal('show');
    //$(modal).modal('show');

    $.ajax({
        url: '/cabinet/ajax/operator/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'show_CallBack_Edit_form',
            CallBackID: CallBackID
        },
        success: function(response) {
            if (response.status == 'success') {

                statusSelect = $(response.CallBackSelect);
                statusBody = $('<div>').attr('class', 'modal-body').append(
                    $('<label>').attr('for', 'CallBackID').append(
                        response.CallBackLabel
                    ),
                    statusSelect
                );

                messageTextArea = $('<textarea>').attr('id','messageValue').attr('class','form-control').attr('rows', 10).append(response.CallBackNotes);
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
                        callback_save_status(CallBackID, statusSelect, messageTextArea, modal);
                    } )
                );
                modal.append(
                    modal_dialog.append(
                        modal_content.append(
                            modal_header,
                            statusBody,
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


function callback_save_status(_CallBackID, statusSelect, messageTextArea, modal){
    CallBackID = _CallBackID;
    CallBackStatusID = $(statusSelect).val();
    Notes = $(messageTextArea).val();

    $.ajax({
        url: '/cabinet/ajax/operator/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'save_CallBack_Edit_form',
            CallBackID: CallBackID,
            CallBackStatusID: CallBackStatusID,
            Notes: Notes
        },
        success: function(response) {
            if (response.status == 'success') {
                id = '#callback-id-'+CallBackID;
                console.log(id);
                $( id )[0].innerHTML = response.statusName;

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