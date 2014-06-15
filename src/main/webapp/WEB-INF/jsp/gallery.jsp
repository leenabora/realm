<%@ include file="header.jsp" %>
<script src="<%=request.getContextPath()%>/js/gallery.js"></script>
<input type="hidden" id="currentPage" value="gallery"/>
<div id="slide">
    <div class="slider">
        <ul class="items">
            <li id="galleryImageContainer">
                <img id="galleryImage" />
                <div  id="banner" class="banner">
                    <p id="galleryHeading" class="text-1">
                        We've Got
                    </p>
                    <p id="galleryDescription" class="text-2">Ut wisi enim ahd minim veniam quis nostrud exerci takltion ulamc orper suscipit lobortis</p>
                </div>
            </li>
        </ul>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>