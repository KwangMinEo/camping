<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>자라섬 캠핑장</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</link>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#main_bar").load("main_bar.html");
		$("#footer").load("footer.html");
	});
</script>

<link rel="stylesheet" type="text/css" href="css/main_css.css" />
<!-- 
<style>
.mg {
	margin-left: 50px;
	margin-top: 30px;
	margin-bottom: 30px;
}

a:link  { color: blue; }
a:hover  { color: green; }
</style> 
-->
</head>
<body>
	<header class="main_menu">
	<div id="main_bar"></div>
	</header>
	<div id="contents">
		<div class="mg">
			<div class="contentsTop">

				<h3>시설배치도</h3>
				<div>
					캠핑장안내 &gt; <a href="Facility_Information_Map.jsp"><strong>시설배치도</strong></a>
				</div>
			</div>
			<div class="tabtype">
				<jsp:include page="Facility_Information_top.jsp" />

			</div>

			<div>
				<a> <img src="img/faci_map_2.gif" width="712" height="400" />
				</a>
			</div>
		</div>
	</div>
	<footer>
	<div id="footer"></div>
	</footer>
</body>
</html>