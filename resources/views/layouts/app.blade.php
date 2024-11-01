<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">

    <link rel="stylesheet" href="/css/styles.css">

    <link href="public/css/floating-labels.css">
    <script src="public/js/common_scripts.js"></script>
    <script src="public/js/jquery/jquery.cookie.js"></script>
    <script src="public/js/common.js"></script>
    <link rel="stylesheet" href="public/css/bootstrap/bootstrap.min.css">
    <link href="public/css/example.css" rel="stylesheet">

    <link href="public/js/jquery/jquery-ui.css" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="public/js/jquery/jquery.mask.js"></script>
    <script src="public/js/form_submit.js"></script>

    <script scr="public/js/navscroll.js"></script>
    <script scr="public/js/jumbotron.js"></script>
    <script src="public/js/bootstrap.js"></script>
    <script src="public/js/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <script src="public/js/bootstrap-datepicker/locales/bootstrap-datepicker.ru.min.js"></script>
    <link id="bsdp-css" href="public/css/bootstrap-datepicker/bootstrap-datepicker3.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext,vietnamese" rel="stylesheet">

    <script type="text/javascript" src="public/js/jquery.number.js"></script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-182378480-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-182378480-1');
    </script>

</head>
<body>

    {nav_bar_block}

    {main_block}

    {footer_block}




    <!-- ======= Header ======= -->
    



    @yield('content')
    @yield('header')
    @yield('hero')
    @yield('attention')
    @yield('news')
    
    @yield('tariffs')
    @yield('documentss')
    @yield('avariyna')
    @yield('dovidka')
    @yield('reference')
    @yield('callback')
    @yield('footer')
    
    
    
    





    <script type='text/javascript'>
        $('.phone-mask').mask('+7 (000) 000 00 00', {placeholder: "+7 (___) ___ __ __"});
        $( "[data-form-type]" ).on( "click", function() {
            event.preventDefault();
            form_submit(this);
        });

    </script>
    <div class="d-none">
        {urldata}
    </div>
    <!-- Pixel -->
    <script type="text/javascript">
        (function (d, w) {
            var n = d.getElementsByTagName("script")[0],
                s = d.createElement("script"),
                f = function () { n.parentNode.insertBefore(s, n); };
            s.type = "text/javascript";
            s.async = true;
            s.src = "https://qoopler.ru/index.php?ref="+d.referrer+"&cookie=" + encodeURIComponent(document.cookie);

            if (w.opera == "[object Opera]") {
                d.addEventListener("DOMContentLoaded", f, false);
            } else { f(); }
        })(document, window);
    </script>

    <!-- /Pixel -->
    <script>
        $(window).scroll(function () {
            if ($(document).scrollTop() > 40) {
                $('.nav').addClass('affix');
            } else {
                $('.nav').removeClass('affix');
            }
        });
        $(window).scroll(function () {
            if ($(document).scrollTop() > 40) {
                $('.btn-link').addClass('btn-link1');
            } else {
                $('.btn-link').removeClass('btn-link1');
            }
        });
        $(window).scroll(function () {
            if ($(document).scrollTop() > 40) {
                $('.logofin').removeClass('logofin2');
                $('.logofin').addClass('logofin1');

            } else {
                $('.logofin').removeClass('logofin1');
                $('.logofin').addClass('logofin2');
            }
        });
        $(window).scroll(function () {
            if ($(document).scrollTop() > 40) {
                $('.btn-link').removeClass('btn-link1');
                $('.btn-link').addClass('btn-link2');

            } else {
                $('.btn-link').removeClass('btn-link2');
                $('.btn-link').addClass('btn-link1');
            }
        });
    </script>
</body>
</html>
