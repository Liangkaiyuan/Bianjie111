<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/images/SimpleBlog.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/news_bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/news_bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/news_bootstrap/js/jQuery.js"></script>
<script src="${pageContext.request.contextPath}/news_bootstrap/js/bootstrap.js"></script>

<script src="${pageContext.request.contextPath}/news_js/ckeditor/ckeditor.js"></script>
<script src="${pageContext.request.contextPath}/news_js/My97DatePicker/WdatePicker.js"></script>
<%
	String mainPage=(String)request.getAttribute("mainPage");
	if(mainPage==null || mainPage.equals("")){
		mainPage="/background/default.jsp";
	}
%>
</head>
<body>
<div id="wrap">
<jsp:include page="/admin/head.jsp"/>

<div id="content-wrap">
		<jsp:include page="<%=mainPage %>"></jsp:include>
	</div>

<!-- Footer -->
		<div id="footer">
			
		</div>	
</div>
</body>
</html>