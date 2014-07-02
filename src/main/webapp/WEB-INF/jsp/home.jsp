<%@ include file="header.jsp" %>


<div class="banner">
    <div class="full-container">
        <div class="slider-content">
            <ul id="pager" class="container">
            </ul>
            <div class="slider slider-v2">
                <div class="slider-item slider-item-img1 " data-cycle-pager-template="<a href=#> LATEST COLLECTION </a>">
                    <div class="sliderInfo">
                        <div class="container">
                            <div class="col-lg-5 col-md-5 col-sm-5 pull-right sliderText dark alpha80 hidden-xs">
                                <div class="inner">
                                    <h1>LATEST COLLECTION</h1>
                                    <p class="hidden-xs"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                        sed diam nonummy nibh euismod tincidunt ut
                                        laoreet dolore magna aliquam erat volutpa </p>
                                    <a  href="category.html" class="slide-link">SHOP NOW <span class="arrowUnicode">►</span></a> </div>
                            </div>
                        </div>
                    </div>
                    <img  alt="img" src="<%=request.getContextPath()%>/images/slider/slider3.jpg" class="img-responsive parallaximg sliderImg"> </div>
                <!--/.slider-item-->

                <div class="slider-item slider-item-img2  parallax" data-cycle-pager-template="<a href=#> WOMEN COLLECTION </a>">
                    <div class="sliderInfo">
                        <div class="container">
                            <div class="col-lg-5 col-md-5 col-sm-5 pull-left sliderText dark alpha80 hidden-xs">
                                <div class="inner">
                                    <h1>WOMEN COLLECTION</h1>
                                    <p class="hidden-xs"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                        sed diam nonummy nibh euismod tincidunt ut
                                        laoreet dolore magna aliquam erat volutpa </p>
                                    <a href="category.html"  class="slide-link">SHOP NOW <span class="arrowUnicode">►</span></a> </div>
                            </div>
                        </div>
                    </div>
                    <img alt="img" src="<%=request.getContextPath()%>/images/slider/slider4.jpg" class="img-responsive parallaximg sliderImg"> </div>
                <!--/.slider-item-->

                <div class="slider-item slider-item-img3  parallax" data-cycle-pager-template="<a href=#> NEW COLLECTION </a>">
                    <div class="sliderInfo">
                        <div class="container">
                            <div class="col-lg-4 col-md-4 col-sm-5 pull-right sliderText dark alpha80 transformRight hidden-xs">
                                <div class="inner">
                                    <h1>NEW COLLECTION</h1>
                                    <p class="hidden-xs"> Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                        sed diam nonummy nibh euismod tincidunt ut
                                        laoreet dolore magna aliquam erat volutpa </p>
                                    <a href="category.html"  class="slide-link">SHOP NOW <span class="arrowUnicode">►</span></a> </div>
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
            <div class="item">
                <div class="product">
                    <div class="image"> <a href="product-details.html"><img src="<%=request.getContextPath()%>/images/product/34.jpg" alt="img" class="img-responsive"></a>
                        <div class="promotion"> <span class="new-product"> NEW</span> <span class="discount">15% OFF</span> </div>
                    </div>
                    <div class="description">
                        <h4><a href="product-details.html">consectetuer adipiscing </a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                        <span class="size">XL / XXL / S </span> </div>
                    <div class="price"> <span>$25</span> </div>
                    <div class="action-control"> <a class="btn btn-primary"> <span class="add2cart"><i class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a> </div>
                </div>
            </div>
            <div class="item">
                <div class="product">
                    <div class="image"> <a href="product-details.html"><img src="<%=request.getContextPath()%>/images/product/30.jpg" alt="img" class="img-responsive"></a>
                        <div class="promotion"> <span class="discount">15% OFF</span> </div>
                    </div>
                    <div class="description">
                        <h4><a href="product-details.html">luptatum zzril delenit</a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                        <span class="size">XL / XXL / S </span> </div>
                    <div class="price"> <span>$25</span> </div>
                    <div class="action-control"> <a class="btn btn-primary"> <span class="add2cart"><i class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a> </div>
                </div>
            </div>
            <div class="item">
                <div class="product">
                    <div class="image"> <a href="product-details.html"><img src="<%=request.getContextPath()%>/images/product/36.jpg" alt="img" class="img-responsive"></a>
                        <div class="promotion"> <span class="new-product"> NEW</span> </div>
                    </div>
                    <div class="description">
                        <h4><a href="product-details.html">eleifend option </a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                        <span class="size">XL / XXL / S </span> </div>
                    <div class="price"> <span>$25</span> </div>
                    <div class="action-control"> <a class="btn btn-primary"> <span class="add2cart"><i class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a> </div>
                </div>
            </div>
            <div class="item">
                <div class="product">
                    <div class="image"> <a href="product-details.html"><img src="<%=request.getContextPath()%>/images/product/9.jpg" alt="img" class="img-responsive"></a> </div>
                    <div class="description">
                        <h4><a href="product-details.html">mutationem consuetudium </a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                        <span class="size">XL / XXL / S </span> </div>
                    <div class="price"> <span>$25</span> </div>
                    <div class="action-control"> <a class="btn btn-primary"> <span class="add2cart"><i class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a> </div>
                </div>
            </div>

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
            <div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
                <div class="product">
                    <div class="image"> <a href="product-details.html"><img src="<%=request.getContextPath()%>/images/product/30.jpg" alt="img" class="img-responsive"></a>
                        <div class="promotion"> <span class="new-product"> NEW</span> <span class="discount">15% OFF</span> </div>
                    </div>
                    <div class="description">
                        <h4><a href="product-details.html">aliquam erat volutpat</a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                        <span class="size">XL / XXL / S </span> </div>
                    <div class="price"> <span>$25</span> </div>
                    <div class="action-control"> <a class="btn btn-primary"> <span class="add2cart"><i class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a> </div>
                </div>
            </div>
            <!--/.item-->
            <div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
                <div class="product">
                    <div class="image"> <a href="product-details.html"><img src="<%=request.getContextPath()%>/images/product/31.jpg" alt="img" class="img-responsive"></a>
                        <div class="promotion"> <span class="discount">15% OFF</span> </div>
                    </div>
                    <div class="description">
                        <h4><a href="product-details.html">ullamcorper suscipit lobortis </a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                        <span class="size">XL / XXL / S </span> </div>
                    <div class="price"> <span>$25</span> </div>
                    <div class="action-control"> <a class="btn btn-primary"> <span class="add2cart"><i class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a> </div>
                </div>
            </div>
            <!--/.item-->
            <div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
                <div class="product">
                    <div class="image"> <a href="product-details.html"><img src="<%=request.getContextPath()%>/images/product/34.jpg" alt="img" class="img-responsive"></a>
                        <div class="promotion"> <span class="new-product"> NEW</span> </div>
                    </div>
                    <div class="description">
                        <h4><a href="product-details.html">demonstraverunt lectores </a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                        <span class="size">XL / XXL / S </span> </div>
                    <div class="price"> <span>$25</span> </div>
                    <div class="action-control"> <a class="btn btn-primary"> <span class="add2cart"><i class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a> </div>
                </div>
            </div>
            <!--/.item-->
            <div class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
                <div class="product">
                    <div class="image"> <a href="product-details.html"><img src="<%=request.getContextPath()%>/images/product/12.jpg" alt="img" class="img-responsive"></a> </div>
                    <div class="description">
                        <h4><a href="product-details.html">humanitatis per</a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                        <span class="size">XL / XXL / S </span> </div>
                    <div class="price"> <span>$25</span> </div>
                    <div class="action-control"> <a class="btn btn-primary"> <span class="add2cart"><i class="glyphicon glyphicon-shopping-cart"> </i> Add to cart </span> </a> </div>
                </div>
            </div>

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