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
<div class="footer-wrapper">
    <footer>
        <div class="soc-icons"><span>Follow Us:</span><a href="#"><img src="images/icon-1.jpg" alt=""></a><a
                href="#"><img
                src="images/icon-2.jpg" alt=""></a><a href="#"><img src="images/icon-3.jpg" alt=""></a></div>
        <p>© 2012 Start-Up<br> <a rel="nofollow" href="http://www.templatemonster.com/" target="_blank" class="link">Website
            Template</a> by TemplateMonster.com <br/> <a rel="nofollow"
                                                         href="http://www.zerotheme.com/432/free-responsive-html5-css3-website-templates.html"
                                                         target="_blank" class="link">Responsive Templates</a> by <a
                href="http://www.zerotheme.com" target="_blank">Zerotheme.com</a></p>
    </footer>
</div>
</body>
</html>
