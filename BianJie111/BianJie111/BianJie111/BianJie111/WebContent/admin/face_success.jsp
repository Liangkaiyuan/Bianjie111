<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<title>艺术馆管理系统后台</title>
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/images/SimpleBlog.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<style type="text/css">
h3 {
	text-align: center;
	color: green; 
	line-height: 400px
}
</style>


</head>

<body>
<!-- 设置时间限制 -->
<%
if(session.getAttribute("user")==null){%>
	<script type="text/javascript">  
    window.location.href="http://localhost:8080/BianJie/facelogin.jsp";  
    </script> 
    <%  
}
session.setMaxInactiveInterval(60);
%>
<!-- Wrap -->
<!-- Wrap -->
<div id="wrap">
		 <jsp:include flush="true" page="head.jsp"></jsp:include>
		
		<!--Content Wrap -->
		<div id="content-wrap">
			<div class="we">
			<jsp:include flush="true" page="right.jsp"></jsp:include>
          <h3>欢迎使用刷脸登录管理后台</h3>
          </div>
			
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
