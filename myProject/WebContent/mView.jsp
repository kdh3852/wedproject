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
	<link rel="stylesheet" type="text/css" href="css/board.css">
</head>
<body>
<header>
			<jsp:include page='header.jsp' flush='false'/>
	</header>
<div class="container">
	<h2>상세보기</h2>
	<br/>
	<form action="update.do" method="post">
		<input type="hidden" name="title" value="${dto.title}">
		<table class="table table-striped table-hover">
			<tr>
				
				<th>제목</th><td><input type="text" value="${dto.title}" name="title"></td>
			</tr>
			<tr>
				<th>작성자</th><td><input type="text" value="${dto.writer}" name="writer"></td>
				<th>내용</th><td><input type="text" value="${dto.content}" name="content"></td>
			</tr>
			<tr>
				<th>Date</th><td colspan="3"><input type="text" value="${dto.joinDate}" name="joinDate"></td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="submit" value ="게시판 수정" >
					<input type="button" value ="게시판 삭제" onclick ="location.href='delete.do?title=${dto.title}'">
					<input type="button" value ="게시판 목록" onclick ="location.href='list.do'">
					<input type="button" value ="게시판 등록" onclick ="location.href='insertForm.do'">
				</td>
			</tr>
		</table><br><br>
	</form>
</div>

</body>
</html>