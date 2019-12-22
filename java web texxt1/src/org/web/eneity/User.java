package org.web.eneity;
 
/**
 * 用户实体类
 * 
 * @author Administrator
 *
 */
public class User {
	private int id;
	private String username;   //用户名
	private String password;   //密码
	private String mail;//邮箱
	public User() {
	}
 
	public User(String username, String password,String mail) {
 
		this.username = username;
		this.password = password;
		this.mail = mail;
	}
 
	public int getId() {
		return id;
	}
 
	public void setId(int id) {
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
	public String getMail() {
		return mail;
	}
 
	public void setMail(String mail) {
		this.mail = mail;
	}
 
}
