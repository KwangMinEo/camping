<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ page import="bbs.GuestSQL"%>
<%@ page import="bbs.GuestDTO"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.*"%>
<%@ page import="java.lang.String"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/Reserve_formCSS.css">
<title>�����ϱ�</title>
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
	//====��������:���� üũ����
	var flag = false;//nullüũ����
	var flagP = false;//���Ȯ��üũ����
	var flagE = false;//emailüũ����

	//====�� üũ�ϰ� submit
	function check() {

		var name = myform.name.value;
		var pwd = myform.pwd.value;
		var pwd2 = myform.pwd2.value;
		var num1 = myform.phone.value;
		var email = myform.email.value;

		if (name == null || name == "") {
			alert('�̸��� �Է��ϼ���.');
			myform.name.focus();
			return;
		}
		if (pwd == null || pwd == "") {
			alert('��й�ȣ�� �Է��ϼ���.');
			myform.pw.focus();
			return;
		}
		if (pwd2 == null || pwd2 == "") {
			alert('��й�ȣ�� ���Է��ϼ���.');
			myform.pw2.focus();
			return;
		}

		if (num1 == null || num1 == "") {
			alert('��ȭ��ȣ�� �Է��ϼ���.');
			myform.num1.focus();
			return;
		}
		if (email == null || email == "") {
			alert('�̸����� �Է��ϼ���.');
			myform.email.focus();
			return;
		}
		//���� �ش� �Ǵ� �� ������ �� üũ true
		flag = true;

		if (flagP == false) { //��� Ȯ�� Ʋ������
			alert('��й�ȣ�� ��ġ���� �ʽ��ϴ�.');
			myform.pwd2.focus();
			return;
		}

		//���� �� ���&üũ �Ϸ� �� submit
		if (flag == true && flagP == true && flagE == true) {
			document.myform.submit();
		} else {
			alert('�Է¶��� Ȯ���ϼ���.');
			return;
		}
	}//check end

	//====��й�ȣ Ȯ��
	function checkPwd() {//��й�ȣ Ȯ�� üũ
		var str = document.getElementById("pwdlabel");
		if (document.myform.pwd.value == document.myform.pwd2.value) {
			str.innerHTML = "��й�ȣ�� ��ġ�մϴ�.";
			flagP = true; //�����ġ�÷��� true�� ����

		} else {
			str.innerHTML = "<font style='color:red; size:9pt;'>��й�ȣ�� ��ġ���� �ʽ��ϴ�.</font>";
		}
	}

	//====email ����üũ
	function emailcheck() {
		var mail = myform.email.value;
		var mail_reg = /^([\S]{2,16})@([a-zA-Z]{2,10})\.([a-zA-Z]{2,10})$/;
		if (mail_reg.test(mail) == false) {
			msg = "<font color=red>�̸��� ���� üũ�ϼ���</font>";
			document.getElementById("email_ch").innerHTML = msg;
			myform.email.value = "";
			return;
		} else {
			flagE = true;
			document.getElementById("email_ch").innerHTML = "";
		}
	}//end
</script>
<body>
	<header class="main_menu">
		<div id="main_bar"></div>
	</header>

	<%
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		Date today = new Date();
		String todayDate = format1.format(today);

		String[] CarabanA = new String[20];
		String[] CarabanB = new String[20];
		String[] SiteA = new String[20];
		String[] SiteB = new String[19];
		for (int i = 0; i < CarabanA.length; i++) {
			CarabanA[i] = "CA" + i;
		}
		for (int i = 0; i < CarabanB.length; i++) {
			CarabanB[i] = "CB" + i;
		}
		for (int i = 0; i < SiteA.length; i++) {
			SiteA[i] = "SA" + i;
		}
		for (int i = 0; i < SiteB.length; i++) {
			SiteB[i] = "AB" + i;
		}
	%>


	<div id="reserveForm" align="center">
		<div class="map">
			<b>Map</b>
			<p>
			<div class="checkMap">
				<img src="img/map_all.PNG">
			</div>
			<p>
				<br> *map �� ���� ������Ʈ���� ������Ʈ ����*
			</p>

		</div>

		<div class="input">
			<b>Form sheet</b>

			<form name="myform" method="post" action="ReserveSave.jsp">
				<p>
				<table class="form1">
					<tr>
						<td colspan="2" width="250px">* ķ�� ��¥�� �����ϼ���.</td>
						<td colspan="2" width="250px">* �Ⱓ�� �����ϼ���.</td>
					</tr>
					<tr>
						<td colspan="2"><input type='date' name='r_date'
							value='<%=todayDate%>' onChange="recheckDays()"></td>
						<td colspan="2"><select name='r_days' size="1" width="100px">

								<option value="">-------����-------</option>
								<option value="1">1�� 2��</option>
								<option value="2">2�� 3��</option>
								<option value="3">3�� 4��</option>

						</select></td>
					</tr>
					<tr>
						<td colspan="4">**���� ���� ��Ȳ ���**<br> * ������ ķ������ �����ϼ���.
							(�ִ� 2��)
						</td>
					</tr>
					<tr style="vertical-align: top;">
						<td style="padding-left: 20px;">
							<%
								for (int i = 0; i < CarabanA.length; i++) {
							%> <input type="checkbox" name="r_type" value="<%=CarabanA[i]%>">CA-<%=i%><br>
							<%
								}
							%>

						</td>
						<td style="padding-left: 40px;">
							<%
								for (int i = 0; i < SiteA.length; i++) {
							%> <input type="checkbox" name="r_type" value="<%=SiteA[i]%>">SA-<%=i%><br>
							<%
								}
							%>

						</td>
						<td>
							<%
								for (int i = 0; i < CarabanB.length; i++) {
							%> <input type="checkbox" name="r_type" value="<%=CarabanB[i]%>">CB-<%=i%><br>
							<%
								}
							%>

						</td>
						<td>
							<%
								for (int i = 0; i < SiteB.length; i++) {
							%> <input type="checkbox" name="r_type" value="<%=SiteB[i]%>">SB-<%=i%><br>
							<%
								}
							%>
						</td>
					</tr>
					<tr>
						<th colspan="4"></th>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>

					<tr>
						<th>������ �̸�</th>
						<td><input type="text" class="inputs" name="name"></td>

					</tr>
					<tr>
						<th>�������</th>
						<td colspan="3"><input type="text" class="inputs"
							name="birth"> <label id="label"> 6�ڸ��� ���ڷ� �Է��ϼ���.</label></td>

					</tr>
					<tr>
						<th>���� ��й�ȣ</th>
						<td colspan="3"><input class="inputs" type="password"
							name="pwd"> <label id="label"> 6~10�ڸ��� ������ ���ڷ�
								�Է��ϼ���.</label></td>
					</tr>
					<tr>
						<th>��й�ȣ Ȯ��</th>
						<td colspan="3"><input class="inputs" type="password"
							name="pwd2" onkeyup="checkPwd();"> <label id="pwdlabel">
								��й�ȣ�� �ٽ� �Է��ϼ���. </label></td>
					</tr>
					<tr>
						<th>����ó</th>
						<td colspan="3"><input class="inputs" type="tel" name="phone">
							<label id="label">'-' ���� ���ӵ� ��ȣ�� �Է��ϼ���.</label></td>
					</tr>
					<tr>
						<th>�̸���</th>
						<td colspan="3"><input class="inputs" type="email"
							name="email" size="40" onblur="emailcheck();"> <label
							id="email_ch"></label></td>
					</tr>
					<tr>
					</tr>
					<tr>
						<td colspan="4" align="center"><input class="buttons"
							type="button" size="40" value=" �����ϱ� " onclick="check();">
							<input class="buttons" type="reset" size="40" value=" �Է���� ">
						</td>
					</tr>


				</table>


			</form>




		</div>



	</div>


	<footer>
		<div id="footer"></div>
	</footer>

</body>
</html>