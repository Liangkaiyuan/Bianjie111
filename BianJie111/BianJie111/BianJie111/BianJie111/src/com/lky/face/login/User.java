package com.lky.face.login;

import javafx.scene.chart.PieChart.Data;

public class User {
	private Integer id;  
    private String uname;  
    private String password;    
    private String sex;
    private String phone;
    private Data birthday ;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Data getBirthday() {
		return birthday;
	}
	public void setBirthday(Data birthday) {
		this.birthday = birthday;
	}
	
}
