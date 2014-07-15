<%@ include file="header.jsp" %>
<%@ page import="com.unlimitedrealm.domain.*" %>

<div class="container main-container headerOffset">

<div class="row transitionfx">

    <!-- left column -->
    <div class="col-lg-6 col-md-6 col-sm-6">
        <!-- product Image and Zoom -->
        <div class="main-image sp-wrap col-lg-12 no-padding">
            <a href="<%=request.getContextPath()%>/images/zoom/zoom1hi.jpg"><img src="<%=request.getContextPath()%>/images/zoom/zoom1.jpg" class="img-responsive" alt="img"></a>
            <a href="<%=request.getContextPath()%>/images/zoom/zoom2hi.jpg"><img src="<%=request.getContextPath()%>/images/zoom/zoom2.jpg" class="img-responsive" alt="img"></a>
            <a href="<%=request.getContextPath()%>/images/zoom/zoom3hi.jpg"><img src="<%=request.getContextPath()%>/images/zoom/zoom3.jpg" class="img-responsive" alt="img"></a>
        </div>
    </div><!--/ left column end -->


    <!-- right column -->
    <div class="col-lg-6 col-md-6 col-sm-5">

        <h1 class="product-title"> ${product.name}</h1>
        <h3 class="product-code">Product Code : ${product.sku}</h3>

        <div class="details-description">
            <p>${product.description} </p>
        </div>

        <div class="color-details">
            <span class="selected-color"><strong>COLOR</strong></span>
            <ul class="swatches Color">
                <c:forEach var="color" items="${product.getColors().getHashColors()}">
                <li> <a style="background-color:${color}" ></a> </li>
                </c:forEach>
            </ul>
        </div>
        <!--/.color-details-->



        <div class="cart-actions">
            <div class="addto">
                <button onclick="productAddToCartForm.submit(this);" class="button btn-cart cart first" title="Add to Cart" type="button">Enquire</button>
             </div>

            <div style="clear:both"></div>

        </div>
        <!--/.cart-actions-->

        <div class="clear"></div>

        <div class="product-tab w100 clearfix">

            <ul class="nav nav-tabs">
                <li class="active"><a href="#details" data-toggle="tab">Details</a></li>
                <li><a href="#size" data-toggle="tab">Size</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane active" id="details">${product.material}<br></div>
                <div class="tab-pane" id="size">
                    ${product.statistics}
                </div>

            </div> <!-- /.tab content -->

        </div><!--/.product-tab-->

        <div style="clear:both"></div>

        <div class="product-share clearfix">
            <p> SHARE </p>
            <div class="socialIcon">
                <a href="#"> <i  class="fa fa-facebook"></i></a>
                <a href="#"> <i  class="fa fa-twitter"></i></a>
                <a href="#"> <i  class="fa fa-google-plus"></i></a>
                <a href="#"> <i  class="fa fa-pinterest"></i></a> </div>
        </div>
        <!--/.product-share-->

    </div><!--/ right column end -->

</div>
<!--/.row-->


<div style="clear:both"></div>


</div> <!-- /main-container -->


<div class="gap"></div>

<%@ include file="footer.jsp" %>
