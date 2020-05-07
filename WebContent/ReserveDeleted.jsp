<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/ReserveConfigInCSS.css">
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
	setTimeout("location.href='ReserveConfig.jsp'", 2000);
</script>


<body>

    <header class="main_menu">
        <div id="main_bar"></div>
    </header>

	<div id="reserve_deleted">
	
	예약이 성공적으로 취소되었습니다.

	</div>


<footer>
        <div id="footer"></div>
    </footer>
</body>
</html>