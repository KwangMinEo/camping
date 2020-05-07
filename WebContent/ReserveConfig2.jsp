<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/ReserveConfigCSS.css">
<title>예약 확인하기</title>
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
<script type="text/javascript">
	function check() {
		var rnum = document.myform.name.value;
		var pwd = document.myform.phone.value;
		if (rnum == null || rnum == "") {
			alert('이름을 입력하세요.');
			myform.name.focus();
			return;
		}
		if (pwd == null || pwd == "") {
			alert('전화번호 입력하세요.');
			myform.phone.focus();
			return;
		}
		document.myform.submit();

	}//check end
</script>


<body>
    <header class="main_menu">
        <div id="main_bar"></div>
    </header>
	<div id="reserve_config">
		<table class="select">
			<tr>
				<td class="td2"><a href="ReserveConfig.jsp">예약번호로 확인하기</a></td>
				<td class="td1"><a href="ReserveConfig2.jsp">이름과 전화번호로 확인하기</a></td>
			</tr>

		</table>

		<form name="myform" method="post" action="ReserveConfigIn.jsp">
			<table class="config_input">
				<tr>
					<th>이름</th>
					<td colspan="2"><input type="text" class="inputs" name="name">
						<label id="label">예약자 이름을 입력하세요.</label></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td colspan="2"><input class="inputs" type="tel" name="phone">
						<label id="label">예약시 등록한 전화번호를 입력하세요.</label></td>
				</tr>
				<tr>
					<td colspan="3" align="center"><input class="buttons"
						type="button" value="조회하기 " onclick="check();"> <input
						class="buttons" type="reset" value="입력취소"></td>
				</tr>

			</table>





		</form>

	</div>

	<footer>
		<div id="footer"></div>
	</footer>

</body>
</html>