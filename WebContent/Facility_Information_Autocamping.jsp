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
			var img_list = [ "img/Autocamping/101561_1534730896.jpg",
					"img/Autocamping/101571_1534730908.jpg",
					"imag/Autocamping/101581_1534489345.jpg",
					"img/Autocamping/101591_1534730932.jpg",
					"img/Autocamping/101721_1534730961.jpg",
					"img/Autocamping/104751_1534730949.jpg",
					"img/Autocamping/104761_1534489451.jpg" ];
			var CIV = document.getElementById('ChangImgV');
			CIV.src = img_list[num];
		}
	</script>
	<!-- contents -->
	<div class="mg">
		<div id="contents">

			<div class="contentsTop">
				<h3>캠핑시설</h3>
				<div>
					캠핑장안내 &gt; 캠핑시설 &gt; <a href="Facility_Information_Autocamping.jsp"><strong>오토캠핑장</strong></a>
				</div>
			</div>

			<!-- 컨텐츠입력 -->
			<div class="content">
				<div class="tabtype">
					<jsp:include page="Facility_Information_top.jsp" />

				</div>

				<div class="tbtype type2">
					<strong>오토캠핑장 시설 이용요금</strong>
					<table class="table table-bordered">
						<colgroup>
							<col width="18%" />
							<col width="16%" />
							<col width="10%" />
							<col width="10%" />
							<col width="16%" />
							<col width="15%" />
							<col width="15%" />
						</colgroup>
						<thead>
							<tr>
								<th rowspan="3">시설명</th>
								<th rowspan="3">면적</th>
								<th rowspan="3">개소</th>
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
								<td><strong>오토캠핑장</strong></td>
								<td>전체6*8m<br />평상2.5*3m<br />텐트4.5*6m
								</td>
								<td>191</td>
								<td>4</td>
								<td>15,000원</td>
								<td>15,000원</td>
								<td>10,000원</td>
							</tr>
							<tr>
								<td>편의시설</td>
								<td colspan="6" style="text-align: left; padding-left: 10px;">공동취사장,
									공동샤워장</td>
							</tr>
						</tbody>
					</table>
				</div>

				<strong>참고사항</strong>
				<p>- 입·퇴실 시간 : 14:00~12:00</p>
				<p>- 예약자와 이용자는 동일인이어야 하며, 입실 시 신분증으로 동일인 여부를 확인</p>
				<p>- 바비큐 관련물품 일체는 개인준비물(그릴, 석쇠, 숯, 토치, 불집게, 장작 등) : 장작사용시 화덕은
					개인이 준비</p>
				<p>- 전기사용 불가 / 동절기폐장기간 : 12월~2월</p>
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
								src="img/Autocamping/101561_1534730896.jpg" width="103"
								height="51" />
						</a></td>


						<td><a href="#" onclick="changImgF(1)"> <img
								src="img/Autocamping/101571_1534730908.jpg" width="103"
								height="51" />
						</a></td>


						<td><a href="#" onclick="changImgF(2)"> <img
								src="img/Autocamping/101581_1534489345.jpg" width="103"
								height="51" />
						</a></td>


						<td><a href="#" onclick="changImgF(3)"> <img
								src="img/Autocamping/101591_1534730932.jpg" width="103"
								height="51" />
						</a></td>

						<td><a href="#" onclick="changImgF(4)"> <img
								src="img/Autocamping/101721_1534730961.jpg" width="103"
								height="51" />
						</a></td>
					</tr>
					<tr>

						<td><a href="#" onclick="changImgF(5)"> <img
								src="img/Autocamping/104751_1534730949.jpg" width="103"
								height="51" />
						</a></td>


						<td><a href="#" onclick="changImgF(6)"> <img
								src="img/Autocamping/104761_1534489451.jpg" width="103"
								height="51" />
						</a></td>

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