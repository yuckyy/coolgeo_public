function lang_button(button){

    lang = $(button).attr('lang');
    $.ajax({
        url: '/cabinet/ajax/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'ChangeLang',
            lang: lang
        },
        success: function(response) {
            if (response.status == 'success') {
                //console.log(response.redirect_url);
                window.location.href = response.redirect_url;
            } else {
                alert(response.message);
            };

        },
        error: function(responce){
            console.log(responce)
        }
    });


}