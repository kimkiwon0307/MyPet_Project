<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% String cp = request.getContextPath(); %>
<%--ContextPath 선언 --%>
<%-- <c:url var='root' value='/'></c:url>  이거 쓰면 jssession 붙음--%>
<c:set var='root' value="${pageContext.request.contextPath }" />


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<!-- Bootstrap core CSS -->
<link href="<%=cp%>/resources/album/list/vendor/bootstrap/css/bootstrap.min.css"rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=cp%>/resources/album/list/css/business-frontpage.css"
	rel="stylesheet">
<!-- font -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">

<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<style>

div {
	font-family: "Sofia";
	font-size: 22px;
}

body {
	background-color: antiquewhite;
}
</style>

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">MyPet</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<%--   <li class="nav-item active">
            <a class="nav-link" href="${root}">홈
              <span class="sr-only">(current)</span>
            </a> --%>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="<%=cp%>/album/list">앨범</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<%=cp%>/free/list">자유</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<%=cp%>/question/list">질문</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<%=cp%>/user/login">로그인</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<%=cp%>/user/register">회원가입</a></li>
				</ul>
			</div>
		</div>
	</nav>