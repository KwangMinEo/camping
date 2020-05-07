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
<title>예약하기</title>
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
	//====전역변수:각각 체크여부
	var flag = false;//null체크여부
	var flagP = false;//비번확인체크여부
	var flagE = false;//email체크여부

	//====다 체크하고 submit
	function check() {

		var name = myform.name.value;
		var pwd = myform.pwd.value;
		var pwd2 = myform.pwd2.value;
		var num1 = myform.phone.value;
		var email = myform.email.value;

		if (name == null || name == "") {
			alert('이름을 입력하세요.');
			myform.name.focus();
			return;
		}
		if (pwd == null || pwd == "") {
			alert('비밀번호를 입력하세요.');
			myform.pw.focus();
			return;
		}
		if (pwd2 == null || pwd2 == "") {
			alert('비밀번호를 재입력하세요.');
			myform.pw2.focus();
			return;
		}

		if (num1 == null || num1 == "") {
			alert('전화번호를 입력하세요.');
			myform.num1.focus();
			return;
		}
		if (email == null || email == "") {
			alert('이메일을 입력하세요.');
			myform.email.focus();
			return;
		}
		//위에 해당 되는 거 없으면 널 체크 true
		flag = true;

		if (flagP == false) { //비번 확인 틀렸을때
			alert('비밀번호가 일치하지 않습니다.');
			myform.pwd2.focus();
			return;
		}

		//위에 다 통과&체크 완료 후 submit
		if (flag == true && flagP == true && flagE == true) {
			document.myform.submit();
		} else {
			alert('입력란을 확인하세요.');
			return;
		}
	}//check end

	//====비밀번호 확인
	function checkPwd() {//비밀번호 확인 체크
		var str = document.getElementById("pwdlabel");
		if (document.myform.pwd.value == document.myform.pwd2.value) {
			str.innerHTML = "비밀번호가 일치합니다.";
			flagP = true; //비번일치플래그 true로 해줌

		} else {
			str.innerHTML = "<font style='color:red; size:9pt;'>비밀번호가 일치하지 않습니다.</font>";
		}
	}

	//====email 형식체크
	function emailcheck() {
		var mail = myform.email.value;
		var mail_reg = /^([\S]{2,16})@([a-zA-Z]{2,10})\.([a-zA-Z]{2,10})$/;
		if (mail_reg.test(mail) == false) {
			msg = "<font color=red>이메일 형식 체크하세요</font>";
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
				<br> *map 은 추후 프로젝트에서 업데이트 예정*
			</p>

		</div>

		<div class="input">
			<b>Form sheet</b>

			<form name="myform" method="post" action="ReserveSave.jsp">
				<p>
				<table class="form1">
					<tr>
						<td colspan="2" width="250px">* 캠핑 날짜를 선택하세요.</td>
						<td colspan="2" width="250px">* 기간을 선택하세요.</td>
					</tr>
					<tr>
						<td colspan="2"><input type='date' name='r_date'
							value='<%=todayDate%>' onChange="recheckDays()"></td>
						<td colspan="2"><select name='r_days' size="1" width="100px">

								<option value="">-------선택-------</option>
								<option value="1">1박 2일</option>
								<option value="2">2박 3일</option>
								<option value="3">3박 4일</option>

						</select></td>
					</tr>
					<tr>
						<td colspan="4">**예약 가능 현황 출력**<br> * 예약할 캠핑장을 선택하세요.
							(최대 2개)
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
						<th>예약자 이름</th>
						<td><input type="text" class="inputs" name="name"></td>

					</tr>
					<tr>
						<th>생년월일</th>
						<td colspan="3"><input type="text" class="inputs"
							name="birth"> <label id="label"> 6자리의 숫자로 입력하세요.</label></td>

					</tr>
					<tr>
						<th>예약 비밀번호</th>
						<td colspan="3"><input class="inputs" type="password"
							name="pwd"> <label id="label"> 6~10자리의 영문과 숫자로
								입력하세요.</label></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td colspan="3"><input class="inputs" type="password"
							name="pwd2" onkeyup="checkPwd();"> <label id="pwdlabel">
								비밀번호를 다시 입력하세요. </label></td>
					</tr>
					<tr>
						<th>연락처</th>
						<td colspan="3"><input class="inputs" type="tel" name="phone">
							<label id="label">'-' 없이 연속된 번호로 입력하세요.</label></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td colspan="3"><input class="inputs" type="email"
							name="email" size="40" onblur="emailcheck();"> <label
							id="email_ch"></label></td>
					</tr>
					<tr>
					</tr>
					<tr>
						<td colspan="4" align="center"><input class="buttons"
							type="button" size="40" value=" 예약하기 " onclick="check();">
							<input class="buttons" type="reset" size="40" value=" 입력취소 ">
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