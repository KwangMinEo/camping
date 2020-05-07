<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</link>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>자라섬 캠핑장</title>
<script type="text/javascript">
	$(document).ready(function() {
		$("#main_bar").load("main_bar.html");
		$("#footer").load("footer.html");
	});
</script>
</head>
<body>
	<header class="main_menu">
	<div id="main_bar"></div>
	</header>

	<div id="container">


		<!-- contentsArea -->
		<div id="contentsAreaWp">
			<div id="contentsArea">


				<div id="contentsWp">
					<div class="blueBgTop">
						<div class="blueBg">



							<!-- contents -->
							<div id="contents">
								<div class="tabtype">
									<jsp:include page="Facility_Information_top.jsp" />

								</div>
								<br></br>
								<div class="contentsTop">
									<strong>시설배치도</strong>
									<div>
										HOME &gt; 시설미리보기 &gt; <strong>시설배치도</strong>
									</div>
								</div>

								<!-- 컨텐츠입력 -->
								<div class="content">
									<p class="map">
										<img src="img/faci_map_2.gif" alt="시설미리보기" />
									</p>

								</div>
								<!-- //컨텐츠입력 -->


							</div>
							<!-- //contents -->

						</div>
					</div>
				</div>

				<!-- //contentsWp -->

			</div>
		</div>
		<!-- //contentsArea -->



	</div>


	<footer>
	<div id="footer"></div>
	</footer>

</body>
</html>