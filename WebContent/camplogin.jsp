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

<title>[camplogin.jsp]</title>
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
			<td class="td1"><a href="camplogin.jsp"> 예약번호로 로그인 </a></td>
			<td class="td2"><a href="camplogin2.jsp">이름과 전화번호로 로그인 </a><br></td>
		</tr>
	</table>
<form action="camploginSave.jsp" method="post">
	<table class="config_input">
		
			<tr>
				<th>예약 번호</th>
				<td colspan="2"><input type=text name="num" class="inputs">
				<label id="label"> T로 시작하는 예약번호를 입력하세요.</label></td>
	
			</tr>
			<tr>
				<th>비밀번호</th>
				<td colspan="2"><input type="password" name="pwd" class="inputs">
				<label id="label"> 6~10자리의 영문과 숫자로 입력하세요.</label></td>
			</tr>
			<tr>
			<td colspan="2" align="center"><input class="buttons" type="submit"	value="LOG_IN" id="LOG_IN"></td>
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