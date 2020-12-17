<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%if(session.getAttribute("id") != null) { //세션이 있으면 메인으로 %>
<jsp:forward page="Main_Index.jsp"></jsp:forward>
<% } %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    
<!------ Include the above in your HEAD tag ---------->
    
    
    <title>로그인</title>
    <!--Bootsrap 4 CDN-->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!--Fontawesome CDN-->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
		<!--Custom styles-->
		<link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  
<!-- ================================================================================== -->
 <body>
 
	<!-- 헤더 -->
  <section id='header'>
    <jsp:include page="header.jsp" flush='false'/>
  </section>
  	
		<div class="container">
			
						<h2 class="card-title text-center" style="color:black;">로그인</h2>
					</div>
					
					<div class="card-body" >
      		<form action="loginPro.jsp" class="form-signin" method="post" onSubmit="logincall();return false">
<!-- ======================================아이디=============================================================== -->
        		<div class="input-group form-group">
							
								<input type="text" name="id" class="form-control" placeholder="아이디" required autofocus>
						</div>
<!-- =======================================비번=============================================================== -->
        		<div class="input-group form-group">
								
								<input type="password" name="password" class="form-control" placeholder="비밀번호" >
						</div>
<!-- ====================================================================================================== -->					
        	
        
        		<button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
        
      	 	</form> <!-- 로그인 끝 -->
				</div>
				
				
				
			

	<!-- 바텀 -->
  <section id='footer'>
   	<jsp:include page="footer.jsp" flush='false'/>
 	</section>
</body>
</html>