$(document).ready(function () {
    loadGallery()
});


function loadGallery() {
    randomProduct();
    Cufon.replace('ul.menu li a, .text-1, h2, .text-3, .date strong, .button, .soc-icons span', { fontFamily: 'Bilbo', hover:true});
    setTimeout(loadGallery, 10000);
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
            }).text(product.galleryHeading).appendTo(banner);


            $('<strong>', {
            }).text(product.gallerySubHeading).appendTo(galleryHeading);


            $('<p>', {
                class: 'text-2'
            }).text(product.galleryDescription).appendTo(banner);


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