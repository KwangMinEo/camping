<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �Ϸ� ������</title>
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
		<p>������ �Ϸ��Ͽ����ϴ�.
		<p>
			���� ��ȣ:
			<%=Rnum%>
		<p>

			<a href="ReserveConfig.jsp">���� Ȯ���ϱ�</a>&nbsp;<a href="Home.html">ó������
				���ư���</a>
	</div>

	<footer>
		<div id="footer"></div>
	</footer>


</body>
</html>