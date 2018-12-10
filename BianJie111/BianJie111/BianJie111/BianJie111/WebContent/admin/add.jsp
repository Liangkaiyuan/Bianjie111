
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

  <!-- JavaScript是搭配HTML使用的脚本代码,可以帮助我们操作HTML内容和浏览器本身 -->
  <!-- JavaScript可以做很多很多事情，甚至可以用来编写游戏和强大的基于浏览器的应用
  然而更普遍的功能是利用JavaScript帮助我们进行表单验证,确保提交的数据是符合服务器业务处理要求的 -->
  <script type="text/javascript">
  	function myBack(){
  		//将浏览器导航为index.jsp,location.href属性可以更改当前浏览器地址栏的内容
  		location.href="lives_list.jsp";
 		//window.location.href="index.jsp";
 
  	}
  	//mySubmit方法用于提交表单，并且在提交之前验证表单数据的格式是否符合要求
  	function mySubmit(){
  		//先来个简单的,验证姓名必须有填写，不能为空
  		//首先获取姓名输入框的数据
  		//document是文档对象，代表整个HTML页面
  		//forms是表单集合，如果存在多个表单的话,索引从0开始，并且是从上往下编号   如果表单有表单名可以用<span style="font-family:FangSong_GB2312;"><strong>document.表单名.控件名.value </strong></span>
  		//user_name是表单下控件的名字
  		//value是获取这个控件的value值
  		//length是一个属性，返回长度
  		//var是变量，JavaScript是弱类型语言,也就是说不区分int,double,Object这些类型
  		//而是统一使用var表示
  		var name=document.forms[0].user_name;
               //通过document.getElementById（“id名”） 可以获取非<input /> 中的内容，但是dojsp无法获取         
                var name_msg=document.getElementById("name_msg");
  		var hobby_msg=document.getElementById("hobby_msg");
  		name_msg.innerHTML="";
  		hobby_msg.innerHTML="";
  		if(name.value.length==0){
  			//提示用户
  			//alert("姓名为必填项");
  			name_msg.innerHTML="<font color='red'>*姓名为必填项</font>";
  			//聚焦（鼠标定位）
                        name.focus();
  			return ;//中断方法的运行
  		}
  		//对于多选的控件判断会稍微麻烦点点哦
  		var hobby_item=document.forms[0].user_hobby;
  		var flag=false;
  		for(var i=0;i<hobby_item.length;i++){
  			if(hobby_item[i].checked==true){
  				flag=true;
  				break;
  			}
  		}
  		if(flag==false){
  			//alert("至少选择一个支付方式");
  			hobby_msg.innerHTML="<font color='red'>*至少选择一个支付方式</font>";
  			return ;
  		}
  		document.forms[0].submit();//submit是提交方法
  	}
  </script>
 
  
  <%
  	UserInfoDao dao=new UserInfoDao();
  	ArrayList list=dao.findAll();
   %>
   
   <script type="text/javascript">
   	function myAction(pid){
   		document.forms[0].id.value=pid;
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
	<h1 align="center">新增信息</h1>
	<form action="doadd.jsp" method="post" >
		<table align="center" width="50%">
			<!-- 姓名 -->
			<tr>
				<td align="right" width="37%">姓名:</td>
				<td align="left" width="25%"><input type="text" name="user_name" ></td> 
				<td>
					<div id="name_msg" align="left"></div>
				</td>
			</tr>
			
			<!-- 性别-->
			<tr>
				<td align="right" width="37%">性别:</td>
				<td align="left" width="25%"><input type="text" name="user_sex" ></td> 
				<td>
					<div id="name_msg" align="left"></div>
				</td>
			</tr>
			
			<!-- 身份证号 -->
			<tr>
				<td align="right" width="37%">身份证号:</td>
				<td align="left" width="25%"><input type="text" name="user_idcard" ></td> 
				<td>
					<div id="name_msg" align="left"></div>
				</td>
			</tr>
			
			<!-- 入住时间 -->
			<tr>
				<td align="right" width="37%">入住时间:</td>
				<td align="left" width="25%">
				<input name="o_etime" onclick="SelectDate(this.name)" id="o_etime" type="text"  autocomplete="off" />
			</td> 
				<td>
					<div id="name_msg" align="left"></div>
				</td>
			</tr>
			
			
			<!-- 入住房间 -->
			<tr>
				<td align="right" width="37%">入住房间:</td>
				<td align="left" width="25%"><input type="text" name="user_room" ></td> 
				<td>
					<div id="name_msg" align="left"></div>
				</td>
			</tr>
			
			<!-- 预定方式 -->
			<tr>
				<td align="right" width="37%">预定方式:</td>
				<td align="left" width="25%"><input type="text" name="user_pay" ></td> 
				<td>
					<div id="name_msg" align="left"></div>
				</td>
			</tr>
			
			
				
			
			<!-- 备注 -->
			<tr>
				<td align="right" width="37%">备注:</td>
				<td align="left" width="25%"><input type="text" name="user_beizhu" ></td> 
				<td>
					<div id="name_msg" align="left"></div>
				</td>
			</tr>
			
			
			
			
			
			<!-- 按钮 -->
			<tr>
				<td align="center" colspan="3">
					<input type="submit" value="添加" >
					    
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
