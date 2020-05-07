package bbs;
import java.util.Date;

//DTO=VO=Bean=도메인(domain)= ~.jsp/~.java, ~.java/~.java, ~.java/~.xml
public class GuestDTO { //DTO=data transfer object VO=value object=도메인=Domain
	private int no, r_days, r_amount, hit;
	private String name, r_checkin, email, pwd, r_num, r_type1, r_type2, birth, phone;
	private Date r_date, wdate;
	private String title, content;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getR_days() {
		return r_days;
	}
	public void setR_days(int r_days) {
		this.r_days = r_days;
	}
	public int getR_amount() {
		return r_amount;
	}
	public void setR_amount(int r_amount) {
		this.r_amount = r_amount;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getR_num() {
		return r_num;
	}
	public void setR_num(String r_num) {
		this.r_num = r_num;
	}
	public String getR_type1() {
		return r_type1;
	}
	public void setR_type1(String r_type1) {
		this.r_type1 = r_type1;
	}
	public String getR_type2() {
		return r_type2;
	}
	public void setR_type2(String r_type2) {
		this.r_type2 = r_type2;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getR_date() {
		return r_date;
	}
	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}
	public String getR_checkin() {
		return r_checkin;
	}
	public void setR_checkin(String r_checkin) {
		this.r_checkin = r_checkin;
	}
	public Date getWdate() {
		return wdate;
	}
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	
	
	//오.버=>source => Generate Getters and Setters...=> select All
	
	
	
}//class END
