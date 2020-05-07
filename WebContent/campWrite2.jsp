<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="ssi3.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>입 력</title>

<link rel="stylesheet" type="text/css" href="css/campWriteCSS.css">

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


<script src="./js/CampWriteJS.js"></script>
<jsp:useBean id="sql" class="bbs.GuestSQL" />
<jsp:useBean id="dto" class="bbs.GuestDTO" />

<body>
	<header class="main_menu">
		<div id="main_bar"></div>
	</header>
	<%
		Tname = (String) session.getAttribute("naver");

		dto = sql.reserve_config2(Tname);
		Tphone = dto.getPhone();
		Tnum = dto.getR_num();
	%>
	<div class="all" align="center">
		<div class="title">
			<br>이용후기
		</div>
		<div class="cf">
			<br> <font color=red>* 표는 필수 입력 </font>
		</div>
		<form name="iform" method="post" enctype="multipart/form-data"
			action="campWriteSave.jsp">
			<table class="table1">
				<tr>
					<th>* 고유번호</th>
					<td colspan="2"><input type="text" size="10" readonly
						name="sabun" value="<%=Tnum%>"> <label id="sabunlabel"></label>
					</td>
					<td rowspan="3">
						<div>
							<img src="./images/ddd.gif" width=150 height=150>
						</div>
					</td>
				</tr>
				<tr>
					<th>* 이름</th>
					<td colspan="3"><input type="text" readonly name="name"
						value="<%=Tname%>"></td>
				</tr>

				<tr>
					<th>* 전화번호</th>
					<td colspan="3"><input type="text" name="num1" readonly
						value="<%=Tphone%>">&nbsp;</td>
				</tr>

				<tr>
					<th>파일선택</th>
					<td colspan="2"><input type="file" id="file" name="file"
						onchange="handleFileSelect()"></td>
					<td rowspan="4">
						<div id="preview"></div>
					</td>
				</tr>



				<tr>
					<th>* 제목</th>
					<td colspan="3"><input type="text" size="40" name="title"
						onkeyup="checklen(this,30)" maxlength="30"></td>
				</tr>
				<tr>
					<th>* 내용</th>
					<td colspan="3"><textarea name="content" id="content"
							onkeyup="checklen(this,30)" rows="5" cols="40"></textarea></td>
				</tr>
			</table>
			<p>
				<input type="submit" value="등록" onclick="check()">&nbsp;&nbsp;
				<input type="reset" value="초기화">&nbsp;&nbsp;
				<input type="button" value="목록" onclick="location.href='campList.jsp'">
		</form>
	</div>

	<footer>
		<div id="footer"></div>
	</footer>
</body>
</html>