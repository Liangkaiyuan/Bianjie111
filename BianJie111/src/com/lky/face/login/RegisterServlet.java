package com.lky.face.login;

import java.io.IOException;  
import javax.servlet.ServletException;  
import javax.servlet.annotation.WebServlet;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
  
  
/** 
 * Servlet implementation class RegisterServlet 
 */  
@WebServlet("/registerServlet")  
public class RegisterServlet extends HttpServlet {  
    private static final long serialVersionUID = 1L;  
         
    /** 
     * @see HttpServlet#HttpServlet() 
     */  
    public RegisterServlet() {  
        super();  
        // TODO Auto-generated constructor stub  
    }  
  
    /** 
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response) 
     */  
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
            doPut(request, response);  
     }    
      
  
    /** 
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response) 
     */  
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
        request.setCharacterEncoding("utf-8");  
        response.setContentType("text/html;charset=utf-8");   
        request.setCharacterEncoding("utf-8");    
         int id=Integer.valueOf(request.getParameter("id"));    
         String name=request.getParameter("name");    
         String password=request.getParameter("password"); 
         User user=new User();  
         user.setId(id);  
         user.setUname(name);  
         user.setPassword(password);    
         UserDao userDAO=new UserDao();   
         userDAO.addUser(user);  
         System.out.println("注册成功");  
         request.getRequestDispatcher("login.jsp").forward(request, response);  
    }  
}