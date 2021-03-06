<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>MyPet</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  </style>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="#">MyPet</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
    <!--   <li class="nav-item">
        <a class="nav-link" href="/mypet/album/list">Album</a>
      </li> -->
      <li class="nav-item">
        <a class="nav-link" href="/mypet/free/list">FreeBoard</a>
      </li>
      <li class="nav-item">
        	<c:if test="${member != null}" > <a class="nav-link" href="/mypet/member/logout">Logout</a></c:if>
        	<c:if test="${member == null}">  <a class="nav-link" href="/mypet/member/login">Login</a></c:if>
      </li> 
      <li class="nav-item">
      		<a class="nav-link" href="#"><c:if test="${member != null }">${member.m_id} 님 안녕하세요.</c:if></a>
      </li>
    </ul>
  </div>  
</nav>
