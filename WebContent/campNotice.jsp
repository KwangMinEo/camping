<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="ssi3.jsp"%>
<!DOCTYPE html>
<html>
<head>

<title>자라섬 캠핑장</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/Lists.css">

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
		msg = "select * from campnotice";
		ST = CN.createStatement();
		RS = ST.executeQuery(msg);
	%>
	<div class="contentsTop" align="left">
		<h1 style="font-size: 24pt; font-weight: bold;">공지사항</h1>
		<div align="right" style="font-size: 10pt">
			HOME &gt; <strong>공지사항</strong>
		</div>

	</div>
	<hr>
	<div class="contents">

		<table class="List">

			<colgroup>
				<col width="80" />
				<col width="" />
				<col width="60" />
				<col width="200" />
				<col width="70" />
			</colgroup>

			<tr>
				<th><strong>분류</strong></th>
				<th><strong>제목</strong></th>
				<th><strong>작성자</strong></th>
				<th><strong>날짜</strong></th>
				<th><strong>조회수</strong></th>
			</tr>

			<%
				while (RS.next() == true) {
					Csabun = RS.getInt("sabun");
			%>

			<tr>
				<td><%=RS.getString("nk")%></td>
				<td><a href="campDetail.jsp?idx=<%=Csabun%>"> <%=RS.getString("title")%></a></td>
				<td><%=RS.getString("writer")%></td>
				<td><%=RS.getDate("wdate")%></td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;<%=RS.getInt("hit")%></td>

			</tr>

			<%
				}
			%>
		</table>
		
	</div>
	
	<hr>
	<footer>
		<div id="footer"></div>
	</footer>
</body>
</html>