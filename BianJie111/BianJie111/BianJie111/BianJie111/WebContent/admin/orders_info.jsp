<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<title>艺术馆管理系统后台</title>
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
				<h3>订单管理</h3>
				<table width="700">
				<tr align="center">
					<th>用户</th>
	              	<th>客房</th>
	              	<th>时间</th>
	              	<th>人数</th>
	              	<th>客房数</th>
	              	<th>联系人</th>
	              	<th>电话</th>
	              	<th>状态</th>
	            </tr>
				<tr>
					
					<td align="center">
	                	${obj.users.u_name }
		            </td>
		            <td align="center">
	                	${obj.rooms.r_name }
		            </td>
		            <td align="center">
		            	${obj.o_stime }<br/>
		            	${obj.o_etime }
	                </td>
	               
	                <td align="center">
	                	${obj.o_sex }
		            </td>
		            <td align="center">
	                	${obj.o_idcard }
		            </td>
		            <td align="center">
	                	${obj.o_name }
		            </td>
		            <td align="center">
	                	${obj.o_tel }
		            </td>
		            <td>
		            	<c:if test="${obj.o_state == 0}">
                			审核中
                		</c:if>
                		<c:if test="${obj.o_state == 1}">
                			通过
                		</c:if>
                		<c:if test="${obj.o_state == 2}">
                			拒绝
                		</c:if>
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
