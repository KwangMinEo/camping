<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="ssi3.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[campList.jsp]</title>

<link rel="stylesheet" href="css/Lists.css">
<script type="text/javascript">
	function clearText() {
		document.myform.keyword.value = "";
		document.myform.keyword.focus();
	}
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

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
	<div id="campList">
		<h1 style="font-size: 24pt; font-weight: bold;">이용후기</h1>
		<div align="right" style="font-size: 10pt">
			HOME &gt; <strong>이용후기</strong>
		</div>
		
		<hr>
		<div class="contents">
		
		<table class="List">
			<tr>
				<td class="td1" colspan="6">레코드갯수: <%=Ctotal%>/<%=Atotal%> &nbsp;
				<a	href="camplogin.jsp">[글쓰기]</a> &nbsp;&nbsp;
				</td>
			</tr>


			<tr>
				<th>행번호</th>
				<th>이 름</th>
				<th>제 목</th>
				<th>날 짜</th>
				<th>조회수</th>
			</tr>
			<%
				ST = CN.createStatement();

				String a = " select * from  ( ";
				String b = " select rownum rn,num,name,title,wdate, hit from ";
				String z = sqry;
				String c = " ) where rn between " + end + " and " + start; //역순

				Rnumber = Ctotal - (pageNUM - 1) * 10;
				msg = a + b + z + c;
				RS = ST.executeQuery(msg);
				ST3 = CN.createStatement();
				while (RS.next() == true) {
					Csabun = RS.getInt("num");
					Ctitle = RS.getString("title");
					Cname = RS.getString("name");
					Fname = Cname.substring(0, 1);
					Lname = Cname.substring(2);
					/* msg3="select count(*) as rcnt from guestreply where sabun="+Gsabun;
					RS3=ST3.executeQuery(msg3);
					if(RS3.next()==true){
					 Rtotal=RS3.getInt("rcnt");
					} */
			%>
			<tr onmouseover="style.backgroundColor='rgb(200,200,200)' "
				onmouseout="style.backgroundColor='' ">
				<%--  		<td> <%= RS.getInt("rn") %> </td> --%>
				<!-- 정순시 -->
				<td><%=start--%></td>
				<!-- 역순시 -->
				<td><%=Fname%>*<%=Lname%></td>
				<td><a href="campDetail2.jsp?idx=<%=Csabun%>"> <%=Ctitle%>
				</a> <%-- <%if(Ctotal>0){%><font style="font-size:12ptl; color:#11217B;"><%out.println("["+Ctotal+"]");}%></font> --%>
				</td>
				<td><%=RS.getDate("wdate")%></td>
				<td><%=RS.getInt("hit")%></td>
			</tr>
			<%
				} //while end
			%>
			<tr align="center">
				<td colspan="6">
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
		<hr>
		<footer>
			<div id="footer"></div>
		</footer>
</body>
</html>











