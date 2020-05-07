<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" href="../css/ReserveConfigInCSS.css">
<title>예약 확인하기</title>
</head>
<jsp:useBean id="sql" class="bbs.GuestSQL" />
<jsp:useBean id="dto" class="bbs.GuestDTO" />	
<script type="text/javascript">

		<%
			sql.reserveCancel(request.getParameter("rnum"));
		%>
		window.self.close();

</script>
	

<body>

</body>
</html>