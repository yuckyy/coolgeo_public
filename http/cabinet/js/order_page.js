var isFormSubmit = false;
function formChange() {
    postData = Object();
    postData['action'] = 'getBookingCost';
    $('#bookingform .form-control').each(function( i, formControl ){
        controlName = $(formControl).attr('name');
        controlValue = $(formControl).val();
        postData[controlName] = controlValue;
    })

    $.ajax({
        url: '/cabinet/ajax/server.php',
        dataType : "json",
        method: "POST",
        data: postData,
        success: function(response) {
            if (response.status == 'success') {
                $("#bookingAmount")[0].innerText = response.CostData.BookingCost;
                $('#bookingCurrency')[0].innerText = response.CostData.BookingCurrencyName;
            } else {
                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}

function formSubmit(){
    phone = iti.getNumber();
    phoneRe = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/;
    digits = phone.replace(/\D/g, "");
    isPhoneValid = phoneRe.test(digits);
    console.log(isPhoneValid);
    console.log(phone);

    if (!isPhoneValid){
        $('#Phone').removeClass('is-valid');
        $('#Phone').addClass('is-invalid');
        $('#Phone').val('');
    } else {
        if (document.getElementById('bookingform').checkValidity() === false){
            document.getElementById('bookingform').classList.add('was-validated');
        } else {
            postData['action'] = 'createOrder';
            $('#bookingform .form-control').each(function( i, formControl ){
                controlName = $(formControl).attr('name');
                controlValue = $(formControl).val();
                postData[controlName] = controlValue;
            })
            postData.Phone = phone;

            $.ajax({
                url: '/cabinet/ajax/server.php',
                dataType : "json",
                method: "POST",
                data: postData,
                success: function(response) {
                    if (response.status == 'success') {
                        window.location.replace(response.locationHref);
                    } else {
                        alert(response.message);
                    };
                },
                error: function(responce){
                    console.log(responce)
                }
            });

        }
    }

}
