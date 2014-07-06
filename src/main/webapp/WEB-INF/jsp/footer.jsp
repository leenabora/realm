<footer>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3  col-md-3 col-sm-4 col-xs-6">
                    <h3>
                        Support
                    </h3>
                    <ul>
                        <li class="supportLi">
                            <h4>
                                <a class="inline" href="mailto:help@tshopweb.com">
                                    <i class="fa fa-envelope-o">
                                    </i>
                                    help@tshopweb.com
                                </a>
                            </h4>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Shop </h3>
                    <ul>
                        <li><a href="index.html"> Home </a></li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3>
                        Information
                    </h3>
                    <ul>
                        <li>
                            <a href="about-us.html">
                                About us
                            </a>

                        </li>
                        <li>
                            <a href="contact-us.html">
                                Contact us
                            </a>

                        </li>

                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3>
                        My Account
                    </h3>
                    <ul>

                        <li>
                            <a href="account.html">
                                My Account
                            </a>

                        </li>
                    </ul>
                </div>
                <div class="col-lg-3  col-md-3 col-sm-6 col-xs-12 ">
                    <h3>
                        Stay in touch
                    </h3>
                    <ul>
                        <li>
                            <div class="input-append newsLatterBox text-center">
                                <input type="text" class="full text-center" placeholder="Email ">
                                <button class="btn  bg-gray" type="button">
                                    Subscribe
                                    <i class="fa fa-long-arrow-right">

                                    </i>
                                </button>
                            </div>
                        </li>
                    </ul>
                    <ul class="social">
                        <li>
                            <a href="http://facebook.com">
                                <i class=" fa fa-facebook">
                                    &nbsp;
                                </i>
                            </a>
                        </li>
                        <li>
                            <a href="http://twitter.com">
                                <i class="fa fa-twitter">
                                    &nbsp;
                                </i>
                            </a>
                        </li>
                        <li>
                            <a href="https://plus.google.com">
                                <i class="fa fa-google-plus">
                                    &nbsp;
                                </i>
                            </a>
                        </li>
                        <li>
                            <a href="http://youtube.com">
                                <i class="fa fa-pinterest">
                                    &nbsp;
                                </i>
                            </a>
                        </li>
                        <li>
                            <a href="http://youtube.com">
                                <i class="fa fa-youtube">
                                    &nbsp;
                                </i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left">
                &copy; TSHOP 2014. All right reserved.
            </p>

            <div class="pull-right paymentMethodImg">

                <img height="30" class="pull-right"
                     src="<%=request.getContextPath()%>/images/site/payment/master_card.png" alt="img">
                <img height="30" class="pull-right" src="<%=request.getContextPath()%>/images/site/payment/paypal.png"
                     alt="img">
                <img height="30" class="pull-right"
                     src="<%=request.getContextPath()%>/images/site/payment/american_express_card.png" alt="img">
                <img height="30" class="pull-right"
                     src="<%=request.getContextPath()%>/images/site/payment/discover_network_card.png" alt="img">
                <img height="30" class="pull-right"
                     src="<%=request.getContextPath()%>/images/site/payment/google_wallet.png" alt="img">
            </div>


        </div>
    </div>
</footer>


<!-- Le javascript
================================================== -->

<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/jquery/1.8.3/jquery.js"></script>
<script src="<%=request.getContextPath()%>/assets/bootstrap/js/bootstrap.min.js"></script>

<!-- include  parallax plugin -->
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/jquery.parallax-1.1.js"></script>

<!-- optionally include helper plugins -->
<script type="text/javascript"
        src="<%=request.getContextPath()%>/assets/js/helper-plugins/jquery.mousewheel.min.js"></script>

<!-- include mCustomScrollbar plugin //Custom Scrollbar  -->

<script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/jquery.mCustomScrollbar.js"></script>

<!-- include checkRadio plugin //Custom check & Radio  -->
<script type="text/javascript"
        src="<%=request.getContextPath()%>/assets/js/ion-checkRadio/ion.checkRadio.min.js"></script>

<!-- include grid.js // for equal Div height  -->
<script src="<%=request.getContextPath()%>/assets/js/grids.js"></script>

<!-- include carousel slider plugin  -->
<script src="<%=request.getContextPath()%>/assets/js/owl.carousel.min.js"></script>

<!-- jQuery minimalect // custom select   -->
<script src="<%=request.getContextPath()%>/assets/js/jquery.minimalect.min.js"></script>

<!-- include touchspin.js // touch friendly input spinner component   -->
<script src="<%=request.getContextPath()%>/assets/js/bootstrap.touchspin.js"></script>

<!-- include custom script for site  -->
<script src="<%=request.getContextPath()%>/assets/js/script.js"></script>

<c:if test="${page}.equals('home')">
    <!-- include custom script for only homepage  -->
    <script src="<%=request.getContextPath()%>/assets/js/home.js"></script>
</c:if>

<c:if test="${page}.equals('collection')">
    <!-- include custom script for only homepage  -->
    <script src="<%=request.getContextPath()%>/assets/js/collection.js"></script>
</c:if>

<script src="<%=request.getContextPath()%>/assets/js/realm.js"></script>


<!-- include jqueryCycle plugin -->
<script src="<%=request.getContextPath()%>/assets/js/jquery.cycle2.min.js"></script>
<!-- include easing plugin -->
<script src="<%=request.getContextPath()%>/assets/js/jquery.easing.1.3.js"></script>

</body>
</html>