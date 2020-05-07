<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="ssi3.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [campReviewEditSave.jsp]</title>
	<style type="text/css">
	*{ font-size: 16pt; font-weight:bold;}
	a{ font-size: 20pt; text-decoration: none; color: blue; font-family: Comic Sans MS;}
	a:hover{ font-size: 24pt; text-decoration: underline; color: green; font-family: Comic Sans MS;}
	</style>
	
	<script type="text/javascript">
	</script>
</head>
<body>
	<%
		Csabun=Integer.parseInt(request.getParameter("sabun"));
		Cname=request.getParameter("name");
		Ctitle=request.getParameter("title");
		Ccontent=request.getParameter("content");
		
		try{
			msg= "update guest_board set title='"+Ctitle+"', content='"+Ccontent+
					"', wdate=sysdate where num = "+ Csabun;
			ST = CN.createStatement();
			ST.executeUpdate(msg);
			response.sendRedirect("campList.jsp");//수정후 전체출력 이동
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	%>
</body>
</html>