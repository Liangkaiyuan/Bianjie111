<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<div id="sidebar">

		<h1>导 航</h1>
		<ul class="sidemenu">
			
				<li><a href="<%=request.getContextPath() %>/users.do?m=list_admin"><span>用户管理</span></a></li>		
				<li><a href="<%=request.getContextPath() %>/rooms.do?m=list_admin"><span>客房管理</span></a></li>								
				<li><a href="<%=request.getContextPath() %>/orders.do?m=list_admin"><span>订单管理</span></a></li>	
				<li><a href="<%=request.getContextPath() %>/comments.do?m=list_admin"><span>留言管理</span></a></li>	
				<li><a href="<%=request.getContextPath() %>/admin/users_pwd.jsp"><span>修改密码</span></a></li>	
				<li><a href="<%=request.getContextPath() %>/admin/exit.jsp"><span>退出</span></a></li>	
			</ul>
</div>
