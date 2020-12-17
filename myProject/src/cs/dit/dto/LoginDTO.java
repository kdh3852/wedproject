package cs.dit.dto;

public class LoginDTO {

	private String user_id;
	private String pwd;
	private String pwdCheck;
	private String name;
	private String nickname;
	private String tel;
	private String email;
	private String gender;
	
	public LoginDTO() {}
	
	public LoginDTO(String user_id, String pwd, String pwdCheck, String name, String nickname, String tel, String email,
			String gender) {
		super();
		this.user_id = user_id;
		this.pwd = pwd;
		this.pwdCheck = pwdCheck;
		this.name = name;
		this.nickname = nickname;
		this.tel = tel;
		this.email = email;
		this.gender = gender;
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPwdCheck() {
		return pwdCheck;
	}
	public void setPwdCheck(String pwdCheck) {
		this.pwdCheck = pwdCheck;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
}
