<%@ page import="java.util.*" %>
<%@ page import="com.unlimitedrealm.domain.Comment" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <link href="<%=request.getContextPath()%>/css/admin.css" rel="stylesheet" type="text/css">
</head>

<div>
    <a href="<%=request.getContextPath()%>/admin/homePage.htm">Home</a>
</div>


<h1>
    Contacts :
</h1>

<body>

<div>
    <table>

        <% List
        <Comment> comments =( List
            <Comment>) request.getAttribute("comments");
                for (int i = 0; i < comments.size(); i++) { %>
                <tr>
                    <td>
                        <table>

                            <tr>
                                <td>
                                    Date
                                </td>
                                <td>
                                    <%= comments.get(i).getContact().getDate()%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Name
                                </td>
                                <td>
                                    <%= comments.get(i).getContact().getName()%>
                                </td>
                            </tr>

                            <tr class="bottomRow">
                                <td>
                                    Comment
                                </td>
                                <td>
                                    <%= contacts.get(i).getContact().getMessage()%>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>

                <%} %>
    </table>
</div>
</body>
</html>