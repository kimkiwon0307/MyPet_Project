<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.2.0/ekko-lightbox.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.2.0/ekko-lightbox.min.css"
	rel="stylesheet" />
<style>
.row {
	margin: 15px;
}
</style>

<div class="container">
	<br> <br>

	<form name="form" action="/mypet/album/register" method="post"
		enctype="multipart/form-data">

		<div class="form-group">
			<label>제목</label> <input type="text" class="form-control"
				name='a_title'>
		</div>


		<div class="form-group">
			<label>사진</label> <br>
			<input type="file" name="file" multiple/>
		</div>



		<input type="submit" value="전송" />
	</form>





</div>

<%@include file="../includes/footer.jsp"%>

<script>
	$(document).ready(function(e){
		
		var formObj = $("form[role='form']");
		
		$("button[type='submit']").on("click",function(e){
			
			e.preventDefault();
			
		});

	
	var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	
	var maxSize = 5242880; // 5mb
	
	function checkExtension(fileName, fileSize){
		
		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
		
		if(regex.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		return ture;
	}
	
	$("input[type='file']").change(function(e){
		
		var formData = new FormData();
		
		var inputFile = $("input[name='uploadFile']");
		
		var files = inputFile[0].files;
		
		for(var i=0; i< files.lenght; i++){
			
			if(!checkExtension(files[i].name, files[i].size)){
				return false;
			}
			formData.append("uploadFile",files[i]);
		}
		
		$.ajax({
			url : '/mypet/album/uploadAjaxAction',
			processData : false,
			contentType : false, data:
				formData,type:'POST',
				dataType:'json',
				success:function(result){
					console.log(result);
					// showUploadResult(result); 
				}
		}); //ajax
		
	   });


	  
	});

	
	
	

</script>

</body>
</html>
