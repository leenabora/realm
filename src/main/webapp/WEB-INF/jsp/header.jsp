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
    <title>The Fashion Realm </title>
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

    <link href="<%=request.getContextPath()%>/css/realm.css" rel="stylesheet">

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

    <c:if test="${page eq 'product' }">

    <!-- styles needed by smoothproducts.js for product zoom  -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/smoothproducts.css">
    </c:if>


    <!-- include pace script for automatic web page progress bar  -->


    <script>
        paceOptions = {
            elements: true
        };

    </script>

    <script src="<%=request.getContextPath()%>/assets/js/pace.min.js"></script>
</head>

<body >
<input type="hidden" id="page" value="${page}"/>
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
    <a class="navbar-brand " href="<%=request.getContextPath()%>/home.htm"> <img src="<%=request.getContextPath()%>/images/logo.png" alt="THE FASHION REALM"> </a>

</div>

<div class="navbar-collapse collapse">
<ul class="nav navbar-nav">
    <li id="home"> <a href="<%=request.getContextPath()%>/home.htm"> HOME </a> </li>
    <li id="collection" > <a href="<%=request.getContextPath()%>/products/all.htm"> COLLECTION </a> </li>
    <li id="aboutMe" > <a href="<%=request.getContextPath()%>/aboutMe.htm"> ABOUT ME </a> </li>
    <li id="contact" > <a href="<%=request.getContextPath()%>/contacts.htm"> CONTACT  </a> </li>
</ul>

</div><!--/.nav-collapse -->

</div> <!--/.container -->

</div>
<!-- /.Fixed navbar  --> 
    