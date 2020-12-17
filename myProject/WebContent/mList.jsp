<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>  
<%@ page import = "cs.dit.bdao.*, cs.dit.bdto.*, java.util.List, java.sql.Date" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<title>게시판</title>
</head>
<body>
<header>
			<jsp:include page='header.jsp' flush='false'/>
	</header>
<div class="container">
	<h2>글 목록</h2>
	<br/>
	<table class="table table-striped table-hover">
		<tr>
			
			<th>제목</th>
			<th>작성자</th>
			<th>내용</th>
			<th>날짜</th>
		</tr>
	<c:forEach var="dto" items = "${dtos}">
		<tr>
			<td><a href="view.do?title=${dto.title}">${dto.title}</a></td>
			<td>${dto.writer}</td>
			<td>${dto.content}</td>
			<td><fmt:formatDate value="${dto.joinDate}"/></td>
		</tr>
	</c:forEach>
	</table>
	<input type="button" value ="홈으로" onclick ="location.href='Main_Index.jsp'">
	<input type="button" value ="게시판 등록" onclick ="location.href='insertForm.do'">
</div>
	
</body>
</html>
