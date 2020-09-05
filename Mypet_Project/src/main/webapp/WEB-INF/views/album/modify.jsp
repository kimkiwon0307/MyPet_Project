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

  <div id="header" style="border:solid;height:350px;background-image:url(https://cdn.pixabay.com/photo/2017/04/11/15/55/animals-2222007__340.jpg);">
  </div>


<div class="container py-5">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card border-secondary">
                        <div class="card-header">
                            <h3 class="mb-0 my-2">Album Register</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" role="form" action="<%=cp%>/album/register" method="post" >
                                <div class="form-group">
                                    <label for="inputName">표지</label>
                      <input type="text" class="form-control" id="inputName" name="a_photo" value='<c:out value="${album.a_photo}"/>' >
                                </div>
                                 <div class="form-group">
                                    <label for="inputName">제목</label>
                                    <input type="text" class="form-control" id="inputName" name="a_title" value='<c:out value="${album.a_title}"/>'>
                                </div>
                                 <div class="form-group">
                                    <label for="inputName">내용</label>
                                    <input type="text" class="form-control" id="inputName" name="a_content" value='<c:out value"${album.a_content}"/>'> 
                                </div>
                              <!--   <div class="form-group">
                                    <label for="inputEmail3">Email</label>
                                    <input type="text" class="form-control" id="inputEmail3" placeholder="email@gmail.com" required="">
                                </div> -->
                               <!--  <div class="form-group">
                                    <label for="inputPassword3">Password</label>
                                    <input type="password" class="form-control" id="inputPassword3" placeholder="password" title="At least 6 characters with letters and numbers" required="">
                                </div>
                                <div class="form-group">
                                    <label for="inputVerify3">Verify</label>
                                    <input type="password" class="form-control" id="inputVerify3" placeholder="password (again)" required="">
                                </div> -->
                                <div class="form-group">
                                    <button type="submit" class="btn btn-success btn-lg float-right">등록</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!--/row-->

        </div>
        <!--/col-->
    </div>
    <!--/row-->
</div>
<!--/container-->

 
 <%@include file="../includes/footer.jsp" %>

  <!-- Bootstrap core JavaScript -->
  <script src="<%=cp%>/resources/album/list/vendor/jquery/jquery.min.js"></script>
  <script src="<%=cp%>/resources/album/list/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
