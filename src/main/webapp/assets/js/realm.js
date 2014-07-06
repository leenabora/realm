function colorBoxEvent() {

    var colorQuery = ""
    if ($('#blackColor').attr('checked')) {
        colorQuery = colorQuery + "black:"
    }
    if ($('#blueColor').attr('checked')) {
        colorQuery = colorQuery + "blue:"
    }
    if ($('#redColor').attr('checked')) {
        colorQuery = colorQuery + "red:"
    }
    if ($('#greenColor').attr('checked')) {
        colorQuery = colorQuery + "green:"
    }
    if ($('#brownColor').attr('checked')) {
        colorQuery = colorQuery + "brown:"
    }
    if ($('#pinkColor').attr('checked')) {
        colorQuery = colorQuery + "pink:"
    }
    if ($('#greyColor').attr('checked')) {
        colorQuery = colorQuery + "grey:"
    }
    if ($('#purpleColor').attr('checked')) {
        colorQuery = colorQuery + "purple:"
    }
    if ($('#yellowColor').attr('checked')) {
        colorQuery = colorQuery + "yellow:"
    }
    if ($('#orangeColor').attr('checked')) {
        colorQuery = colorQuery + "orange:"
    }
    if ($('#maroonColor').attr('checked')) {
        colorQuery = colorQuery + "maroon:"
    }
    if ($('#silverColor').attr('checked')) {
        colorQuery = colorQuery + "silver:"
    }
    if ($('#goldenColor').attr('checked')) {
        colorQuery = colorQuery + "golden:"
    }
    if ($('#whiteColor').attr('checked')) {
        colorQuery = colorQuery + "white:"
    }

    if (colorQuery == "") {
        window.location.href = contextPath() + "/products/all.htm"

    }
    else {
        window.location.href = contextPath() + "/products/colors/"+colorQuery.slice(0,-1)+".htm"
    }
}


function contextPath() {
    return window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2));
}

window.onerror = function (msg, url, line) {
    var message = "Error : " + msg + ", line: " + line + ", url: " + url;
    alert(message)
    console.log(message)
}