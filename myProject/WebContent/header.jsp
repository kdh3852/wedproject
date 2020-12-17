<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="cs.dit.dao.*" %>
<%@ page import="java.io.PrintWriter" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<style>
.navbar {
	min-height: 10px;
}

.nav {
	font-size: 10px;
	color: gray;
}

.jumbotron {
	background-color: #FFFFFF;
	margin-bottom: 0;
}

.nav-item {
	font-size: 12px;
}

.dropdown:hover>.dropdown-menu {
	display: block;
}

.dropdown-toggle::after {
	display: none;
}

.main_menu ul {
	text-align: center;
}

.main_menu ul li {
	display: inline-block;
}

@media all and (min-width: 992px) {
	.navbar {
		padding-top: 0;
		padding-bottom: 0;
	}
	.navbar .has-megamenu {
		position: static !important;
	}
	.navbar .megamenu {
		left: 0;
		right: 0;
		width: 100%;
		padding: 20px;
	}
	.navbar .nav-link {
		padding-top: 1rem;
		padding-bottom: 1rem;
	}
}
</style>
<title>영화게시판</title>
</head>
<body>
	<!-- =============================== 상단 바 ==============================  -->
	<nav class="navbar navbar-expand-md py-0 navbar-light bg-light">

		<!--  중앙정렬 -->
		<div class="container">

			<!-- 브랜드 로고 -->
			<a class="navbar-brand" href="Main_Index.jsp"> <img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20110508_133%2Fstar7sss_1304818742727SqYpj_JPEG%2F%25C1%25A6%25B8%25F1_%25BE%25F8%25C0%25BD.jpg&type=sc960_832" 
				      alt="logo" style="width: 40px;">
			</a>

			<!-- 반응형 버튼 -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- 좌측 네비게이션 모음 -->
			<div
				class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2"
				id="collapsibleNavbar">
				<ul class="navbar-nav mr-auto">
					<%
						String id = (String) session.getAttribute("id");
						if (id == null) {
					%>
					<li class="nav-item py-0">
						<a class="nav-link" href="login.jsp">로그인</a>
					</li>
					<li class="nav-item py-0">
						<a class="nav-link"	href="membership.jsp">회원가입</a>
					</li>
					<%
						} else {
					%>
					<li class="nav-item py-0">
						<a class="nav-link"><%=request.getSession().getAttribute("id")%>님 환영합니다!!</a>
					</li>
					<li class="nav-item py-0">
						<a class="nav-link" href="logout.jsp">로그아웃</a>
					</li>
					<li class="nav-item py-0">
						<a class="nav-link"	href="mList.jsp">영화 리뷰게시판</a>
					</li>
					<li class="nav-item py-0">
						<a class="nav-link" href="mypage.jsp">마이페이지</a>
					</li>
					<li class="nav-item py-0">
						
					<%
						}
					%>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 이상 상단 바  -->

	<!-- ================================ 점보트론 ==================================== -->
	<div class="jumbotron jumbotron-fluid"
		style="margin-bottom: 0; background: #ffffff">
		<!-- 텍스트 중앙정렬 -->
		<div class="row text-center" style="width: 100%">
			<div style="width: 30%; float: none; margin: 0 auto;">
				<div class="container">
					<h1>
						
					</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- 이상 점보트론 -->

</body>
</html>