<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/ckeditor/ckeditor.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>


<style>
/* 	.ck.ck-editor{
		max-width:100%;
	}
	.ck-editor__editable{
		min-height : 300px;
	} */
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
    <label>내용</label> <br>
     <textarea class="summernote" name="f_content" id="summernote"></textarea>    
   <!--   <textarea rows="10" w name='f_content' style="width:1100px" id='f_content'>  </textarea> -->
 <!-- 	<textarea id ="f_content" name="f_content"></textarea> -->
 	<script>
 /* 	$(function(){	
 		CKEDITOR.replace('f_content',{
 			filebrowserUploadUrl:'${pageContext.request.contextPath}/free/fileupload.do'
 		});
 	}); */
 	
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

<!-- <script type="text/javascript">
    	$(document).ready(function() {
    		//여기 아래 부분
    		$('#summernote').summernote({
    			  height: 300,                 // 에디터 높이
    			  minHeight: null,             // 최소 높이
    			  maxHeight: null,             // 최대 높이
    			  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
    			  lang: "ko-KR",					// 한글 설정
    		
    		});
    		
    	})
</script>
 -->
 <script>
 $(document).ready(function(){
	 
	
 
 $('#summernote').summernote({
		height: 300,                 // 에디터 높이
		minHeight: null,             // 최소 높이
		maxHeight: null,             // 최대 높이
		focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		lang: "ko-KR",					// 한글 설정
		placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정
		callbacks: {	//여기 부분이 이미지를 첨부하는 부분
			onImageUpload : function(files) {
				uploadSummernoteImageFile(files[0],this);
			},
			onPaste: function (e) {
				var clipboardData = e.originalEvent.clipboardData;
				if (clipboardData && clipboardData.items && clipboardData.items.length) {
					var item = clipboardData.items[0];
					if (item.kind === 'file' && item.type.indexOf('image/') !== -1) {
						e.preventDefault();
					}
				}
			}
		}
});



/**
* 이미지 파일 업로드
*/
function uploadSummernoteImageFile(file, editor) {
data = new FormData();
data.append("file", file);
$.ajax({
	data : data,
	type : "POST",
	url : "/mypet/free/uploadSummernoteImageFile",
	contentType : false,
	processData : false,
	success : function(data) {
 	//항상 업로드된 파일의 url이 있어야 한다.
		$(editor).summernote('insertImage', data.url);
	}
});
}
});
</script>

</body>
</html>
