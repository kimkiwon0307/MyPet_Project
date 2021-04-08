<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.2.0/ekko-lightbox.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.2.0/ekko-lightbox.min.css" rel="stylesheet" />
<style>
.row {
  margin: 15px;
}
</style>

<div class="container">
  <br/>
  <h5>Album </h5> 
  <button id='regBtn' type="button" class="btn btn-outline-dark btn-sm" style="float:right; margin-top: -34px;">앨범</button>
 
 <hr> 
 
 <ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" href="#">메리</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/mypet/free/list">고양이</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">사자</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="#">Disabled</a>
  </li>
  
</ul>
           
 <div class="row">
    <a href="https://unsplash.it/1200/768.jpg?image=251" data-toggle="lightbox" data-gallery="gallery" class="col-md-4">
      <img src="https://unsplash.it/600.jpg?image=251" class="img-fluid rounded" style="margin-top:15px; border:solid 10px pink">
    </a>
       <a href="https://unsplash.it/1200/768.jpg?image=251" data-toggle="lightbox" data-gallery="gallery" class="col-md-4">
      <img src="https://unsplash.it/600.jpg?image=251" class="img-fluid rounded" style="margin-top:15px; border:solid 10px pink">
    </a>
      
         <a href="https://unsplash.it/1200/768.jpg?image=251" data-toggle="lightbox" data-gallery="gallery" class="col-md-4">
      <img src="https://unsplash.it/600.jpg?image=251" class="img-fluid rounded" style="margin-top:15px; border:solid 10px pink">
    </a>
      
         <a href="https://unsplash.it/1200/768.jpg?image=251" data-toggle="lightbox" data-gallery="gallery" class="col-md-4">
      <img src="https://unsplash.it/600.jpg?image=251" class="img-fluid rounded" style="margin-top:15px; border:solid 10px pink">
    </a>
      
         <a href="https://unsplash.it/1200/768.jpg?image=251" data-toggle="lightbox" data-gallery="gallery" class="col-md-4">
      <img src="https://unsplash.it/600.jpg?image=251" class="img-fluid rounded" style="margin-top:15px; border:solid 10px pink">
    </a>
      
         <a href="https://unsplash.it/1200/768.jpg?image=251" data-toggle="lightbox" data-gallery="gallery" class="col-md-4">
      <img src="https://unsplash.it/600.jpg?image=251" class="img-fluid rounded" style="margin-top:15px; border:solid 10px pink">
    </a>

 </div>
</div>

<%@include file="../includes/footer.jsp" %>

<script>
$(document).on("click", '[data-toggle="lightbox"]', function(event) {
	  event.preventDefault();
	  $(this).ekkoLightbox();
	});
</script>
</body>
</html>
