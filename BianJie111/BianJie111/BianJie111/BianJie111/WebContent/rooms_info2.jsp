<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ͷ���Ϣ</title>
<link href="style.css" rel="stylesheet" type="text/css" />

</head>

<body style="background-image: url(images/bg.gif)">
 <jsp:include flush="true" page="top.jsp"></jsp:include>
<br />
<table width="969" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    
    <td width="726" valign="top"><table width="850" border="0" align="center" cellpadding="0" cellspacing="0"  class="right_box">
      <tr>
        <td height="39" align="center" class="subject"><a href="<%=request.getContextPath() %>/rooms.do?m=info&amp;r_id=${obj.r_id }">${obj.r_name }</a></td>
      </tr>
      <tr>
        <td height="455" valign="top" class="content">

			
		
			    <table width="600" border="0" align="center">
                  <tr>
                    <td width="305" rowspan="6"><a href="<%=request.getContextPath() %>/rooms.do?m=info&amp;r_id=${obj.r_id }"><img  src="<%=request.getContextPath() %>/${obj.r_img}" alt="${obj.r_name }" width="450" height="300" class="img" /></a></td>
                    <td width="285" height="35">&nbsp;<a href="<%=request.getContextPath() %>/orders.do?m=toadd&r_id=${obj.r_id }"><img src="images/order.jpg"  border="0"/></a></td>
                  </tr>
                  <tr>
                    <td height="33">�۸�${obj.r_price }</td>
                  </tr>
                  <tr>
                    <td height="34">���ͣ�${obj.r_bed }</td>
                  </tr>
                  <tr>
                    <td height="37">��ͣ�${obj.r_zc }</td>
                  </tr>
                  <tr>
                    <td height="31">�����${obj.r_web}</td>
                  </tr>
                  <tr>
                    <td height="201" valign="top">${obj.r_info }</td>
                  </tr>
                </table>
		 
			
		
		</td>
      </tr>
    </table></td>
  </tr>

</table>

</body>
</html>
