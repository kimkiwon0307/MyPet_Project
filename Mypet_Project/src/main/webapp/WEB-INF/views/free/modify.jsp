<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp" %>


<div class="container">
  <br/>
  <h5>수정 페이지</h5>
 
 <hr>           
  <form action="/mypet/free/modify" method="post" id="form" name="formform">
 
  <input type="hidden" id="f_no" name='f_no' value='<c:out value="${free.f_no }"/>'>
  
  <div class="form-group">
    <label>제목</label>
    <input type="text" class="form-control"  name='f_title' value='<c:out value="${free.f_title}"/>'>
  </div>
  
   <div class="form-group">
    <label>내용</label>
    <textarea class="form-control" rows="10" name='f_content' > <c:out value="${free.f_content}"/>  </textarea>
  </div>
  
   <div class="form-group">
    <label>작성자</label>
    <input type="text" class="form-control"  name='f_writer' value='<c:out value="${free.f_writer}"/>' readonly="readonly">
  </div>
  
<!--   <div class="form-group">
    <label class="form">첨부 자료 </label>
     <input type="file" class="form-control-file border" id="f_file">
  </div> -->
  
  <button type="submit" class="btn btn-outline-danger" id="btn_modify">수정</button>
  <button type="submit" class="btn btn-outline-success" id="btn_list">목록</button>
  <button type="submit" class="btn btn-outline-success" id="btn_delete">삭제</button>
  
  <input type="hidden" name="pageNum" value = "${cri.pageNum}"/>
  <input type="hidden" name="amount" value = "${cri.amount}"/>
  
</form>
</div>

<%@include file="../includes/footer.jsp" %>

<script>
	
	$(document).ready(function(){
			
			var f_no = $("#f_no").val();
			
			var form = document.formform;
			var pageNum = ${cri.pageNum};
			var amount = ${cri.amount};
			
		
		$('button').on("click",function(e){
			
			e.preventDefault();
		
			var id = $(this).attr("id");
			
			if(id === 'btn_list'){
				self.location= "/mypet/free/list?pageNum=" + pageNum + "&amount=" + amount;
				return;
			
			}else if(id === 'btn_delete'){
				
				form.action = "/mypet/free/remove";
			
			}
			
			form.submit();
			
		});
		
	});

</script>
</body>
</html>
