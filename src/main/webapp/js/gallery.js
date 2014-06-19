$(document).ready(function () {
    loadGallery()
});


function loadGallery() {
    randomProduct('promo-image1')
    randomProduct('promo-image2')
    randomProduct('promo-image3')

    loadProduct()
    setTimeout(shuffleGallery, 5000)
}

var currentProductImage

function loadProduct(){
    $.ajax({
        type: 'GET',
        cache: false,
        async: false,
        url: getContextPath() + "/gallery/randomProduct.json",
        success: function (product, textStatus, request) {
            currentProductImage = getContextPath() + "/images/" + product.sku + "-gallery.image"
        },
        error: function (request, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}

function shuffleGallery() {
    promo2 = $('#promo-image2').attr('src')
    $('#promo-image3').attr('src', promo2)

    promo1 = $('#promo-image1').attr('src')
    $('#promo-image2').attr('src', promo1)

    $('#promo-image1').attr('src', currentProductImage)

    setTimeout(shuffleGallery, 5000)

    loadProduct()
}

function randomProduct(galleryImage) {
    $.ajax({
        type: 'GET',
        cache: false,
        async: false,
        url: getContextPath() + "/gallery/randomProduct.json?exclude=",
        success: function (product, textStatus, request) {
            var imagePath = getContextPath() + "/images/" + product.sku + "-gallery.image"
            $("#" + galleryImage).attr('src', imagePath);
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