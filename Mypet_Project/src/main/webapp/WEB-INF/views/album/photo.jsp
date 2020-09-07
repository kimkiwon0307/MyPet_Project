<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../includes/header.jsp" %>

<!DOCTYPE html>
<html lang="en">
    <head>
       <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
       <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
       
       <!-- lightbox - css -->
		<link href="<%=cp%>/resources/album/alist/css/alist.css" rel="stylesheet">
	   <!--  lightbox - js -->
	    <script src="<%=cp %>/resources/album/alist/js/alist.js"></script>  
        
        <title>LightGallery</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/lightgallery/1.3.9/css/lightgallery.min.css" rel="stylesheet">
        <style>body{background-color:#152836}h2{color:#fff;margin-bottom:40px;text-align:center;font-weight:100;}</style>
      
        <!-- font -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
        
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
    <body class="home">
    	
    	 <!-- 헤더  -->
  <div id="header" style="border:solid;height:400px;background-image: url(https://cdn.pixabay.com/photo/2018/10/05/18/05/dachshund-3726491__340.jpg);">
  </div>
    
    
        <div class="container" style="margin-top:40px;">
            <div class="demo-gallery">
                <ul id="lightgallery" class="list-unstyled row">
                    <li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/1-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/1-1600.jpg" data-sub-html="<h4>Fading Light</h4><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-1.jpg">
                        </a>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/2-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/2-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-2.jpg">
                        </a>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/13-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/13-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-13.jpg">
                        </a>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/4-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/4-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-4.jpg">
                        </a>
                    </li>
    				<li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/1-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/1-1600.jpg" data-sub-html="<h4>Fading Light</h4><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-1.jpg">
                        </a>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/2-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/2-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-2.jpg">
                        </a>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/13-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/13-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-13.jpg">
                        </a>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/4-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/4-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-4.jpg">
                        </a>
                    </li>
    				<li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/2-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/2-1600.jpg" data-sub-html="<h4>Fading Light</h4><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-2.jpg">
                        </a>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/1-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/1-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-1.jpg">
                        </a>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/2-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/2-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-2.jpg">
                        </a>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/13-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/13-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-13.jpg">
                        </a>
                    </li>
    				<li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/4-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/4-1600.jpg" data-sub-html="<h4>Fading Light</h4><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-4.jpg">
                        </a>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/1-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/1-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-1.jpg">
                        </a>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/2-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/2-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-2.jpg">
                        </a>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/13-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/13-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-13.jpg">
                        </a>
                    </li>
    				<li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/4-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/4-1600.jpg" data-sub-html="<h4>Fading Light</h4><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-4.jpg">
                        </a>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/1-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/1-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-1.jpg">
                        </a>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/2-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/2-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-2.jpg"> 
                        </a>
                    </li>
                    <li class="col-xs-6 col-sm-4 col-md-2 col-lg-2" data-responsive="https://sachinchoolur.github.io/lightgallery.js/static/img/13-1600.jpg" data-src="https://sachinchoolur.github.io/lightgallery.js/static/img/13-1600.jpg" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                        <a href="">
                            <img class="img-responsive" src="https://sachinchoolur.github.io/lightgallery.js/static/img/thumb-13.jpg">
                        </a>
                    </li>
                </ul>
            <button id="uphoto">수정하기</button>
            </div>
        </div>
        
        <%@include file="../includes/footer.jsp" %>
        <script>
             

            $(document).ready(function(){
                $('#lightgallery').lightGallery(); 
                
            	alert("${photo}");
                
                $('#uphoto').on("click",function(){
                	
                	self.location = "/mypet/album/list";
                	
                });
            
                
            });
            
            
        </script>
    </body>    
</html>