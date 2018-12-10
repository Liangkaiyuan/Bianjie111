<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<title>艺术馆管理系统后台</title>
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/images/SimpleBlog.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script> 
	function checkupdate(){
		var u_pwd = $("#u_pwd").attr("value");
		var u_rpwd = $("#u_rpwd").attr("value");
		
		if(u_pwd.length == 0){
			alert("密码不能为空");
			return false;
		}
		if(u_rpwd.length == 0){
			alert("重复不能为空");
			return false;
		}
		if(u_pwd != u_rpwd){
			alert("两次输入的密码不一致");
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
				<h3>修改密码</h3>
					<form action="<%=request.getContextPath() %>/users.do?m=pwd_admin" method="post"  onsubmit="return checkupdate();">
	        		<p>
	        		
					<label>密码<span style="color:red">*</span></label>
					<input name="u_pwd" id="u_pwd"  type="password" size="33" maxlength="20"/>
					<label>确认密码<span style="color:red">*</span></label>
					<input name="u_rpwd" id="u_rpwd"  type="password" size="33" maxlength="20"/>
					<input name="u_id" id="u_id"  type="hidden" value="${USERS.u_id }"/>
					<br />	
					<c:if test="${message != null}">
						<label><span style="color:red">${message}</span></label>
					</c:if>
					<br />	
					<input class="button" type="submit" value="修 改" />	
					<input class="button" type="submit" value="重 置" />		
					</p>					
				</form>			
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
