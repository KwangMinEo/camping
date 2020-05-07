package bbs;

import java.sql.*;
import java.util.Date;
import java.util.ArrayList; //전체조회, 한건조회


public class Global {
	public Connection CN ; //DB서버정보및 user/pwd기억, CN참조해서 명령어생성
	public Statement ST ; //정적인명령어 ST=CN.createStatement(X);
	public PreparedStatement PST; //동적인명령어 PST=CN.prepareStatement(sql);
	public ResultSet RS ;//조회한결과기억 RS=ST.executeQuery(select~),RS.next()
	
	public String msg ; //쿼리문기억하는 문자열 
	public ArrayList reservations;
			  
	//guest_reservation table variables
	public int Rno, Rdays, Ramount;
	public String Rname, Rbirth, Rphone, Remail, Rpwd, Rnum, Rtype1, Rtype2;
	public Date Rrdate, Rcheckin; //날짜
	
	//guest_board table variables
	public int Bnum, hit;
	public String Bdate, Btitle, Bcontent; 
	
	

	

}//Global class END
