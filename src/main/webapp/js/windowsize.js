$(document).ready(function () {
    totalHeight = $(document).height()
    currentPage = $('#currentPage').val()

    if (totalHeight < 820 && currentPage != 'products') {
        contentHeight = ( (totalHeight * 70) / 100) + "px"
        $('#content').attr("style", "height:" + contentHeight);
    }
});
