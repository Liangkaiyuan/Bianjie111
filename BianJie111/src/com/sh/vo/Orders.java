package com.sh.vo;

import java.util.Date;

public class Orders {

	private int o_id;
	private int o_uid;
	private int o_rid;
	private String o_stime;
	private String o_etime;
	private String o_idcard;
	private String o_sex;
	private String o_name;
	private String o_tel;
	private int o_state;
	private Date o_time;
	
	private Rooms rooms;
	private Users users;
	
	public Rooms getRooms() {
		return rooms;
	}
	public void setRooms(Rooms rooms) {
		this.rooms = rooms;
	}
	public int getO_id() {
		return o_id;
	}
	public void setO_id(int o_id) {
		this.o_id = o_id;
	}
	public int getO_uid() {
		return o_uid;
	}
	public void setO_uid(int o_uid) {
		this.o_uid = o_uid;
	}
	public int getO_rid() {
		return o_rid;
	}
	public void setO_rid(int o_rid) {
		this.o_rid = o_rid;
	}
	public String getO_stime() {
		return o_stime;
	}
	public void setO_stime(String o_stime) {
		this.o_stime = o_stime;
	}
	public String getO_etime() {
		return o_etime;
	}
	public void setO_etime(String o_etime) {
		this.o_etime = o_etime;
	}
	
	
	public String getO_idcard() {
		return o_idcard;
	}
	public void setO_idcard(String o_idcard) {
		this.o_idcard = o_idcard;
	}
	public String getO_sex() {
		return o_sex;
	}
	public void setO_sex(String o_sex) {
		this.o_sex = o_sex;
	}
	public String getO_tel() {
		return o_tel;
	}
	public void setO_tel(String o_tel) {
		this.o_tel = o_tel;
	}
	public int getO_state() {
		return o_state;
	}
	public void setO_state(int o_state) {
		this.o_state = o_state;
	}
	public Date getO_time() {
		return o_time;
	}
	public void setO_time(Date o_time) {
		this.o_time = o_time;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public String getO_name() {
		return o_name;
	}
	public void setO_name(String o_name) {
		this.o_name = o_name;
	}
}
