package com.lky.face;
import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.SQLException;

public class DBConnection {

/**

* 获得数据库的连接

* @return

*/

public static Connection getConn(){

   //第一步：定义连接数据库的驱动、url、数据库用户名、数据库用户名密码

   String driver = "com.mysql.jdbc.Driver";

   String url = "jdbc:mysql://localhost:3306/sh?autoReconnect=true&useUnicode=true&characterEncoding=utf-8";

   String username = "root";

   String password = "123";

   //第二步：定义一个数据库连接对象conn,用于返回数据库的连接

   Connection conn = null;

   try {

        //第三步：加载数据库驱动

       Class.forName(driver); //classLoader,加载对应驱动

       //第四步：获得数据库的连接，并赋值给conn对象

       conn = (Connection) DriverManager.getConnection(url, username, password);

   } catch (ClassNotFoundException e) {

       e.printStackTrace();

   } catch (SQLException e) {

       e.printStackTrace();

   }

   //第五步：返回数据库的连接对象

   return conn;

}

}