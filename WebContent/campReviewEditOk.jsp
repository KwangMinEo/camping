<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi3.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta name="description" content="html5">
<meta name="author" content="author">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>[campReviewEditOk.jsp]</title>

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
		Cr_num = request.getParameter("cidx");
	%>
	<table width=500 border=1 cellspacing=0 cellpadding=0>
		<form action="campReviewEditOkSave.jsp" method="post">
			<tr>
				<td>NUM:</td>
				<td width=200><input type="text" name="num" readonly
					value=<%=Cr_num%>></td>
				<td rowspan="2" align="center"><input type="submit"
					value="LOG_IN" id="LOG_IN"></td>
			</tr>

			<tr>
				<td>PWD:</td>
				<td><input type="password" name="pwd"></td>
			</tr>
		</form>
	</table>


	<p>
		<a href="campList.jsp"> [전체출력]</a>

		<footer>
			<div id="footer"></div>
		</footer>
</body>
</html>