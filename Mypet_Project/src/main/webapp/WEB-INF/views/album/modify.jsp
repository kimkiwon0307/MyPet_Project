<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../includes/header.jsp" %>

<!-- font -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
 <!-- Header -->
<style>
div {
  font-family: "Sofia";
  font-size: 22px;
}
</style>

  <div id="header" style="border:solid;height:350px;background-image:url(https://cdn.pixabay.com/photo/2017/04/11/15/55/animals-2222007__340.jpg);">
  </div>


<div class="container py-5">
    <h1 class="font-weight-light text-center text-lg-left mt-4 mb-0">Album Modify</h1>
 	 <hr class="mt-2 mb-5">

    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card border-secondary">
                        <div class="card-header">
                            <h3 class="mb-0 my-2">Album Modify</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" role="form" action="<%=cp%>/album/modify" method="post" >
                            	<div class="form-group">
                            		<label for="inputName">번호</label>
                            		<input type="text" class="form-control" id="a_no" name="a_no" value='<c:out value="${album.a_no }"/>' readonly="readonly">
                            	</div>
                                <div class="form-group">
                                    <label for="inputName">표지</label>
                                    <input type="text" class="form-control" id="inputName" name="a_photo" value='<c:out value="${album.a_photo}"/>'>
                                </div>
                                 <div class="form-group">
                                    <label for="inputName">제목</label>
                                    <input type="text" class="form-control" id="inputName" name="a_title" value='<c:out value="${album.a_title}"/>'>
                                </div>
                                 <div class="form-group">
                                    <label for="inputName">내용</label>
                                    <input type="text" class="form-control" id="inputName" name="a_content" value='<c:out value="${album.a_content}"/>'>
                                </div>
                            <%--     <div class="form-group">
                                    <label for="inputName">수정된 날짜</label>
                                    <input type="text" class="form-control" id="inputName" name="a_udate" 
                                    value='<fmt:formatDate pattern = "yyyy/MM/dd" value="${album_a_udate}"/>' readonly="readonly"/>
                                </div> 
                               --%>
                                <div class="form-group">
                                    <button type="button" id="listBtn"   class="btn btn-success btn-lg float-right">목록</button>
                                    <button type="submit" id="updateBtn" class="btn btn-success btn-lg float-right">수정</button>
                                    <button type="button" id="deleteBtn" class="btn btn-danger btn-lg float-right">삭제</button> 
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!--/row-->

        </div>
        <!--/col-->
    </div>
    <!--/row-->
</div>
<!--/container-->

 <hr class="mt-2 mb-5">
 <%@include file="../includes/footer.jsp" %>

  <!-- Bootstrap core JavaScript -->
  <script src="<%=cp%>/resources/album/list/vendor/jquery/jquery.min.js"></script>
  <script src="<%=cp%>/resources/album/list/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script>
		$(document).ready(function(){
			
			var form = $("form");
			
			$("#listBtn").on("click",function(){
				
				self.location="/mypet/album/list";
				
			});
			
			$("#deleteBtn").on("click",function(){
				form.attr("action","/mypet/album/remove");
				form.submit();
			});
			
		})
	
	</script>

</body>

</html>
