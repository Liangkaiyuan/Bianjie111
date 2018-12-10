<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>我要留言</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script> 
	function checkadd(){
		var c_info = $("#c_info").attr("value");

		if(c_info.length == 0){
			alert("留言不能为空");
			return false;
		}	
	}
</script>
<link rel="shortcut icon" href="img/favicon.ico">
		<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-icons.css" />
<link rel="stylesheet" href="css/style.css" />
<script src="js/lazysizes.min.js"></script>
</head>

<body>

 
  <jsp:include page="head.jsp"></jsp:include>

<br />
<table  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
  
    <td  valign="top"><table width="700" border="0" align="center" cellpadding="0" cellspacing="0"  class="right_box">
      <tr>
        <td height="39px" align="center" class="subject">我要留言</td>
      </tr>
      <tr>
        <td height="455" valign="top" class="content">

			
		<html:form action="/comments.do?m=add" method="post" style="backcolor:#a3d7d0"  onsubmit="return checkadd();">
			    <table width="491" border="0" align="center">
                  <tr>
                    <td width="485" height="35">&nbsp;<a href="<%=request.getContextPath() %>/orders.do?m=toadd&r_id=${obj.r_id }"></a></td>
                  </tr>
                  <tr>
                    <td height="33" align="center"><textarea rows="10" cols="60" id="c_info" name="c_info"></textarea></td>
                  </tr>
                  
				  <c:if test="${message != null}">
                  <tr>
                    <td height="37">&nbsp;<label><span style="color:red">${message}</span></label></td>
                  </tr>
				  </c:if>
                  <tr>
                    <td height="31" align="center">&nbsp;
                      <input class="button" type="submit" value="留 言" />	
					<input class="button" type="reset" value="重 置" />	</td>
                  </tr>
                  <tr>
                    <td height="72" valign="top">&nbsp;</td>
                  </tr>
                </table>
		 	</html:form>			
			
		
		</td>
      </tr>
    </table></td>
  </tr>

</table>
<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/easing.min.js"></script>
		<script src="js/owl-carousel.min.js"></script>
		<script src="js/flickity.pkgd.min.js"></script>
		<script src="js/twitterFetcher_min.js"></script>
		<script src="js/jquery.newsTicker.min.js"></script>
		<script src="js/modernizr.min.js"></script>
		<script src="js/scripts.js"></script>
</body>
</html>
