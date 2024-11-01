function getCardData(card){
    cardid = $(card).attr('CardID');

    $.ajax({
        url: '/ajax/server.php',
        dataType : "json",
        method: "GET",
        data: {
            action: 'getCard',
            cardid: cardid
        },
        success: function(response) {
            if (response.status == 'success') {
                tour_change_value_form = $('<div>').attr('title','Данные карточки: '+cardid).append(
                    $('<p>').append('Properties:'),
                    $('<pre>').append(
                        print_r(response.Properties)
                    ),
                    $('<p>').append('UTM:'),
                    $('<pre>').append(
                        print_r(response.UTM)
                    ),
                );
                form_height = 500;
                form_width = 900;
                $(tour_change_value_form).dialog(
                    {
                        autoOpen: false,
                        modal: true,
                        width:600,
                        height: 400,
                        buttons:
                            {
                                "Ok": function()
                                {
                                    $( this ).dialog( "close" );
                                }
                            },
                        open : function(){

                        },
                        close: function(){

                        }
                    }
                );

                tour_change_value_form.dialog( "open" );

            } else {
                alert(response.message);
            };

        },
        error: function(responce){
            console.log(responce)
        }
    });


}


function print_r(arr, level) {
    var print_red_text = "";
    if(!level) level = 0;
    var level_padding = "";
    for(var j=0; j<level+1; j++) level_padding += "    ";
    if(typeof(arr) == 'object') {
        for(var item in arr) {
            var value = arr[item];
            if(typeof(value) == 'object') {
                print_red_text += level_padding + "'" + item + "' :\n";
                print_red_text += print_r(value,level+1);
            }
            else
                print_red_text += level_padding + "'" + item + "' => \"" + value + "\"\n";
        }
    }

    else  print_red_text = "===>"+arr+"<===("+typeof(arr)+")";
    return print_red_text;
}