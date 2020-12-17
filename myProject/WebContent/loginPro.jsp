<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="cs.dit.dao.LoginDAO" %>
<%@ page import="java.io.PrintWriter" %>

<jsp:useBean id="dto" class="cs.dit.dao.LoginDAO" scope="page"/>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>로그인 체크</title>
</head>
<%
			String user_id = request.getParameter("id");
			String pwd = request.getParameter("password");

			LoginDAO dao = new LoginDAO();
			if(dao.LoginCheck(user_id, pwd)==1) {
				session.setAttribute("id", user_id);
				response.sendRedirect("Main_Index.jsp");
			} else {
%>
      <script>
					alert("아이디 또는 비밀번호가 틀립니다.");
					location.href="login.jsp";
			</script>
        
<%
			}
%>

<body>
</body>
</html>