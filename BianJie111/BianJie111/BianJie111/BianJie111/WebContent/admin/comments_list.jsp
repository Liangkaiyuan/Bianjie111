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
				<h3>���Թ���</h3>
				<table width="700">
				<tr align="center">
					<th>�û�</th>
	              	<th>����</th>
	              	<th>�ظ�</th>    
	              	<th>ʱ��</th>
	              	<th>����</th>
				</tr>
				<c:forEach items="${pageinfo.list}" var="obj" varStatus="con">
				<tr>
					
					<td align="center">
	                	${obj.u_name }
		            </td>
		            <td align="center">
	                	${obj.c_info }
		            </td>
		            <td align="center">
		            	<c:if test="${obj.c_replay != null}">
		            		${obj.c_replay}
		            	</c:if>
	                </td>
	               
	                <td align="center">
	                	${fn:substring(obj.c_time,0,16)}
		            </td>
		          
		            <td align="center">
		            	<a href="<%=request.getContextPath() %>/comments.do?m=toupdate_admin&c_id=${obj.c_id }">�ظ�</a>
		            	<a href="<%=request.getContextPath() %>/comments.do?m=delete_admin&c_id=${obj.c_id }"
		             		onclick="return confirm('ȷ��ɾ����')">ɾ��</a>
		            </td>
				</tr>
				</c:forEach>
				<tr>
					<td colspan="5" align="center">
						<jsp:include page="/pageinfo.jsp">
							<jsp:param value="comments.do?m=list_admin" name="path"/>
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
