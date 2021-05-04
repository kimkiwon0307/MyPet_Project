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

<script type="text/javascript">
    $(document).ready(function() {
      $('#summernote').summernote({
        height: 300,
        minHeight: null,
        maxHeight: null,
        focus: true,
        callbacks: {
          onImageUpload: function(files, editor, welEditable) {
            for (var i = files.length - 1; i >= 0; i--) {
              sendFile(files[i], this);
            }
          }
        }
      });
    });
    
    function sendFile(file, el) {
      var form_data = new FormData();
      form_data.append('file', file);
      $.ajax({
        data: form_data,
        type: "POST",
        url: '/image',
        cache: false,
        contentType: false,
        enctype: 'multipart/form-data',
        processData: false,
        success: function(url) {
          $(el).summernote('editor.insertImage', url);
          $('#imageBoard > ul').append('<li><img src="'+url+'" width="480" height="auto"/></li>');
        }
      });
    }
</script>


</body>
</html>
