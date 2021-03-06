package com.sh.struts.form;

import java.util.Date;

import org.apache.struts.action.ActionForm;

public class CommentsForm extends ActionForm {
	
	private int  c_id;
	private int  c_uid;
	private String c_info;
	private String c_replay;
	private Date c_time;
	
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public int getC_uid() {
		return c_uid;
	}
	public void setC_uid(int c_uid) {
		this.c_uid = c_uid;
	}
	public String getC_info() {
		return c_info;
	}
	public void setC_info(String c_info) {
		this.c_info = c_info;
	}
	public String getC_replay() {
		return c_replay;
	}
	public void setC_replay(String c_replay) {
		this.c_replay = c_replay;
	}
	public Date getC_time() {
		return c_time;
	}
	public void setC_time(Date c_time) {
		this.c_time = c_time;
	}
}
