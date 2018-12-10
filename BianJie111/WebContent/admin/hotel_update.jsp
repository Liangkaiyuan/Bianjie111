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
	function checkupdate(){
		var h_name = $("#h_name").attr("value");
		var h_info = $("#h_info").attr("value");
		var h_tel = $("#h_tel").attr("value");
		var h_address = $("#h_address").attr("value");

		if(h_name.length == 0){
			alert("名称不能为空");
			return false;
		}
		if(h_info.length == 0){
			alert("简介不能为空");
			return false;
		}
		if(h_tel.length == 0){
			alert("电话不能为空");
			return false;
		}
		if(h_address.length == 0){
			alert("地址不能为空");
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
				<h3>修 改</h3>
				<html:form action="/hotel.do?m=update_admin" method="post"  onsubmit="return checkupdate();" 
					enctype="multipart/form-data">
					<p>
					<label>名称<span style="color:red">*</span></label>
					<input type="text" name="h_name" id="h_name" value="${obj.h_name }" size="40" maxlength="45"/>
					<label>图片</label>
					<input type="hidden" name="h_img" id="h_img" value="${obj.h_img }"/>
					<html:file property="img"  styleId="img"/>
				
					<label>简介<span style="color:red">*</span></label>
					<textarea rows="5" cols="50" id="h_info" name="h_info">${obj.h_info}</textarea>
					<label>电话</label>
					<input type="text" name="h_tel" id="h_tel" size="20" value="${obj.h_tel }" maxlength="30"/>
					<label>邮箱</label>
					<input type="text" name="h_email" id="h_email" size="40" value="${obj.h_email }" maxlength="100"/>
					<label>地址</label>
					<input type="text" name="h_address" id="h_address" size="40" value="${obj.h_address }" maxlength="150"/>
					<br />	
					<c:if test="${message != null}">
						<label><span style="color:red">${message}</span></label>
					</c:if>
					<br />	
					<input class="button" type="submit" value="修 改" />	
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
