<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp" %>
 
<!DOCTYPE html>
<html>
<head>



<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<br><br><br><br>
<div class="row justify-content-center">
     <div class="col-md-8">
         <div class="card">
              <div class="card-header">회원가입</div>
                    <div class="card-body">
                         <form class="form-horizontal" method="post" action="/mypet/member/register" id="memberRegForm">
                                <div class="form-group">
                                   <label for="name" class="cols-sm-2 control-label">아이디(ID)</label>
                                      <div class="cols-sm-10">
                                         <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                               <input type="text" class="form-control" name="m_id" id="m_id" placeholder="아이디를 적어주세요." />
                                               <button type="button" id="idChkBtn">중복체크</button>
                                            </div>
                                        </div>
                                    </div>
                                 
                                    <div class="form-group">
                                        <label for="password" class="cols-sm-2 control-label">비밀번호(Password)</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <input type="password" class="form-control" name="m_pass" id="m_pass" placeholder="비밀번호를 적어주세요." />
                                            </div>
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label for="confirm" class="cols-sm-2 control-label">비밀번호 확인 (Confirm Password)</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                                <input type="password" class="form-control" name="m_passconfirm" id="m_passconfirm" placeholder="비밀번호를 다시 적어주세요." />
                                            </div>
                                        </div>
                                    </div> 
                                    <div class="form-group ">
                                        <button type="button" id="memberRgtBtn" class="btn btn-primary btn-lg btn-block login-button">가입하기</button>
                                    </div>
                                    <div class="login-register">
                                        <a href="/mypet/member/login">로그인</a>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
</div>
<%@include file="../includes/footer.jsp" %>
</body>

<script>
		$(document).ready(function(){
			
			$("#memberRgtBtn").on("click",function(e){
				
				
				e.preventDefault();
				
				if($("#m_id").val() == ""){
					
					alert("아이디를 입력해주세요.");
					
					return false;
				}
				if($("#m_email").val() == ""){
					
					alert("이메일을 입력해주세요.")
					return false;
				}
				
				 
				if($("#m_pass").val() != $("#m_passconfirm").val()){
					
					alert("두비밀번호가 다릅니다.");
					return false;
				} 
				
				
				 $("#memberRegForm").submit();
				
			})
				
			
				 $("#idChkBtn").on("click",function(){
				    	
				    	$.ajax({
							
							url : "/mypet/member/idChk",
							type : "post",
							dataType : "json",
							data : $("#memberRegForm").serializeArray(),
							success : function(data){
								
								if(data == 1){
									alert("중복된 아이디 입니다.");
									console.log(data);
								
									return;
								}else{
									alert("가입 가능한 아이디 입니다.");
								}
							}
				    })
				})
			})
			    
			   
</script>
</html>