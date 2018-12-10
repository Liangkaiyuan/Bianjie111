<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>在线留言</title>
<link href="style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-icons.css" />
<link rel="stylesheet" href="css/style.css" />
<script src="js/lazysizes.min.js"></script>
<link rel="shortcut icon" href="img/favicon.ico">
		<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">


</head>

<body>

   <jsp:include page="head.jsp"></jsp:include>

<br /><br /><br />
<table  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
   
    <td width="726" valign="top"><table width="700" border="1px" align="center" cellpadding="0" cellspacing="0"  class="right_box">
      <tr>
        <td height="39" align="center" class="subject">在线留言&nbsp;&nbsp;<c:choose>
					<c:when test="${USERS == null}">
						请<a href="<%=request.getContextPath() %>/login1.jsp">登录</a>后发表留言！
					</c:when>
					<c:otherwise>
						<a href="<%=request.getContextPath() %>/comments.do?m=toadd">点击我要留言</a>
					</c:otherwise>
					</c:choose></td>
      </tr>
      <tr>
        <td height="455" valign="top" class="content">
	
		<c:forEach items="${pageinfo.list}" var="obj" varStatus="con">
			
		
			    <table  border="1px" align="center" cellpadding="1" cellspacing="1" bgcolor="#141212">
                  
                  <tr>
                    <td width="75" height="92" rowspan="2" align="right" valign="top" bgcolor="#a3d7d0">留言用户：<br /></td>
                    <td width="518" height="23" valign="top" bgcolor="#a3d7d0">${obj.u_name}</td>
                  </tr>
                  <tr>
                   
							
                    <td bgcolor="#a3d7d0">${obj.c_info}</td>
                  </tr>
				  <c:if test="${obj.c_replay != null && obj.c_replay != ''}">
                  <tr>
                    <td align="right" bgcolor="#a3d7d0">
							艺馆回复：</td>
                    <td bgcolor="#a3d7d0">${obj.c_replay } </td>
                  </tr>
				  </c:if>
                  <tr>
                    <td align="right" bgcolor="#a3d7d0">时间：</td>
                    <td bgcolor="#a3d7d0">${fn:substring(obj.c_time,0,16) }</td>
                  </tr>
                </table>
		 
		      <div class="info"></div>
			  	<br />
		  	</c:forEach>
				<p style="text-align:center">
						<jsp:include page="/pageinfo.jsp">
							<jsp:param value="comments.do?m=list" name="path"/>
						</jsp:include>
				</p>			
		
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
