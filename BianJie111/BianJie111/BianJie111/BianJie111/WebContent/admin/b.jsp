<%@ page import="java.util.*,com.lives.dao.*,com.lives.bean.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/images/SimpleBlog.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>



<% 
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
System.out.println(name);
UserInfoDao dbDao = new UserInfoDao();
ArrayList list = dbDao.findName(name);
System.out.println(list);
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询结果</title>
</head>
<body>
 <!-- Wrap -->
<div id="wrap">
		 <jsp:include flush="true" page="head.jsp"></jsp:include>
		
		<!--Content Wrap -->
		<div id="content-wrap">
			
			<div id="main">
			<h1 align="center">    用户信息</h1>
			
			
			<table align="center" border="1" width="80%">
			<tr>
				<th>编号</th>
				<th>姓名</th>
				<th>性别</th>
				<th>身份证号</th>
				<th>支付方式</th>
				<th>入住房间</th>
				<th>入住时间</th>
				
			</tr>
			
	<tr>		
<%  for(int i=0;i<list.size();i++){
	Order obj=(Order)list.get(i);%>
	<td><%=obj.getO_stime()%></td>
	<td><%=obj.getO_etime()%></td>
	<td><%=obj.getO_idcard()%></td>
	<td><%=obj.getO_sex()%></td>
	<td><%=obj.getO_name()%></td>
	<td><%=obj.getO_tel()%></td>	
	<td><%=obj.getO_time()%></td>
	</tr>
<% }%>
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