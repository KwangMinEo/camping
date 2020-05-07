<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="ssi3.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[campReviewEdit.jsp]</title>
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
	<p>
	<div align="center"></div>
	<%
		String ob = (String) session.getAttribute("naver");
		System.out.println("campReviewEdit.jsp userid로그인 세션 = " + ob);
		if (ob == null || ob == "" || ob.equals("")) {
	%>

	<script type="text/javascript">
		alert("로그인작업처리를 먼저 하세요");
		location.href = "campReviewEditOk.jsp";
	</script>
	<%
		return;
		}

		msg = "select * from guest_board where r_num= '" + ob + "'";
		ST = CN.createStatement();
		RS = ST.executeQuery(msg);
		if (RS.next() == true) {
			Csabun = RS.getInt("num");
			Cname = RS.getString("name");
			Ctitle = RS.getString("title");
			Ccontent = RS.getString("content");
			Cwdate = RS.getDate("wdate");
		}
	%>

	campReviewEdit.jsp
	<p>
	<form method="get" name="myform" action="campReviewEditSave.jsp">
		수정번호: <input type="text" readonly name="sabun" value="<%=Csabun%>"><br>
		수정이름: <input type="text" readonly name="name" value="<%=Cname%>"><br>
		수정제목: <input type="text" name="title" value="<%=Ctitle%>"><br>
		수정내용: <input type="text" name="content" value="<%=Ccontent%>"><br>
		&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="서브밋수정">&nbsp;
		<input type="reset" value="수정취소">
	</form>


	<a href="campList.jsp">[전체출력]</a>

	<footer>
		<div id="footer"></div>
	</footer>

</body>
</html>