<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>修改密码</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script> 
	function checkupdate(){
		var u_pwd = $("#u_pwd").attr("value");
		var u_rpwd = $("#u_rpwd").attr("value");
		
		if(u_pwd.length == 0){
			alert("密码不能为空");
			return false;
		}
		if(u_rpwd.length == 0){
			alert("重复不能为空");
			return false;
		}
		if(u_pwd != u_rpwd){
			alert("两次输入的密码不一致");
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
        <td height="39" align="center" class="subject">修改密码</td>
      </tr>
      <tr>
        <td height="455" valign="top" class="content">

			
		<form action="<%=request.getContextPath() %>/users.do?m=update_pwd" method="post"  onsubmit="return checkupdate();">
			    <table width="491" border="0" align="center">
                  <tr>
                    <td width="485" height="35">&nbsp;<a href="<%=request.getContextPath() %>/orders.do?m=toadd&r_id=${obj.r_id }"></a></td>
                  </tr>
                  <tr>
                    <td height="33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>密码<span style="color:red">*</span></label>
					<input name="u_pwd" id="u_pwd"  type="password" size="33" maxlength="20" class="passinfo"/></td>
                  </tr>
                  <tr>
                    <td height="34">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>确认密码<span style="color:red">*</span></label>
					<input name="u_rpwd" id="u_rpwd"  type="password" size="33" class="passinfo"  maxlength="20"/></td>
                  </tr>
				  <c:if test="${message != null}">
                  <tr>
                    <td height="37">&nbsp;<label><span style="color:red">${message}</span></label></td>
                  </tr>
				  </c:if>
                  <tr>
                    <td height="31" align="center">&nbsp;
                      <input class="button" type="submit" value="修 改" />	
					<input class="button" type="reset" value="重 置" /></td>
                  </tr>
                  <tr>
                    <td height="201" valign="top">&nbsp;</td>
                  </tr>
                </table>
		 	</form>	
			
		
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
