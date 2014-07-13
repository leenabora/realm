<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=request.getContextPath()%>/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=request.getContextPath()%>/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=request.getContextPath()%>/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/ico/favicon.png">
    <title>TSHOP - Bootstrap E-Commerce Parallax Theme </title>
    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/assets/css/style.css" rel="stylesheet">

    <!-- styles needed by minimalect -->
    <link href="<%=request.getContextPath()%>/assets/css/jquery.minimalect.min.css" rel="stylesheet">
    <!-- styles needed by checkRadio -->
    <link href="<%=request.getContextPath()%>/assets/css/ion.checkRadio.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/assets/css/ion.checkRadio.cloudy.css" rel="stylesheet">
    <!-- styles needed by mCustomScrollbar -->
    <link href="<%=request.getContextPath()%>/assets/css/jquery.mCustomScrollbar.css" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/assets/css/realm.css" rel="stylesheet">

    <!-- Just for debugging purposes. -->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <c:if test="${page eq 'home' }">
    <!-- styles needed by carousel slider -->
    <link href="<%=request.getContextPath()%>/assets/css/owl.carousel.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/assets/css/owl.theme.css" rel="stylesheet">
    </c:if>

    <!-- include pace script for automatic web page progress bar  -->


    <script>
        paceOptions = {
            elements: true
        };

        function abc(){
            alert('checkbox is clicked')
        }
    </script>

    <script src="<%=request.getContextPath()%>/assets/js/pace.min.js"></script>
</head>

<body>


<!-- Modal Login start -->
<div class="modal signUpContent fade"id="ModalLogin" tabindex="-1" role="dialog" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
                <h3 class="modal-title-site text-center" > Login  to TSHOP </h3>
            </div>
            <div class="modal-body">
                <div class="form-group login-username">
                    <div >
                        <input name="log" id="login-user" class="form-control input"  size="20" placeholder="Enter Username" type="text">
                    </div>
                </div>
                <div class="form-group login-password">
                    <div >
                        <input name="Password" id="login-password" class="form-control input"  size="20" placeholder="Password" type="password">
                    </div>
                </div>
                <div class="form-group">
                    <div >
                        <div class="checkbox login-remember">
                            <label>
                                <input name="rememberme"  value="forever" checked="checked" type="checkbox">
                                Remember Me </label>
                        </div>
                    </div>
                </div>
                <div >
                    <div >
                        <input name="submit" class="btn  btn-block btn-lg btn-primary" value="LOGIN" type="submit">
                    </div>
                </div>
                <!--userForm-->

            </div>
            <div class="modal-footer">
                <p class="text-center"> Not here before? <a data-toggle="modal"  data-dismiss="modal" href="#ModalSignup"> Sign Up. </a> <br>
                    <a href="forgot-password.html" > Lost your password? </a> </p>
            </div>
        </div>
        <!-- /.modal-content -->

    </div>
    <!-- /.modal-dialog -->

</div>
<!-- /.Modal Login -->

<!-- Modal Signup start -->
<div class="modal signUpContent fade"id="ModalSignup" tabindex="-1" role="dialog" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"> &times; </button>
                <h3 class="modal-title-site text-center" > REGISTER </h3>
            </div>
            <div class="modal-body">
                <div class="control-group"> <a class="fb_button btn  btn-block btn-lg " href="#"> SIGNUP WITH FACEBOOK </a> </div>
                <h5 style="padding:10px 0 10px 0;" class="text-center"> OR </h5>
                <div class="form-group reg-username">
                    <div >
                        <input name="login"  class="form-control input"  size="20" placeholder="Enter Username" type="text">
                    </div>
                </div>
                <div class="form-group reg-email">
                    <div >
                        <input name="reg"  class="form-control input"  size="20" placeholder="Enter Email" type="text">
                    </div>
                </div>
                <div class="form-group reg-password">
                    <div >
                        <input name="password"  class="form-control input"  size="20" placeholder="Password" type="password">
                    </div>
                </div>
                <div class="form-group">
                    <div >
                        <div class="checkbox login-remember">
                            <label>
                                <input name="rememberme" id="rememberme" value="forever" checked="checked" type="checkbox">
                                Remember Me </label>
                        </div>
                    </div>
                </div>
                <div >
                    <div >
                        <input name="submit" class="btn  btn-block btn-lg btn-primary" value="REGISTER" type="submit">
                    </div>
                </div>
                <!--userForm-->

            </div>
            <div class="modal-footer">
                <p class="text-center"> Already member? <a data-toggle="modal"  data-dismiss="modal" href="#ModalLogin"> Sign in </a> </p>
            </div>
        </div>
        <!-- /.modal-content -->

    </div>
    <!-- /.modal-dialog -->

</div>

<!-- Fixed navbar start -->
<div class="navbar navbar-tshop navbar-fixed-top megamenu" role="navigation">
<div class="navbar-top">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-sm-6 col-xs-6 col-md-6">

                <div class="pull-left ">
                    <ul class="userMenu ">
                        <li> <a href="#"> <span class="hidden-xs">HELP</span><i class="glyphicon glyphicon-info-sign hide visible-xs "></i> </a> </li>
                        <li class="phone-number">
                            <a  href="callto:+8801680531352">
                                <span> <i class="glyphicon glyphicon-phone-alt "></i></span>
                                <span class="hidden-xs" style="margin-left:5px"> 88 01680 53 1352 </span> </a> </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6 col-xs-6 col-md-6 no-margin no-padding">
                <div class="pull-right">
                    <ul class="userMenu">
                        <li> <a href="account-1.html"><span class="hidden-xs"> My Account</span> <i class="glyphicon glyphicon-user hide visible-xs "></i></a> </li><li> <a href="#"  data-toggle="modal" data-target="#ModalLogin"> <span class="hidden-xs">Sign In</span> <i class="glyphicon glyphicon-log-in hide visible-xs "></i> </a> </li>
                        <li class="hidden-xs"> <a href="#"  data-toggle="modal" data-target="#ModalSignup"> Create Account </a> </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/.navbar-top-->

<div class="container">
<div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only"> Toggle navigation </span> <span class="icon-bar"> </span> <span class="icon-bar"> </span> <span class="icon-bar"> </span> </button>
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-cart"> <i class="fa fa-shopping-cart colorWhite"> </i> <span class="cartRespons colorWhite"> Cart ($210.00) </span> </button>
    <a class="navbar-brand " href="index.html"> <img src="<%=request.getContextPath()%>/images/logo.png" alt="TSHOP"> </a>

    <!-- this part for mobile -->
    <div class="search-box pull-right hidden-lg hidden-md hidden-sm">
        <div class="input-group">
            <button class="btn btn-nobg" type="button"> <i class="fa fa-search"> </i> </button>
        </div>
        <!-- /input-group -->

    </div>
</div>

<!-- this part is duplicate from cartMenu  keep it for mobile -->
<div class="navbar-cart  collapse">
    <div class="cartMenu  col-lg-4 col-xs-12 col-md-4 ">

        <div class="w100 miniCartTable scroll-pane">
            <table  >
                <tbody>
                <tr class="miniCartProduct">
                    <td style="20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="<%=request.getContextPath()%>/images/product/3.jpg" alt="img"> </a> </div></td>
                    <td style="40%"><div class="miniCartDescription">
                        <h4> <a href="product-details.html"> Denim T shirt Black </a> </h4>
                        <span class="size"> 12 x 1.5 L </span>
                        <div class="price"> <span> $8.80 </span> </div>
                    </div></td>
                    <td  style="10%" class="miniCartQuantity"><a > X 1 </a></td>
                    <td  style="15%" class="miniCartSubtotal"><span> $8.80 </span></td>
                    <td  style="5%" class="delete"><a > x </a></td>
                </tr>
                <tr class="miniCartProduct">
                    <td style="20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="<%=request.getContextPath()%>/images/product/2.jpg" alt="img"> </a> </div></td>
                    <td  style="40%"><div class="miniCartDescription">
                        <h4> <a href="product-details.html"> Denim T shirt Black </a> </h4>
                        <span class="size"> 12 x 1.5 L </span>
                        <div class="price"> <span> $8.80 </span> </div>
                    </div></td>
                    <td   style="10%" class="miniCartQuantity"><a > X 1 </a></td>
                    <td  style="15%" class="miniCartSubtotal"><span> $8.80 </span></td>
                    <td  style="5%" class="delete"><a > x </a></td>
                </tr>
                <tr class="miniCartProduct">
                    <td style="20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="<%=request.getContextPath()%>/images/product/5.jpg" alt="img"> </a> </div></td>
                    <td  style="40%"><div class="miniCartDescription">
                        <h4> <a href="product-details.html"> Denim T shirt Black </a> </h4>
                        <span class="size"> 12 x 1.5 L </span>
                        <div class="price"> <span> $8.80 </span> </div>
                    </div></td>
                    <td   style="10%" class="miniCartQuantity"><a > X 1 </a></td>
                    <td  style="15%" class="miniCartSubtotal"><span> $8.80 </span></td>
                    <td  style="5%" class="delete"><a > x </a></td>
                </tr>
                <tr class="miniCartProduct">
                    <td style="20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="<%=request.getContextPath()%>/images/product/3.jpg" alt="img"> </a> </div></td>
                    <td  style="40%"><div class="miniCartDescription">
                        <h4> <a href="product-details.html"> Denim T shirt Black </a> </h4>
                        <span class="size"> 12 x 1.5 L </span>
                        <div class="price"> <span> $8.80 </span> </div>
                    </div></td>
                    <td   style="10%" class="miniCartQuantity"><a > X 1 </a></td>
                    <td  style="15%" class="miniCartSubtotal"><span> $8.80 </span></td>
                    <td  style="5%" class="delete"><a > x </a></td>
                </tr>
                <tr class="miniCartProduct">
                    <td style="20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="<%=request.getContextPath()%>/images/product/3.jpg" alt="img"> </a> </div></td>
                    <td  style="40%"><div class="miniCartDescription">
                        <h4> <a href="product-details.html"> Denim T shirt Black </a> </h4>
                        <span class="size"> 12 x 1.5 L </span>
                        <div class="price"> <span> $8.80 </span> </div>
                    </div></td>
                    <td   style="10%" class="miniCartQuantity"><a > X 1 </a></td>
                    <td  style="15%" class="miniCartSubtotal"><span> $8.80 </span></td>
                    <td  style="5%" class="delete"><a > x </a></td>
                </tr>
                <tr class="miniCartProduct">
                    <td style="20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="<%=request.getContextPath()%>/images/product/4.jpg" alt="img"> </a> </div></td>
                    <td  style="40%"><div class="miniCartDescription">
                        <h4> <a href="product-details.html"> Denim T shirt Black </a> </h4>
                        <span class="size"> 12 x 1.5 L </span>
                        <div class="price"> <span> $8.80 </span> </div>
                    </div></td>
                    <td   style="10%" class="miniCartQuantity"><a > X 1 </a></td>
                    <td  style="15%" class="miniCartSubtotal"><span> $8.80 </span></td>
                    <td  style="5%" class="delete"><a > x </a></td>
                </tr>
                </tbody>
            </table>
        </div> <!--/.miniCartTable-->

        <div class="miniCartFooter  miniCartFooterInMobile text-right">
            <h3 class="text-right subtotal"> Subtotal: $210 </h3>
            <a class="btn btn-sm btn-danger">
                <i class="fa fa-shopping-cart"> </i> VIEW CART </a> <a class="btn btn-sm btn-primary"> CHECKOUT </a>
        </div><!--/.miniCartFooter-->

    </div> <!--/.cartMenu-->
</div><!--/.navbar-cart-->

<div class="navbar-collapse collapse">
<ul class="nav navbar-nav">
    <li class="active"> <a href="<%=request.getContextPath()%>/home.htm"> HOME </a> </li>
    <li > <a href="<%=request.getContextPath()%>/products/all.htm"> COLLECTION </a> </li>
    <li > <a href="<%=request.getContextPath()%>/aboutMe.htm"> ABOUT ME </a> </li>
    <li > <a href="<%=request.getContextPath()%>/contacts.htm"> CONTACT </a> </li>
</ul>

<!--- this part will be hidden for mobile version -->
<div class="nav navbar-nav navbar-right hidden-xs">

    <div class="dropdown  cartMenu ">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <i class="fa fa-shopping-cart"> </i>
            <span class="cartRespons"> Cart ($210.00) </span>
            <b class="caret"> </b>
        </a>

        <div class="dropdown-menu col-lg-4 col-xs-12 col-md-4 ">

            <div class="w100 miniCartTable scroll-pane">
                <table>
                    <tbody>
                    <tr class="miniCartProduct">
                        <td style="width:20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="<%=request.getContextPath()%>/images/product/3.jpg" alt="img"> </a> </div></td>
                        <td style="width:40%"><div class="miniCartDescription">
                            <h4> <a href="product-details.html"> Denim Tshirt DO9 </a> </h4>
                            <span class="size"> 12 x 1.5 L </span>
                            <div class="price"> <span> $22 </span> </div>
                        </div></td>
                        <td  style="width:10%" class="miniCartQuantity"><a > X 1 </a></td>
                        <td  style="width:15%" class="miniCartSubtotal"><span> $33 </span></td>
                        <td  style="width:5%" class="delete"><a > x </a></td>
                    </tr>
                    <tr class="miniCartProduct">
                        <td style="width:20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="<%=request.getContextPath()%>/images/product/2.jpg" alt="img"> </a> </div></td>
                        <td  style="width:40%"><div class="miniCartDescription">
                            <h4> <a href="product-details.html"> TShir TSHOP 09 </a> </h4>
                            <span class="size"> 12 x 1.5 L </span>
                            <div class="price"> <span> $15 </span> </div>
                        </div></td>
                        <td   style="width:10%" class="miniCartQuantity"><a > X 1 </a></td>
                        <td  style="width:15%" class="miniCartSubtotal"><span> $120 </span></td>
                        <td  style="width:5%" class="delete"><a > x </a></td>
                    </tr>
                    <tr class="miniCartProduct">
                        <td style="width:20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="<%=request.getContextPath()%>/images/product/5.jpg" alt="img"> </a> </div></td>
                        <td  style="width:40%"><div class="miniCartDescription">
                            <h4> <a href="product-details.html"> Tshir 2014 </a> </h4>
                            <span class="size"> 12 x 1.5 L </span>
                            <div class="price"> <span> $30 </span> </div>
                        </div></td>
                        <td   style="width:10%" class="miniCartQuantity"><a > X 1 </a></td>
                        <td  style="width:15%" class="miniCartSubtotal"><span> $80 </span></td>
                        <td  style="width:5%" class="delete"><a > x </a></td>
                    </tr>
                    <tr class="miniCartProduct">
                        <td style="width:20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="<%=request.getContextPath()%>/images/product/3.jpg" alt="img"> </a> </div></td>
                        <td  style="width:40%"><div class="miniCartDescription">
                            <h4> <a href="product-details.html"> Denim T shirt DO20 </a> </h4>
                            <span class="size"> 12 x 1.5 L </span>
                            <div class="price"> <span> $15 </span> </div>
                        </div></td>
                        <td   style="width:10%" class="miniCartQuantity"><a > X 1 </a></td>
                        <td  style="width:15%" class="miniCartSubtotal"><span> $55 </span></td>
                        <td  style="width:5%" class="delete"><a > x </a></td>
                    </tr>
                    <tr class="miniCartProduct">
                        <td style="width:20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="<%=request.getContextPath()%>/images/product/4.jpg" alt="img"> </a> </div></td>
                        <td  style="width:40%"><div class="miniCartDescription">
                            <h4> <a href="product-details.html"> T shirt Black </a> </h4>
                            <span class="size"> 12 x 1.5 L </span>
                            <div class="price"> <span> $44 </span> </div>
                        </div></td>
                        <td   style="width:10%" class="miniCartQuantity"><a > X 1 </a></td>
                        <td  style="width:15%" class="miniCartSubtotal"><span> $40 </span></td>
                        <td  style="width:5%" class="delete"><a > x </a></td>
                    </tr>
                    <tr class="miniCartProduct">
                        <td style="width:20%" class="miniCartProductThumb"><div> <a href="product-details.html"> <img src="<%=request.getContextPath()%>/images/site/winter.jpg" alt="img"> </a> </div></td>
                        <td  style="width:40%"><div class="miniCartDescription">
                            <h4> <a href="product-details.html"> G Star T shirt </a> </h4>
                            <span class="size"> 12 x 1.5 L </span>
                            <div class="price"> <span> $80 </span> </div>
                        </div></td>
                        <td   style="width:10%" class="miniCartQuantity"><a > X 1 </a></td>
                        <td  style="width:15%" class="miniCartSubtotal"><span> $8.80 </span></td>
                        <td  style="width:5%" class="delete"><a > x </a></td>
                    </tr>
                    </tbody>
                </table>
            </div> <!--/.miniCartTable-->


            <div class="miniCartFooter text-right">
                <h3 class="text-right subtotal"> Subtotal: $210 </h3>
                <a class="btn btn-sm btn-danger">
                    <i class="fa fa-shopping-cart"> </i> VIEW CART </a>
                <a class="btn btn-sm btn-primary"> CHECKOUT </a>
            </div> <!--/.miniCartFooter-->


        </div><!--/.dropdown-menu-->
    </div><!--/.cartMenu-->



    <div class="search-box">
        <div class="input-group">
            <button class="btn btn-nobg" type="button"> <i class="fa fa-search"> </i> </button>
        </div>
        <!-- /input-group -->

    </div><!--/.search-box -->
</div><!--/.navbar-nav hidden-xs-->
</div><!--/.nav-collapse -->

</div> <!--/.container -->

<div class="search-full text-right"> <a class="pull-right search-close"> <i class=" fa fa-times-circle"> </i> </a>
    <div class="searchInputBox pull-right">
        <input type="search"  data-searchurl="search?=" name="q" placeholder="start typing and hit enter to search" class="search-input">
        <button class="btn-nobg search-btn" type="submit"> <i class="fa fa-search"> </i> </button>
    </div>
</div>
<!--/.search-full-->

</div>
<!-- /.Fixed navbar  --> 
    