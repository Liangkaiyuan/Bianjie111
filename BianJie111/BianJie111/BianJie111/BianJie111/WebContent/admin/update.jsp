<%@ page import="java.util.*,com.lives.dao.*,com.lives.bean.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<head>
<title>艺术馆管理系统后台</title>
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/images/SimpleBlog.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>

<script type="text/javascript" src="<%=request.getContextPath() %>/js/rl.js"></script>

</head>

<%
	request.setCharacterEncoding("UTF-8");
	int id=Integer.parseInt(request.getParameter("id"));
	UserInfoDao dao=new UserInfoDao();
	UserInfo obj=dao.findById(id);
	
	
 %>

  <script type="text/javascript">
  	function myBack(){
  		location.href="index.jsp";
  	}
  
  	function mySubmit(){
  		var name=document.forms[0].user_name;
  		var name_msg=document.getElementById("name_msg");
  		var hobby_msg=document.getElementById("hobby_msg");
  		name_msg.innerHTML="";
  		hobby_msg.innerHTML="";
  		if(name.value.length==0){
  			name_msg.innerHTML="<font color='red'>*姓名为必填项</font>";
  			name.focus();
  			return ;
  		}
  		var hobby_item=document.forms[0].user_hobby;
  		var flag=false;
  		for(var i=0;i<hobby_item.length;i++){
  			if(hobby_item[i].checked==true){
  				flag=true;
  				break;
  			}
  		}
  		if(flag==false){
  			hobby_msg.innerHTML="<font color='red'>*至少选择一个爱好</font>";
  			return ;
  		}
  		document.forms[0].submit();
  	}
  </script>
  <body>
    <!-- Wrap -->
<div id="wrap">
		 <jsp:include flush="true" page="head.jsp"></jsp:include>
		
		<!--Content Wrap -->
		<div id="content-wrap">
			
			<div id="main">
  
	<h1 align="center">修改信息</h1>
	<form action="doUpdate.jsp" method="post" >
		<input type="hidden" name="id" value="<%=obj.getId()%>">
	<table align="center" width="50%">
			<!-- 姓名 -->
			<tr>
				<td align="right" width="37%">姓名:</td>
				<td align="left" width="25%"><input type="text" name="user_name" value="<%=obj.getUser_name()%>"></td> 
				<td>
					<div id="name_msg" align="left"></div>
				</td>
			</tr>
			
			<!-- 性别-->
			<tr>
				<td align="right" width="37%">性别:</td>
				<td align="left" width="25%"><input type="text" name="user_sex" value="<%=obj.getUser_sex()%>" ></td> 
				<td>
					<div id="name_msg" align="left"></div>
				</td>
			</tr>
			
			<!-- 身份证号 -->
			<tr>
				<td align="right" width="37%">身份证号:</td>
				<td align="left" width="25%"><input type="text" name="user_idcard" value="<%=obj.getUser_idcard()%>" ></td> 
				<td>
					<div id="name_msg" align="left"></div>
				</td>
			</tr>
			
			<!-- 入住时间 -->
			<tr>
				<td align="right" width="37%">入住时间:</td>
				<td align="left" width="25%">
				<input name="o_etime" onclick="SelectDate(this.name)" id="o_etime" type="text" value="<%=obj.getTime()%>"  autocomplete="off" />
			</td> 
				<td>
					<div id="name_msg" align="left"></div>
				</td>
			</tr>
			
			
			<!-- 入住房间 -->
			<tr>
				<td align="right" width="37%">入住房间:</td>
				<td align="left" width="25%"><input type="text" name="user_room" value="<%=obj.getUser_room()%>" ></td> 
				<td>
					<div id="name_msg" align="left"></div>
				</td>
			</tr>
			
			<!-- 预定方式 -->
			<tr>
				<td align="right" width="37%">预定方式:</td>
				<td align="left" width="25%"><input type="text" name="user_pay" value="<%=obj.getUser_pay()%>" ></td> 
				<td>
					<div id="name_msg" align="left"></div>
				</td>
			</tr>
			
			
				
			
			<!-- 备注 -->
			<tr>
				<td align="right" width="37%">备注:</td>
				<td align="left" width="25%"><input type="text" name="user_beizhu" value="<%=obj.getUser_beizhu()%>" ></td> 
				<td>
					<div id="name_msg" align="left"></div>
				</td>
			</tr>
			
			
			
			
			
			<!-- 按钮 -->
			<tr>
				<td align="center" colspan="3">
					<input type="submit" value="修改" >
					    
					<input type="reset" value="重置" >
				</td>
			</tr>
		</table>
	</form>
	
		</div>

            
		
		<!--End content-wrap-->
		</div>
		
		<!-- Footer -->
		<div id="footer">
			
		</div>	
			
<!-- END Wrap -->
</div>
	
  </body>
</html>
