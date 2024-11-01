


@section('header')

<nav id="navbar" class="navbar  fixed-top nav">
    <a class="navbar-brand pull col-4 " href="#">
        <span class="logofin logofin2">FINFAST</span>
    </a>

    <div class="collapse navbar-collapse " id="navbarNav">
        <span class="navbar-text d-none text-center w-100">
        </span>
    </div>
    <span class="navbar-text text-right mr-lg-3 mr-md-2 mr-0 ">
        <a href="tel: 8-800-511-62-95" class=" text-right navbar-phone" >{navbar-block-phohe}</a><br>
    </span>
    <span class="navbar-text d-none d-md-inline-block text-right " >
        <button type="button" class="btn  btn-link  btn-link1   pr-5 pl-5 ml-4 mr-4"  href="tel: 8-800-511-62-95"
           data-toggle="modal"
           data-target="#navCallBack">
            {navbar-block-btn-text}
        </button>
    </span>
    <span class="navbar-text d-inline-block d-md-none text-center pt-1 pb-1" style=" width: 42px;">
        <a href="tel: 8-800-511-62-95" class="btn pl-2 pr-2 pt-0 pb-0 ml-1" data-toggle="modal" data-target="#navCallBack" style="text-decoration: none; font-size: 32px;">
            ✆
        </a>
    </span>
</nav>

<div class="modal fade" id="navCallBack" >
    <div class="modal-dialog modal-dialog-centered" style="font-family: 'Oswald',Arial,sans-serif;">
        <div class="modal-content"  >
            <div class="modal-header " style="border: none; border-top-left-radius: 0; border-top-right-radius: 0;">
                <button type="button" class="close" data-dismiss="modal" style=" color: white">&times;</button>
            </div>
            <div class="modal-body text-center" style="font-weight: 300; font-size: 20px; line-height: 1.55; color: black; font-family: 'Oswald',sans-serif;">
                {navbar-blick-body-form-text}
            </div>
            <div class="modal-body">
                <p>Телефон</p>
                <input type="text" placeholder="Телефон" id="navi-Phone"  name="Phone" class="form-control phone-mask navi" value="">
            </div>
            <div class="modal-body text-center" >
                <button type="button" class="btn text-light pl-5 pr-5"
                        style="width: 100%; font-size: 16px; line-height: 1.55;" data-form-type="navi"
                        data-form-id="navCallBack"  >
                            {navbar-block-btn-text}
                </button>
            </div>
        </div>
    </div>
</div>@endsection
