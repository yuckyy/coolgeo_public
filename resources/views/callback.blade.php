

@section('callback')

@endsection
@push('scripts')
    <script>
        $("form#form-feedback1 input[type=submit]").click(function () {
            const formPost = $(this).parents('form');
            var dataPost = new FormData(formPost[0]);
            $.ajax({
                url: formPost.attr('action'),
                method: 'post',
                data: dataPost,
                contentType: false,
                processData: false,
                success: function (response) {
                    console.log(response);
                    toastr.success(response.message, 'Виконано!');
                    formPost.find('div.sent-message').text(response.message);
                },
                error: function (response) {
                    formPost.find('div.error-message').text(response.responseJSON.errors);
                    console.log(response.responseJSON.errors);
                }
            });
        });
    </script>
@endpush
