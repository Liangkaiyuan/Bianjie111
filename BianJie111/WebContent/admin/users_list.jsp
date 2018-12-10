<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
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

<body>
<!-- Wrap -->
<div id="wrap">
		 <jsp:include flush="true" page="head.jsp"></jsp:include>
		
		<!--Content Wrap -->
		<div id="content-wrap">
			
			<div id="main">
				<h3>用户管理&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath() %>/users.do?m=toadd_admin">添加用户</a></h3>
				<table>
				<tr align="center">
					<th>用户名</th>
					<th>状态</th>
	              	<th>邮箱</th>
	              	<th>电话</th>
	              	<th>性别</th>	              	
	              	<th>注册时间</th>
	              	<th>操作</th>
				</tr>
				<c:forEach items="${pageinfo.list}" var="obj" varStatus="con">
				<tr>
					
					<td align="center">
	                	${obj.u_name }
		            </td>
		            <td align="center">
		            	<c:if test="${obj.u_state == 0}">
		            		管理员
		            	</c:if>
		            	<c:if test="${obj.u_state == 1}">
		            		普通会员
		            	</c:if>
	                </td>
		            <td align="center">
	                	${obj.u_email }
		            </td>
		            <td align="center">
	                	${obj.u_phone }
		            </td>
		            <td align="center">
	                	${obj.u_sex }
		            </td>
	               
	                <td align="center">
	                	${fn:substring(obj.u_time,0,16)}
		            </td>
		            <td align="center">
		            	<a href="<%=request.getContextPath() %>/users.do?m=delete_admin&u_id=${obj.u_id }"
		             		onclick="return confirm('确定删除吗？')">删除</a>
		            </td>
				</tr>
				</c:forEach>
				<tr>
					<td colspan="5" align="center">
						<jsp:include page="/pageinfo.jsp">
							<jsp:param value="users.do?m=list_admin" name="path"/>
						</jsp:include>
					</td>
				</tr>
			</table>			
									
			</div>

            
		
		<!--End content-wrap-->
		</div>
		
		<!-- Footer -->
		<div id="footer">
			
		</div>	
			
<!-- END Wrap -->
</div>

</body>
</html>
