<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/css/reset.css">
    <link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/css/style.css">
    <link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/css/slider.css">
    <link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/css/zerogrid.css">
    <link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/css/responsive.css">
    <link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/css/realm.css">
    <link href='http://fonts.googleapis.com/css?family=Lato:300italic' rel='stylesheet' type='text/css'>
    <script src="<%=request.getContextPath()%>/js/jquery-1.7.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/jquery.easing.1.3.js"></script>
    <script src="<%=request.getContextPath()%>/js/cufon-yui.js"></script>
    <script src="<%=request.getContextPath()%>/js/cufon-replace.js"></script>
    <script src="<%=request.getContextPath()%>/js/Bilbo_400.font.js"></script>
    <script src="<%=request.getContextPath()%>/js/css3-mediaqueries.js"></script>

    <!--[if lt IE 8]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0"
                 height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a>
    </div>
    <![endif]-->
    <!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/css/ie.css">
    <![endif]-->


    <script>
        var prevTab = "gallery";
        function changeTab(currentTab) {
            $('#' + prevTab).removeClass("current")
            $('#' + currentTab).addClass("current")
            prevTab = currentTab;

        }
    </script>
</head>
<body>
<header>
    <div class="nav-responsive">
        <div>MENU</div>
        <select onchange="location=this.value">
            <option></option>
            <option value="<%=request.getContextPath()%>/gallery.htm">Gallery</option>
            <option value="<%=request.getContextPath()%>/products/all.htm">Products</option>
            <option value="<%=request.getContextPath()%>/aboutMe.htm">About Me</option>
            <option value="<%=request.getContextPath()%>/contacts.htm">Contacts</option>
        </select>
    </div>
    <div>
        <div>
            <h1><a href="index.html"><img src="<%=request.getContextPath()%>/images/logo1.png" alt=""></a></h1>
            <nav>
                <ul class="menu">
                    <li id="gallery"><a href="<%=request.getContextPath()%>/gallery.htm"
                                        onclick="changeTab('gallery');">Gallery</a>
                    </li>
                    <li id="products"><a href="<%=request.getContextPath()%>/products/all.htm"
                                         onclick="changeTab('products');">Products</a></li>
                    <li id="aboutMe"><a href="<%=request.getContextPath()%>/aboutMe.htm"
                                        onclick="changeTab('aboutMe');">About Me</a></li>
                    <li id="contacts"><a href="<%=request.getContextPath()%>/contacts.htm"
                                         onclick="changeTab('contacts');">Contacts</a></li>
                </ul>
            </nav>
            <div class="clear"></div>
        </div>
    </div>
</header>