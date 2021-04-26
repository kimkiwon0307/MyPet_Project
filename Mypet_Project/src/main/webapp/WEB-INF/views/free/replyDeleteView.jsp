<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://cdn.ckeditor.com/ckeditor5/27.0.0/classic/ckeditor.js"></script>

<div class="container">
	<br />
	  <h5>댓글 삭제 페이지</h5>

	<hr>
			<div class="container">
				<form id="deleteForm" method="post" action="/mypet/free/replyDelete"  >
					<input type="hidden" id="f_no" name="f_no" value="${replyDelete.f_no}" />
		   		 <input type="hidden" id="pageNum" name="pageNum" value="${cri.pageNum}" />
		   		 <input type="hidden" id="amount" name="amount" value="${cri.amount}" />
		   		 <input type="hidden" id="rno" name="rno" value="${replyDelete.rno}" /> 
			<div>
				<label>삭제 하시겠습니까?</label>
			
						<button type="submit" id ="delete_btn">삭제</button>
						<button type="button" id ="cancel_btn">취소</button>
					</div>
				</form>
			</div>
			<hr />
		</div>
		
		<%@include file="../includes/footer.jsp" %>

<script>

$(document).ready(function(){

	var f_no = '<c:out value="${replyDelete.f_no}"/>';
	var pageNum = ${cri.pageNum};
	var amount = ${cri.amount}; 	
	
	
	$("#cancel_btn").on("click",function(){
		
		self.location="/mypet/free/get?pageNum="+pageNum+ "&amount="+ amount+ "&f_no=" + f_no;
	
 })
})

</script>		
		
		
	</body>
</html>