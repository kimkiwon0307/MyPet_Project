<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
 <!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">-->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://cdn.ckeditor.com/ckeditor5/27.0.0/classic/ckeditor.js"></script>

<style>

</style>
<div class="container">
	<br />
	  <h5>조회 페이지</h5>

	<hr>
	<div class="row">
		<div class="col" style="text-align: left;">
			<h2>
				<c:out value="${free.f_title}" />
			</h2>
		</div>
		<div class="col" style="text-align: right;">
			<button type="submit" id="list_btn" class="btn btn-outline-success">목록</button>
			<button type="submit" id="update_btn" class="btn btn-outline-danger">수정</button>

		</div>
	</div>
	<div class="row" style="background-color: #dee2e6; text-align: center;">
		<div class="col">
			<c:out value="${free.f_writer}" />
		</div>
		<div class="col">
			<fmt:formatDate pattern="yyyy/MM/dd" value="${free.f_date}" />
		</div>
		<div class="col">
			조회 : <c:out value="${free.f_count}" />
		</div>
		<div class="col">
			추천 : <c:out value="${free.f_recomend}" />
		</div>
	</div>
	<div class="row" style="height: 20px;"></div>
	<div>
		<c:out value="${free.f_content}" />
	</div>	

	<button id="recomend_btn" style="margin-left: 500px;" type="button"
		class="btn btn-outline-success">추천</button>





<!-- 
<div class="form-group">
    <label class="form">첨부 자료 </label>
     <input type="file" class="form-control-file border" id="f_file">
  </div> -->


	<!--  <button type="submit" class="btn btn-outline-dark" id="btn_complite">작성완료</button> -->

	
	<br> <br> <br> <br> <br> <br>

 
<div class="card mb-2" style="border-color:transparent;">
	<div class="card-header bg-light">
	        <i class="fa fa-comment fa"></i> Comment
	</div>
	<div class="card-body">
		<c:forEach items="${replyList}" var="replyList">
		<ul class="list-group list-group-flush">
		    <li class="list-group-item">
			<div class="form-inline mb-2">
				<label><i class="fa fa-user-circle-o fa-2x"> ${replyList.writer}</i></label>
               	&nbsp; &nbsp; &nbsp; &nbsp; 
                <label><i class="fa fa-unlock-alt fa-2x">
                		<fmt:formatDate value="${replyList.regdate}" pattern="yyyy-MM-dd"/>
                	</i></label>
			</div>
			
			<textarea class="form-control" 
			style="background-color:transparent; border: none; resize:none;focus " rows="2" readonly="readonly">${replyList.content}</textarea>
	<%-- 		
	<form id="replyUpdateForm" method="post" style="display:none">
  			
		   		 <input type="hidden" id="f_no" name="f_no" value="${free.f_no}" />
		   		 <input type="hidden" id="pageNum" name="pageNum" value="${cri.pageNum}" />
		   		 <input type="hidden" id="amount" name="amount" value="${cri.amount}" />
		   		 <input type="hidden" id="rno" name="rno" value="${replyList.rno}" />
					
				<textarea class="form-control" id="content" name="content" rows="3" >${replyList.content}</textarea>
				
	</form> --%>
	
	
				<button type="submit" class="replayUpdateBtn" data-rno="${replyList.rno}">수정</button>
				<button type="submit" id="replayDeleteBtn" data-rno="${replyList.rno}">삭제</button>
				<button type="submit" id="replyUpdateCompleteBtn" style="display:none">완료</button>
			
		    </li>
		</ul>
		</c:forEach>
			
		
	</div>
</div>

<form name="replyForm" method="post">
  <div class="card-body">
		<ul class="list-group list-group-flush">
		    <li class="list-group-item">
		    <input type="hidden" id="f_no" name="f_no" value="${free.f_no}" />
	
		<c:if test="${member != null}" >
			<div class="form-inline mb-2">
				<label for="replyId"><i class="fa fa-user-circle-o fa-2x"></i></label>
					<input type="text" class="form-control ml-2" value="${member.m_id}" id="writer" name="writer" readonly="readonly">
		
			</div>
			<textarea class="form-control" id="content" name="content" rows="3"></textarea>
			
			<button type="button" class="btn btn-dark mt-3" id="replyWriteBtn">댓글 작성</button>
		</c:if>
	
		<c:if test="${member == null}" >
			 <textarea class="form-control" id="content" name="content" rows="3"> 로그인후에 작성 가능합니다.</textarea>
		</c:if>
		    </li>
		</ul>
	</div>
</form>


			

</div>
<!-- container -->

<%@include file="../includes/footer.jsp"%>

<script type="text/javascript" src="/mypet/resources/js/reply.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		var f_no = '<c:out value="${free.f_no}"/>';
		var pageNum = ${cri.pageNum};
		var amount = ${cri.amount};
		
		$("#list_btn").on("click",function(){
			self.location = "/mypet/free/list?pageNum=" + pageNum + "&amount=" + amount;
		});
		

		$("#update_btn").on("click",function(){
		
			self.location = "/mypet/free/modify?f_no=" + f_no + "&pageNum=" + pageNum + "&amount=" + amount;
		});
		
	
		$("#recomend_btn").on("click",function(){
			
		
		});
		
		$("#replyWriteBtn").on("click", function(){
			  var formObj = $("form[name='replyForm']");
			  formObj.attr("action", "/mypet/free/replyWrite");
			  formObj.submit();
			});

		
		$(".replayUpdateBtn").on("click",function(e){
			
			console.log(this);
	
			location.href="/mypet/free/replyUpdateView?f_no=" + f_no + "&pageNum=" + pageNum + "&amount=" + amount + "&rno=" + $(this).attr("data-rno");
			
			
			
	/* 		
			$(this).prev().show()
			$(this).hide
			$(this).next().css("display","none");  // 댓글 삭제버튼 숨기기
			$(this).next().next().css("display","inline");
			e.preventDefault();
 */
			
		});
		
		
	});

</script>
<script src="${pageContext.request.contextPath}/resources/common/js/ckeditor.js"></script>

</body>
</html>
