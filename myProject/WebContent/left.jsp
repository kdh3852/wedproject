<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>마이페이지</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<style>
body {
		background:gray;
		margin: 0;
		padding: 0;
	}
	#wrap {
		width:100%;
		height:100px;
		background:white;
	}
	#sidebar {
		background: #333;
		width: 300px;
		height: 100%;
		top: 0;
		left: -300px;
		position: fixed;
	}
	#sidebar > ul {
		color:white;
		margin:0;
		padding: 0;
		top:50px;
		left:70px;
		position: absolute;
	}
	#sidebar li {
		margin: 0 0 20px;
		list-style: none;
	}
	#sidebar > button {
		background:#333;
		position: absolute;
		top: 150px;
		left: 300px;
		width: 52px;
		height: 52px;
		border: none;
		color: white;
	}
</style>






</head>
<body>

<div id="wrap">
		<aside id="sidebar">
			<ul>
				<li><a href="Editprofile.jsp">정보수정</a></li>
				<li><a href="Withdrawal.jsp">회원탈퇴</a></li>
				<li><a href="#">내가 쓴 글</a></li>
				<li><a href="cart.jsp">찜목록</a></li>
			</ul>
			<button><span class="btn_t">OPEN</span></button>
		</aside>
	</div>




	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript">
	$(function(){
		var duration = 300;

		var $side = $('#sidebar');
		var $sidebt = $side.find('button').on('click', function(){
			$side.toggleClass('open');

			if($side.hasClass('open')) {
				$side.stop(true).animate({left:'0px'}, duration);
				$sidebt.find('span').text('CLOSE');
			}else{
				$side.stop(true).animate({left:'-300px'}, duration);
				$sidebt.find('span').text('OPEN');
			};
		});
	});
</script>


</body>
</html>
