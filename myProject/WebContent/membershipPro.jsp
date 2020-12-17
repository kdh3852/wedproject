<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection" %>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
    <%@ page import = "cs.dit.dto.LoginDTO, cs.dit.dao.LoginDAO" %>
    <% request.setCharacterEncoding("UTF-8");%>
    
	 <jsp:useBean id="dto" class="cs.dit.dto.LoginDTO">
   <jsp:setProperty name="dto" property="*" /></jsp:useBean>
  
  <%
  	LoginDAO dbPro = LoginDAO.getInstance();
  	dbPro.insertUser(dto);
  	
	%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	
</body>
</html>