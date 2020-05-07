<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="ssi3.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>campDetail2</title>
<link rel="stylesheet" type="text/css" href="./css/campNoticecss.css">
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
		int data = Integer.parseInt(request.getParameter("idx"));
		msg = "update guest_board set hit=hit+1 where num=" + data;
		ST = CN.createStatement();
		ST.executeUpdate(msg);

		msg = "select * from guest_board where num=" + data;
		ST = CN.createStatement();
		RS = ST.executeQuery(msg);
		if (RS.next() == true) {
			Csabun = RS.getInt("num");
			Cname = RS.getString("name");
			Fname = Cname.substring(0, 1);
			Lname = Cname.substring(2);
			Ctitle = RS.getString("title");
			Ccontent = RS.getString("content");
			Cwdate = RS.getDate("wdate");
			Chit = RS.getInt("hit");
			Cr_num = RS.getString("r_num");
			ST.executeUpdate(msg);
		}
	%>


	<div class="contentsTop" align="left">
		<h1 style="font-size: 24pt; font-weight: bold;">이용후기</h1>
		<div align="right" style="font-size: 10pt">
			HOME &gt; <strong>이용후기</strong>
		</div>

	</div>
	<hr style="background-color: #3cd1ca; height: 10px;">
	<p>
		<br>
	<div class="content">

		<table class="b_list" cellspacing="0">
			<caption></caption>
			<colgroup>
				<col width="90" />
				<col width="400" />
				<col width="70" />
				<col width="200" />

			</colgroup>
			<thead>
				<tr style="font-weight: bold;">
					<td scope="row">작성자</td>
					<td><%=Fname + "*" + Lname%></td>
					<td scope="row">작성일</td>
					<td><%=Cwdate%></td>

				</tr>
				<tr style="font-weight: bold;">
					<td scope="row">제목</td>
					<td><%=Ctitle%></td>
					<td scope="row">조회수</td>
					<td><%=Chit%></td>
				</tr>


			</thead>
			<tbody class="tb" style="font-weight: bold;">
				<tr>
					<td valign="top" align="center" colspan="6" class="txt_left none"><div
							class="boardcontent">
							<%=Ccontent%>
						</div></td>
				</tr>
			</tbody>
		</table>
		<table class="noline">
			<tr>
				<td width="900" align="right"><a href="campList.jsp">[목록]</a>
					<a href="campReviewEditOk.jsp?cidx=<%=Cr_num%>">[수정]</a> <a
					href="campReviewDelete.jsp?cidx=<%=Csabun%>">[삭제]</a></td>
			</tr>
		</table>
	</div>
	<footer>
		<div id="footer"></div>
	</footer>
</body>
</html>