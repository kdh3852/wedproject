<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cs.dit.dao.LoginDAO" %>
<%@ page import="cs.dit.dto.LoginDTO" %>

<% 
   request.setCharacterEncoding("euc-kr"); 
			String user_id = (String)session.getAttribute("id");
			
			LoginDAO dao = LoginDAO.getInstance();
			LoginDTO dto = dao.getInform(user_id);
					
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  
</head>
<body>

<div class="container-fluid">
  <h1>내정보 </h1>
  <hr><br>
<div class="row">
    <div class="col" >아이디:<%=request.getSession().getAttribute("id")%></div>
  
</div>
<br>

<div class="row">
    <div class="col" >이름:<%=dto.getName() %></div>
   
</div>
<br>
<div class="row">
    <div class="col" >별명:<%=dto.getNickname() %></div>
    
   
</div>
<br>
<div class="row">
    <div class="col" >전화번호:<%=dto.getTel() %></div>
    
    
</div>
<br>
<div class="row">
    <div class="col" >이메일:<%=dto.getEmail() %></div>
    
    
</div>
<br>
<div class="row">
    <div class="col" >성별:<%=dto.getGender() %></div>
    
</div>
<br>
</div>
</body>
</html>