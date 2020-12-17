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
			<th>title</th>
			<th>writer</th>
			<th>content</th>
			<th>Date</th>
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
	
	<c:set var="page" value="${(param.p == null)?1:param.p}"/>
	<c:set var ="startNum" value="${page-(page-1)%5}"/>
	
	<ul class="-list- center">
		<c:forEach var="i" begin="0" end="4">
			<li><a class="-text- orage bold" href="?p=${startNum+i}&t=&q="> ${startNum+i} </a></li>
		</c:forEach>
	</ul>
	<input type="button" value ="홈으로" onclick ="location.href='Main_Index.jsp'">
	<input type="button" value ="글 등록" onclick ="location.href='insertForm.do'">
</div>

</body>
</html>
