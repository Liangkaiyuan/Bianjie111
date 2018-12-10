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
				<h3>客房管理&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath() %>/rooms.do?m=toadd_admin">添加客房</a></h3>
				
				   <html:form action="/rooms.do?m=list_admin" method="post" >
        	<select name="kid" id="kid">
											<option value="">请选择</option>
										      <option value="r_name">名称</option>
										      <option value="r_bed">床型</option>
						
										</select>:<input type="text" name="keyname"/> &nbsp;&nbsp;  <input type="submit" class="btn " value="搜 索"/>  &nbsp;&nbsp;&nbsp;&nbsp; 
     </html:form>
      
				<table width="680">
				<tr align="center">
					<th>图片</th>
	              	<th>客房名称</th>
	              	<th>价格</th>
	              	<th>床型</th>
	              	<th>早餐</th>
	              	<th>网线</th>
	              	<th>说明</th>
	              	<th>操作</th>
				</tr>
				<c:forEach items="${pageinfo.list}" var="obj" varStatus="con">
				<tr>
					
					<td align="center">
	                	<c:if test="${obj.r_img != null && obj.r_img != ''}">
	                		<img src="<%=request.getContextPath() %>/${obj.r_img }" width="60" height="60"/>
	                	</c:if>
		            </td>
		            <td align="center">
	                	${obj.r_name }
		            </td>
		            <td align="center">
		            	${obj.r_price }
	                </td>
	               
	                <td align="center">
	                	${obj.r_bed }
		            </td>
		            <td align="center">
	                	${obj.r_zc }
		            </td>
		            <td align="center">
	                	${obj.r_web }
		            </td>
		            <td>
		            	<c:choose>
	                		<c:when test="${fn:length(obj.r_info)>10}">
	                			${fn:substring(obj.r_info,0,10)}...
	                		</c:when>
	                		<c:otherwise>
	                			${obj.r_info}
	                		</c:otherwise>
	                	</c:choose>
		            </td>
		            <td align="center">
		            	<a href="<%=request.getContextPath() %>/rooms.do?m=toupdate_admin&r_id=${obj.r_id }">修改</a>
		            	<a href="<%=request.getContextPath() %>/rooms.do?m=delete_admin&r_id=${obj.r_id }"
		             		onclick="return confirm('确定删除吗？')">删除</a>
		            </td>
				</tr>
				</c:forEach>
				<tr>
					<td colspan="8" align="center">
						<jsp:include page="/pageinfo.jsp">
							<jsp:param value="rooms.do?m=list_admin" name="path"/>
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
