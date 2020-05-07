<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/ReserveConfigCSS.css">
<title>���� Ȯ���ϱ�</title>
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
			alert('�̸��� �Է��ϼ���.');
			myform.name.focus();
			return;
		}
		if (pwd == null || pwd == "") {
			alert('��ȭ��ȣ �Է��ϼ���.');
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
				<td class="td2"><a href="ReserveConfig.jsp">�����ȣ�� Ȯ���ϱ�</a></td>
				<td class="td1"><a href="ReserveConfig2.jsp">�̸��� ��ȭ��ȣ�� Ȯ���ϱ�</a></td>
			</tr>

		</table>

		<form name="myform" method="post" action="ReserveConfigIn.jsp">
			<table class="config_input">
				<tr>
					<th>�̸�</th>
					<td colspan="2"><input type="text" class="inputs" name="name">
						<label id="label">������ �̸��� �Է��ϼ���.</label></td>
				</tr>
				<tr>
					<th>��ȭ��ȣ</th>
					<td colspan="2"><input class="inputs" type="tel" name="phone">
						<label id="label">����� ����� ��ȭ��ȣ�� �Է��ϼ���.</label></td>
				</tr>
				<tr>
					<td colspan="3" align="center"><input class="buttons"
						type="button" value="��ȸ�ϱ� " onclick="check();"> <input
						class="buttons" type="reset" value="�Է����"></td>
				</tr>

			</table>





		</form>

	</div>

	<footer>
		<div id="footer"></div>
	</footer>

</body>
</html>