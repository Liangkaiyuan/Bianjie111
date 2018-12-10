<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/rl.js"></script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	  <c:when test="${USERS == null}">
	<form id="loginform" method="post" action="<%=request.getContextPath() %>/users.do?m=face_login" onsubmit="return checklogin();">
      <table  align="center">
        <tr>
        <h3>默认用户名：123<br />
	  默认密码：123</h3>
          <td height="90" colspan="2" align="center">用户登录</td>
        </tr>
        <tr>
          
          <td width="31%" height="15" align="right">用户名：</td>
          <td width="69%" align="center"><input type="text" name="u_name" id="u_name" class="input" autocomplete="off"/></td>
        </tr>
        <tr>
          <td height="15" align="right">密码：</td>
          <td align="center"><input type="password" name="u_base64" id="u_base64" class="input" /></td>
        </tr>
        <tr>
        <c:if test="${message != null}">
								<label><span style="color:red">${message }</span></label>
							</c:if>
          <td height="25" align="right">&nbsp;</td>
          <td><label>
            <input type="submit" name="Submit2" value="登陆" id="input"/>&nbsp;&nbsp;&nbsp;
            <br/><a href="<%=request.getContextPath() %>/users.do?m=toreg" class="sidenav__menu-url">用户注册</a>
             </label></td>
        </tr>
      </table>
	  </form>
	  
	  </c:when>
					<c:otherwise>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="33%" height="35">&nbsp;</td>
          <td width="67%">用户中心</td>
        </tr>
        <tr>
          <td height="25" align="right">&nbsp;</td>
          <td>欢迎用户：${USERS.u_name }登陆</td>
        </tr>
        <tr>
          <td height="25" align="right">&nbsp;</td>
          <td><a href="<%=request.getContextPath() %>/orders.do?m=list"><span>我的订单</span></a></td>
        </tr>
        <tr>
          <td height="25" align="right">&nbsp;</td>
          <td><a href="<%=request.getContextPath() %>/users.do?m=toupdate_info"><span>修改个人信息</span></a></td>
        </tr>
        <tr>
          <td height="25" align="right">&nbsp;</td>
          <td><a href="<%=request.getContextPath() %>/users_pwd.jsp"><span>修改密码</span></a>&nbsp;&nbsp;<a href="<%=request.getContextPath() %>/exit.jsp"><span>退出</span></a></td>
        </tr>
      </table>
	  </c:otherwise>
				</c:choose>   
</body>
</html>