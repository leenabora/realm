<%@ include file="header.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="com.unlimitedrealm.domain.Product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
List<Product> newProducts = (List<Product>)request.getAttribute("newProducts");


List<Product> featuredProducts = (List<Product>)request.getAttribute("featuredProducts");

%>


<div class="banner">
    <div class="full-container">
        <div class="slider-content">
            <ul id="pager" class="container">
            </ul>
            <div class="slider slider-v2">
                <div class="slider-item slider-item-img1 " data-cycle-pager-template="<a href=#> CELEBRATE FASHION </a>">
                    <div class="sliderInfo">
                        <div class="container">
                            <div class="col-lg-4 col-md-4 col-sm-4 pull-right sliderText dark alpha80 hidden-xs">
                                <div class="inner">
                                    <h1>CELEBRATE FASHION</h1>
                                    <div class="hidden-xs"> &quot;I don't do fashion, I AM fashion.&quot;
                                    <div class="bannerTagMore">
                                        --- Coco Chanel
                                    </div>
                                    </div>
                                 </div>
                            </div>
                        </div>
                    </div>
                    <img  alt="img" src="<%=request.getContextPath()%>/images/slider/slider3.jpg" class="img-responsive parallaximg sliderImg"> </div>
                <!--/.slider-item-->

                <div class="slider-item slider-item-img2  parallax" data-cycle-pager-template="<a href=#> UNLIMITED FASHION </a>">
                    <div class="sliderInfo">
                        <div class="container">
                            <div class="col-lg-5 col-md-5 col-sm-5 pull-left sliderText dark alpha80 hidden-xs">
                                <div class="inner">
                                    <h1>UNLIMITED FASHION</h1>
                                    <div class="hidden-xs"> &quot;Fashions fade, style is eternal.&quot;
                                    <div class="bannerTag">
                                        --- Yves Saint-Laurent
                                    </div>
                                    </div>
                                 </div>
                            </div>
                        </div>
                    </div>
                    <img alt="img" src="<%=request.getContextPath()%>/images/slider/slider4.jpg" class="img-responsive parallaximg sliderImg"> </div>
                <!--/.slider-item-->

                <div class="slider-item slider-item-img3  parallax" data-cycle-pager-template="<a href=#> CINDERELLA FASHION </a>">
                    <div class="sliderInfo">
                        <div class="container">
                            <div class="col-lg-5 col-md-5 col-sm-5 pull-left sliderText dark alpha80 hidden-xs">
                            <div class="inner">
                                    <h1>CINDERELLA FASHION</h1>
                                    <div class="hidden-xs"> &quot;In the fashion industry, everything goes retro except the prices.&quot;
                                        <div class="bannerTag">
                                        --- Criss Jami
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <img alt="img" src="<%=request.getContextPath()%>/images/slider/slider2.jpg" class="img-responsive parallaximg sliderImg"> </div>
                <!--/.slider-item-->
            </div>
            <!--/.slider-v2-->
        </div>
        <!--/.slider-content-->
    </div>
    <!--/.full-container-->
</div>
<!--/.banner style2-->

<div class="container main-container">

    <!-- Main component call to action -->

    <div class="row featuredPostContainer globalPadding style2">
        <h3 class="section-title style2 text-center"><span>NEW ARRIVALS</span></h3>
        <div id="productslider" class="owl-carousel owl-theme">
            <%  for (int i = 0; i < newProducts.size(); i++) {     %>
            <div class="item">
                <div class="product">
                    <div class="image"> <a href="<%=request.getContextPath()%>/products/<%= newProducts.get(i).getSku() %>.htm"><img src="<%=request.getContextPath()%>/images/<%= newProducts.get(i).getSku() %>-list.image" alt="img" class="img-responsive"/></a>
                        <div class="promotion"> <span class="new-product"> NEW</span>  </div>
                    </div>
                    <div class="description">
                        <h4><a href="<%=request.getContextPath()%>/products/<%= newProducts.get(i).getSku() %>.htm"><%= newProducts.get(i).getName() %> </a></h4>
                        <p><%= newProducts.get(i).getDescription() %> </p>
                        <div class="action-control"> <a class="btn btn-primary" href="<%=request.getContextPath()%>/products/<%= newProducts.get(i).getSku() %>.htm"> <span class="add2cart"><i class="glyphicon glyphicon-shopping-cart"> </i> View </span> </a> </div>
                    </div>
                </div>
            </div>
                <%}%>

        </div>
        <!--/.productslider-->

    </div>
    <!--/.featuredPostContainer-->
</div>
<!-- /main container -->

<div class="parallax-section parallax-image-1">
    <div class="container">
        <div class="row ">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="parallax-content clearfix">
                    <h1 class="parallaxPrce"> $200 </h1>
                    <h2 class="uppercase">FREE INTERNATIONAL SHIPPING! Get Free Shipping Coupons</h2>
                    <h3 > Energistically develop parallel mindshare rather than premier deliverables. </h3>
                    <div style="clear:both"></div>
                    <a class="btn btn-discover "> <i class="fa fa-shopping-cart"></i> SHOP NOW </a> </div>
            </div>
        </div>
        <!--/.row-->
    </div>
    <!--/.container-->
</div>
<!--/.parallax-image-1-->

<div class="container main-container">

<!-- Main component call to action -->

<div class="morePost row featuredPostContainer style2 globalPaddingTop " >
    <h3 class="section-title style2 text-center"><span>FEATURES PRODUCT</span></h3>
    <div class="container">
        <div class="row xsResponse">
            <%  for (int i = 0; i < featuredProducts.size(); i++) {     %>

            <div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
                <div class="product">
                    <div class="image"> <a href="<%=request.getContextPath()%>/products/<%= featuredProducts.get(i).getSku() %>.htm"><img src="<%=request.getContextPath()%>/images/<%= featuredProducts.get(i).getSku() %>-list.image" alt="img" class="img-responsive"></a>
                    </div>
                    <div class="description">
                        <h4><a href="<%=request.getContextPath()%>/products/<%= featuredProducts.get(i).getSku() %>.htm"><%= featuredProducts.get(i).getName() %> </a></h4>
                        <p><%= featuredProducts.get(i).getDescription() %> </p>
                        <div class="action-control"> <a class="btn btn-primary" href="<%=request.getContextPath()%>/products/<%= featuredProducts.get(i).getSku() %>.htm"> <span class="add2cart"><i class="glyphicon glyphicon-shopping-cart"> </i> View </span> </a> </div>
                    </div>
                </div>
            </div>
            <%}%>



        </div>
        <!-- /.row -->



    </div>
    <!--/.container-->
</div>
<!--/.featuredPostContainer-->

<hr class="no-margin-top">

<!--/.section-block-->



</div>
<!--main-container-->

<div class="parallax-section parallax-image-2">
    <div class="w100 parallax-section-overley">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="parallax-content clearfix">
                        <h1 class="xlarge"> Trusted Seller 500+ </h1>
                        <h5 class="parallaxSubtitle"> Lorem ipsum dolor sit amet consectetuer </h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/.parallax-section-->


<%@ include file="footer.jsp" %>