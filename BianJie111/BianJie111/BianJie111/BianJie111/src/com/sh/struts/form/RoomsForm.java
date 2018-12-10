package com.sh.struts.form;

import java.util.Date;

import org.apache.struts.action.ActionForm;
import org.apache.struts.upload.FormFile;

public class RoomsForm extends ActionForm {
	
	private int r_id;
	private String r_name;
	private Double r_price;
	private String r_img;
	private String r_bed;
	private String r_zc;
	private String r_web;
	private String r_info;
	private Date r_time;
	
	private FormFile imgs;
	
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
		this.r_id = r_id;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public Double getR_price() {
		return r_price;
	}
	public void setR_price(Double r_price) {
		this.r_price = r_price;
	}
	public String getR_img() {
		return r_img;
	}
	public void setR_img(String r_img) {
		this.r_img = r_img;
	}
	public String getR_bed() {
		return r_bed;
	}
	public void setR_bed(String r_bed) {
		this.r_bed = r_bed;
	}
	public String getR_zc() {
		return r_zc;
	}
	public void setR_zc(String r_zc) {
		this.r_zc = r_zc;
	}
	public String getR_web() {
		return r_web;
	}
	public void setR_web(String r_web) {
		this.r_web = r_web;
	}
	public String getR_info() {
		return r_info;
	}
	public void setR_info(String r_info) {
		this.r_info = r_info;
	}
	public Date getR_time() {
		return r_time;
	}
	public void setR_time(Date r_time) {
		this.r_time = r_time;
	}
	public FormFile getImgs() {
		return imgs;
	}
	public void setImgs(FormFile imgs) {
		this.imgs = imgs;
	}
}
