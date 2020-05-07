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

	<script language="javascript">
		function changImgF(num) {
			var img_list = [ "img/CaravanC/101461_1534732020.jpg",
					"img/CaravanC/101471_1534732026.jpg",
					"img/CaravanC/101711_1534732054.jpg",
					"img/CaravanC/104631_1534732070.jpg",
					"img/CaravanC/104641_1534488687.jpg",
					"img/CaravanC/104651_1534488696.jpg",
					"img/CaravanC/104661_1534488715.jpg",
					"img/CaravanC/104671_1534488758.jpg" ];
			var CIV = document.getElementById('ChangImgV');
			CIV.src = img_list[num];
		}
	</script>
	<!-- contents -->
	<div class="mg">
		<div id="contents">

			<div class="contentsTop">
				<h3>숙박시설</h3>
				<div>
					캠핑장안내 &gt; 숙박시설 &gt; <a href="Facility_Information_CaravanC.jsp"><strong>캐라반C</strong></a>
				</div>
			</div>

			<!-- 컨텐츠입력 -->
			<div class="content">
				<div class="tabtype">
					<jsp:include page="Facility_Information_top.jsp" />

				</div>
				<div class="tbtype type2">
					<strong>캐라반C 시설 이용요금</strong>
					<table class="table table-bordered">
						<colgroup>
							<col width="18%" />
							<col width="13%" />
							<col width="14%" />
							<col width="19%" />
							<col width="18%" />
							<col width="18%" />
						</colgroup>
						<thead>
							<tr>
								<th rowspan="3">시설명</th>
								<th rowspan="3">수량</th>
								<th rowspan="3">정원</th>
								<th colspan="3">사 용 료</th>
							</tr>
							<tr>
								<th rowspan="2">성 수 기<br />(7월~8월)
								</th>
								<th colspan="2">비 수 기</th>
							</tr>
							<tr>
								<th>주말/공휴일</th>
								<th>평일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><strong>캐라반C<br />26㎡(구7.8평)
								</strong></td>
								<td>20대</td>
								<td>6</td>
								<td>180,000원</td>
								<td>160,000원</td>
								<td>110,000원</td>
							</tr>
							<tr>
								<td>객실집기품</td>
								<td colspan="5" style="text-align: left; padding-left: 10px;">취사조리도구
									일체, 인덕션, 냉장고, 텔레비젼, 전자렌지, 에어컨, 침구, 천장형 난방기기(겨울용)</td>
							</tr>
							<tr>
								<td>편 의 시 설</td>
								<td colspan="5" style="text-align: left; padding-left: 10px;">야외테이블,
									바비큐그릴</td>
							</tr>
						</tbody>
					</table>
				</div>

				<strong>참고사항</strong>
				<p>- 입·퇴실 시간 : 14:00~11:00</p>
				<p>- 예약자와 이용자는 동일인이어야 하며, 입실 시 신분증으로 동일인 여부를 확인</p>
				<p>- 개인준비물 : 숯, 고기 굽는 1회용 석쇠(사이즈 53cm×41cm),세면용품 일체</p>
				<p>- 환 불 문 의 : 인터파크고객센터 1544-1555(내선번호2번)</p>

				<strong>시설미리보기</strong><br/> 
				 <strong>- 작은 이미지를 클릭하시면 큰 이미지를 보실 수
					있습니다.</strong>

				<!-- board 삽입 :: S :: -------------------------------------------->
				<div>
					<a> <img src="img/CaravanB/101431_1534731744.jpg"
						id="ChangImgV" width="712" height="400" />
					</a>
				</div>
				<table>
					<colgroup>
						<col width="20%" />
						<col width="20%" />
						<col width="20%" />
						<col width="20%" />
						<col width="20%" />
					</colgroup>
					<tr>
						<td><a href="#" onclick="changImgF(0)"> <img
								src="img/CaravanC/101461_1534732020.jpg" width="103" height="51" /></a></td>


						<td><a href="#" onclick="changImgF(1)"> <img
								src="img/CaravanC/101471_1534732026.jpg" width="103" height="51" /></a></td>


						<td><a href="#" onclick="changImgF(2)"> <img
								src="img/CaravanC/101711_1534732054.jpg" width="103" height="51" /></a></td>


						<td><a href="#" onclick="changImgF(3)"> <img
								src="img/CaravanC/104631_1534732070.jpg" width="103" height="51" /></a></td>

						<td><a href="#" onclick="changImgF(4)"> <img
								src="img/CaravanC/104641_1534488687.jpg" width="103" height="51" /></a></td>
					</tr>
					<tr>

						<td><a href="#" onclick="changImgF(5)"> <img
								src="img/CaravanC/104651_1534488696.jpg" width="103" height="51" /></a></td>


						<td><a href="#" onclick="changImgF(6)"> <img
								src="img/CaravanC/104661_1534488715.jpg" width="103" height="51" /></a></td>


						<td><a href="#" onclick="changImgF(7)"> <img
								src="img/CaravanC/104671_1534488758.jpg" width="103" height="51" /></a></td>


					</tr>
				</table>

				<!-- board 삽입 :: E :: -------------------------------------------->

			</div>
			<!-- //컨텐츠입력 -->
		</div>
	</div>
	<footer>
	<div id="footer"></div>
	</footer>

</body>
</html>