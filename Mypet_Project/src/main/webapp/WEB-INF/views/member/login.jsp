<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header_notjumbo.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style>
:root {
  --input-padding-x: 1.5rem;
  --input-padding-y: 0.75rem;
}

.login,
.image {
  min-height: 100vh;
}

.bg-image {
  background-image: url('https://i.pinimg.com/474x/39/a7/59/39a7597e7c3ed5a4ddc7206760082714.jpg');
  background-size: cover;
  background-position: center;
}

.login-heading {
  font-weight: 300;
}

.btn-login {
  font-size: 0.9rem;
  letter-spacing: 0.05rem;
  padding: 0.75rem 1rem;
  border-radius: 2rem;
}

.form-label-group {
  position: relative;
  margin-bottom: 1rem;
}

.form-label-group>input,
.form-label-group>label {
  padding: var(--input-padding-y) var(--input-padding-x);
  height: auto;
  border-radius: 2rem;
}

.form-label-group>label {
  position: absolute;
  top: 0;
  left: 0;
  display: block;
  width: 100%;
  margin-bottom: 0;
  /* Override default `<label>` margin */
  line-height: 1.5;
  color: #495057;
  cursor: text;
  /* Match the input under the label */
  border: 1px solid transparent;
  border-radius: .25rem;
  transition: all .1s ease-in-out;
}

.form-label-group input::-webkit-input-placeholder {
  color: transparent;
}

.form-label-group input:-ms-input-placeholder {
  color: transparent;
}

.form-label-group input::-ms-input-placeholder {
  color: transparent;
}

.form-label-group input::-moz-placeholder {
  color: transparent;
}

.form-label-group input::placeholder {
  color: transparent;
}

.form-label-group input:not(:placeholder-shown) {
  padding-top: calc(var(--input-padding-y) + var(--input-padding-y) * (2 / 3));
  padding-bottom: calc(var(--input-padding-y) / 3);
}

.form-label-group input:not(:placeholder-shown)~label {
  padding-top: calc(var(--input-padding-y) / 3);
  padding-bottom: calc(var(--input-padding-y) / 3);
  font-size: 12px;
  color: #777;
}

/* Fallback for Edge
-------------------------------------------------- */

@supports (-ms-ime-align: auto) {
  .form-label-group>label {
    display: none;
  }
  .form-label-group input::-ms-input-placeholder {
    color: #777;
  }
}

/* Fallback for IE
-------------------------------------------------- */

@media all and (-ms-high-contrast: none),
(-ms-high-contrast: active) {
  .form-label-group>label {
    display: none;
  }
  .form-label-group input:-ms-input-placeholder {
    color: #777;
  }
}

</style>

</head>

<body>
	<div class="container-fluid">
  <div class="row no-gutter">
    <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
    <div class="col-md-8 col-lg-6" style="background-color: antiquewhite;">
      <div class="login d-flex align-items-center py-5">
        <div class="container">
          <div class="row">
            <div class="col-md-9 col-lg-8 mx-auto">
              <h2 class="login-heading mb-4">환영합니다!</h2>
              <form action="/mypet/member/login" method="post" id="loginForm">
                <div class="form-label-group">
                  <input type="text" id="m_id" name="m_id" class="form-control" autofocus>
                  <label>아이디를 적어주세요</label>
                </div>

                <div class="form-label-group">
                  <input type="password" id="m_pass" name="m_pass" class="form-control" >
                   <label>비밀번호를 적어주세요</label>
                </div>

              <!--   <div class="custom-control custom-checkbox mb-3">
                  <input type="checkbox" class="custom-control-input" id="customCheck1">
                  <label class="custom-control-label" for="customCheck1"></label>
                </div> -->
                <button id="signBtn" class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Sign in</button>
                <div class="text-center">
                  <a class="small" href="/mypet/member/register">회원가입</a></div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script>
	$(document).ready(function(){
		
		$("#signBtn").on("click",function(e){
			
			
			e.preventDefault();
			
		 	$.ajax({
				
				url : "/mypet/member/passChk",
				type : "post",
				dataType : "json",
				data : $("#loginForm").serializeArray(),
				success : function(data){
					
					if(data == 0){
						alert("패스워드가 틀렸습니다.");
						console.log(data);
					
						return;
					}
						
					$("#loginForm").submit();	
				}
				
				
			}) 
			
		});
		
	});

</script>

</body>
</html>
