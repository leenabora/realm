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
    <link href='http://fonts.googleapis.com/css?family=Lato:300italic' rel='stylesheet' type='text/css'>
    <script src="<%=request.getContextPath()%>/js/jquery-1.7.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/jquery.easing.1.3.js"></script>
    <script src="<%=request.getContextPath()%>/js/cufon-yui.js"></script>
    <script src="<%=request.getContextPath()%>/js/cufon-replace.js"></script>
    <script src="<%=request.getContextPath()%>/js/Bilbo_400.font.js"></script>
    <!--<script src="<%=request.getContextPath()%>/js/tms-0.4.1.js"></script>-->
    <script src="<%=request.getContextPath()%>/js/css3-mediaqueries.js"></script>
    <script src="<%=request.getContextPath()%>/js/gallery.js"></script>
    <script>
      /*  $(document).ready(function(){
            $('.slider')._TMS({
                show:0,
                pauseOnHover:true,
                prevBu:true,
                nextBu:true,
                playBu:false,
                duration:800,
                preset:'fade',
                pagination:true,
                pagNums:false,
                slideshow:7000,
                numStatus:false,
                banners:'fade',
                waitBannerAnimation:false,
                progressBar:false
            })
        });*/
    </script>
    <!--[if lt IE 8]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
    </div>
    <![endif]-->
    <!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath()%>/css/ie.css">
    <![endif]-->
</head>
<body>
<header>
    <div class="nav-responsive"><div>MENU</div>
        <select onchange="location=this.value">
            <option></option>
            <option value="index.html">Gallery</option>
            <option value="products.html">Products</option>
            <option value="about.html">About Me</option>
            <option value="contacts.html">Contacts</option>
        </select>
    </div>
    <div>
        <div>
            <h1><a href="index.html"><img src="<%=request.getContextPath()%>/images/logo1.png" alt=""></a></h1>
            <nav>
                <ul class="menu">
                    <li class="current"><a href="index.html">Gallery</a></li>
                    <li><a href="products.html">Products</a></li>
                    <li><a href="about.html">About Me</a></li>
                    <li><a href="contacts.html">Contacts</a></li>
                </ul>
            </nav>
            <div class="clear"></div>
        </div>
    </div>
</header>
<div id="slide">
    <div class="slider">
        <ul class="items">
            <li id="galleryImageContainer">
                <img id="galleryImage" />
                <div  id="banner" class="banner">
                    <p id="galleryHeading" class="text-1">
                        We've Got
                    </p>
                    <p id="galleryDescription" class="text-2">Ut wisi enim ahd minim veniam quis nostrud exerci takltion ulamc orper suscipit lobortis</p>
                </div>
            </li>
        </ul>
    </div>
</div>
<div class="footer-wrapper">
    <footer>
        <div class="soc-icons"><span>Follow Us:</span><a href="#"><img src="<%=request.getContextPath()%>/images/icon-1.jpg" alt=""></a><a href="#"><img src="<%=request.getContextPath()%>//images/icon-2.jpg" alt=""></a><a href="#"><img src="<%=request.getContextPath()%>//images/icon-3.jpg" alt=""></a></div>
        <p>© 2012 Start-Up<br> <a rel="nofollow" href="http://www.templatemonster.com/" target="_blank" class="link">Website Template</a>  by TemplateMonster.com <br/> <a rel="nofollow" href="http://www.zerotheme.com/432/free-responsive-html5-css3-website-templates.html" target="_blank" class="link">Responsive Templates</a> by <a href="http://www.zerotheme.com" target="_blank">Zerotheme.com</a></p>
    </footer>
</div>
</body>
</html>