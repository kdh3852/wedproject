<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
  }
  .portfolio{
  	padding-top:3rem;
  	padding-bottom:4.5rem;
  }
  .divider-custom{
  	margin: 1.25rem 0 1.5rem;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .portfolio-item{
  	margin-bottom:30px;
  }

</style>
<title>개냥이</title>
</head>
<body>

<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://movie-phinf.pstatic.net/20201210_54/1607581837036t3jau_JPEG/movie_image.jpg" width="0" height="600">
      <div class="carousel-caption">
        <h3>최신영화</h3>
        
      </div>   
    </div>
    <div class="carousel-item">
      <img src="https://movie-phinf.pstatic.net/20201116_276/1605491658399poUOC_JPEG/movie_image.jpg"  width="0" height="600">
      <div class="carousel-caption">
        <h3>최신영화</h3>
        
      </div>   
    </div>
    <div class="carousel-item">
      <img src="https://movie-phinf.pstatic.net/20201111_193/1605056611896fc6Ef_JPEG/movie_image.jpg" width="0" height="600">
      <div class="carousel-caption">
        <h3>최신영화</h3>
        
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
<section class="page-section portfolio" id="portfolio">
    <div class="container">
        <div class="text-center">
            <h2 class="page-section-heading text-secondary mb-0 d-inline-block"></h2>
        </div>
        <div class="divider-custom">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
            <div class="divider-custom-line"></div>
        </div>
		    <div class="row">
		      <div class="col-lg-4 mb-4">
		        <div class="card h-100">
		          <h4 class="card-header"></h4>
		          <div class="card-body">
		            <p class="card-text">리뷰 게시판</p>
		          </div>
		          <div class="card-footer">
		            <a href="mList.jsp" class="btn btn-primary">게시판으로 가기</a>
		          </div>
		        </div>
		      </div>
		      <div class="col-lg-4 mb-4">
		        <div class="card h-100">
		          <h4 class="card-header"></h4>
		          <div class="card-body">
		            <p class="card-text">자유게시판</p>
		          </div>
		          <div class="card-footer">
		            <a href="mList.jsp" class="btn btn-primary">자유게시판으로 가기</a>
		          </div>
		        </div>
		      </div>
		      <div class="col-lg-4 mb-4">
		        <div class="card h-100">
		          <h4 class="card-header"></h4>
		          <div class="card-body">
		            <p class="card-text">마이페이지</p>
		          </div>
		          <div class="card-footer">
		            <a href="mypage.jsp" class="btn btn-primary">마이페이지으로 가기</a>
		          </div>
		        </div>
		      </div>
		    </div><br><br><br>


		    </div>

    </section>
</body>
</html>