<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<head>
<title>艺术馆管理系统后台</title>
<link rel="shortcut icon" href="img/favicon.ico">
		<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/images/SimpleBlog.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script> 
	function checklogin(){
		var u_name = $("#u_name").attr("value");
		var u_pwd = $("#u_pwd").attr("value");
		var u_rpwd = $("#u_rpwd").attr("value");
		
		if(u_name.length == 0){
			alert("用户账号不能为空");
			return false;
		}
		if(u_pwd.length == 0){
			alert("密码不能为空");
			return false;
		}
		
		if(u_rpwd.length == 0){
			alert("确认密码不能为空");
			return false;
		}
		
		if(u_rpwd != u_pwd){
			alert("两次密码不一致");
			return false;
		}
		
	}
</script>
</head>

<body>
<!-- Wrap -->
<div id="wrap">
		
		<jsp:include flush="true" page="head.jsp"></jsp:include>
		<!--Content Wrap -->
		<div id="content-wrap">
			
			<div id="main">
				<h3>添 加</h3>
				<html:form action="/users.do?m=add_admin" method="post"  onsubmit="return checklogin();">
	        		<p>
					<label>账号<span style="color:red">*</span></label>
					<input name="u_name" id="u_name" type="text" size="30" maxlength="20"/>
					
					<label>密码<span style="color:red">*</span></label>
					<input name="u_pwd" id="u_pwd"  type="password" size="33" maxlength="20"/>
					<label>确认密码<span style="color:red">*</span></label>
					<input name="u_rpwd" id="u_rpwd"  type="password" size="33" maxlength="20"/>
					<br />	
					<c:if test="${message != null}">
						<label><span style="color:red">${message}</span></label>
					</c:if>
					<br />	
					<input class="button" type="submit" value="添 加" />	
					<input class="button" type="submit" value="重 置" />		
					</p>					
				</html:form>				
				<br />				
									
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
