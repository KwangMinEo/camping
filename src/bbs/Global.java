package bbs;

import java.sql.*;
import java.util.Date;
import java.util.ArrayList; //��ü��ȸ, �Ѱ���ȸ


public class Global {
	public Connection CN ; //DB���������� user/pwd���, CN�����ؼ� ��ɾ����
	public Statement ST ; //�����θ�ɾ� ST=CN.createStatement(X);
	public PreparedStatement PST; //�����θ�ɾ� PST=CN.prepareStatement(sql);
	public ResultSet RS ;//��ȸ�Ѱ����� RS=ST.executeQuery(select~),RS.next()
	
	public String msg ; //����������ϴ� ���ڿ� 
	public ArrayList reservations;
			  
	//guest_reservation table variables
	public int Rno, Rdays, Ramount;
	public String Rname, Rbirth, Rphone, Remail, Rpwd, Rnum, Rtype1, Rtype2;
	public Date Rrdate, Rcheckin; //��¥
	
	//guest_board table variables
	public int Bnum, hit;
	public String Bdate, Btitle, Bcontent; 
	
	

	

}//Global class END
