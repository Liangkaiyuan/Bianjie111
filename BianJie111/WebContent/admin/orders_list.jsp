<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
				<h3>订单管理</h3>
				<span><li><a href="<%=request.getContextPath() %>/orders.do?m=listexecel_admin"><span>导出订单统计</span></a></li>
				</span><form action="admin/b.jsp" method="post" >
查询用户名:<input type="text" name="name"/>
         <input type="submit" value="提交" />
</form>
				
				
				<table width="700">
				<tr align="center">
					<th>用户</th>
	              	<th>客房</th>
	              	<th>日期</th>
	              	<th>性别</th>
	              	<th>身份证号码</th>
	              	<th>联系人</th>
	              	<th>电话</th>
	              	<th>状态</th>
	              	<th>操作</th>
				</tr>
				<c:forEach items="${pageinfo.list}" var="obj" varStatus="con">
				<tr>
					
					<td align="center">
	                	${obj.u_name }
		            </td>
		            <td align="center">
	                	${obj.r_name }
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
		            <td align="center">
		            	<c:if test="${obj.o_state == 0}">
		            		<a href="<%=request.getContextPath() %>/orders.do?m=state_admin&o_id=${obj.o_id }&o_state=1">通过</a>
		            		<a href="<%=request.getContextPath() %>/orders.do?m=state_admin&o_id=${obj.o_id }&o_state=2">拒绝</a>
		            	</c:if>
		            	<a href="<%=request.getContextPath() %>/orders.do?m=delete_admin&o_id=${obj.o_id }"
		             		onclick="return confirm('确定删除吗？')">删除</a>
		            </td>
				</tr>
				</c:forEach>
				<tr>
					<td colspan="9" align="center">
						<jsp:include page="/pageinfo.jsp">
							<jsp:param value="orders.do?m=list_admin" name="path"/>
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
