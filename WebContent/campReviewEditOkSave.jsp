<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  %>
<%@ include file="ssi3.jsp" %>
<!DOCTYPE html>
<html> <head>
<title> [campReviewEditOkSave.jsp]</title>
   <style type="text/css">
	  *{font-size:14pt; font-weight:bold;  font-family: Comic Sans MS ; margin-left: 10px; }
	  a{font-size:14pt; text-decoration:none; font-weight:bold; color:blue;  font-family: Comic Sans MS ; }
	  a:hover{font-size:16pt; text-decoration:underline; color:green;  font-family: Comic Sans MS ; }
   </style>
</head>
<body>
 <p><br>
 <div align="center">
   <img src="images/a1.png">
 </div>
<%
  
   String a = request.getParameter("num");
   String b = request.getParameter("pwd");
  try{

	  msg="select count(*) as cnt from guest_reservation where r_num =? and pwd =? ";
	  PST=CN.prepareStatement(msg);
	   	PST.setString(1, a);
	   	PST.setString(2, b);
	  RS=PST.executeQuery();
	  }catch(Exception ex){ System.out.println(ex); }
 if(RS.next()==true){ Ctotal=RS.getInt("cnt"); }
 if( Ctotal>0){	 
	 session.setAttribute("naver", a); 
	 response.sendRedirect("campReviewEdit.jsp");
 }else{
%>	 
  <script type="text/javascript">
     alert("예약번호와 비밀번호를 정확히 입력해주세요.");
     location.href="camplogin.jsp";
  </script>	 
<%}%>	
</body>
</html>







