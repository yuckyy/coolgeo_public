window.onload = getCars;
function getCars() {

    postData = Object();
    postData['action'] = 'getCars';

    $.ajax({
        url: '/cabinet/ajax/server.php',
        dataType : "json",
        method: "POST",
        data: postData,
        success: function(response) {
            if (response.status == 'success') {

                $("#ajax-cars-block").html(response.cars);
                console.log(response.cars);
            } else {

                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}