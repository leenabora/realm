$(document).ready(function () {
    loadGallery()
});


function loadGallery() {
    randomProduct();
    setTimeout(fontRefresh, 40);
    setTimeout(loadGallery, 6000);
}

function fontRefresh() {
    $.getScript(getContextPath() + "/js/Bilbo_400.font.js", function () {
        $('.text-1').each(function () {
            $(this).html($(this).text());
            var clone = $(this).clone();
            $(this).replaceWith(clone);
        });
        $('.text-2').each(function () {
            $(this).html($(this).text());
            var clone = $(this).clone();
            $(this).replaceWith(clone);
        });
        Cufon.replace('.text-1,.text-2', { fontFamily: 'Bilbo', hover: true});
        Cufon.refresh();
    });
}

function randomProduct() {
    $.ajax({
        type: 'GET',
        url: getContextPath() + "/gallery/randomProduct.json",
        success: function (product, textStatus, request) {

            var banner = $('#banner')
            banner.empty()

            var galleryHeading = product.galleryHeading + "<strong>" + product.gallerySubHeading + "</strong>";

            var galleryHeading = $('<p>', {
                class: 'text-1'
            }).text(product.galleryHeading + "").appendTo(banner);


            $('<strong>', {
            }).text(product.gallerySubHeading + "").appendTo(galleryHeading);


            $('<p>', {
                class: 'text-2'
            }).text(product.galleryDescription + "").appendTo(banner);


            var imagePath = getContextPath() + "/images/" + product.sku + "-gallery.image"
            $("#galleryImage").attr('src', imagePath);
        },
        error: function (request, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}

function getContextPath() {
    return window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2));
}

window.onerror = function (msg, url, line) {
    var message = "Error : " + msg + ", line: " + line + ", url: " + url;
    alert(message)
    console.log(message)
}