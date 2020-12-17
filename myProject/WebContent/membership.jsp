<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection" %>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "cs.dit.dto.LoginDTO, cs.dit.dao.LoginDAO" %>
<!DOCTYPE html>
<html>
<head>
  <title>회원가입</title>
	<script type="text/javascript">
	function idDupPopup(){
		window.open('idCheck.jsp','','width=500,height=300');
	}
	function memberSubmit(){
		var idCheck = document.f.idCheck.value;
		if(idCheck =='t'){
			document.f.submit();
		}else {
			alert('아이디 중복체크를 해주세요');
		}
	}
	</script>
	<script type="text/javascript">
  function showPopup() { window.open("show.jsp", "a", "width=400, height=300, left=100, top=50"); }
  </script>
  <link rel = 'stylesheet' href ='template2.css'>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
 </head>
<body>
	<header>
			<jsp:include page='header.jsp' flush='false'/>
	</header>
	
	<div class="container">
  <h2>회원가입</h2>
  <hr>
  <form action="membershipPro.jsp" method="post">
  	<div class="form-group">
  		<input type = "hidden" name="idDupChk" value="f"/>
      <label for="user_id">아이디:</label>
      <input type="text" class="form-control" id="user_id" name ="user_id" placeholder="아이디">
      <input type="button" value="중복체크"  onclick="idDupPopup()">
      <input type="hidden" name="idDuplication" value="idUncheck" >
    </div>
    
    <div class="form-group">
      <label >비밀번호:</label>
      <input type="password" class="form-control" id="pwd" name ="pwd" placeholder="비밀번호"  required />
    </div>
    <div class="form-group">
      <label >비밀번호확인:</label>
      <input type="password" class="form-control" id="pwdCheck" name = "pwdCheck" placeholder="비밀번호확인"  required />
      <p id = "pwsame" style="color:red;"></p>
    </div>
     <div class="form-group">
      <label for="name">이름:</label>
      <input type="text" class="form-control" id="name" placeholder="이름을 입력해 주세요" name="name">
    </div>
    <div class="form-group">
      <label for="nickname">별명:</label>
      <input type="text" class="form-control" id="nickname" placeholder="별명을 입력해 주세요" name="nickname">
    </div>
    <div class="form-group">
      <label for="tel">전화번호:</label>
      <input type=text class="form-control" id="tel" placeholder="-빼고 전화 번호를 입력해 주세요" name="tel">
    </div>
    <div class="form-group">
      <label for="email">이메일:</label>
      <input type="email" class="form-control" id="email" placeholder="이메일을 입력해 주세요" name="email">
    </div>
    <div class="form-group">
      <label for="gender">성별:</label>
      <select class="form-control" id="gender" name="gender">
      <option value="남">남</option>
      <option value="여">여</option>
      </select>
    </div>
   <input type="submit" class="btn btn-primary form-control"  value = "회원 가입" onclick="showPopup();" ></input>
   &nbsp;&nbsp;
   <input type="reset" name="reset"		class="btn btn-primary form-control" value="다시입력">
  </form>
</div>
	<footer>
			<jsp:include page = 'footer.jsp' flush='false'/>
	</footer>
</body>