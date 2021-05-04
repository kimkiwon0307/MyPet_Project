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
    <a href="${pageContext.request.contextPath}/resources/image/${file.STORED_FILE_NAME}" data-toggle="lightbox" data-gallery="gallery" class="col-md-4">
      <img src="${pageContext.request.contextPath}/resources/image/${file.STORED_FILE_NAME}" class="img-fluid rounded">
    </a>
  
   </c:forEach>   
  <span>파일 목록</span>
				<div class="form-group" style="border: 1px solid #dbdbdb;">
					<c:forEach var="file" items="${file}">
						<a href="#" onclick="fn_fileDown('${file.FILE_NO}'); return false;">${file.ORG_FILE_NAME}</a>(${file.FILE_SIZE}kb)<br>
					</c:forEach>
				</div>
				<hr>
				<div>
					<button type="button" class="update_btn btn btn-warning">수정</button>
					<button type="button" class="delete_btn btn btn-danger">삭제</button>
					<button type="button" class="list_btn btn btn-primary">목록</button>	
				</div>
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
