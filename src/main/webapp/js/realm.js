$(document).ready(function () {
    changeTab()
});

function changeTab() {
    $('#gallery').removeClass('current')
    $('#products').removeClass('current')
    $('#aboutMe').removeClass('current')
    $('#contacts').removeClass('current')

    currentPage = $('#currentPage').val()
    $('#' + currentPage).attr('class', "current")
}

