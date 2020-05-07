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
<style>
.mg {
	margin-left: 50px;
	margin-top: 30px;
	margin-bottom: 30px;
}
</style>
</head>
<body>
	<header class="main_menu">
	<div id="main_bar"></div>
	</header>


	<!-- contents -->
	<div class="mg">
		<div id="contents">

			<div class="contentsTop">
				<strong>외부전경</strong>
				<div>
					캠핑장안내 &gt; <strong>외부전경</strong>
				</div>
				<div class="tabtype">
					<jsp:include page="Facility_Information_top.jsp" />

				</div>
				<table>
				<% for(int i=0; i<10; i++){
					if(i%2==0){%><tr><%}
					%><td align="center" style="padding-left: 100px; padding-right: 100px; padding-bottom: 50px"><a><img src="img/OutsideView/101621_1521700207.jpg" width="200" height="150" /><br/>안녕</a></td><% 
					if(i%2==1){
						%><br></tr><%
					}
				}
				%>
				
				</table>
				
			</div>
		</div>
	</div>


</body>
</html>