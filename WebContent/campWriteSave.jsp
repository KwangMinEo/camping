<%@ page language="java" contentType="text/html; charset=UTF-8"  %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %> 
<%@ include file="ssi3.jsp" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [campWriteSave.jsp]</title></head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	
 <%
  String path=application.getRealPath("./storage");
  System.out.println("경로 " + path);
  int size=1024*1024*7;
 
  DefaultFileRenamePolicy dfr = new  DefaultFileRenamePolicy( );
  MultipartRequest mr=new MultipartRequest(request,path,size,"UTF-8", dfr);

	 Cname=mr.getParameter("name");
	 Ctitle=mr.getParameter("title");
	 Ccontent=mr.getParameter("content");
	 Cr_num=mr.getParameter("sabun");


	String file = mr.getFilesystemName("file");
	   
	   msg="insert into guest_board values(guest_board_seq.nextval, ?, ?, ?, sysdate, 0, ?)";
	   PST=CN.prepareStatement(msg);
	   	   PST.setString(1, Cname);
	   	   PST.setString(2, Ctitle);
	   	   PST.setString(3, Ccontent);
	   	   PST.setString(4, Cr_num);
	   	
	   PST.executeUpdate(); 
	   
	 
	   response.sendRedirect("campList.jsp");
  
 %>
  
</body>
</html>
