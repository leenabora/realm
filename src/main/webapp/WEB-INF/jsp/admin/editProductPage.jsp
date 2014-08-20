<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ page import="com.unlimitedrealm.domain.Product" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit Product</title>
    <link href="<%=request.getContextPath()%>/css/admin.css" rel="stylesheet" type="text/css">
</head>
<body>
<a href="<%=request.getContextPath()%>/admin/homePage.htm">Home</a>

<div class="divTable">
<form:form action="${baseUrl}/admin/saveProduct.htm" method="post" modelAttribute="product"
           enctype="multipart/form-data">
<fieldset>
<div class="divRow">
    <div class="divCellOuter">
        <h2>Edit Product</h2>
    </div>
</div>
<br/>

<div class="divRow">
    <div class="divCellOuter">
        <div class="divTableImage">
            <div class="divRow">
                <div class="divCellOuter">SKU:</div>
                <div class="divCellOuter">
                    <form:input path="sku" readonly="true"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Show</div>
                <div class="divCellOuter">
                    <form:checkbox path="show"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Resize</div>
                <div class="divCellOuter">
                    <form:checkbox path="resize"/>
                </div>
            </div>
        </div>
    </div>
</div>

<br/>

<div class="divRow">
    <div class="divCellOuter">
        <div class="divTableImage">
            <div class="divRow">
                <div class="divCellOuter">Name:</div>
                <div class="divCellOuter">
                    <form:input path="name"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Description:</div>
                <div class="divCellOuter">
                    <form:input path="description"/>
                </div>
            </div>
        </div>
    </div>
</div>
<br/>


<div class="divRow">
    <div class="divCellOuter">
        <div class="divTableImage">
            <div class="divRow">
                <div class="divCellOuter">New Arrival</div>
                <div class="divCellOuter">
                    <form:checkbox path="newArrival"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Show In Home Page New-Arrival Section</div>
                <div class="divCellOuter">
                    <form:checkbox path="showInHomePageNewArrivalSection"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Show In Home Page Featured-Product Section</div>
                <div class="divCellOuter">
                    <form:checkbox path="showInHomePageFeaturedProductSection"/>
                </div>
            </div>
        </div>
    </div>
</div>
<br/>


<div class="divRow">
    <div class="divCellOuter">
        <div class="divTableImage">
            <div class="divRow">
                <div class="divCellOuter">
                    <img src="<c:url value='/images/${product.sku}-list.image'  />"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Upload List Page Image:</div>
                <div class="divCellOuter">
                    <form:input path="listPageImage.multipartFile" type="file"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Width</div>
                <div class="divCellOuter">
                    <form:input path="listPageImage.width" value="360"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Height</div>
                <div class="divCellOuter">
                    <form:input path="listPageImage.height" value="527"/>
                </div>
            </div>
        </div>
    </div>
</div>
<br/>

<div class="divRow">
    <div class="divCellOuter">
        <div class="divTableImage">
            <div class="divRow">
                <div class="divCellOuter">
                    <img src="<c:url value='/images/${product.sku}-detail.image'  />"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Upload Detail Page Image:</div>
                <div class="divCellOuter">
                    <form:input path="detailPageImage.multipartFile" type="file"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Width</div>
                <div class="divCellOuter">
                    <form:input path="detailPageImage.width" value="360"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Height</div>
                <div class="divCellOuter">
                    <form:input path="detailPageImage.height" value="527"/>
                </div>
            </div>
        </div>
    </div>
</div>
<br/>

<div class="divRow">
    <div class="divCellOuter">
        <div class="divTableImage">
            <div class="divRow">
                <div class="divCellOuter">
                    <img src="<c:url value='/images/${product.sku}-detail-thumbnail.image'  />"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Upload Detail Page Thumbnail Image:</div>
                <div class="divCellOuter">
                    <form:input path="detailPageThumbnailImage.multipartFile" type="file"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Width</div>
                <div class="divCellOuter">
                    <form:input path="detailPageThumbnailImage.width" value="360"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Height</div>
                <div class="divCellOuter">
                    <form:input path="detailPageThumbnailImage.height" value="527"/>
                </div>
            </div>
        </div>
    </div>
</div>
<br/>



<div class="divRow">
    <div class="divCellOuter">


        <div class="divTableImage">
            <div class="divRow">
                <div class="divCellOuter">
                    <img src="<c:url value='/images/${product.sku}-detail-back.image'  />"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Upload Detail Back Page Image:</div>
                <div class="divCellOuter">
                    <form:input path="detailBackPageImage.multipartFile" type="file"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Width</div>
                <div class="divCellOuter">
                    <form:input path="detailBackPageImage.width" value="1000"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Height</div>
                <div class="divCellOuter">
                    <form:input path="detailBackPageImage.height" value="1252"/>
                </div>
            </div>
        </div>
    </div>
</div>
<br/>
<div class="divRow">
    <div class="divCellOuter">
        <div class="divTableImage">
            <div class="divRow">
                <div class="divCellOuter">
                    <img src="<c:url value='/images/${product.sku}-detail-back-thumbnail.image'  />"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Upload Detail Back Page Thumbnail Image:</div>
                <div class="divCellOuter">
                    <form:input path="detailBackPageThumbnailImage.multipartFile" type="file"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Width</div>
                <div class="divCellOuter">
                    <form:input path="detailBackPageThumbnailImage.width" value="360"/>
                </div>
            </div>
            <div class="divRow">
                <div class="divCellOuter">Height</div>
                <div class="divCellOuter">
                    <form:input path="detailBackPageThumbnailImage.height" value="527"/>
                </div>
            </div>
        </div>
    </div>
</div>
<br/>


<div class="divCellOuter">
    <div class="divTableImage">

        <div class="divRow">
            <div class="divCellOuter">Size:</div>
            <div class="divCellOuter">
                <form:textarea path="statistics" rows="5" col="50"/>
            </div>
        </div>
        <div class="divRow">
            <div class="divCellOuter">Material:</div>
            <div class="divCellOuter">
                <form:textarea path="material" rows="5" col="50"/>
            </div>
        </div>
        <div class="divRow">
            <div class="divCellOuter">Pattern:</div>
            <div class="divCellOuter">
                <form:select path="patternType">
                    <option <c:if test="${product.patternType eq 'Lehenga'}">selected</c:if>  value="Lehenga">Lehenga</option>
                    <option <c:if test="${product.patternType eq 'Salwar_Suit'}">selected</c:if> value="Salwar_Suit">Salwar_Suit</option>
                    <option <c:if test="${product.patternType eq 'Midi'}">selected</c:if> value="Midi">Midi</option>
                    <option <c:if test="${product.patternType eq 'Skirt'}">selected</c:if> value="Skirt">Skirt</option>
                </form:select>
            </div>
        </div>


        <div class="divRow">
            <div class="divCellOuter">
                <div class="divTable">
                    <div class="divRow">
                        <div class="divCellOuter">Colors:</div>
                        <div class="divCellOuter" style="background-color: black;"/>
                        <form:checkbox value="Black" path="colors.black"/>
                    </div>
                    <div class="divCellOuter" style="background-color: blue;">
                        <form:checkbox value="Blue" path="colors.blue"/>
                    </div>
                    <div class="divCellOuter" style="background-color: red;">
                        <form:checkbox value="Red" path="colors.red"/>
                    </div>
                    <div class="divCellOuter" style="background-color: green;">
                        <form:checkbox value="Green" path="colors.green"/>
                    </div>
                    <div class="divCellOuter" style="background-color: brown;">
                        <form:checkbox value="Brown" path="colors.brown"/>
                    </div>
                    <div class="divCellOuter" style="background-color: pink;">
                        <form:checkbox value="Pink" path="colors.pink"/>
                    </div>
                    <div class="divCellOuter" style="background-color: grey;">
                        <form:checkbox value="Grey" path="colors.grey"/>
                    </div>
                    <div class="divCellOuter" style="background-color: purple;">
                        <form:checkbox value="Purple" path="colors.purple"/>
                    </div>
                    <div class="divCellOuter" style="background-color: yellow;">
                        <form:checkbox value="Yellow" path="colors.yellow"/>
                    </div>
                    <div class="divCellOuter" style="background-color: orange;">
                        <form:checkbox value="Orange" path="colors.orange"/>
                    </div>
                    <div class="divCellOuter" style="background-color: maroon;">
                        <form:checkbox value="Maroon" path="colors.maroon"/>
                    </div>
                    <div class="divCellOuter" style="background-color: silver;">
                        <form:checkbox value="Silver" path="colors.silver"/>
                    </div>
                    <div class="divCellOuter" style="background-color: white;">
                        <form:checkbox value="White" path="colors.white"/>
                    </div>
                    <div class="divCellOuter" style="background-color: gold;">
                        <form:checkbox value="Golden" path="colors.golden"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br/>

<div class="divRow">
    <div class="divCellOuter" colspan="2" align="center"><input type="submit" value="Save Product"/></div>
</div>


</fieldset>
</form:form>
</div>


</body>
</html>