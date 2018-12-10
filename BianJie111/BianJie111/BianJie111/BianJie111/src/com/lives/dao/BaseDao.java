package com.lives.dao;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
 
public class BaseDao {
	public static Connection getConnection()throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost/sh?user=root&password=123&useUnicode=true&characterEncoding=utf-8"; 
	    Connection con=DriverManager.getConnection(url);
		return con;
	}
	
	public static void close(ResultSet rs,Statement sta,Connection con)throws Exception{
		if(rs!=null){
                 //关闭结果集
               rs.close();
		}
		if(sta!=null){
                 //关闭操作句柄
                sta.close();
		}
		if(con!=null){
                //关闭链接
               con.close();
		}
	}
}
