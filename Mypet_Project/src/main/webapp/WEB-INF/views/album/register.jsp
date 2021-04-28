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
	<br>
	<br>
	   <form name="fileForm" action="requestupload2" method="post" enctype="multipart/form-data">
        <input multiple="multiple" type="file" name="file" />
        <input type="text" name="src" />
        <input type="submit" value="전송" />
    </form>



   

</div>

<%@include file="../includes/footer.jsp" %>

</body>
</html>
