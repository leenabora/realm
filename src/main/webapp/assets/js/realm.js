function colorBoxEvent() {

    var colorQuery = ""
    if ($('#black').attr('checked')) {
        colorQuery = colorQuery + "black:"
    }
    if ($('#blue').attr('checked')) {
        colorQuery = colorQuery + "blue:"
    }
    if ($('#red').attr('checked')) {
        colorQuery = colorQuery + "red:"
    }
    if ($('#green').attr('checked')) {
        colorQuery = colorQuery + "green:"
    }
    if ($('#brown').attr('checked')) {
        colorQuery = colorQuery + "brown:"
    }
    if ($('#pink').attr('checked')) {
        colorQuery = colorQuery + "pink:"
    }
    if ($('#grey').attr('checked')) {
        colorQuery = colorQuery + "grey:"
    }
    if ($('#purple').attr('checked')) {
        colorQuery = colorQuery + "purple:"
    }
    if ($('#yellow').attr('checked')) {
        colorQuery = colorQuery + "yellow:"
    }
    if ($('#orange').attr('checked')) {
        colorQuery = colorQuery + "orange:"
    }
    if ($('#maroon').attr('checked')) {
        colorQuery = colorQuery + "maroon:"
    }
    if ($('#silver').attr('checked')) {
        colorQuery = colorQuery + "silver:"
    }
    if ($('#golden').attr('checked')) {
        colorQuery = colorQuery + "golden:"
    }
    if ($('#white').attr('checked')) {
        colorQuery = colorQuery + "white:"
    }

    if (colorQuery == "") {
        window.location.href = contextPath() + "/products/all.htm"

    }
    else {
        window.location.href = contextPath() + "/products/colors/" + colorQuery.slice(0, -1) + ".htm"
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