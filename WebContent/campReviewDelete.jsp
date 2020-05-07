<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="bbs.GuestSQL"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div align="center">
	<img src="images\failed2.PNG" width=600 height=400><p>
	</div>
	
	<%
		String ob =(String) session.getAttribute("naver");
		System.out.println("reviewDelete.jsp userid로그인 세션 = " + ob);
		if(ob==null || ob=="" || ob.equals("")){
	%>
	
		<script type="text/javascript">
			alert("로그인작업처리를 먼저 하세요");
			location.href="camplogin.jsp";
		</script>
	<% 
		return;
		}	
			GuestSQL sql= new GuestSQL();
			String data=request.getParameter("cidx");
			try{
		int ok=sql.reviewDelete(data);
		if(ok>0){
	%>		
			<script type="text/javascript">
				alert("데이터 삭제 성공했습니다.");
				location.href="campList.jsp";
			</script>
	<%		}else{	%>
			<script type="text/javascript">
				alert("데이터 삭제 실패했습니다.");
				history.back();
			</script>
	<% 	 	}	
		}catch(Exception ex){response.sendRedirect("campList.jsp");}
	%>
	
</body>
</html>