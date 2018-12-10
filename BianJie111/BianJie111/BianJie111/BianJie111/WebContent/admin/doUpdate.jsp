<%@ page import="java.util.*,com.lives.dao.*,com.lives.bean.*" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	int id=Integer.parseInt(request.getParameter("id"));	
	String user_name=request.getParameter("user_name");
	String user_sex=request.getParameter("user_sex");
	String user_idcard=request.getParameter("user_idcard");
	String user_pay=request.getParameter("user_pay");//预定方式
	String user_room=request.getParameter("user_room");
	String user_beizhu=request.getParameter("user_beizhu");
	String user_time=request.getParameter("o_etime");
	//创建bean对象使用set方法
	UserInfo obj=new UserInfo();
	obj.setId(id);
	obj.setUser_name(user_name);
	obj.setUser_sex(user_sex);
	obj.setUser_idcard(user_idcard);	
	obj.setUser_pay(user_pay);	
	obj.setUser_room(user_room);
	obj.setUser_beizhu(user_beizhu);
	obj.setTime(user_time);
	//调用数据库的dao方法
	UserInfoDao dao=new UserInfoDao();
	dao.update(obj);

	response.sendRedirect("lives_list.jsp");
	out.println ("<script language=javascript>alert('密码错误');window.location='login.jsp'</script>");
%>
