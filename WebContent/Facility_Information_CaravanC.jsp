<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�ڶ� ķ����</title>

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
				<h3>���ڽü�</h3>
				<div>
					ķ����ȳ� &gt; ���ڽü� &gt; <a href="Facility_Information_CaravanC.jsp"><strong>ĳ���C</strong></a>
				</div>
			</div>

			<!-- �������Է� -->
			<div class="content">
				<div class="tabtype">
					<jsp:include page="Facility_Information_top.jsp" />

				</div>
				<div class="tbtype type2">
					<strong>ĳ���C �ü� �̿���</strong>
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
								<th rowspan="3">�ü���</th>
								<th rowspan="3">����</th>
								<th rowspan="3">����</th>
								<th colspan="3">�� �� ��</th>
							</tr>
							<tr>
								<th rowspan="2">�� �� ��<br />(7��~8��)
								</th>
								<th colspan="2">�� �� ��</th>
							</tr>
							<tr>
								<th>�ָ�/������</th>
								<th>����</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><strong>ĳ���C<br />26��(��7.8��)
								</strong></td>
								<td>20��</td>
								<td>6</td>
								<td>180,000��</td>
								<td>160,000��</td>
								<td>110,000��</td>
							</tr>
							<tr>
								<td>��������ǰ</td>
								<td colspan="5" style="text-align: left; padding-left: 10px;">�����������
									��ü, �δ���, �����, �ڷ�����, ���ڷ���, ������, ħ��, õ���� ������(�ܿ��)</td>
							</tr>
							<tr>
								<td>�� �� �� ��</td>
								<td colspan="5" style="text-align: left; padding-left: 10px;">�߿����̺�,
									�ٺ�ť�׸�</td>
							</tr>
						</tbody>
					</table>
				</div>

				<strong>�������</strong>
				<p>- �ԡ���� �ð� : 14:00~11:00</p>
				<p>- �����ڿ� �̿��ڴ� �������̾�� �ϸ�, �Խ� �� �ź������� ������ ���θ� Ȯ��</p>
				<p>- �����غ� : ��, ��� ���� 1ȸ�� ����(������ 53cm��41cm),�����ǰ ��ü</p>
				<p>- ȯ �� �� �� : ������ũ������ 1544-1555(������ȣ2��)</p>

				<strong>�ü��̸�����</strong><br/> 
				 <strong>- ���� �̹����� Ŭ���Ͻø� ū �̹����� ���� ��
					�ֽ��ϴ�.</strong>

				<!-- board ���� :: S :: -------------------------------------------->
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

				<!-- board ���� :: E :: -------------------------------------------->

			</div>
			<!-- //�������Է� -->
		</div>
	</div>
	<footer>
	<div id="footer"></div>
	</footer>

</body>
</html>