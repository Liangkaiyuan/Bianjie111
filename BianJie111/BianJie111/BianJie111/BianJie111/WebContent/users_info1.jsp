<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script> 
	function checkreg(){
		var u_email = $("#u_emails").attr("value");
		
		if(u_email.length == 0){
			alert("���䲻��Ϊ��");
			return false;
		}
		
	}
</script>
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
        <td height="39" align="center" class="subject">�û���Ϣ�޸�</td>
      </tr>
      <tr>
        <td height="455" valign="top" class="content">

			
		<form action="<%=request.getContextPath() %>/users.do?m=update_info" method="post"  onsubmit="return checkreg();">
			    <table width="491" border="0" align="center">
              
                  <tr>
                    <td height="34" align="right">���䣺</td>
                    <td height="34">&nbsp;<input name="u_email" id="u_emails"  value="${obj.u_email}"  type="text" size="33" maxlength="20"/>
				
					</td>
                  </tr>
                  <tr>
                    <td height="34" align="right">�绰��</td>
                    <td height="34">&nbsp;<input name="u_phone" id="u_phones" value="${obj.u_phone}"   type="text" size="33" maxlength="20"/></td>
                  </tr>
                  <tr>
                    <td height="34" align="right">��ַ��</td>
                    <td height="34">&nbsp;<input name="u_addr" id="u_addrs" value="${obj.u_addr}"   type="text" size="33" maxlength="20"/></td>
                  </tr>
                  <tr>
                    <td height="34" align="right">QQ��&nbsp;
                      <label></label></td>
                    <td height="34">&nbsp;<input name="u_qq" id="u_qqs"  value="${obj.u_qq}"  type="text" size="33" maxlength="20"/></td>
                  </tr>
				  <c:if test="${message != null}">
                  <tr>
                    <td height="37" colspan="2">&nbsp;<label><span style="color:red">${message}</span></label></td>
                  </tr>
				  </c:if>
                  <tr>
                    <td height="31" colspan="2" align="center">&nbsp;
                     <input class="button" type="submit" value="�޸��û���Ϣ" /></td>
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
 <jsp:include flush="true" page="foot.jsp"></jsp:include>
</body>
</html>
