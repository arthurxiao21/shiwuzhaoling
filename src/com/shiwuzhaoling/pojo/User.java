package com.shiwuzhaoling.pojo;

public class User {
	private Integer user_id;
	private String wx_id;
	private String telephone;
	private String name;
	private String email;
	private Integer stu_id;
	private String password;
	private String role;
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public Integer getFounder_id() {
		return user_id;
	}
	public void setFounder_id(Integer founder_id) {
		this.user_id = founder_id;
	}
	public String getWx_id() {
		return wx_id;
	}
	public void setWx_id(String wx_id) {
		this.wx_id = wx_id;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
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
	public Integer getStu_id() {
		return stu_id;
	}
	public void setStu_id(Integer stu_id) {
		this.stu_id = stu_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String toString() {
		return "User [user_id=" + user_id + ", wx_id=" + wx_id + ", telephone=" + telephone + ", name=" + name
				+ ", email=" + email + ", stu_id=" + stu_id + ", password=" + password + ", role=" + role + "]";
	}
	
}
