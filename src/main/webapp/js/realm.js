$(document).ready(function() {
  tab()
});

function tab(){
    page =  $('#page').val()
    if(page == "product")
       page="collection"

    $('#'+page).addClass('active')
}

function contextPath() {
    return window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2));
}

function takeMeThere(location){
    window.location.href = contextPath() +location
}

window.onerror = function (msg, url, line) {
    var message = "Error : " + msg + ", line: " + line + ", url: " + url;
//    alert(message)
//    console.log(message)
}