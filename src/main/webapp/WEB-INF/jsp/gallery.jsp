<%@ include file="header.jsp" %>
<script src="<%=request.getContextPath()%>/js/gallery.js"></script>

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
<div class="footer-wrapper">
    <footer>
        <div class="soc-icons"><span>Follow Us:</span><a href="#"><img src="<%=request.getContextPath()%>/images/icon-1.jpg" alt=""></a><a href="#"><img src="<%=request.getContextPath()%>//images/icon-2.jpg" alt=""></a><a href="#"><img src="<%=request.getContextPath()%>//images/icon-3.jpg" alt=""></a></div>
        <p>© 2012 Start-Up<br> <a rel="nofollow" href="http://www.templatemonster.com/" target="_blank" class="link">Website Template</a>  by TemplateMonster.com <br/> <a rel="nofollow" href="http://www.zerotheme.com/432/free-responsive-html5-css3-website-templates.html" target="_blank" class="link">Responsive Templates</a> by <a href="http://www.zerotheme.com" target="_blank">Zerotheme.com</a></p>
    </footer>
</div>
</body>
</html>