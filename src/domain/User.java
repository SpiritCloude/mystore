package domain;

public class User {
	private String id;
	private String username;
	private String password;
	private String gender;
	private String birthday;
	private String telephone;
	private int state=0;
	private String role;
	
	public User() {
		super();
		// TODO 自动生成的构造函数存根
	}
	public User(String id, String username, String password, String gender, String telephone,int state, String role) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.telephone = telephone;
		this.state = state;
		this.role = role;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", gender=" + gender
				+ ", birthday=" + birthday + ", telephone=" + telephone + ", state=" + state + ", role=" + role + "]";
	}
}
