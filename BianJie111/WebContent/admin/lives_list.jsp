<%@ page import="java.util.*,com.lives.dao.*,com.lives.bean.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<title>艺术馆管理系统后台</title>
<link rel="shortcut icon" href="img/favicon.ico">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/images/SimpleBlog.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
</head>

  <%
  	UserInfoDao dao=new UserInfoDao();
  	ArrayList list=dao.findAll();
   %>
   
   <script type="text/javascript">
   	function myAction(pid){
   		document.forms[0].user_name.value=pid;
   		document.forms[0].submit();
   	}
   </script>
   
   <%
if(session.getAttribute("user")==null){%>
	<script type="text/javascript">  
    window.location.href="a.jsp";  
    </script> 
    <%  
}
session.setMaxInactiveInterval(60);
%>
   
   
  <body>
  <!-- Wrap -->
<div id="wrap">
		 <jsp:include flush="true" page="head.jsp"></jsp:include>
		
		<!--Content Wrap -->
		<div id="content-wrap">
			
			<div id="main">
	<h1 align="center">    用户信息</h1>
	<form action="doRemove.jsp" method="post">
		<!-- 用于存放选择的id，然后会随表单提交给服务器处理页面 -->
		<input type="hidden" name="user_name">
		<table align="center" border="1" width="100%">
			<tr>
				<td colspan="10" align="right" width="100%">
					<a href="add.jsp">添加入住信息</a>
				</td>
			</tr>
			<tr>
				<th>编号</th>
				<th>姓名</th>
				<th>性别</th>
				<th>身份证号</th>
				<th>支付方式</th>
				<th>入住房间</th>
				<th>入住时间</th>
				<th>备注</th>
				<th>操作</th>
			</tr>
			<%for(int i=0;i<list.size();i++){
				UserInfo obj=(UserInfo)list.get(i);%>
				<!--Html代码-->
				<tr>
					<td><%=obj.getId()%></td>
					<td><%=obj.getUser_name()%></td>
					<td><%=obj.getUser_sex()%></td>
					<td><%=obj.getUser_idcard()%></td>
					<td><%=obj.getUser_pay()%></td>
					<td><%=obj.getUser_room()%></td>
					<td><%=obj.getTime()%></td>
					<td><%=obj.getUser_beizhu()%></td>
					<td>
						<%-- <a href="doRemove.jsp?id=<%=obj.getId()%>">删除</a> --%>
						<a href="update.jsp?id=<%=obj.getId()%>">修改</a> <br/>
						<input type="button" value="删除" onclick="myAction('<%=obj.getUser_name()%>')"/>
					</td>
				</tr>
			<%}%>
		</table>
	</form>
	
	</div>

            
		
		<!--End content-wrap-->
		</div>
		
		<!-- Footer -->
		<div id="footer">
			
		</div>	
			
<!-- END Wrap -->
</div>
	
  </body>
<html>
