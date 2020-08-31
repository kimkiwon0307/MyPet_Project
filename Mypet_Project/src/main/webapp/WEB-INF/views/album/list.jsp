<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp" %>

  <!-- Page Content -->
  <div class="container">

  <h1 class="font-weight-light text-center text-lg-left mt-4 mb-0">Album List</h1>
  <a href="${root}album/register">앨범 등록</a>
  <hr class="mt-2 mb-5">

  <div class="row text-center text-lg-left">
 
 <c:forEach items="${album}" var="album">
    <div class="col-lg-3 col-md-4 col-6">
      <a href="${root}album/photo" class="d-block mb-4 h-100">
      <div><c:out value='${album.a_title}'/></div>
            <img class="img-fluid img-thumbnail" src = "<c:out value='${album.a_title}'/>" alt="">
         </a>
    </div>
 </c:forEach>
  </div>

</div>
<hr class="mt-2 mb-5">
 <%@include file="../includes/footer.jsp" %>

  <!-- Bootstrap core JavaScript -->
  <script src="<%=cp%>/resources/album/list/vendor/jquery/jquery.min.js"></script>
  <script src="<%=cp%>/resources/album/list/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
