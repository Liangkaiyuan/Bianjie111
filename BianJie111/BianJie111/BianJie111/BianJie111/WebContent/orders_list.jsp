<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ҵĶ���</title>
<link href="style.css" rel="stylesheet" type="text/css" />


<link href='https://fonts.googleapis.com/css?family=Montserrat:400,600,700%7CSource+Sans+Pro:400,600,700' rel='stylesheet'>

<link rel="shortcut icon" href="img/favicon.ico">
		<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-icons.css" />
<link rel="stylesheet" href="css/style.css" />
<script src="js/lazysizes.min.js"></script>


<c:choose>
	<c:when test="${USERS == null}">
	   <script>
	     alert("���½�󣡣��ڲ鿴");
	     window.location.href="login.jsp"; 
  
   </script>
		</c:when>
</c:choose>

</head>

<body style="background-image: url(images/bg.gif)">
 
  <jsp:include page="head.jsp"></jsp:include>


<br /><br /><br />
<table  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    
    <td width="726" valign="top"><table width="700" border="0" align="center" cellpadding="0" cellspacing="0"  class="right_box">
      <tr>
        <td height="39" align="center" class="subject">�߽�����--�ҵĶ����б�
					</td>
      </tr>
      <tr>
        <td height="455" valign="top" class="content">
	<table  border="1px;" cellpadding="1" cellspacing="1" bgcolor="#018EC3">
				<tr align="center">
					<th width="120" bgcolor="#FFFFFF">�ͷ���Ϣ</th>
	              	<th width="150" bgcolor="#FFFFFF">��סʱ��</th>
	              	<th width="105" bgcolor="#FFFFFF">���֤</th>
	              	<th width="90" bgcolor="#FFFFFF">�Ա�</th>
	              	<th width="120" bgcolor="#FFFFFF">��ϵ��</th>
	              	<th width="100" bgcolor="#FFFFFF">�绰</th>        	
	              	<th width="150" bgcolor="#FFFFFF">״̬</th>
	              	<th width="107" bgcolor="#FFFFFF">�µ�ʱ��</th>
				</tr>
				<c:forEach items="${pageinfo.list}" var="obj" varStatus="con">
				<tr>
					
		            <td align="center" bgcolor="#FFFFFF">
	                	${obj.r_name }		            </td>
		            <td align="center" bgcolor="#FFFFFF">
		            	${obj.o_stime }<br/>
		            	${obj.o_etime }	                </td>
	               
	                <td align="center" bgcolor="#FFFFFF">
	                	${obj.o_idcard }		            </td>
		            <td align="center" bgcolor="#FFFFFF">
	                	${obj.o_sex }		            </td>
		            <td align="center" bgcolor="#FFFFFF">
	                	${obj.o_name }		            </td>
		            <td align="center" bgcolor="#FFFFFF">
	                	${obj.o_tel }&nbsp;&nbsp;&nbsp;&nbsp; </td>
	                	
		            <td bgcolor="#FFFFFF">
		            	<c:if test="${obj.o_state == 0}">
                			�����                		</c:if>
                		<c:if test="${obj.o_state == 1}">
                			ͨ��,�밴ʱ��ס                		</c:if>
                		<c:if test="${obj.o_state == 2}">
                			�ܾ�                		</c:if>	
						<c:if test="${obj.o_state == 3}">
                			����ȡ��                		</c:if>		
							
						<c:if test="${obj.o_state == 0}">
		            		<a href="<%=request.getContextPath() %>/orders.do?m=state_orders&o_id=${obj.o_id }&o_state=3">ȡ��</a>
		            	
		            	</c:if>	
								            </td>
								            <td align="center" bgcolor="#FFFFFF">
	                	${obj.o_time}</td>
								            
								            
				</tr>
				</c:forEach>
			</table>	
			
		
		</td>
      </tr>
    </table></td>
  </tr>

</table>
<div style="text-align: center;">
			<jsp:include page="/pageinfo.jsp">
				<jsp:param value="orders.do?m=list" name="path" />
			</jsp:include>
		</div>


</body>
</html>
