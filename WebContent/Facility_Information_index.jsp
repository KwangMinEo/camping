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
			<h3>�ü��̿�ȳ�</h3>
			<div align="left">
				ķ����ȳ� &gt; <a href="Facility_Information_index.jsp"><strong>�ü��̿�ȳ�</strong></a>
			</div>
			<div class="topstyle">
				<jsp:include page="Facility_Information_top.jsp" />
			</div>
			<!-- �������Է� -->
			<strong>�ü��̿� �ȳ�</strong>
			<ul class="litype">
				<li>������ : �ų� 7��~8��
					<li>�ݿ���, ������� "�ָ�,������"����� �����մϴ�.</li>
					<li>�����ϰ� �� ������ "�ָ�,������"����� �����մϴ�.</li>
					<li>�Ͽ��Ϻ��� ����ϱ����� "����"����� ����˴ϴ�.</li>
					<li>�ڶ�ķ������ ���ͳ� ��������(��ü:������ũ) ��ǰ� �ֽ��ϴ�.</li>
					<li>������ �ſ� 10�� 14:00���� ������ ������ �����մϴ�. (��: 8������ - 7�� 10��
						14:00����)</li>
					<li>���� ���鵵��(ġ��,ġ��,��Ǫ,����,�� ��)�� ���� �غ�</li>
					<li>�����ڿ� �Խ��ڴ� �������̾�� �մϴ�. (���������Ϳ��� �ź��� Ȯ��)</li>
					<li>���ڽü� ī���4��,6�� : �׸� �� �߿ܿ� ���̺��� ��ġ�Ǿ� ����. (����,���� ������ ������ �غ�)</li>
					<li>����ķ����/ī��ݻ���ƮA,B : �ٺ�ť(�׸�,��,����) ���� ��ǰ�� ������ ������ �غ��Ͻñ� �ٶ��ϴ�.</li>
			</ul>
			<strong>��&middot;��� �ð�</strong>
			<ul class="litype">
				<li>���ڽü�(ĳ���B, ĳ���C) : ����14:00 ~ ������ 11:00</li>
				<li>ķ�νü�(ĳ��ݻ���ƮA, ĳ��ݻ���ƮB, ����ķ����) : ����14:00 ~ ������ 12:00</li>
				<b class="fc_b">�ԡ���� �ð��� ���� �ؼ��Ͽ� �ֽñ� �ٶ��ϴ�.</b>
			</ul>
		</div>
		</div>
		<footer>
		<div id="footer"></div>
		</footer>
</body>
</html>