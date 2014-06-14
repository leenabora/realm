<%@ page import="java.util.*" %>
<%@ page import="com.unlimitedrealm.domain.Comment" %>
<%@ page import="com.unlimitedrealm.domain.Contact" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <link href="<%=request.getContextPath()%>/css/admin.css" rel="stylesheet" type="text/css">
</head>

<h1>
    Comments :
</h1>

<body>
<div>
    <a href="<%=request.getContextPath()%>/admin/homePage.htm">Home</a>
</div>


<%
List
<Comment> comments =( List
    <Comment>) request.getAttribute("comments");
        for (int i = 0; i < comments.size(); i++) {
        %>
        <div class="divTableRegular">
            <div class="divRowRegular">
                <div class="divCellRegular">
                    <img src="<%=request.getContextPath()%>/images/<%= comments.get(i).getSku() %>-product.image"/>
                </div>
            </div>
            <div class="divRowRegular">
                <div class="divCellRegular">
                    <form method="post" action="<%=request.getContextPath()%>/admin/comments/publish/<%=comments.get(i).get_id().toString()%>.htm">
                    <div class="divTableRegularInner">
                        <div class="divRowRegular">
                            <div class="divCellRegular">
                                From:   <%=request.getContextPath()%>/images/<%= comments.get(i).getContact().getName() %>
                            </div>
                        </div>
                        <div class="divRowRegular">
                            <div class="divCellRegular">
                                Message:    <%= comments.get(i).getContact().getMessage()
                                %>
                            </div>
                        </div>
                        <% if(!comments.get(i).isPublish()) { %>
                        <div class="divRowRegular">
                            <div class="divCellRegular">
                                <input type="submit" value="PUBLISH"/>
                            </div>
                        </div>
                        <% } %>
                    </div>
                </div>
            </div>
        </div>
        <% } %>
</body>
</html>