function reviewpage_button_click(button) {

    //console.log(button);
    page_number = $(button).attr('page-number');


    $.ajax({ // отправляем данные
        url: '/ajax/reviews_page.php',
        dataType: "json",
        method: "GET",
        data: {
            page_number: page_number
        },
        dataType: "json",
        success: function (response) {
            if (response.status == 'success')
            {
                //console.log(response);
                review_block_area = $("#review_block_area")[0];
                review_block_area.innerHTML =  response.CONTENT;

                $( ".page-button" ).on( "click", function() {
                    event.preventDefault();
                    reviewpage_button_click(this);
                });

                $('html, body').animate({scrollTop: 0},500);
                //console.log(review_block_area);
                //$("#review-block").innerHTML = '';
            }
            else{
                console.log(response);
            }
        }
    })

}