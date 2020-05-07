package bbs;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Vector;

import org.eclipse.jdt.internal.compiler.ast.ThrowStatement;

import com.sun.org.apache.bcel.internal.generic.ExceptionThrower;

import bbs.DB;
import bbs.Global;

public class GuestSQL extends Global {	
	int result;
  public GuestSQL() {
	 CN = DB.getConnection();
	 if(CN==null) {
	    System.out.println("GuestSQL기본생성자 db연결실패");
	 }
   }//end
	
  
  public int reserve_insert(GuestDTO dto) {
	int ok = 0;
	try {
	 msg="insert into guest_reservation values(guest_reservation_seq.nextval,?,?,?,?,?,?,sysdate,?,?,?,?,?)";
	 PST = CN.prepareStatement(msg);
	 	   PST.setString(1, dto.getName());
	 	   PST.setString(2, dto.getBirth());
	 	   PST.setString(3,dto.getEmail());
	 	   PST.setString(4, dto.getPhone());
	 	   PST.setString(5, dto.getPwd());
	 	   PST.setString(6, dto.getR_num());
	 	   PST.setString(7, dto.getR_checkin());
	 	   PST.setInt(8, dto.getR_days());
	 	   PST.setString(9, dto.getR_type1());
	 	   PST.setString(10, dto.getR_type2());
	 	   PST.setInt(11,dto.getR_amount());
	 ok = PST.executeUpdate();
	 if(ok>0) {
		 System.out.println("GuestDTO매개인자이용 저장성공"); 
		 CN.commit();
		 }
	}catch(Exception ex){ }
	return ok ;
  }//end
  
  
  public Vector<GuestDTO> reserve_selectAll( ) { 
	 Vector<GuestDTO> list= new Vector<GuestDTO>();
	 try {
	  msg= "select * from guest_reservation";
	  ST = CN.createStatement();
	  RS = ST.executeQuery(msg);
	  while(RS.next()==true) {
		  GuestDTO dto = new GuestDTO(); //dto객체는 while반복문안쪽에 위치
		  dto.setNo(RS.getInt("no"));
		  dto.setName(RS.getString("name"));
		  dto.setPhone(RS.getString("phone"));
		  dto.setPwd(RS.getString("pwd"));
		  dto.setBirth(RS.getString("birth"));
		  dto.setEmail(RS.getString("email"));
		  dto.setR_num(RS.getString("r_num"));
		  dto.setR_checkin(RS.getString("r_checkin"));
		  dto.setR_date(RS.getDate("r_date"));
		  dto.setR_days(RS.getInt("r_days"));
		  dto.setR_type1(RS.getString("r_type1"));
		  dto.setR_type2(RS.getString("r_type2"));
		  dto.setR_amount(RS.getInt("r_amount"));
		  list.add(dto); //필수항목
	  }//while end
	 }catch(Exception e) { }
	 return list;
  }//guestSelect end
  
  public GuestDTO reserve_config(String reservenum) { //고유번호로 확인
		 GuestDTO dto = new GuestDTO(); 
		try {
			msg="select * from guest_reservation where r_num = ?";
			PST = CN.prepareStatement(msg);
			 	   PST.setString(1, reservenum);
			 	 
	 	    RS = PST.executeQuery();
		  if(RS.next()==true) {
			  dto.setName(RS.getString("name"));
			  dto.setPhone(RS.getString("phone"));
			  dto.setBirth(RS.getString("birth"));
			  dto.setR_num(RS.getString("r_num"));
			  dto.setR_checkin(RS.getString("r_checkin"));
			  dto.setR_date(RS.getDate("r_date"));
			  dto.setR_days(RS.getInt("r_days"));
			  dto.setR_type1(RS.getString("r_type1"));
			  dto.setR_type2(RS.getString("r_type2"));
			  dto.setEmail(RS.getString("email"));
			  }  else {return null;}
		}catch(Exception ex) { }
		return dto;
	  }//reserve_config end

public GuestDTO reserve_config2(String reservenum) { //이름으로 확인
		 GuestDTO dto = new GuestDTO(); 
		try {
			msg="select * from guest_reservation where name = ?";
			PST = CN.prepareStatement(msg);
			 	   PST.setString(1, reservenum);
			 	 
	 	    RS = PST.executeQuery();
		  if(RS.next()==true) {
			  dto.setName(RS.getString("name"));
			  dto.setPhone(RS.getString("phone"));
			  dto.setBirth(RS.getString("birth"));
			  dto.setR_num(RS.getString("r_num"));
			  dto.setR_checkin(RS.getString("r_checkin"));
			  dto.setR_date(RS.getDate("r_date"));
			  dto.setR_days(RS.getInt("r_days"));
			  dto.setR_type1(RS.getString("r_type1"));
			  dto.setR_type2(RS.getString("r_type2"));
			  dto.setEmail(RS.getString("email"));
			  }  else {return null;}
		}catch(Exception ex) { }
		return dto;
	  }//reserve_config2 end
  
  public GuestDTO reserve_config(String reservenum, String pwd) { //예약번호와 비밀번호로 예약확인
	 GuestDTO dto = new GuestDTO(); 
	try {
		msg="select * from guest_reservation where r_num = ? and pwd = ?";
		PST = CN.prepareStatement(msg);
		 	   PST.setString(1, reservenum);
		 	   PST.setString(2,pwd);
 	    RS = PST.executeQuery();
	  if(RS.next()==true) {
		  dto.setName(RS.getString("name"));
		  dto.setPhone(RS.getString("phone"));
		  dto.setBirth(RS.getString("birth"));
		  dto.setR_num(RS.getString("r_num"));
		  dto.setR_checkin(RS.getString("r_checkin"));
		  dto.setR_date(RS.getDate("r_date"));
		  dto.setR_days(RS.getInt("r_days"));
		  dto.setR_type1(RS.getString("r_type1"));
		  dto.setR_type2(RS.getString("r_type2"));
		  dto.setEmail(RS.getString("email"));
		  }  else {return null;}
	}catch(Exception ex) { }
	return dto;
  }//reserve_config end
  
  public GuestDTO reserve_config2(String name, String phone) { //이름과 휴대폰 번호로 예약확인
	 GuestDTO dto = new GuestDTO(); 
	try {
		msg="select * from guest_reservation where name = ? and phone = ?";
		PST = CN.prepareStatement(msg);
		 	   PST.setString(1, name);
		 	   PST.setString(2,phone);
 	    RS = PST.executeQuery();
	  if(RS.next()==true) {
		  dto.setName(RS.getString("name"));
		  dto.setPhone(RS.getString("phone"));
		  dto.setBirth(RS.getString("birth"));
		  dto.setR_num(RS.getString("r_num"));
		  dto.setR_checkin(RS.getString("r_checkin"));
		  dto.setR_date(RS.getDate("r_date"));
		  dto.setR_days(RS.getInt("r_days"));
		  dto.setR_type1(RS.getString("r_type1"));
		  dto.setR_type2(RS.getString("r_type2"));
		  dto.setEmail(RS.getString("email"));
		  }  else {return null;}
	}catch(Exception ex) { }
	return dto;
  }//reserve_config2 end
  
  
  public int reserveCancel( String rnum ) { //guestDelete.jsp문서에서사용
  	 int ok=0;
	 try {
		msg="delete from guest_reservation where r_num = ? " ;
		PST = CN.prepareStatement(msg);
			  PST.setString(1, rnum);
		ok = PST.executeUpdate();
		System.out.println(rnum +" 데이터 삭제 성공 ");
		CN.commit();
	 }catch (Exception e){System.out.println(e);}
	 return ok; 
	}//reserveCancel end
  
  public int reviewDelete( String my ) { 
	  	 int ok=0;
		 try {
			msg="delete from guest_board where num = ? " ;
		
			PST = CN.prepareStatement(msg);
				  PST.setString(1, my);
			ok = PST.executeUpdate();
		 }catch (Exception e){System.out.println(e);}
		 return ok; 
		}//end
  
  
	
}//GuestSQL class END





