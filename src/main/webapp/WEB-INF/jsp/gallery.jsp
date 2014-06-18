<%@ include file="header.jsp" %>
<!--<script src="<%=request.getContextPath()%>/js/gallerynew.js"></script>-->
<input type="hidden" id="currentPage" value="gallery"/>

<div class="wrapper">
    <div class="gallery-table">
        <div class="gallery-row">
            <div class="promo-image-cell">
                <img id="promo-image" src="<%=request.getContextPath()%>/images/sku-12-gallery.image"/>
            </div>
            <div class="promo-image-cell">
                <div id="gallery-image-div1" >
                    <img id="gallery-image1" src="<%=request.getContextPath()%>/images/sku-1-gallery.image"/>
                </div>
            </div>
            <div class="promo-image-cell-corner">
                <img id="promo-image2" src="<%=request.getContextPath()%>/images/sku-3-gallery.image"/>
            </div>
        </div>
    </div>
</div>
</body>
</html>