<%@ page import="java.util.*" %>
<%@ page import="com.unlimitedrealm.domain.Product" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html xmlns:form="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit Product</title>
</head>
<body>
<div>
    <a href="<%=request.getContextPath()%>/admin/homePage.htm">Home</a>
</div>

<div class="horizontal-align">
    <form:form action="${baseUrl}/admin/saveProduct.htm" method="post" modelAttribute="product"
               enctype="multipart/form-data">
        <fieldset>
            <table border="0">
                <tr>
                    <td colspan="2" align="center"><h2>Edit Product</h2></td>
                </tr>
                <tr>
                    <td>SKU:</td>
                    <td>
                        <form:input readonly="true" path="sku"/>
                    </td>
                </tr>
                <br/>
                <tr>
                    <td>Description:</td>
                    <td>
                        <form:input path="description"/>
                    </td>
                </tr>
                <br/>
                <tr>
                    <td>Gallery Heading:</td>
                    <td>
                        <form:input path="galleryHeading"/>
                    </td>
                </tr>
                <br/>
                <tr>
                    <td>Gallery Description:</td>
                    <td>
                        <form:input path="galleryDescription"/>
                    </td>
                </tr>
                <br/>
                <tr>
                    <td>Product Description:</td>
                    <td>
                        <form:input path="productDescription"/>
                    </td>
                </tr>
                <tr>
                    <td>Show</td>
                    <td>
                        <form:checkbox path="show"/>
                    </td>
                </tr>

                <tr>
                    <table border="1px solid blue">
                    <tr>
                            <td>
                                <img src="<c:url value='/images/${product.sku}-gallery.image'  />"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Change Gallery Image:</td>
                            <td>
                                <form:input path="galleryImage.multipartFile" type="file"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Width</td>
                            <td>
                                <form:input path="galleryImage.width" />
                            </td>
                        </tr>
                        <tr>
                            <td>Height</td>
                            <td>
                                <form:input path="galleryImage.height"  />
                            </td>
                        </tr>
                    </table>
                </tr>
                <br/>

                <tr>
                    <table border="1px solid blue">
                    <tr>
                            <td>
                                <img src="<c:url value='/images/${product.sku}-product.image'  />"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Change Product Image:</td>
                            <td>
                                <form:input path="productImage.multipartFile" type="file"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Width</td>
                            <td>
                                <form:input path="productImage.width" />
                            </td>
                        </tr>
                        <tr>
                            <td>Height</td>
                            <td>
                                <form:input path="productImage.height"  />
                            </td>
                        </tr>
                    </table>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Save Product"/></td>
                </tr>
            </table>
        </fieldset>
    </form:form>
</div>
</body>
</html>