<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="ssi3.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> campDetail6</title>
<link rel="stylesheet" type="text/css" href="css/campNoticecss.css">
	<style type="text/css">
	*{ font-size: 14pt;}
	a{ font-size: 14pt; text-decoration: none; color: blue; font-family: Comic Sans MS;}
	a:hover{ font-size: 14pt; text-decoration: underline; color: green; font-family: Comic Sans MS;}
</style>
</head>
<body>
	<%
	int data=Integer.parseInt(request.getParameter("idx"));
	msg="select * from campnotice where sabun="+data;
	ST=CN.createStatement();
	RS=ST.executeQuery(msg);
	if(RS.next()==true){
		Csabun=RS.getInt("sabun");
		Cnk=RS.getString("nk");
		Ctitle=RS.getString("title");
		Cwriter=RS.getString("writer");
		Cwdate=RS.getDate("wdate");
		Chit=RS.getInt("hit");
		Ccontent=RS.getString("content");
		msg="update campnotice set hit=hit+1 where sabun="+data;
		ST.executeUpdate(msg);
	}
	%>
	

	<div class="contentsTop" align="left" >
		<h1 style="font-size: 24pt; font-weight: bold;">공지사항</h1>
		<div align="right" style="font-size: 10pt">HOME &gt; <strong>공지사항</strong></div>
		
	</div>
	<hr style="background-color:#3cd1ca; height:10px;"><p><br>

							
	<div class="content">
				
		<table class="b_list" cellspacing="0" >
			<caption>
			
			</caption>
			<colgroup>
			<col width="90" />
			<col width="400" />
			<col width="70" />
			<col width="200" />
			<col width="70" />
			<col width="70" />
			</colgroup>
			<thead>
				<tr style="font-weight: bold;">
					<td scope="row">작성자</td>
					<td ><%=Cwriter %></td>
					<td scope="row">작성일</td>
					<td ><%=Cwdate %></td>
					<td scope="row">조회수</td>
					<td ><%=Chit %></td>
				</tr>
				<tr style="font-weight: bold;">
					<td scope="row">제목</td>
					<td align="center" style="font-size: 15pt" colspan="5" ><%=Ctitle %><br></td>
				</tr>
			
			</thead>
			<tbody class="tb" style="font-weight: bold;">
				<tr>
					<td valign="top" align="center" colspan="6" class="txt_left none"><div class="boardcontent"> 
								<%=Ccontent %>
						</div>	
					</td>
						
				</tr>
				
			</tbody>
			
		</table>
		
	</div>
<table class="noline">
		<tr><td width="900" align="right"><a href="campNotice.jsp" >[목록]</a></td></tr></table>
</body>
</html>