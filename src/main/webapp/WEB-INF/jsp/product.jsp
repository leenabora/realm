<%@ include file="header.jsp" %>
<%@ page import="com.unlimitedrealm.domain.*" %>



<div class="container main-container headerOffset">

<div class="row transitionfx">

    <!-- left column -->
    <div class="col-lg-6 col-md-6 col-sm-6">
        <!-- product Image and Zoom -->

        <div class="main-image sp-wrap col-lg-12 no-padding style2">
            <a href="<c:url value='/images/${product.sku}-detail.image'  />"> <img src="<c:url value='/images/${product.sku}-detail-thumbnail.image'/>"  class="img-responsive" alt="img"/></a>
            <a href="<c:url value='/images/${product.sku}-detail-back.image'  />"> <img src="<c:url value='/images/${product.sku}-detail-back-thumbnail.image'/>"  class="img-responsive" alt="img"/></a>
        </div>
    </div><!--/ left column end -->


    <!-- right column -->
    <div class="col-lg-6 col-md-6 col-sm-5">

        <h1 class="product-title"> ${product.name}</h1>
        <h3 class="product-code">Product Code : ${product.sku}</h3>

        <div class="details-description">
            <p>${product.description}  </p>
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
                <button onclick="takeMeThere('/contacts.htm')" class="button btn-cart cart first" title="Add to Cart" type="button">Enquiry</button>

            <div style="clear:both"></div>


        </div>
        <!--/.cart-actions-->

        <div class="clear"></div>

        <div class="product-tab w100 clearfix">

            <ul class="nav nav-tabs">
                <li class="active"><a href="#details" data-toggle="tab">Details</a></li>
                <li><a href="#size" data-toggle="tab">Size</a></li>
                <li><a href="#shipping" data-toggle="tab">Shipping</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div class="tab-pane active" id="details">${product.material}</div>
                <div class="tab-pane" id="size">
                    ${product.statistics}
                </div>

                <div class="tab-pane" id="shipping">
                    <table >
                        <colgroup>
                            <col style="width:33%">
                            <col style="width:33%">
                            <col style="width:33%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td>Standard</td>
                            <td>1-5 business days</td>
                        </tr>
                        <tr>
                            <td>Two Day</td>
                            <td>2 business days</td>
                        </tr>
                        <tr>
                            <td>Next Day</td>
                            <td>1 business day</td>
                        </tr>
                        </tbody>
                    </table>
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