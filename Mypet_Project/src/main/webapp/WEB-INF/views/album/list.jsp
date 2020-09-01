<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp" %>
<!-- font -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
 <!-- Header -->
<style>
div {
  font-family: "Sofia";
  font-size: 22px;
}
</style>


  <div id="header" style="border:solid;height:400px;background-image: url(https://cdn.pixabay.com/photo/2018/10/05/18/05/dachshund-3726491__340.jpg);">
  </div>
	
  <!-- Page Content -->
  <div class="container">

  <h1 class="font-weight-light text-center text-lg-left mt-4 mb-0">Album List</h1>
  <hr class="mt-2 mb-5">


  <div class="row text-center text-lg-left">
 
 <c:forEach items="${album}" var="album">
    <div class="col-lg-3 col-md-4 col-6" style="border: solid 1px;text-align: center; margin-top:20px; margin-rigth:20px">
     <div><a href="${root}album/photo" class="d-block mb-4 h-100">
            <img class="img-fluid img-thumbnail" 
            src = "https://cdn.pixabay.com/photo/2016/01/05/17/51/dog-1123016__340.jpg" alt=""
            style="height: 165px;border: solid; margin-top:10px">
        </a></div>
      <div style="border-top: solid;text-align: center;"><c:out value='${album.a_title}'/></div>
    </div>
 </c:forEach>
 
  <div id="add_Album" style="border: solid 1px;text-align: center; margin-top:20px; margin-rigth:20px; width:285px">
  <a href="${root}album/register"><img class="img-fluid img-thumbnail" src = "https://cdn.pixabay.com/photo/2016/01/05/17/51/dog-1123016__340.jpg" alt=""
            style="height: 165px;border: solid; margin-top:35px"></a>
   </div>
  </div>
</div>
<hr class="mt-2 mb-5">
  <%@include file="../includes/footer.jsp" %>

  <!-- Bootstrap core JavaScript -->
  <script src="<%=cp%>/resources/album/list/vendor/jquery/jquery.min.js"></script>
  <script src="<%=cp%>/resources/album/list/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 
</body>

</html>
