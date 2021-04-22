<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	<title>게시판</title>
	</head>
	<body>
	
		<div id="root">
			<header>
				<h1> 게시판</h1>
			</header>
			<hr />
			 
			<div>
			
			</div>
			<hr />
			
			<section id="container">
			
				<form id="updateForm" method="post" action="/mypet/free/replyUpdate"  >
					<input type="hidden" id="f_no" name="f_no" value="${replyUpdate.f_no}" />
		   		 <input type="hidden" id="pageNum" name="pageNum" value="${cri.pageNum}" />
		   		 <input type="hidden" id="amount" name="amount" value="${cri.amount}" />
		   		 <input type="hidden" id="rno" name="rno" value="${replyUpdate.rno}" /> 
					<table>
						<tbody>
							<tr>
								<td>
									<label for="content">댓글 내용</label><input type="text" id="content" name="content" value="${replyUpdate.content}"/>
								</td>
							</tr>	
							
						</tbody>			
					</table>
					<div>
						<button type="submit" class="update_btn">저장</button>
						<button type="button" class="cancel_btn">취소</button>
					</div>
				</form>
			</section>
			<hr />
		</div>
	</body>

</html>