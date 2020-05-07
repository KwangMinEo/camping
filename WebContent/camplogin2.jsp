<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta name="description" content="html5">
<meta name="author" content="author">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>[camplogin2.jsp]</title>
<link rel="stylesheet" href="css/ReserveConfigCSS.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#main_bar").load("main_bar.html");
		$("#footer").load("footer.html");
	});
</script>
</head>
<body>
	<header class="main_menu">
		<div id="main_bar"></div>
	</header>
	
	<div id="reserve_config">
	<table class="select">
		<tr>
			<td class="td2"><a href="camplogin.jsp">예약번호로 로그인 </a></td>
			<td class="td1"><a href="camplogin2.jsp">이름과 전화번호로  로그인 </a><br></td>
		</tr>
	</table>
	
<form action="camploginSave2.jsp" method="post">
	<table class="config_input">
		
			<tr>
				<th>이름</th>
				<td colspan="2"><input type=text name="name" class="inputs">
				<label id="label">예약자 이름을 입력하세요.</label></td>
				
			</tr>

			<tr>
				<th>전화번호</th>
				<td colspan="2"><input type="text" name="phone" class="inputs">
				<label id="label">예약시 등록한 전화번호를 입력하세요.</label></td>
			</tr>
			<tr>
			<td colspan="2" align="center"><input type="submit" value="LOG_IN" id="LOG_IN" class="buttons"></td>
			</tr>
		
	</table>
</form>

	<p>
		<a href="campList.jsp"> [전체출력]</a>

</div>
		<footer>
			<div id="footer"></div>
		</footer>
</body>
</html>