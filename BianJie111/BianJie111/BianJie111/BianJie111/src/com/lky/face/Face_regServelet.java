package com.lky.face;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sh.check.u_names.DB;

/**
 * Servlet implementation class Face_reg
 */
@WebServlet("/Face_reg")
public class Face_regServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Face_regServelet() {
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
		
		 response.setContentType("text/html");
	        response.setCharacterEncoding("utf-8");
			
			String base64 = request.getParameter("base64");
			
			//�������ݿ�
			
			try{	//�������ݿ������
			Connection conn = DBConnection.getConn();
			//sql���
			String admin="admin";
			String sql ="update users set u_base64 = ? where u_name='"+admin+"'";
			//String sql="insert into face(base64) values(?)";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, base64);
			pstm.executeUpdate();
			response.getWriter().print(true);
				//�ر����ݿ�
			 conn.close();
		     pstm.close();
		
			 }catch(Exception e){
					e.printStackTrace();
			}	

		
	}

}
