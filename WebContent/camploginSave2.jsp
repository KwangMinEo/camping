<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ include file="ssi3.jsp" %>
<!DOCTYPE html>
<html> <head>
<title> [camploginSave2.jsp]</title>
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
   request.setCharacterEncoding("UTF-8");
   String c = request.getParameter("name");
   String d = request.getParameter("phone");
  try{
   msg="select count(*) as cnt from guest_reservation where name=? and phone=?";//한글인문제
   PST=CN.prepareStatement(msg);
   		PST.setString(1, c);
   		PST.setString(2, d);
   RS=PST.executeQuery();
  }catch(Exception ex){ System.out.println(ex); }
 if(RS.next()==true){ Ctotal=RS.getInt("cnt"); }
 if( Ctotal>0){	 
	 session.setAttribute("naver", c);
	 response.sendRedirect("campWrite2.jsp");
 }else{
%>	 
  <script type="text/javascript">
     alert("이름과 핸드폰번호를 정확히 입력해주세요.");
     location.href="camplogin2.jsp";
  </script>	 
<%}%>	
</body>
</html>







