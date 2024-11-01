function page_update(button){
    PageID = $(button).attr('data-button-pageid');

    $.ajax({
        url: '/cabinet/ajax/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'PageUpdate',
            PageID: PageID
        },
        success: function(response) {
            if (response.status == 'success') {
                console.log(response);
            } else {
                alert(response.message);
            };

        },
        error: function(responce){
            console.log(responce)
        }
    });

}