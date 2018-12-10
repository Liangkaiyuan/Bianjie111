<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>艺术馆管理系统后台</title>

<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/images/SimpleBlog.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script type="text/javascript" >
	function checklogin(){
		var u_name = $("#u_name").attr("value");
		var u_pwd = $("#u_pwd").attr("value");
		if($.trim(u_name).length == 0){
			alert("用户名不能为空！");
			return false;
		}
		
		if($.trim(u_pwd).length == 0){
			alert("密码不能为空！");
			return false;
		}
	}
</script>
<link rel="shortcut icon" href="img/favicon.ico">
		<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">
</head>
<body>
<!-- Wrap -->
<div id="wrap">
		
		<!-- Header -->
		<div id="header">
					
			<h1 id="logo">艺术馆管理系统 </h1>		
		</div>
		
		<!-- menu -->
		<div id="menu">
			<ul>
				<li id="current"><a href="<%=request.getContextPath() %>/hotel.do?m=index" class="ma"><span>返回首页</span></a></li>	&nbsp;&nbsp;&nbsp;&nbsp;<li><a href="admin_face_reg.jsp">管理员人脸注册</a></li>	
			</ul>
		</div>	
		
		
		<!--Content Wrap -->
		<div id="content-wrap">
			
			<div id="main">
				
			   	<h3>后台登陆</h3>
					<form id="loginform" method="post" action="<%=request.getContextPath() %>/users.do?m=login_admin"
						onsubmit="return checklogin();">

						<p>
							<label>用户名:</label>
							<input type="text" id="u_name" class="full" name="u_name" autocomplete="off"/>
							<label>密码:</label>
							<input type="password" id="u_pwd" class="full" value="" name="u_pwd" autocomplete="off"/>
							<c:if test="${message != null}">
								<label><span style="color:red">${message }</span></label>
							</c:if>
							<label>
							<input type="submit" class="btn" value="登 录"/> &nbsp; 
							</label>
							<div><h3>默认用户名：admin<br />
			             默认密码：admin</h3>
			</div>
						</p>
					</form>		
									
			</div>

          
		<!--End content-wrap-->
		</div>
		
		<!-- Footer -->
		<div id="footer">
		
			<p>   			
			
			</p>
			
		</div>	
			
<!-- END Wrap -->
</div>
	<% 
String user="FACE";			
 session.setAttribute("user", user);
  %>
</body>
</html>
