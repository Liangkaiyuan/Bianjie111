package com.sh.check.u_names;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lky.face.DBConnection;



@WebServlet("/u_namescheck")
public class Check_Username extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Check_Username() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	     
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("username");
		
		//�������ݿ�
		
		try{	//�������ݿ������
		Connection conn = DBConnection.getConn();
		//sql���
		String sql ="SELECT * FROM users where u_name= ? ";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, name);
		 ResultSet rs = pstm.executeQuery();
		 
			if(rs.next()){
				 response.getWriter().print("用户名已经被注册，请更换");
			}
			else{
				response.getWriter().print("用户名可用");
			}
	 
		 }catch(Exception e){
				e.printStackTrace();
		}	
 
	}


}
