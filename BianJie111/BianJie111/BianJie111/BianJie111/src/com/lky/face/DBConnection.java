package com.lky.face;
import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.SQLException;

public class DBConnection {

/**

* ������ݿ������

* @return

*/

public static Connection getConn(){

   //��һ���������������ݿ��������url�����ݿ��û��������ݿ��û�������

   String driver = "com.mysql.jdbc.Driver";

   String url = "jdbc:mysql://localhost:3306/sh?autoReconnect=true&useUnicode=true&characterEncoding=utf-8";

   String username = "root";

   String password = "123";

   //�ڶ���������һ�����ݿ����Ӷ���conn,���ڷ������ݿ������

   Connection conn = null;

   try {

        //���������������ݿ�����

       Class.forName(driver); //classLoader,���ض�Ӧ����

       //���Ĳ���������ݿ�����ӣ�����ֵ��conn����

       conn = (Connection) DriverManager.getConnection(url, username, password);

   } catch (ClassNotFoundException e) {

       e.printStackTrace();

   } catch (SQLException e) {

       e.printStackTrace();

   }

   //���岽���������ݿ�����Ӷ���

   return conn;

}

}