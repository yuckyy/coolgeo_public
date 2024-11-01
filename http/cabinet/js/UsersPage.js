function addUser() {
    login = $('<input>')
        .attr('type', 'text')
        .attr('class', 'form-control')
        .attr('id', 'validationCustom01')
        .attr('placeholder', 'Логин')
        .attr('value', '')
        .attr('required', '');
    username = $('<input>')
        .attr('type', 'text')
        .attr('class', 'form-control')
        .attr('id', 'validationCustom02')
        .attr('placeholder', 'Имя')
        .attr('value', '')
        .attr('required', '');
    password = $('<input>')
        .attr('type', 'password')
        .attr('class', 'form-control')
        .attr('id', 'validationCustom03')
        .attr('placeholder', 'Пароль')
        .attr('value', '')
        .attr('required', '');

    tour_change_value_form = $('<div>').attr('title', 'Создание пользователя: ').append(
        $('<div>').attr('class', 'form-row').append(
            $('<div>').attr('class', 'col-md').append(
                $('<label>').attr('for', 'validationCustom01').append('Логин'),
                login
            )
        ),
        $('<div>').attr('class', 'form-row').append(
            $('<div>').attr('class', 'col-md').append(
                $('<label>').attr('for', 'validationCustom02').append('Имя'),
                username
            )
        ),
        $('<div>').attr('class', 'form-row').append(
            $('<div>').attr('class', 'col-md').append(
                $('<label>').attr('for', 'validationCustom03').append('Пароль'),
                password
            )
        )
    );
    form_height = 500;
    form_width = 900;
    $(tour_change_value_form).dialog(
        {
            autoOpen: false,
            modal: true,
            width: 600,
            height: 400,
            buttons:
                {
                    "Добавить": function () {
                        $.ajax({
                            url: '/ajax/server.php',
                            dataType: "json",
                            method: "GET",
                            data: {
                                action: 'useradd',
                                login: login.val(),
                                username: username.val(),
                                password: password.val()
                            },
                            success: function (response) {
                                if (response.status == 'success') {
                                    window.location.replace("/page/users.php");
                                } else {
                                    alert(response.message);
                                };
                            },
                            error: function (responce) {
                                console.log(responce)
                            }
                        });
                    },
                    "Отмена": function () {
                        $(this).dialog("close");
                    }
                },

            open: function () {

            },
            close: function () {

            }
        }
    );

    tour_change_value_form.dialog("open");
}

function changepassword(button) {
    userid = $(button).attr('data-user-id');

    password = $('<input>')
        .attr('type', 'password')
        .attr('class', 'form-control')
        .attr('id', 'validationCustom03')
        .attr('placeholder', 'Пароль')
        .attr('value', '')
        .attr('required', '');

    tour_change_value_form = $('<div>').attr('title', 'Сменить пароль пользователя: '+userid).append(
        $('<div>').attr('class', 'form-row').append(
            $('<div>').attr('class', 'col-md').append(
                $('<label>').attr('for', 'validationCustom01').append('Новый пароль'),
                password
            )
        )
    );
    $(tour_change_value_form).dialog(
        {
            autoOpen: false,
            modal: true,
            width: 400,
            height: 200,
            buttons:
                {
                    "Сменить": function () {
                        $.ajax({
                            url: '/ajax/server.php',
                            dataType: "json",
                            method: "GET",
                            data: {
                                action: 'userchangepassword',
                                userid: userid,
                                password: password.val()
                            },
                            success: function (response) {
                                if (response.status == 'success') {
                                    window.location.replace("/page/users.php");
                                } else {
                                    alert(response.message);
                                };
                            },
                            error: function (responce) {
                                console.log(responce)
                            }
                        });
                    },
                    "Отмена": function () {
                        $(this).dialog("close");
                    }
                },

            open: function () {

            },
            close: function () {

            }
        }
    );

    tour_change_value_form.dialog("open");
}

function deleteuser(button) {
    userid = $(button).attr('data-user-id');

    tour_change_value_form = $('<div>').attr('title', 'Удаление пользователя: '+userid).append(
        $('<div>').attr('class', 'form-row').append(
            $('<div>').attr('class', 'col-md').append(
                'Вы уверены, что хотите удалить этого пользователя?'
            )
        )
    );
    form_height = 500;
    form_width = 900;
    $(tour_change_value_form).dialog(
        {
            autoOpen: false,
            modal: true,
            width: 400,
            height: 200,
            buttons:
                {
                    "Удалить": function () {
                        $.ajax({
                            url: '/ajax/server.php',
                            dataType: "json",
                            method: "GET",
                            data: {
                                action: 'userdelete',
                                userid: userid
                            },
                            success: function (response) {
                                if (response.status == 'success') {
                                    window.location.replace("/page/users.php");
                                } else {
                                    alert(response.message);
                                };
                            },
                            error: function (responce) {
                                console.log(responce)
                            }
                        });
                    },
                    "Отмена": function () {
                        $(this).dialog("close");
                    }
                },

            open: function () {

            },
            close: function () {

            }
        }
    );

    tour_change_value_form.dialog("open");

}