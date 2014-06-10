<%@ page import="com.unlimitedrealm.domain.Product" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ include file="header.jsp" %>

<!--==============================content================================-->
<div class="">

    <div class="">
        <img src="<%=request.getContextPath()%>/images/${product.sku}-gallery.image"/>
    </div>
    <div class="">
        DETAIL :
        <div class="">
            <div> Dress Statistics</div>
            <div> ${product.statistics}</div>


            <div> Material</div>
            <div> ${product.material}</div>

            <p> Disclaimer: Color may vary slightly according to screen settings and resolution </p>
        </div>
    </div>

    <div class="">
        SHARE :
        <div class="">
            <img src="<%=request.getContextPath()%>/images/icon-1.jpg">

            <img src="<%=request.getContextPath()%>/images/icon-2.jpg">

            <img src="<%=request.getContextPath()%>/images/icon-3.jpg">
        </div>
    </div>

    <div class="">
        <form:form action="${baseUrl}/comments.htm" method="post" modelAttribute="comment"
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
