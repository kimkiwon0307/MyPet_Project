<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp" %>



<div class="container">
  <br/>
  <h5>FreeBoard </h5> 
  <c:if test="${member != null}" >
	  <button id='regBtn' type="button" class="btn btn-outline-dark btn-sm" style="float:right; margin-top: -34px;">글쓰기</button>
  </c:if>
 <hr>           
  <table class="table" style="text-align: center;">
    <thead>
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>날짜</th>
        <th>조회</th>
        <!-- <th>추천</th> -->
      </tr>
    </thead>
    <tbody>
   <c:forEach items="${list}" var="free">
      <tr>
        <td><c:out value="${free.f_no}"/></td>
        <td><a class='move' href='<c:out value="${free.f_no}"/>'><c:out value="${free.f_title}"/></a></td>
        <td><c:out value="${free.f_writer}"/></td>
        <td><fmt:formatDate pattern="yyyy.MM.dd" value="${free.f_date}"/></td>
        <td><c:out value="${free.f_count }"/></td>
       <%--  <td><c:out value="${free.f_recomend }"/></td> --%>
      </tr>
   </c:forEach>
    </tbody>
  </table>
   <br><br>
  <!-- 검색 폼 -->
  
  <div class='row' style="width: 100%;float: left;text-align: center;">
  	<div class="col-lg-12" style="display: inline-block;">
  		
  		<form id='searchForm' action="/mypet/free/list" method='get'>
  			<select name='type' id='searchSelected'>
  				<option value=""
  					<c:out value="${pageMaker.cri.type == null ? 'selected':'' }"/>>--</option>
  				<option value="T"
  					<c:out value="${pageMaker.cri.type eq 'T' ? 'selected':''}"/>>제목</option>
  				<option value="W"
  					<c:out value="${pageMaker.cri.type eq 'W' ? 'selected':''}"/>>작성자</option>
  			</select>
  			
  			<input type='text' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>'/>
  			<input type='hidden' name='pageNum' value=1>
  			<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
  			<button class='btn btn-outline-dark' >검색</button>
  		</form>
  	
  	</div>
  </div>
  <!-- /검색 폼-->
  <br>  <br>  <br>

  <!-- 페이징 -->
 <div style="width: 100%;float: left;text-align: center;">
  <div class="row" style="display: inline-block;">
   <ul class="pagination">
   	<c:if test="${pageMaker.prev}">
  	  <li class="page-item"><a class="page-link" href="${pageMaker.startPage-1}">Previous</a></li>
   	</c:if>
    
   	<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
    	<li class="page-item ${pageMaker.cri.pageNum == num ? "active":""}"> 
    		<a class="page-link" href="${num}" >${num}</a></li>
   	</c:forEach>
   
   <c:if test="${pageMaker.next}">
    <li class="page-item"><a class="page-link" href="${pageMaker.endPage+1 }">Next</a></li>
   </c:if>
 
  </ul>
  </div>
 </div>
  <!-- /페이징 -->
  
  <form id ='actionForm' action="/mypet/free/list" method='get'>
  		<input type='hidden' id='pageNum' name='pageNum' value='${pageMaker.cri.pageNum}'>
  		<input type='hidden' id='amount'  name='amount' value='${pageMaker.cri.amount }'>
  </form>
  
  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">MyPet</h4>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
                           게시글이 등록 되었습니다.
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
        </div>
        
      </div>
    </div>
  </div>
</div>


<%@include file="../includes/footer.jsp" %>
<script>
	
	$(document).ready(function(){
		
		var result= '<c:out value="${result}"/>'; // 컨트롤러에서 넘겨주는 result를 자바스크립트 변수에 담는다.
		
		var actionForm = $("#actionForm");
		
		$(".move").on("click",function(e){
			
			e.preventDefault();
			actionForm.append("<input type='hidden' name='f_no' value='"+ $(this).attr("href")+"'>");
			actionForm.attr("action","/mypet/free/get");
			actionForm.submit();
		})
		
		
		$(".page-item a").on("click",function(e){
			
			e.preventDefault();
			
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
       
		
		$('#regBtn').on("click",function(){
				
				self.location="/mypet/free/register";
				
			});
		
		$("#searchForm button").on("click",function(e){
			 
			
			if($("#searchSelected option:selected").val() == ''){
				alert("검색 종류를 입력하세요");
				
				return false;
			}
			
			
			e.preventDefault();
			
			searchForm.submit();
			
		
			
		});
		
		
		modalCheck(result);  // 모달체크 함수 실행
		
		history({},null,null);
		
		function modalCheck(result){
			
			if(result === '' || history.state ){   // 컨트롤러에서 받아온 result 값이 아무것도 없으면 리턴
				return;
			}
			
			if(result === 'ok'){     // 컨트롤러에서 받아온 result값이 'ok'면 modalbody에 html 추가
				$(".modal-body").html("게시글이 등록되었습니다.");
			}
			
			$("#myModal").modal();  // 모달창 실행
		};
		
	
	});

</script>


</body>
</html>
