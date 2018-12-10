<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<link href="style.css" rel="stylesheet" type="text/css" />

<table width="969" height="150" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td></td>
  </tr>
  <tr>
    <td height="37" class="menu"><table width="969" height="25" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="136" height="20" align="center"><a href="<%=request.getContextPath() %>/hotel.do?m=index" class="ma">首页</a></td>
        <td width="156" align="center"><a href="<%=request.getContextPath() %>/rooms.do?m=list" class="ma">酒店客房</a></td>
        <td width="140" align="center"><a href="<%=request.getContextPath() %>/orders.do?m=list" class="ma">我的订单</a></td>
        <td width="154" align="center"><a href="<%=request.getContextPath() %>/comments.do?m=list" class="ma">在线留言</a></td>
        <td width="125" align="center"><a href="admin/users_login.jsp" class="ma">后台登录</a></td>
        <td width="109" align="center">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>