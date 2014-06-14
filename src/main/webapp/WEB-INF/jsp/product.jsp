<%@ include file="header.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="com.unlimitedrealm.domain.Product" %>
<%@ page import="com.unlimitedrealm.domain.Comment" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!--==============================content================================-->
<section id="content">
    <div class="zerogrid top">
        <div class="row">
            <div class="col-full">
                <div class="wrap-col">
                    <h2 class="p5">${ product.getDescription()}</h2>
                </div>
                <div class="divTable">
                    <div class="divRow">
                        <div class="divCell">
                            <img src="${baseUrl}/images/${product.sku}-gallery.image"/>
                        </div>
                        <div class="divCell">
                            <div class="divtable">
                                <div class="divRow">
                                    <div class="divCell">Dress Statistics</div>
                                    <div class="divCell">${ product.getStatistics()}</div>
                                </div>
                                <div class="divRow">
                                    <div class="divCell">Material</div>
                                    <div class="divCell">${ product.getMaterial()}</div>
                                </div>
                                <div class="divRow">
                                    <div class="divCell">Share</div>
                                </div>
                                <div class="divRow">
                                    <div class="divCell"><img src="<%=request.getContextPath()%>/images/icon-1.jpg"/>
                                    </div>
                                    <div class="divCell"><img src="<%=request.getContextPath()%>/images/icon-2.jpg"/>
                                    </div>
                                    <div class="divCell"><img src="<%=request.getContextPath()%>/images/icon-3.jpg"/>
                                    </div>
                                </div>
                              <!--  <div class="divRow">
                                    Comment/Enquiry
                                </div>
                                <div class="divRow">
                                    <div class="divCell">
                                        <div class="divTable">
                                            <form:form action="${baseUrl}/comments.htm" method="post"
                                                       modelAttribute="comment" id="form">
                                                <div class="divRow">
                                                    <div class="divCell">
                                                        <label class="contactLabel"> Name <strong>*</strong></label>
                                                    </div>
                                                    <div class="divCell">
                                                        <form:input path="contact.name" type="text"/>
                                                    </div>
                                                </div>
                                                <div class="divRow">
                                                    <div class="divCell">
                                                        <form:errors path="contact.name" cssClass="error"/>
                                                    </div>
                                                </div>
                                                <div class="divRow">
                                                    <div class="divCell">
                                                        <label class="contactLabel"> Message <strong>*</strong></label>
                                                    </div>
                                                    <div class="divCell">
                                                        <form:textarea path="contact.message" type="text"/>
                                                    </div>
                                                </div>
                                                <div class="divRow">
                                                    <div class="divCell">
                                                        <a href="#" class="button"
                                                           onClick="document.getElementById('form').submit()">Post</a>
                                                    </div>
                                                </div>

                                            </form:form>
                                        </div>
                                    </div>
                                </div>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="divTable">
                <%
                List
                <Comment> comments =( List
                    <Comment>) request.getAttribute("comments");
                        for (int i = 0; i < comments.size(); i++) {
                        if(i==0){
                        %>
                        <div class="divRow">
                            <div class="divCell">
                                Reviews :
                            </div>
                        </div>
                        <% } %>

                        <div class="divRow">
                            <div class="divCell">
                                From : <%= comments.get(i).getContact().getName()%>
                            </div>
                        </div>

                        <div class="divRow">
                            <div class="divCell">
                                From : <%= comments.get(i).getContact().getMessage()%>
                            </div>
                        </div>

                        <% } %>
            </div>
        </div>
    </div>
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
