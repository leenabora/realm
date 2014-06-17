<%@ include file="header.jsp" %>
<script src="<%=request.getContextPath()%>/js/gallerynew.js"></script>
<input type="hidden" id="currentPage" value="gallery"/>
<div id="content">
    <div id="gallery-image-div1" class="gallery-image-div" >
        <img id="gallery-image1" />
    </div>
    <div id="gallery-image-div2" class="gallery-image-div" >
        <img id="gallery-image2" />
    </div>


</div>
<%@ include file="footer.jsp" %>
</body>
</html>