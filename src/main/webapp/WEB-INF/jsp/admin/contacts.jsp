<%@ page import="java.util.*" %>
<%@ page import="com.unlimitedrealm.domain.Contact" %>
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
        <Contact> contacts =( List
            <Contact>) request.getAttribute("contacts");
                for (int i = 0; i < contacts.size(); i++) { %>
                <tr>
                    <td>
                        <table>

                            <tr>
                                <td>
                                    Date
                                </td>
                                <td>
                                    <%= contacts.get(i).getDate()%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Name
                                </td>
                                <td>
                                    <%= contacts.get(i).getName()%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Email
                                </td>
                                <td>
                                    <%= contacts.get(i).getEmail()%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Phone
                                </td>
                                <td>
                                    <%= contacts.get(i).getPhone()%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Country
                                </td>
                                <td>
                                    <%= contacts.get(i).getCountry()%>
                                </td>
                            </tr>

                            <tr class="bottomRow">
                                <td>
                                    Message
                                </td>
                                <td>
                                    <%= contacts.get(i).getMessage()%>
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