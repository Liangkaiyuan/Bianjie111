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

import com.alibaba.druid.sql.dialect.oracle.ast.stmt.OracleIfStatement.Else;
import com.lky.face.DBConnection;

/**
 * Servlet implementation class Face_Users
 */
@WebServlet("/Face_Users")
public class Face_Users extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Face_Users() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		 response.setContentType("text/html");
	        response.setCharacterEncoding("utf-8");
			
			String name = request.getParameter("username");
			
			//�������ݿ�
			if(name!=null&&name.length()>0) {
				
			
			try{	//�������ݿ������
			Connection conn = DBConnection.getConn();
			//sql���
			String sql ="SELECT * FROM users where u_name= ? ";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, name);
			 ResultSet rs = pstm.executeQuery();
			 
				if(rs.next()){
					 response.getWriter().print("用户名验证成功,正在进行人脸验证...");
				}
				else{
					response.getWriter().print("<script> alert('用户名不存在，请重新输入或注册');</script>");
					response.getWriter().print("<script> window.location.href=\"facelogin_users.jsp\";</script>");
				}
		 
			 }catch(Exception e){
					e.printStackTrace();
			}
	 
		}
			}


}
