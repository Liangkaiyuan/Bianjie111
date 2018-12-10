package com.sh.struts.form;

import org.apache.struts.action.ActionForm;
import org.apache.struts.upload.FormFile;

public class HotelForm extends ActionForm{
	
	private int h_id;
	private String h_name;
	private String h_info;
	private String h_tel;
	private String h_email;
	private String h_address;
	private String h_img;
	
	private FormFile img;

	public int getH_id() {
		return h_id;
	}

	public void setH_id(int h_id) {
		this.h_id = h_id;
	}

	public String getH_name() {
		return h_name;
	}

	public void setH_name(String h_name) {
		this.h_name = h_name;
	}

	public String getH_info() {
		return h_info;
	}

	public void setH_info(String h_info) {
		this.h_info = h_info;
	}

	public String getH_tel() {
		return h_tel;
	}

	public void setH_tel(String h_tel) {
		this.h_tel = h_tel;
	}

	public String getH_email() {
		return h_email;
	}

	public void setH_email(String h_email) {
		this.h_email = h_email;
	}

	public String getH_address() {
		return h_address;
	}

	public void setH_address(String h_address) {
		this.h_address = h_address;
	}

	public String getH_img() {
		return h_img;
	}

	public void setH_img(String h_img) {
		this.h_img = h_img;
	}

	public FormFile getImg() {
		return img;
	}

	public void setImg(FormFile img) {
		this.img = img;
	}
}
