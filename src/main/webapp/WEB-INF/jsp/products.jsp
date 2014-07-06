<%@ include file="header.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="com.unlimitedrealm.domain.Product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<% List   <Product> products =( List<Product>) request.getAttribute("products"); %>


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
                        <li class="active dropdown-tree open-tree" > <a  class="dropdown-tree-a" href="<%=request.getContextPath()%>/products/all.htm" > <span class="badge pull-right"><%=products.size() %></span> WOMEN COLLECTION </a>
                            <ul class="category-level-2 dropdown-menu-tree">
                                <li class="dropdown-tree open-tree"> <a class="dropdown-tree-a"  href="#"> Indian Ethnic Wear</a>
                                <li><a href="<%=request.getContextPath()%>/products/type/Lehenga.htm" >Lehenga</a> </li>
                                <li><a href="<%=request.getContextPath()%>/products/type/Salwar_Suit.htm" >Salwar Suits</a> </li>
                        </li>
                    </ul>
                    <ul class="category-level-2 dropdown-menu-tree">
                        <li class="dropdown-tree open-tree"> <a class="dropdown-tree-a"  href="#">Western Wear</a>
                        <li><a href="<%=request.getContextPath()%>/products/type/Midi.htm" >Midi</a> </li>
                        <li><a href="<%=request.getContextPath()%>/products/type/Skirt.htm" >Skirt</a> </li>
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
                            <input type="checkbox" id="blackColor" value="0" onclick="colorBoxEvent()"  />
                            <small style="background-color:#333333"></small> Black </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" id="blueColor" value="1" onclick="colorBoxEvent()"  />
                            <small style="background-color:#1664c4"></small> Blue  </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" id="redColor" value="2" onclick="colorBoxEvent()"  />
                            <small style="background-color:#c00707"></small> Red </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" id="greenColor" value="3" onclick="colorBoxEvent()"  />
                            <small style="background-color:#6fcc14"></small> Green  </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" id="brownColor" value="3" onclick="colorBoxEvent()"  />
                            <small style="background-color:#943f00"></small> Brown  </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" id="pinkColor" value="3" onclick="colorBoxEvent()"  />
                            <small style="background-color:#ff1cae"></small> Pink  </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" id="greyColor" value="3" onclick="colorBoxEvent()"  />
                            <small style="background-color:#adadad"></small> Grey </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" id="purpleColor" value="3" onclick="colorBoxEvent()"  />
                            <small style="background-color:#5d00dc"></small> Purple </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" id="yellowColor" value="3" onclick="colorBoxEvent()"  />
                            <small style="background-color:#f1f40e"></small> Yellow</label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" id="orangeColor" value="3" onclick="colorBoxEvent()"  />
                            <small style="background-color:#ffc600"></small> Orange </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" id="maroonColor" value="3" onclick="colorBoxEvent()"  />
                            <small style="background-color:#9b1d00"></small> Maroon  </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" id="silverColor" value="3" onclick="colorBoxEvent()"  />
                            <small style="background-color:#ecf1ef"></small> Silver </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" id="goldenColor" value="3" onclick="colorBoxEvent()"  />
                            <small style="background-color:gold"></small>Golden </label>
                    </div>
                    <div class="block-element">
                        <label>
                            <input type="checkbox" id="whiteColor" value="3" onclick="colorBoxEvent()"  />
                            <small style="background-color:#ffffff"></small>White </label>
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
    <p class="pull-left"> Showing <strong><%=products.size() %></strong> products </p>
    <div class="pull-right ">
        <div class="change-view pull-right">
            <a href="#" title="Grid" class="grid-view"> <i class="fa fa-th-large"></i> </a>
            <a href="#" title="List" class="list-view "><i class="fa fa-th-list"></i></a> </div>
    </div>
</div> <!--/.productFilter-->

<div class="row  categoryProduct xsResponse clearfix">

    <%  for (int i = 0; i < products.size(); i++) {            %>

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
