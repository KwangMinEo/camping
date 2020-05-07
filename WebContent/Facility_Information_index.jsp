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

	<!-- <style>
.mg {
	margin-left: 50px;
	margin-top: 30px;
	margin-bottom: 30px;
}
a:link  { color: blue; }
a:hover  { color: green; }
</style> -->
</head>
<body>
	
		<header class="main_menu">
		<div id="main_bar"></div>
		</header>
		<div id="contents">
		<div class="mg">
			<h3>시설이용안내</h3>
			<div align="left">
				캠핑장안내 &gt; <a href="Facility_Information_index.jsp"><strong>시설이용안내</strong></a>
			</div>
			<div class="topstyle">
				<jsp:include page="Facility_Information_top.jsp" />
			</div>
			<!-- 컨텐츠입력 -->
			<strong>시설이용 안내</strong>
			<ul class="litype">
				<li>성수기 : 매년 7월~8월
					<li>금요일, 토요일은 "주말,공휴일"요금을 적용합니다.</li>
					<li>공휴일과 그 전일은 "주말,공휴일"요금을 적용합니다.</li>
					<li>일요일부터 목요일까지는 "평일"요금이 적용됩니다.</li>
					<li>자라섬캠핑장은 인터넷 예약제로(업체:인터파크) 운영되고 있습니다.</li>
					<li>예약은 매월 10일 14:00부터 다음달 예약이 가능합니다. (예: 8월예약 - 7월 10일
						14:00부터)</li>
					<li>개인 세면도구(치솔,치약,샴푸,수건,비누 등)는 고객이 준비</li>
					<li>예약자와 입실자는 동일인이어야 합니다. (고객지원센터에서 신분증 확인)</li>
					<li>숙박시설 카라반4인,6인 : 그릴 및 야외용 테이블이 비치되어 있음. (불판,숯은 예약자 본인이 준비)</li>
					<li>오토캠핑장/카라반사이트A,B : 바베큐(그릴,숯,불판) 관련 물품은 예약자 본인이 준비하시기 바랍니다.</li>
			</ul>
			<strong>입&middot;퇴실 시간</strong>
			<ul class="litype">
				<li>숙박시설(캐라반B, 캐라반C) : 당일14:00 ~ 다음날 11:00</li>
				<li>캠핑시설(캐라반사이트A, 캐라반사이트B, 오토캠핑장) : 당일14:00 ~ 다음날 12:00</li>
				<b class="fc_b">입·퇴실 시간을 필히 준수하여 주시기 바랍니다.</b>
			</ul>
		</div>
		</div>
		<footer>
		<div id="footer"></div>
		</footer>
</body>
</html>