<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>자라섬 캠핑장</title>

<style>
.topstyle {
border-spacing:10px;
}
.topstyle td {
	width: 100px;
	height: 50px;
	border: 1.5px solid #cccc;
	backgound-color : #cccc;
}
</style>



</head>
<body>

	<br />

	<!-- 컨텐츠입력 -->
	<div class="content">
		<div>
			<table class="topstyle">

				<colgroup>
					<col width="10%" />
					<col width="10%" />
					<col width="14%" />
					<col width="14%" />
					<col width="14%" />
					<col width="14%" />
					<col width="14%" />
					<col width="10%" />
				</colgroup>
				
				<tbody>
					<tr>
						<td rowspan="2" style="cursor: pointer;" class="tltjfdksso" 
							onClick="location.href='Facility_Information_index.jsp'"
							onMouseOver=" window.status = 'http://ihouse.so.vc' "
							onMouseOut=" window.status = '' ">시설<br />안내
						</td>
						<td rowspan="2" style="cursor: pointer;"
							onClick="location.href='Facility_Information_Map.jsp'"
							onMouseOver=" window.status = 'http://ihouse.so.vc' "
							onMouseOut=" window.status = '' ">시설<br />배치도
						</td>
						<td colspan="2" style="cursor: pointer;"
							onClick="location.href='Facility_Information_CaravanB.jsp'"
							onMouseOver=" window.status = 'http://ihouse.so.vc' "
							onMouseOut=" window.status = '' ">숙박시설</td>
						<td colspan="3" style="cursor: pointer;"
							onClick="location.href='Facility_Information_CaravanSiteA.jsp'"
							onMouseOver=" window.status = 'http://ihouse.so.vc' "
							onMouseOut=" window.status = '' ">캠핑시설</td>
						
					</tr>
					<tr>

						<td style="cursor: pointer;" class="zofkqksB"
							onClick="location.href='Facility_Information_CaravanB.jsp'"
							onMouseOver=" window.status = 'http://ihouse.so.vc' "
							onMouseOut=" window.status = '' ">캐라반B</td>
						<td style="cursor: pointer;"
							onClick="location.href='Facility_Information_CaravanC.jsp'"
							onMouseOver=" window.status = 'http://ihouse.so.vc' "
							onMouseOut=" window.status = '' ">캐라반C</td>

						<td style="cursor: pointer;"
							onClick="location.href='Facility_Information_CaravanSiteA.jsp'"
							onMouseOver=" window.status = 'http://ihouse.so.vc' "
							onMouseOut=" window.status = '' ">캐라반<br />사이트A
						</td>
						<td style="cursor: pointer;"
							onClick="location.href='Facility_Information_CaravanSiteB.jsp'"
							onMouseOver=" window.status = 'http://ihouse.so.vc' "
							onMouseOut=" window.status = '' ">캐라반<br />사이트B
						</td>
						<td style="cursor: pointer;"
							onClick="location.href='Facility_Information_Autocamping.jsp'"
							onMouseOver=" window.status = 'http://ihouse.so.vc' "
							onMouseOut=" window.status = '' ">오토<br />캠핑장
						</td>

					</tr>


				</tbody>

			</table>

		</div>

		<!-- //컨텐츠입력 -->
	</div>

	<br />
</body>
</html>