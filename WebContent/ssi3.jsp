<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

</head>
<body>
	<%!
		Connection CN;//DB서버정보및 user/pwd기억, CN참조해서 명령어생성
		Statement ST, ST3; //정적인명령어 ST=CN.createStatement();<-가로안에 비워둠
		PreparedStatement PST;//동적인명령어 PST=CN.prepareStatement(sql);
		CallableStatement CS;//나중에 storedProcedure
		ResultSet RS, RS3;//조회한결과기억 RS=ST.executeQuery(select~),RS.next()
		String Rname;
		String Rphone;
		String Tphone,Tnum,Tname;
		int Crn;//행번호
		int Csabun, Chit;//사번,조회수
		String Cnk,Ccontent, Ctitle, Cwriter, Cname, Fname,Lname, Cr_num;//이름,제목,이메일
		java.util.Date Cwdate;//날짜
		
		int Cdata;//int data 대신
		int Atotal=1; //전체레코드갯수316
		int Ctotal=1; //조회레코드갯수
		int Rtotal=0;
		String msg, msg3; //쿼리문기억하는 문자열
		
		//guestreply테이블관련 댓글 전역변수
		int Rrn, Rnum, Rsabun;
		String Rwriter, Rcontent;
	%>
	
	<%
	 //첫번째 오라클드라이브 로드기술
	 try{
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
	 CN=DriverManager.getConnection(url,"system","1234");
	 //System.out.println("오라클연결성공 11:12 11:15 11:52");
	 }catch(Exception ex){
		 System.out.println("에러: "+ex );
	 }
	%>
</body>
</html>