<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>信息修改</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script> 
	function checkreg(){
		var u_email = $("#u_emails").attr("value");
		
		if(u_email.length == 0){
			alert("邮箱不能为空");
			return false;
		}
		
	}
</script>


<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/font-icons.css" />
		<link rel="stylesheet" href="css/style.css" />

		<!-- Favicons -->
		<link rel="shortcut icon" href="img/favicon.ico">
		<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">









</head>

<body style="background-image: url(images/bg.gif)">
 
  <jsp:include page="head.jsp"></jsp:include>

<br />
<table width="969" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
   
    <td width="726" valign="top"><table width="700" border="0" align="center" cellpadding="0" cellspacing="0"  class="right_box">
      <tr>
        <td height="39" align="center" class="subject">用户信息修改</td>
      </tr>
      <tr>
      <a href="<%=request.getContextPath() %>/users.do?m=toinsert_face">刷脸注册</a>
        <td height="455" valign="top" class="content">

			
		<form action="<%=request.getContextPath() %>/users.do?m=update_info" method="post"  onsubmit="return checkreg();">
			    <table width="491" border="0" align="center">
              
                  <tr>
                    <td height="34" align="right">邮箱：</td>
                    <td height="34">&nbsp;<input name="u_email" id="u_emails"  value="${obj.u_email}"  type="text" size="33" maxlength="20"/>
				
					</td>
                  </tr>
                  <tr>
                    <td height="34" align="right">电话：</td>
                    <td height="34">&nbsp;<input name="u_phone" id="u_phones" value="${obj.u_phone}"   type="text" size="33" maxlength="20"/></td>
                  </tr>
                  <tr>
                    <td height="34" align="right">地址：</td>
                    <td height="34">&nbsp;<input name="u_addr" id="u_addrs" value="${obj.u_addr}"   type="text" size="33" maxlength="20"/></td>
                  </tr>
                  <tr>
                    <td height="34" align="right">性别：&nbsp;
                      <label></label></td>
                    <td height="34">&nbsp;<input name="u_sex" id="u_sexs"  value="${obj.u_sex}"  type="text" size="33" maxlength="20"/></td>
                  </tr>
				  <c:if test="${message != null}">
                  <tr>
                    <td height="37" colspan="2">&nbsp;<label><span style="color:red">${message}</span></label></td>
                  </tr>
				  </c:if>
                  <tr>
                    <td height="31" colspan="2" align="center">&nbsp;
                     <input class="button" type="submit" value="修改用户信息" /></td>
                  </tr>
                  <tr>
                    <td height="201" colspan="2" valign="top">&nbsp;</td>
                  </tr>
                </table>
		 </form>				
			
		
		</td>
      </tr>
    </table></td>
  </tr>

</table>

</body>
</html>
