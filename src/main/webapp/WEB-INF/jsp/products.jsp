<%@ include file="header.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="com.unlimitedrealm.domain.Product" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--==============================content================================-->
<section id="content">
    <div class="zerogrid top">
        <div class="row">
            <div class="col-full">
                <div class="wrap-col">
                    <h2 class="p5">Our Products</h2>
                </div>
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

                                        <div class="divCell1">
                                            <a href="<%=request.getContextPath()%>/products/<%= products.get(i).getSku() %>.htm"
                                               class="product-image-link">
                                                <img src="<%=request.getContextPath()%>/images/<%= products.get(i).getSku() %>-product.image"/></a>
                                        </div>
                                    </div>
                                    <div class="divRow">

                                        <div class="divCellInner">
                                            <a href="<%=request.getContextPath()%>/products/<%= products.get(i).getSku() %>.htm"
                                               class="product-desc-link">
                                                <%= products.get(i).getProductDescription()%> </a>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <% if ( ((i+1) % 3 ==0 && (i+1)>2) || (i == products.size()-1) ){ %>
                        </div>
                        <% }

                        } %>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</section>
<!--==============================footer=================================-->
<%@ include file="footer.jsp" %>

</body>
</html>
