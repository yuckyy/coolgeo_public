window.onload = getReviews;
function getReviews() {

    postData = Object();
    postData['action'] = 'getReviews';

    $.ajax({
        url: '/cabinet/ajax/server.php',
        dataType : "json",
        method: "POST",
        data: postData,
        success: function(response) {
            if (response.status == 'success') {

                $(".review-block-ajax").html(response.reviews);
            } else {

                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}

$( ".order-button" ).on( "click", function() {
    event.preventDefault();
    formSubmitReviews(this);
});

function formSubmitReviews() {

    postData = Object();
    postData['action'] = 'newReview';
    postData['name'] =$("#form-name").val();
    postData['stars'] = $("#form-stars").val();
    postData['city'] = $("#form-city").val();
    postData['titleText'] = $("#form-titleText").val();
    postData['email'] = $("#form-email").val();
    postData['text'] = $("#form-text").val();
    console.log(postData);
    $.ajax({
        url: '/cabinet/ajax/server.php',
        dataType : "json",
        method: "POST",
        data: postData,
        success: function(response) {
            if (response.status == 'success') {

                // $(".review-block-ajax").html(response.reviews);
            } else {

                alert(response.message);
            };
        },
        error: function(responce){
            console.log(responce)
        }
    });
}