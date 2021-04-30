<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.2.0/ekko-lightbox.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.2.0/ekko-lightbox.min.css" rel="stylesheet" />
<style>
.row {
  margin: 15px;
}
</style>
<div class="container">
  <div class="row">
  <c:forEach var="file" items="${file}">
    <a href="${file.ORG_FILE_NAME}" data-toggle="lightbox" data-gallery="gallery" class="col-md-4">
      <img src="${file.ORG_FILE_NAME}" class="img-fluid rounded">
    </a>
  </c:forEach>  
  </div>
  
</div>

<script>
$(document).on("click", '[data-toggle="lightbox"]', function(event) {
	  event.preventDefault();
	  $(this).ekkoLightbox();
	});
</script>


 <%@include file="../includes/footer.jsp" %> 
</body>
</html>
