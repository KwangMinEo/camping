<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" href="css/ReserveConfigInCSS.css">
<title>���� Ȯ���ϱ�</title>
</head>
<jsp:useBean id="sql" class="bbs.GuestSQL" />
<jsp:useBean id="dto" class="bbs.GuestDTO" />	
<%
	String data = request.getParameter("rnum");
%>
<script type="text/javascript">
	function yes(){
		window.opener.flag=true;
		location.href='ReserveDeleteSave.jsp?rnum=<%=data%>';
		window.opener.location.href='ReserveDeleted.jsp'
	}
	function no(){
		window.opener.flag=false;
		window.close();
		
	}
	
</script>
	

<body>

	<div id="delete_config" align="center">
	
		������ ������ ����Ͻðڽ��ϱ�?<p><p>
		
		<input class="buttons" type="button" value=" �� " onclick="yes();">
		<input class="buttons" type="button" value="�ƴϿ�" onclick="no();">	
	</div>

</body>
</html>