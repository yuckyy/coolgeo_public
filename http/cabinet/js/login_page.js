function login_button_click() {
    isValid =  validatePhone();
    if (isValid){
        login = iti.getNumber();
        password = $('#password').val();
        $.ajax({
            url: '/cabinet/ajax/server.php',
            dataType : "json",
            method: "GET",
            data: {
                action: 'login',
                login: login,
                password: password
            },
            success: function(response) {
                if (response.status == 'success') {
                    window.location.replace(response.redirect_url);
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