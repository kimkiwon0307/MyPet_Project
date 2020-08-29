<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp" %>

  <!-- Page Content -->
  <div class="container">

  <h1 class="font-weight-light text-center text-lg-left mt-4 mb-0">Album Register</h1>

  <hr class="mt-2 mb-5">

  <div class="row text-center text-lg-left">
 
<form>
  <div class="form-group">
    <label for="exampleFormControlFile1">앨범 표지 </label>
    <input type="file" class="form-control-file" id="exampleFormControlFile1">
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1">앨범 제목</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <div class="form-group">
    <label for="exampleFormControlFile1">Example file input</label>
    <input type="file" class="form-control-file" id="exampleFormControlFile1">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
  </div>

</div>


<hr class="mt-2 mb-5">
 
 <%@include file="../includes/footer.jsp" %>

  <!-- Bootstrap core JavaScript -->
  <script src="<%=cp%>/resources/album/list/vendor/jquery/jquery.min.js"></script>
  <script src="<%=cp%>/resources/album/list/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
