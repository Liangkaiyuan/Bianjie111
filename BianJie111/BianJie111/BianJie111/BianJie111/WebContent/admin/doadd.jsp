<%@ page import="java.util.*,com.lives.bean.*,com.lives.dao.*" pageEncoding="UTF-8"%>
<!-- 处理操作的页面，并非用于显示数据,所以无需任何HTML代码 -->
<%
	//接收数据,在JSP中每个页面都具备一个隐藏的对象,这个对象包含着所有提交的请求信息
	//这就是request对象，也成为请求对象
	//request是一个隐式对象，所谓的隐式对象是无需声明直接使用的对象(事实上声明是存在的，不过不由我们来做)
	//getParameter是request中最常见的方法，作用是根据传入的name获取value
	//setCharacterEncoding是设置请求对象中参数的编码,必须在调用getParameter之前调用该方法
	//并且一般来说这里的编码要和提交页面的编码一致
	request.setCharacterEncoding("UTF-8");
	String user_name=request.getParameter("user_name");
	String user_sex=request.getParameter("user_sex");
	String user_idcard=request.getParameter("user_idcard");
	String user_pay=request.getParameter("user_pay");//预定方式
	String user_room=request.getParameter("user_room");
	String user_o_etime=request.getParameter("o_etime");
	String user_beizhu=request.getParameter("user_beizhu");
	String user_time=request.getParameter("o_etime");
	//创建bean对象使用set方法
	UserInfo obj=new UserInfo();
	obj.setUser_name(user_name);
	obj.setUser_sex(user_sex);
	obj.setUser_idcard(user_idcard);
	
	obj.setUser_pay(user_pay);
	
	obj.setUser_room(user_room);
	obj.setTime(user_o_etime);
	obj.setUser_beizhu(user_beizhu);
	obj.setTime(user_time);
	//调用数据库的dao方法
	UserInfoDao dao=new UserInfoDao();
	dao.save(obj);
	
	//除了request外,还有个隐藏的对象叫response
	//response也是隐式对象，无需声明就可以直接使用
	//和request不同的地方在于,它是表示响应
	//现在我们要做的时候结束完所有工作后，页面重新为index.jsp
	//所以需要通过响应对象将index.jsp页面响应回客户浏览器，否则客户浏览器得到的是doadd.jsp的页面代码
	//换句话说就是空无一物
	response.sendRedirect("lives_list.jsp");
%>
