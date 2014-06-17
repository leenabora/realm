$(document).ready(function () {
     loadGallery()
});


function loadGallery() {
    alert('load from start')
    randomProduct('gallery-image1')
    inFocus('gallery-image-div1')

    randomProduct('gallery-image2')
    setTimeout(inFocus,6000,'gallery-image-div2')
    setTimeout(loadGallery,15000)
}


function randomProduct(galleryImage) {
    alert('make fresh ajax call')
    $.ajax({
        type: 'GET',
        url: getContextPath() + "/gallery/randomProduct.json",
        success: function (product, textStatus, request) {
        alert(product.sku)
        var imagePath = getContextPath() + "/images/" + product.sku + "-gallery.image"
        $("#"+galleryImage).attr('src', imagePath);
        },
        error: function (request, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}

function inFocus(image){

    $( "#"+image ).attr('style','visibility:visible')
    $( "#"+image ).animate({
        opacity: 1.5,
        marginLeft: "350px",
        fontSize: "3em",
        borderWidth: "60px"
    }, 1500).delay(4000).animate({
        opacity: 0,
        marginLeft: "820px",
        fontSize: "3em",
        borderWidth: "60px"
    }, 1500, function() {
        $( "#"+image ).attr('style','visibility:hidden')
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