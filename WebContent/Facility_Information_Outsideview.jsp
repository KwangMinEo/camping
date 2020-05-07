<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="ssi3.jsp"%>

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
<%
		String pnum;
		int pageNUM, pagecount;
		int start, end;
		int startpage, endpage;
		int temp;

		String sqry = "";
		String skey = "", sval = "";
		String returnpage = "";
		//역순으로 행번호 출력
		int Rnumber;

		skey = request.getParameter("keyfield");
		sval = request.getParameter("keyword");

		//키필드및키워드 미입력시 에러발생하니까 해결
		if (skey != null && skey != "") {
			sqry = "(select * from guest where " + skey + " like '%" + sval + "%')";
		} else {
			sqry = "guest_board";
			skey = "";
			sval = "";
		}

		pnum = request.getParameter("pageNum"); //<a href=guestList.jsp?pageNum=i>[i]</a>
		if (pnum == null || pnum == "") {
			pnum = "1";
		}
		pageNUM = Integer.parseInt(pnum);

		msg = "select count(*) as cnt from " + sqry;
		ST = CN.createStatement();
		RS = ST.executeQuery(msg);
		if (RS.next() == true) {
			Ctotal = RS.getInt("cnt");
		}
		msg = "select count(*) as cnt from guest_board";
		RS = ST.executeQuery(msg);
		if (RS.next() == true) {
			Atotal = RS.getInt("cnt");
		}

		if (Ctotal % 10 == 0) {
			pagecount = Ctotal / 10;
		} else {
			pagecount = (Ctotal / 10) + 1;
		}

		start = Ctotal - (pageNUM - 1) * 10; //[24클릭]  231 시작행 (역순) 
		end = start - 9; //[24클릭] 240 끝행(역순)

		temp = (pageNUM - 1) % 10; //3
		startpage = pageNUM - temp; //21
		endpage = startpage + 9; //30
		if (endpage > pagecount) {
			endpage = pagecount;
		} //[이전][31]~~[40] 출력
		//33 pnum = request.getParameter("pageNum"); ~ 51endpage분석
		returnpage = "&keyfield=" + skey + "&keyword=" + sval;
	%>



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
					<%
						for (int i = 0; i < 10; i++) {
							if (i % 2 == 0) {
					%><tr>
						<%
							}
						%><td align="center"
							style="padding-left: 100px; padding-right: 100px; padding-bottom: 50px"><a><img
								src="img/OutsideView/101621_1521700207.jpg" width="200"
								height="150" /><br />안녕</a></td>
						<%
							if (i % 2 == 1) {
						%><br>
					</tr>
					<%
						}
						}
					%>
					<tr align="center">
						<td colspan="2">
							<%
								//이전[Prev]
								if (startpage > 10) { //[1] [11] [21] [31]
									out.println("<a href=campList.jsp?pageNum=" + (startpage - 10) + returnpage + ">[이전]</a>");
								}

								for (int i = startpage; i <= endpage; i++) {
									if (i == pageNUM) {
										out.println("<font style='color:red;font-size:26pt'>[" + i + "]</font>");
									} else {
										out.println("<a href=campList.jsp?pageNum=" + i + returnpage + ">[" + i + "]</a>");
									}
								}

								//다음[Next] 
								if (endpage < pagecount) { //[10] [20] [30] [40표시안됨] < 32 
									out.println("<a href=campList.jsp?pageNum=" + (startpage + 10) + returnpage + ">[다음]</a>");
								}
							%>
						</td>
					</tr>
				</table>

			</div>
		</div>
	</div>

	<hr>
		<footer>
		<div id="footer"></div>
		</footer>
</body>
</html>