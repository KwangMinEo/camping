<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>예약 완료 페이지</title>
<link rel="stylesheet" type="text/css" href="css/Reserve_formCSS.css">
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
	<%
		String Rnum = request.getParameter("no");
	%>
	<div id="reserveSuccess"
		style="text-align: center; margin: 10%; padding: 50px; width =50%; float: left;">
		<p>예약을 완료하였습니다.
		<p>
			예약 번호:
			<%=Rnum%>
		<p>

			<a href="ReserveConfig.jsp">예약 확인하기</a>&nbsp;<a href="Home.html">처음으로
				돌아가기</a>
	</div>

	<footer>
		<div id="footer"></div>
	</footer>


</body>
</html>