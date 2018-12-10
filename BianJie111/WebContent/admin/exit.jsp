<%@ page language="java" pageEncoding="utf-8"%>
<html>
  <head>
  	 <%
   	request.getSession().removeAttribute("ADMIN");
   %>
   <script>
   		window.location.href="<%=request.getContextPath()%>/admin/users_login.jsp"; 
   </script>
  </head>
  
  <body>
  
  </body>
</html>
