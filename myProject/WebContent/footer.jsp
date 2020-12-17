<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
	.footer{
	  background: #152F4F;
	  color:white;
	  .links{
	    li a{
	      color: white;
	      transition: color .2s;
	      &:hover{
	        text-decoration:none;
	        color:#4180CB;
	        }
	    }
  }  
  .about-company{
	  i{font-size: 25px;}
	  a{
	    color:white;
	    transition: color .2s;
	    &:hover{color:#4180CB}
	  }
  } 
  .location{
    i{font-size: 18px;}
  }
  .copyright p{border-top:1px solid rgba(255,255,255,.1);} 
}
li{
	list-style: none;
}
</style>
</head>
<body>
<div class="mt-5 pt-5 pb-5 footer">
<div class="container">
  <div class="row">
    <div class="col-lg-5 col-xs-12 about-company">
      <h2>Heading</h2>
      <p class="pr-5 text-white-50">영화 리뷰하는 곳 </p>	
      <p><a href="#"><i class="fa fa-facebook-square mr-1"></i></a><a href="#"><i class="fa fa-linkedin-square"></i></a></p>
    </div>
    <div class="col-lg-3 col-xs-12 links">
      <h4 class="mt-lg-0 mt-sm-3">영화 리뷰</h4>   
    </div>
    
  </div>
  <div class="row mt-5">
    <div class="col copyright">
      <p class=""><small class="text-white-50">© 2020. All Rights Reserved.</small></p>
    </div>
  </div>
</div>
</div>
</body>
</html>