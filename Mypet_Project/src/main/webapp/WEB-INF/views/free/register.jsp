<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/ckeditor/ckeditor.js"></script>

<style>
	.ck.ck-editor{
		max-width:100%;
	}
	.ck-editor__editable{
		min-height : 300px;
	}
</style>

<div class="container">
  <br/>
  <h5>작성 페이지</h5>
 
 <hr>           
  <form action="/mypet/free/register" method="post" enctype="multipart/form-data">
  
  <div class="form-group">
    <label>제목</label>
    <input type="text" class="form-control"  name='f_title'>
  </div>
  
   <div class="form-group">
    <label>내용</label>
   <!--  <textarea rows="10" name='f_content' id='f_content'>  </textarea> -->
 	<textarea id ="f_content" name="f_content"></textarea>
 	<script>
 	$(function(){	
 		CKEDITOR.replace('f_content',{
 			filebrowserUploadUrl:'${pageContext.request.contextPath}/free/fileupload.do'
 		});
 	});
 	
 	</script>
 
 
  </div>
  
   <div class="form-group">
    <label>작성자</label>
    <input type="text" class="form-control"  name='f_writer' value="${member.m_id}" readonly="readonly">
  </div>
  
<!--   <div class="form-group">
    <label class="form">첨부 자료 </label>
     <input type="file" class="form-control-file border" name="f_file">
  </div>  -->
  
  <button type="submit" class="btn btn-outline-dark" id="btn_complite">작성완료</button>
  
</form>
</div>

<%@include file="../includes/footer.jsp" %>
<%-- <script src="${pageContext.request.contextPath}/resources/common/js/ckeditor.js"></script> --%>

</body>
</html>
