<%@ page import="java.util.*" %>
<%@ page import="com.unlimitedrealm.domain.Contact" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="header.jsp" %>

<!--==============================content================================-->
<section id="content" xmlns:form="http://www.w3.org/1999/xhtml">
    <div class="ic">More Website Templates @ TemplateMonster.com. Zerotheme.com!</div>
    <div class="zerogrid top">
        <div class="row">
            <div class="">

                <div>
                    <div class="wrap-col">
                        <h2 class="align-center">Contact Form</h2>

                        <div width="100%">
                            <form:form action="${baseUrl}/contacts.htm" method="post" modelAttribute="contact"
                                       id="form">
                                <fieldset>
                                    <table>

                                        <tr>
                                            <td>
                                                <label class="contactLabel"> Name <strong>*</strong></label>
                                            </td>
                                            <td>
                                                <form:input path="name" type="text"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <form:errors path="name" cssClass="error"/>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <label class="contactLabel"> Email <strong>*</strong></label>
                                            </td>
                                            <td>
                                                <form:input path="email" type="text"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <form:errors path="email" cssClass="error"/>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <label class="contactLabel"> Phone <strong>*</strong></label>
                                            </td>
                                            <td>
                                                <form:input path="phone" type="text"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <form:errors path="phone" cssClass="error"/>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <label class="contactLabel"> Country <strong>*</strong></label>
                                            </td>
                                            <td>
                                                <form:select path="country">
                                                    <%@ include file="country.jsp" %>
                                                </form:select>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <form:errors path="country" cssClass="error"/>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <label class="contactLabel"> Message <strong>*</strong></label>
                                            </td>
                                            <td>
                                                <form:textarea path="message" type="text"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <form:errors path="message" cssClass="error"/>
                                            </td>
                                        </tr>


                                        <tr>
                                            <div class="btns">
                                                <td>
                                                    <a href="#" class="button" onclick="clear()">Clear</a>
                                                </td>

                                                <td>
                                                    <a href="#" class="button"
                                                       onClick="document.getElementById('form').submit()">Send</a>
                                                </td>
                                            </div>
                                        </tr>

                                    </table>
                                </fieldset>
                            </form:form>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
</section>
<!--==============================footer=================================-->
<footer>
    <div class="soc-icons"><span>Follow Us:</span><a href="#"><img src="images/icon-1.jpg" alt=""></a><a href="#"><img
            src="images/icon-2.jpg" alt=""></a><a href="#"><img src="images/icon-3.jpg" alt=""></a></div>
    <p>© 2012 Start-Up<br> <a rel="nofollow" href="http://www.templatemonster.com/" target="_blank" class="link">Website
        Template</a> by TemplateMonster.com <br/> <a rel="nofollow"
                                                     href="http://www.zerotheme.com/432/free-responsive-html5-css3-website-templates.html"
                                                     target="_blank" class="link">Responsive Templates</a> by <a
            href="http://www.zerotheme.com" target="_blank">Zerotheme.com</a></p>
</footer>
</body>
</html>
