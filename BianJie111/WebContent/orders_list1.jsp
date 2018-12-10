<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<c:choose>
	<c:when test="${USERS == null}">
	   <script>
	     alert("请登陆后！！在查看");
   		window.location.href="<%=request.getContextPath()%>/hotel.do?m=index"; 
   </script>
		</c:when>
</c:choose>

</head>

<body>
 <jsp:include flush="true" page="top.jsp"></jsp:include>
<br />
<table width="969" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="243" height="505" valign="top" class="leftbg" >
	 <jsp:include flush="true" page="left.jsp"></jsp:include>
    </td>
    <td width="726" valign="top"><table width="700" border="0" align="center" cellpadding="0" cellspacing="0"  class="right_box">
      <tr>
        <td height="39" align="center" class="subject">我的订单列表
					</td>
      </tr>
      <tr>
        <td height="455" valign="top" class="content">
	<table width="706" cellpadding="1" cellspacing="1" bgcolor="#018EC3">
				<tr align="center">
					<th width="91" bgcolor="#FFFFFF">客房</th>
	              	<th width="98" bgcolor="#FFFFFF">时间</th>
	              	<th width="105" bgcolor="#FFFFFF">身份证号码</th>
	              	<th width="98" bgcolor="#FFFFFF">入住人数</th>
	              	<th width="91" bgcolor="#FFFFFF">联系人</th>
	              	<th width="84" bgcolor="#FFFFFF">电话</th>
	              	<th width="107" bgcolor="#FFFFFF">状态</th>
				</tr>
				<c:forEach items="${pageinfo.list}" var="obj" varStatus="con">
				<tr>
					
		            <td align="center" bgcolor="#FFFFFF">
	                	${obj.r_name }		            </td>
		            <td align="center" bgcolor="#FFFFFF">
		            	${obj.o_stime }<br/>
		            	${obj.o_etime }	                </td>
	               
	                <td align="center" bgcolor="#FFFFFF">
	                	${obj.o_pcount }		            </td>
		            <td align="center" bgcolor="#FFFFFF">
	                	${obj.o_count }		            </td>
		            <td align="center" bgcolor="#FFFFFF">
	                	${obj.o_name }		            </td>
		            <td align="center" bgcolor="#FFFFFF">
	                	${obj.o_tel }		            </td>
		            <td bgcolor="#FFFFFF">
		            	<c:if test="${obj.o_state == 0}">
                			审核中                		</c:if>
                		<c:if test="${obj.o_state == 1}">
                			通过                		</c:if>
                		<c:if test="${obj.o_state == 2}">
                			拒绝                		</c:if>	
						<c:if test="${obj.o_state == 3}">
                			退房                		</c:if>		
							
						<c:if test="${obj.o_state != 3}">
		            		<a href="<%=request.getContextPath() %>/orders.do?m=state_orders&o_id=${obj.o_id }&o_state=3">退房</a>
		            	
		            	</c:if>	
								            </td>
				</tr>
				</c:forEach>
			</table>	
			
		
		</td>
      </tr>
    </table></td>
  </tr>

</table>
 <jsp:include flush="true" page="foot.jsp"></jsp:include>
</body>
</html>
