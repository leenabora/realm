<%@ page import="java.util.*" %>
<%@ page import="com.unlimitedrealm.domain.Product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html xmlns:c="http://www.w3.org/1999/XSL/Transform">
<head>
    <link href="<%=request.getContextPath()%>/css/admin.css" rel="stylesheet" type="text/css">
</head>

<h1>
    Products :
</h1>

<body>
<div>
    <a href="<%=request.getContextPath()%>/admin/homePage.htm">Home</a>
</div>

<div class="divTable">

    <%
    List
    <Product> products =( List
        <Product>) request.getAttribute("products");
            for (int i = 0; i < products.size(); i++) {
            %>

            <% if ( (i % 3 ==0 && i>2) || ( i==0) ) { %>
            <div class="divRow">
                <% } %>

                <div class="divCell">
                    <div class="divTableInner">
                        <div class="divRow">

                            <div class="divCell">
                                <img src="<%=request.getContextPath()%>/images/<%= products.get(i).getSku() %>-product.image"/>
                            </div>
                        </div>
                        <div class="divRow">

                            <div class="divCellInner">
                                <%= products.get(i).getProductDescription()%>
                            </div>
                        </div>
                        <div class="divRow">

                            <div class="divTableInnerTbl">

                                <div class="divRow">

                                    <div class="divCellButton">
                                        <a href="<%=request.getContextPath()%>/admin/<%= products.get(i).getSku() %>/editProductPage.form">Edit</a>
                                    </div>
                                    <div class="divCellButton">

                                        <% if(!products.get(i).getShow()) {%>
                                            <div class="delete">
                                                PRODUCT NOT SHOWN
                                            </div>
                                        <% } %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <% if ( ((i+1) % 3 ==0 && (i+1)>2) || (i == products.size()-1) ){ %>
            </div>
            <% }

            } %>
</div>
</body>
</html>