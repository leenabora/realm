<%@ include file="header.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="com.unlimitedrealm.domain.Product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container main-container headerOffset">

<!-- Main component call to action -->

<div class="row">

<!--left column-->

<div class="col-lg-3 col-md-3 col-sm-12">
    <div class="panel-group" id="accordionNo">
        <!--Category-->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse"  href="#collapseCategory" class="collapseWill">
                        <span class="pull-left"> <i class="fa fa-caret-right"></i></span> Category
                    </a>
                </h4>
            </div>

            <div id="collapseCategory" class="panel-collapse collapse in">
                <div class="panel-body">
                    <ul class="nav nav-pills nav-stacked tree">
                        <li class="active dropdown-tree open-tree" > <a  class="dropdown-tree-a" > <span class="badge pull-right">42</span> WOMEN COLLECTION </a>
                            <ul class="category-level-2 dropdown-menu-tree">
                                <li class="dropdown-tree open-tree"> <a class="dropdown-tree-a"  href="#"> Indian Ethnic Wear</a>
                                <li><a href="sub-category.html">Lehenga</a> </li>
                                <li><a href="sub-category.html">Salwar Suits</a> </li>
                        </li>
                    </ul>
                    <ul class="category-level-2 dropdown-menu-tree">
                        <li class="dropdown-tree open-tree"> <a class="dropdown-tree-a"  href="#">Western Wear</a>
                        <li><a href="sub-category.html">Midi</a> </li>
                        <li><a href="sub-category.html">Skirt</a> </li>
                        </li>
                    </ul>
                    </li>
                    </ul>
                </div>
            </div>
        </div> <!--/Category menu end-->


        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title"> <a data-toggle="collapse"  href="#collapseColor" class="collapseWill"> Color <span class="pull-left"> <i class="fa fa-caret-right"></i></span> </a> </h4>
            </div>
            <div id="collapseColor" class="panel-collapse collapse in">
                <div class="panel-body smoothscroll maxheight300 color-filter">
                    <div class="block-element">
                        <label>
                            <input type="checkbox" name="tour" value="0"  />
                            <small style="background-color:#333333"></small> Black <span >(123)</span> </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" name="tour" value="1" />
                            <small style="background-color:#1664c4"></small> Blue (434) </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" name="tour" value="2" />
                            <small style="background-color:#c00707"></small> Red (338) </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" name="tour" value="3" />
                            <small style="background-color:#6fcc14"></small> Green (253) </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" name="tour" value="3" />
                            <small style="background-color:#943f00"></small> Brown (240) </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" name="tour" value="3" />
                            <small style="background-color:#ff1cae"></small> Pink (212) </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" name="tour" value="3" />
                            <small style="background-color:#f5f5dc"></small> Beige (176) </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" name="tour" value="3" />
                            <small style="background-color:#adadad"></small> Grey (154) </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" name="tour" value="3" />
                            <small style="background-color:#5d00dc"></small> Purple (132) </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" name="tour" value="3" />
                            <small style="background-color:#f1f40e"></small> Yellow (104) </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" name="tour" value="3" />
                            <small style="background-color:#ffc600"></small> Orange (77) </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" name="tour" value="3" />
                            <small style="background-color:#9b1d00"></small> Maroon (76) </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" name="tour" value="3" />
                            <small style="background-color:#0a43a3"></small> Navy Blue (68) </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" name="tour" value="3" />
                            <small style="background-color:#ede4b2"></small> Tan (67) </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" name="tour" value="3" />
                            <small style="background-color:#ecf1ef"></small> Silver (49) </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" name="tour" value="3" />
                            <small style="background-color:#f3f1e7"></small> Off White (44) </label>
                    </div>
                    <div class="block-element">
                        <label> &nbsp; </label>
                    </div>
                </div>
            </div>
        </div><!--/color panel end-->

    </div>
</div>


<!--right column-->
<div class="col-lg-9 col-md-9 col-sm-12">



<div class="w100 productFilter clearfix">
    <p class="pull-left"> Showing <strong>12</strong> products </p>
    <div class="pull-right ">
        <div class="change-view pull-right">
            <a href="#" title="Grid" class="grid-view"> <i class="fa fa-th-large"></i> </a>
            <a href="#" title="List" class="list-view "><i class="fa fa-th-list"></i></a> </div>
    </div>
</div> <!--/.productFilter-->

<div class="row  categoryProduct xsResponse clearfix">

    <%
    List   <Product> products =( List<Product>) request.getAttribute("products");
            for (int i = 0; i < products.size(); i++) {
            %>


            <div class="item col-sm-4 col-lg-4 col-md-4 col-xs-6 ">
    <div class="product">
        <div class="image">
            <a href="product-details.html"><img   src="<%=request.getContextPath()%>/images/<%= products.get(i).getSku() %>-list.image" alt="img" class="img-responsive"></a>
            <% if(products.get(i).isNewArrival()) {%>
            <div class="promotion"> <span class="new-product"> NEW</span>  </div>
            <% } %>
        </div>
        <div class="description">
            <h4><a href="<%=request.getContextPath()%>/products/<%= products.get(i).getSku() %>.htm"><%= products.get(i).getName() %></a></h4>
            <p><%= products.get(i).getDescription() %></p>
            </div>


        <div class="action-control">
            <a class="btn btn-primary" href="<%=request.getContextPath()%>/products/<%= products.get(i).getSku() %>.htm">
                <span class="add2cart"><i class="glyphicon glyphicon-shopping-cart"> </i> View </span>
            </a>
        </div>
    </div>
</div><!--/.item-->

<% } %>



</div> <!--/.categoryProduct || product content end-->

<div class="w100 categoryFooter">


</div>
</div> <!--/.categoryFooter-->
</div><!--/right column end-->
</div><!-- /.row  -->
</div>
<!-- /main container -->

<div class="gap"> </div>

<%@ include file="footer.jsp" %>
