<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
	<!-- Header -->
		<div id="header">
					
			<h1 id="logo">艺术馆管理系统后台</h1>
			<h2 id="slogan"></h2>			
		
			<div id="searchform">	
				
			</div>
			
		</div>
		
		<!-- menu -->
		<div id="menu">
			<ul>
				<!--  <li><a href="<%=request.getContextPath() %>/admin/a.jsp"><span>查询</span></a></li>	-->							
				
				<li><a href="<%=request.getContextPath() %>/users.do?m=list_admin"><span>用户管理</span></a></li>		
				<li><a href="<%=request.getContextPath() %>/rooms.do?m=list_admin"><span>客房管理</span></a></li>								
				<li><a href="<%=request.getContextPath() %>/orders.do?m=list_admin"><span>订单管理</span></a></li>	
				<li><a href="<%=request.getContextPath() %>/admin/lives_list.jsp"><span>入住登记</span></a></li>								
				<li><a href="<%=request.getContextPath() %>/comments.do?m=list_admin"><span>住房留言管理</span></a></li>	
				
				
				  <li><a href="${pageContext.request.contextPath}/news?action=preSave"><span>发布新闻</span></a></li>
				  <li><a href="${pageContext.request.contextPath}/news?action=backList"><span>新闻维护</span></a></li>
				
				  <li><a href="${pageContext.request.contextPath}/comment?action=backList"><span>新闻评论维护</span></a></li>
				
				  
                	<li><a href="<%=request.getContextPath() %>/admin/users_pwd.jsp"><span>修改后台密码</span></a></li>	
				<li><a href="http://localhost:8080/BianJie111/a.jsp"><span>前台</span></a></li>						
				<li><a href="<%=request.getContextPath() %>/admin/exit.jsp"><span>退出</span></a></li>	
			</ul>
		</div>	