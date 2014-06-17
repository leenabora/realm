$(document).ready(function () {
    currentPage = $('#currentPage').val()
    if (currentPage != 'products') {
        $('#content').attr("style", "height:75%");
    }
});
