<%@ include file="header.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="com.unlimitedrealm.domain.Product" %>
<%@ page import="com.unlimitedrealm.domain.Comment" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!--==============================content================================-->
<input type="hidden" id="currentPage" value="products"/>

<div class="wrapper">
    <div class="wrapper-start">
        <div class="col-full">
            <br/>

            <div class="divTable">
                <div class="divRowProduct">
                    <div class="divCellProduct">
                        <img src="${baseUrl}/images/${product.sku}-gallery.image"/>
                    </div>
                    <div class="divCellProduct">
                        <div class="divTable">
                            <div class="divRowHeading">
                                <div class="divCellProductMetaData">DETAILS</div>
                            </div>
                            <div class="divRow">
                                <div class="divCellProductMetaDataHeading">Item No:</div>
                                <div class="divCellProductMetaData">${ product.getSku()}</div>
                            </div>
                            <div class="divRow">
                                <div class="divCellProductMetaDataHeading">Description:</div>
                                <div class="divCellProductMetaData">${ product.getDescription()}</div>
                            </div>
                            <div class="divRow">
                                <div class="divCellProductMetaDataHeading">Dress Statistics:</div>
                                <div class="divCellProductMetaData">${ product.getStatistics()}</div>
                            </div>
                            <div class="divRow">
                                <div class="divCellProductMetaDataHeading">Material:</div>
                                <div class="divCellProductMetaData">${ product.getMaterial()}</div>
                            </div>
                            <!--    <div class="divRowHeading">
                                    <div class="divCellProductMetaData">SHARE</div>
                                </div>
                                <div class="divRow">
                                    <div class="divCellShare"><img src="<%=request.getContextPath()%>/images/icon-1.jpg"/>
                                    </div>
                                    <div class="divCellShare"><img src="<%=request.getContextPath()%>/images/icon-2.jpg"/>
                                    </div>
                                    <div class="divCellShare"><img src="<%=request.getContextPath()%>/images/icon-3.jpg"/>
                                    </div>
                                </div>-->
                            <div class="divRowHeadingComment">
                                COMMENT/ENQUIRY
                            </div>
                            <div class="divRowProduct">
                                <div class="divCellComment">
                                    <div class="divTableComment">
                                        <form:form action="${baseUrl}/comments.htm" method="post"
                                                   modelAttribute="comment" id="form">
                                            <form:hidden path="sku" value="${product.sku}"/>
                                            <div class="divRow">
                                                <div class="divCellCommentLabel">
                                                    Name <strong>*</strong>
                                                </div>
                                                <div class="divCellCommentText">
                                                    <form:input path="contact.name" type="text"/>
                                                </div>
                                            </div>
                                            <div class="divRow">
                                                <div class="divCell">
                                                    <form:errors path="contact.name" cssClass="error"/>
                                                </div>
                                            </div>
                                            <div class="divRow">
                                                <div class="divCellCommentLabel">
                                                    Message <strong>*</strong>
                                                </div>
                                                <div class="divCellCommentText">
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
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="divTableComments">
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
                            <%= comments.get(i).getContact().getName()%>
                        </div>
                    </div>

                    <div class="divRow">
                        <div class="divCell">
                            <%= comments.get(i).getContact().getMessage()%>
                        </div>
                    </div>

                    <% } %>
        </div>
    </div>
</div>
</body>
</html>
