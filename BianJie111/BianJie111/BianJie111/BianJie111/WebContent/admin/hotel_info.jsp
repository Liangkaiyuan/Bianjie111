<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<title>�����ݹ���ϵͳ��̨</title>
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
				<h3>��������Ϣ���� &nbsp;&nbsp;<a href="<%=request.getContextPath() %>/hotel.do?m=toupdate_admin">�޸�</a></h3>
				<table width="700">
				<tr align="center">
					<td>ͼƬ</td>
					<td><img src="<%=request.getContextPath() %>/${obj.h_img }" width="100" height="100"/></td>
	            </tr>
	            <tr align="center">
					<td width="100">���ƣ�</td>
					<td>${obj.h_name }</td>
	            </tr>
	            <tr align="center">
					<td>��飺</td>
					<td>${obj.h_info }</td>
	            </tr>
	            <tr align="center">
					<td>�绰��</td>
					<td>${obj.h_tel }</td>
	            </tr>
	            <tr align="center">
					<td>���䣺</td>
					<td>${obj.h_email }</td>
	            </tr>
	            <tr align="center">
					<td>��ַ��</td>
					<td>${obj.h_address }</td>
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
