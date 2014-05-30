<%@ page import="java.util.*" %>
<%@ page import="com.unlimitedrealm.domain.Product" %>

<html>
<head>
    <link href="<%=request.getContextPath()%>/css/admin.css" rel="stylesheet" type="text/css">
</head>

<h1>
    Products :
</h1>

<body>

<table class="products">

    <%
    List
    <Product> products =( List
        <Product>) request.getAttribute("products");
            for (int i = 0; i < products.size(); i++) {
            %>

            <% if ( (i % 3 ==0 && i>2) || ( i==0) ) { %>
            <tr class="productRow">
                <% } %>

                <td class="product">
                    <table>
                        <tr>
                            <td>
                                <img src="<%=request.getContextPath()%>/images/<%= products.get(i).getSku() %>-product.image"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <%= products.get(i).getProductDescription()%>
                            </td>
                        </tr>
                        <tr>
                            <table class="product">
                                <tr>
                                    <td>
                                        <a href="#">Edit</a>
                                    </td>
                                    <td>
                                        <a href="#">Delete</a>
                                    </td>
                                </tr>
                            </table>
                        </tr>
                    </table>
                </td>

                <% if ( ((i+1) % 3 ==0 && (i+1)>2) || (i == products.size()-1) ){ %>
            </tr>
            <% } %>

            <% } %>
</table>
</body>
</html>