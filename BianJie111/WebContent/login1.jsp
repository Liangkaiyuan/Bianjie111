<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/rl.js"></script>


<link href='https://fonts.googleapis.com/css?family=Montserrat:400,600,700%7CSource+Sans+Pro:400,600,700' rel='stylesheet'>

		<!-- Css -->
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/font-icons.css" />
		<link rel="stylesheet" href="css/style.css" />
<link rel="shortcut icon" href="img/favicon.ico">
		<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">



<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<body style="background-image: url(images/bg.gif)">
   <jsp:include page="head.jsp"></jsp:include>

	
	<c:choose>
	  <c:when test="${USERS == null}">
	<form id="loginform" method="post" action="<%=request.getContextPath() %>/users.do?m=login_comments" onsubmit="return checklogin();">
      <table  align="center">
        <tr>
        
          <td height="90" colspan="2" align="center">用户登录</td>
        </tr>
        <tr>
          
          <td width="31%" height="15" align="right">用户名：</td>
          <td width="69%" align="center"><input type="text" name="u_name" id="u_name" class="input" autocomplete="off"/></td>
        </tr>
        <tr>
          <td height="15" align="right">密码：</td>
          <td align="center"><input type="password" name="u_pwd" id="u_pwd" class="input" /></td>
        </tr>
        <tr>
        <c:if test="${message != null}">
								<label><span style="color:red">${message }</span></label>
							</c:if>
          <td height="25" align="right">&nbsp;</td>
          <td><label>
            <input type="submit" name="Submit2" value="登陆" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath() %>/users.do?m=toreg">注册</a>
          </label></td>
        </tr>
      </table>
	  </form>
	  
	  </c:when>
					<c:otherwise>
					
	  </c:otherwise>
				</c:choose>   
	<!--     <script src="js/lazysizes.min.js"></script>
	  <script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/easing.min.js"></script>
		<script src="js/owl-carousel.min.js"></script>
		<script src="js/flickity.pkgd.min.js"></script>
		<script src="js/modernizr.min.js"></script>
		<script src="js/scripts.js"></script> -->
	  
	  
	  
	  
	  
	  </body>