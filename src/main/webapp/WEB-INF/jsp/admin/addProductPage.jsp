<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add New Product</title>
</head>
<body>
<div>
    <a href="<%=request.getContextPath()%>/admin/homePage.htm">Home</a>
</div>
<div align="center">
    <form:form action="${baseUrl}/admin/saveProduct.htm" method="post" modelAttribute="product"
               enctype="multipart/form-data">
        <fieldset>
            <table border="0">
                <tr>
                    <td colspan="2" align="center"><h2>Add New Product</h2></td>
                </tr>
                <tr>
                    <td>SKU:</td>
                    <td>
                        <form:input path="sku"/>
                    </td>
                </tr>
                <br/>
                <tr>
                    <td>Description:</td>
                    <td>
                        <form:input path="description"/>
                    </td>
                </tr>
                <tr>
                    <td>Statistics:</td>
                    <td>
                        <form:input path="statistics"/>
                    </td>
                </tr>
                <tr>
                    <td>material:</td>
                    <td>
                        <form:input path="material"/>
                    </td>
                </tr>
                <br/>
                <tr>
                    <td>Gallery Heading:</td>
                    <td>
                        <form:input path="galleryHeading"/>
                    </td>
                </tr>
                <tr>
                    <td>Gallery Sub Heading:</td>
                    <td>
                        <form:input path="gallerySubHeading"/>
                    </td>
                </tr>
                <br/>
                <tr>
                    <td>Gallery Description:</td>
                    <td>
                        <form:input path="galleryDescription"/>
                    </td>
                </tr>
                <tr>
                    <table border="1px solid blue">
                        <tr>
                            <td>Upload Gallery Image:</td>
                            <td>
                                <form:input path="galleryImage.multipartFile" type="file"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Width</td>
                            <td>
                                <form:input path="galleryImage.width" value="360"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Height</td>
                            <td>
                                <form:input path="galleryImage.height"  value="527"/>
                            </td>
                        </tr>
                    </table>
                </tr>
                <br/>
                <br/>
                <tr>
                    <td>Product Description:</td>
                    <td>
                        <form:input path="productDescription"/>
                    </td>
                </tr>

                <tr>
                    <table border="1px solid blue">
                        <tr>
                            <td>Upload Product Image:</td>
                            <td>
                                <form:input path="productImage.multipartFile" type="file"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Width</td>
                            <td>
                                <form:input path="productImage.width"  value="250"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Height</td>
                            <td>
                                <form:input path="productImage.height"  value="300"/>
                            </td>
                        </tr>
                    </table>
                </tr>
                <br/>
                <tr>
                    <td>Show</td>
                    <td>
                        <form:checkbox path="show"/>
                    </td>
                </tr>
                <br/>


                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Add Product"/></td>
                </tr>
            </table>
        </fieldset>
    </form:form>
</div>
</body>
</html>