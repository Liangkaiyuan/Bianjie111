<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>酒店信息</title>
<link href="style.css" rel="stylesheet" type="text/css" />

</head>

<body>
 <jsp:include flush="true" page="top.jsp"></jsp:include>
<br />
<table width="969" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
   
    <td width="726" valign="top"><table width="700" border="0" align="center" cellpadding="0" cellspacing="0"  class="right_box">
      <tr>
        <td height="39" align="center" class="subject">${obj.h_name }</td>
      </tr>
      <tr>
        <td height="455" valign="top" class="content">

			
		
			    <table width="600" border="0" align="center">
                  
                  <tr>
                    <td width="305" rowspan="4"><img  src="<%=request.getContextPath() %>/${obj.h_img} " width="284" height="261" class="img" /></td>
                    <td width="285" height="33">电话：${obj.h_tel }</td>
                  </tr>
                  <tr>
                    <td height="34">邮箱：${obj.h_email }</td>
                  </tr>
                  <tr>
                    <td height="37">地址：${obj.h_address }</td>
                  </tr>
                  
                  <tr>
                    <td height="201" valign="top">${obj.h_info }</td>
                  </tr>
                </table>
		 
			
		
		</td>
      </tr>
    </table></td>
  </tr>

</table>
 <jsp:include flush="true" page="foot.jsp"></jsp:include>
</body>
</html>
