<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.lang.String" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ page import="bbs.Global" %>



<!DOCTYPE html>
<html>
<head>
<title>[reserveSave.jsp]</title>
</head>
<body>
 <jsp:useBean id="sql" class="bbs.GuestSQL" />
 <jsp:useBean id="dto" class="bbs.GuestDTO" />
 	<% request.setCharacterEncoding("UTF-8"); %>
	<%
	  //reserve_form.jsp���� ������ �ޱ�
  	    		
	  String Rname = request.getParameter("name");
	  String Rbirth = request.getParameter("birth");
	  String Rphone = request.getParameter("phone");
	  String Remail = request.getParameter("email");
	  String Rpwd = request.getParameter("pwd");
	  String Rrdate = request.getParameter("r_date");
	  String Rdays = request.getParameter("r_days");
	  String[] Rtype = request.getParameterValues("r_type");
	  String Rtype1 = Rtype[0];
	  String Rtype2=null;
	  if (Rtype.length==2){
	  	Rtype2 = Rtype[1];
	  }
	  
	  System.out.println(Rname);
	  System.out.println(Rbirth);
	  System.out.println(Rphone);
	  System.out.println(Rpwd);
	  System.out.println(Rrdate);
	  System.out.println(Rdays);
	  System.out.println(Rtype);
	  System.out.println(Rtype1);
	  System.out.println(Rtype2);
	  
	  
	  //�����ȣ ���� �� ���� �ջ�
	  
	  String Rnum="";
	  int Ramount=0;
	  if(Rtype1.contains("CA")){
		  Ramount+=100000;
		  Rnum = "TCA"+Rrdate.substring(6)+Rphone.substring(8);
	  }else if(Rtype1.contains("CB")){
		  Ramount+=160000;
		  Rnum = "TCB"+Rrdate.substring(6)+Rphone.substring(8);
	  }else{
		  Ramount+=25000;
		  Rnum = "TSS"+Rrdate.substring(6)+Rphone.substring(8);
	  }
	  
	  System.out.println(Rnum);
	  
	  if(Rtype2!=null){
	  if(Rtype2.contains("CA")){
		  Ramount+=100000;
	  }else if(Rtype2.contains("CB")){
		  Ramount+=160000;
	  }else if(Rtype2.contains("SA")||Rtype2.contains("SB")){
		  Ramount+=25000;
	  }
	  }
	  
	  System.out.println(Ramount);


		
	  //������ dto��Ƽ� db�� �����ϱ�
	  dto.setName(Rname);
	  dto.setBirth(Rbirth);
	  dto.setEmail(Remail);
	  dto.setPhone(Rphone);
	  dto.setPwd(Rpwd);
	  dto.setR_num(Rnum);	  
	  dto.setR_checkin(Rrdate);
	  dto.setR_days(Integer.parseInt(Rdays));
	  dto.setR_type1(Rtype1);
	  dto.setR_type2(Rtype2);
	  dto.setR_amount(Ramount);
	  
	  System.out.println(dto);
	  
	  int ok=sql.reserve_insert(dto);
	  if(ok>0){
		  System.out.println("reservation table ���� �Ϸ�");
		  response.sendRedirect("ReservationSuccess.jsp?no="+Rnum);
	  }else {
		  System.out.println("reservation table ���� ����");
		%>
		<script type="text/javascript">
		 
		alert('���࿡ �����߽��ϴ�. �����ڿ��� �����ϼ���.');
		history.back();
		
		</script>
		
		<%
	  }

	  
	  
	  
	
	%>





</body>
</html>