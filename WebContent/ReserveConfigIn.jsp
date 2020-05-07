<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ page import="bbs.Global"%>




<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/ReserveConfigInCSS.css">
<meta charset="EUC-KR">
<title>���� Ȯ��</title>
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
	var flag = false;
</script>
<body>
    <header class="main_menu">
        <div id="main_bar"></div>
    </header>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="sql" class="bbs.GuestSQL" />
	<jsp:useBean id="dto" class="bbs.GuestDTO" />

	<%
		String R_num = request.getParameter("r_num");
		String Rpwd = request.getParameter("pwd");
		String Rname = request.getParameter("name");
		String Rphone = request.getParameter("phone");

		System.out.println(R_num + "+" + Rpwd + "+" + Rname + "+" + Rphone);

		if (Rname == "" || Rname == null) {//config1
			dto = sql.reserve_config(R_num, Rpwd);
		}
		if (R_num == "" || R_num == null) {//config2
			dto = sql.reserve_config2(Rname, Rphone);
		}

		if (dto == null) { //������ ��ȸ���� �ʾ��� ��
	%>
	<script type="text/javascript">

	alert('��ȸ�� �� �����ϴ�. �����ȣ�� �̸�, ��й�ȣ ���� Ȯ���� �ּ���.');
	history.back();
</script>

	<%
		} else { //���� ��ȸ �Ϸ�
	%>
	<script type="text/javascript">
	
	function reserveDelete(){
		window.open('ReserveDelete.jsp?rnum=<%=dto.getR_num()%>', "Ȯ��", "width=600,height=300,left=500,top=300, resizable = no, scrollbars = no");
		}//reserveDelete end
	</script>

	<div id="configend" align="center">
		<table class="select">
			<tr>
				<td colspan="4" class="subtitle">*������ ����*</td>
			</tr>
			<tr>
				<th>�����ȣ</th>
				<td><%=dto.getR_num()%></td>
			</tr>
			<tr>
				<th>������ �̸�</th>
				<td><%=dto.getName()%></td>
			</tr>
			<tr>
				<th>�������</th>
				<td><%=dto.getBirth()%></td>
			</tr>
			<tr>
				<th>��ȭ��ȣ</th>
				<td><%=dto.getPhone()%></td>
			</tr>
			<tr>
				<th>�̸���</th>
				<td><%=dto.getEmail()%></td>
			</tr>
			<tr>
				<td colspan="4">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="4" class="subtitle">*���� ����*</td>
			</tr>
			<tr>
				<th>���� ��¥</th>
				<td><%=dto.getR_checkin()%></td>
				<th>���� �ϼ�</th>
				<td><%=dto.getR_days()%>��</td>
			</tr>
			<tr>
				<th>���� ķ��</th>
				<%
					if (dto.getR_type2() != null) {
				%>
				<td><%=dto.getR_type1()%>, <%=dto.getR_type2()%></td>
				<%
					} else {
				%>
				<td><%=dto.getR_type1()%></td>

				<%
					}
				%>
			</tr>
			<tr>
				<td colspan="4">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="3" align="center"><input class="buttons" type="button" value="���� ���" onclick="reserveDelete();">
				<input class="buttons" type="button" value="ó������ " onclick="location.href='Home.html'"></td>
			</tr>



		</table>
	</div>
	<%
		} //end
	%>

	<footer>
		<div id="footer"></div>
	</footer>
</body>
</html>