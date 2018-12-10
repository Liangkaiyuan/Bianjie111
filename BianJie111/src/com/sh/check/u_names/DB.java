package com.sh.check.u_names;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {
	
	private static Connection conn =null;
 
	private DB(){
		
	}
	
	public static Connection getConn(){
		if (conn != null) {
			return conn;
		}
		try{
			 Class.forName("com.mysql.jdbc.Driver");    
		String url = "jdbc:mysql://localhost/sh?autoReconnect=true&useUnicode=true&characterEncoding=utf-8";
		conn= DriverManager.getConnection(url,"root", "123");		
		return conn;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		
	}
}
