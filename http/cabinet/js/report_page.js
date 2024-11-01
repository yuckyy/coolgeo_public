function filterChanged(){
    source = $('#source').val();
    datefrom = $('#datefrom').val();
    dateto = $('#dateto').val();
    currentpage = $('#currentpage').val();

    location = '/page/report.php?'+'source='+source+'&datefrom='+datefrom+'&dateto='+dateto+'&page='+currentpage;
    console.log(location);
}

function pageClick(button) {
    page = $(button).attr('data-page');
    $('#currentpage').val(page);
    filterChanged();
}