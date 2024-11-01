function showTab(n) {
    // This function will display the specified tab of the form...
    var x = document.getElementsByClassName("tab");
    x[n].style.display = "block";
    //... and fix the Previous/Next buttons:
    if (n == 0) {
        document.getElementById("prevBtn").style.display = "none";
    } else {
        document.getElementById("prevBtn").style.display = "inline";
    }
    /*
    if (n == (x.length - 1)) {
        document.getElementById("nextBtn").innerHTML = "Submit";
    } else {
        document.getElementById("nextBtn").innerHTML = "Next";
    }
    */
    //... and run a function that will display the correct step indicator:
    //fixStepIndicator(n)
}

function nextPrev(n) {

    if (currentTab == 0) {
        isValid =  validatePhone();
        if (isValid){

            //Проверить совпадение паролей
            Phone = iti.getNumber()
            $('#Phone').val(Phone);
            Password = $('#Password').val();
            PasswordConfirm = $('#PasswordConfirm').val();

            if (Phone.length < 12) {
                $('#Phone').addClass('invalid');
                return false;
            }

            if (Password != PasswordConfirm) {
                $('#Password').addClass('invalid');
                $('#PasswordConfirm').addClass('invalid');
                return false;
            }

            $.ajax({
                url: '/cabinet/ajax/server.php',
                dataType: "json",
                method: "GET",
                data: {
                    action: 'RegistrationSendCode',
                    Phone: Phone
                },
                success: function (response) {
                    if (response.status == 'success') {

                        var x = document.getElementsByClassName("tab");
                        if (n == 1 && !validateForm()) return false;
                        x[currentTab].style.display = "none";
                        currentTab = currentTab + n;
                        if (currentTab >= x.length) {
                            document.getElementById("regForm").submit();
                            return false;
                        }
                        showTab(currentTab);

                    } else {

                        alert(response.message);

                    }
                    ;
                },
                error: function (responce) {
                    console.log(responce)
                }
            });
        }
    }

    if (currentTab == 1 && n < 0 ) {
        var x = document.getElementsByClassName("tab");
        if (n == 1 && !validateForm()) return false;
        x[currentTab].style.display = "none";
        currentTab = currentTab + n;
        if (currentTab >= x.length) {
            document.getElementById("regForm").submit();
            return false;
        }
        showTab(currentTab);
    }

    if (currentTab == 1 && n > 0 ) {

        SmsCode = $('#SmsCode').val();

        $.ajax({
            url: '/cabinet/ajax/server.php',
            dataType : "json",
            method: "GET",
            data: {
                action: 'RegistrationCheckCode',
                SmsCode: SmsCode,
                Phone: Phone,
                Password: Password
            },
            success: function(response) {
                if (response.status == 'success') {
                    window.location.replace(response.redirect_url);
                    //console.log(response);
                } else {
                    $('#SmsCode').addClass('invalid');
                };
            },
            error: function(responce){
                console.log(responce)
            }
        });
    }
}

function validateForm() {
    // This function deals with validation of the form fields
    var x, y, i, valid = true;
    x = document.getElementsByClassName("tab");
    y = x[currentTab].getElementsByTagName("input");
    // A loop that checks every input field in the current tab:
    for (i = 0; i < y.length; i++) {
        // If a field is empty...
        if (y[i].value == "") {
            // add an "invalid" class to the field:
            y[i].className += " invalid";
            // and set the current valid status to false
            valid = false;
        }
    }
    // If the valid status is true, mark the step as finished and valid:
    /*
    if (valid) {
        document.getElementsByClassName("step")[currentTab].className += " finish";
    }
    */
    return valid; // return the valid status
}

function fixStepIndicator(n) {
    // This function removes the "active" class of all steps...
    var i, x = document.getElementsByClassName("step");
    for (i = 0; i < x.length; i++) {
        x[i].className = x[i].className.replace(" active", "");
    }
    //... and adds the "active" class on the current step:
    x[n].className += " active";
}