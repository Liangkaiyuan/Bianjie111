package com.sh.struts.form;

import java.util.Date;

import org.apache.struts.action.ActionForm;

public class UsersForm extends ActionForm {

	private int u_id;
	private String u_name;
	private String u_pwd;
	private String u_base64;
	private String u_email;
	private int u_state;
	private Date u_time;
	
	public String getU_base64() {
		return u_base64;
	}
	public void setU_base64(String u_base64) {
		this.u_base64 = u_base64;
	}
	public int getU_state() {
		return u_state;
	}
	public void setU_state(int u_state) {
		this.u_state = u_state;
	}
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public Date getU_time() {
		return u_time;
	}
	public void setU_time(Date u_time) {
		this.u_time = u_time;
	}
}
