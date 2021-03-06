<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="gbk"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<link type="text/css" rel="stylesheet" href="zhuce/css/registter.css">
	<script type="text/javascript" src="zhuce/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="zhuce/js/vali.min.js"></script>
	<style>
	.nocode{
		display: inline-block;
		width: 100px;
		height: 25px;
	}
	.code{
		display: inline-block;
		color: #FF0000;
		font-family: tahoma,geneva,sans-serif;
		font-style: italic;
		font-weight: bold;
		text-align: center;
		width: 100px;
		height: 25px;
		line-height: 25px;
		cursor: pointer;
		border: 1px solid #E2B4A2;
		background: #E2B4A2;
	}
    
	</style>
	<!--<script>
//		function isDate(value) 
//{ 
//var reg = /^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
//var regExp = new RegExp(reg);
//if(!regExp.test(value)){
//　　alert("日期格式不正确，正确格式为：2014-01-01");
//　　return;
//}
//
//} 
	</script>-->
	
</head>
<body>

	<div class="body">
		<div class="vli">
			<div class="wrapper move">
				<div id="register">
					<form action="/users.do?m=reg" method="post" class="form2">
					<tr>
                    <td height="35" colspan="2">&nbsp;<a href="<%=request.getContextPath() %>/orders.do?m=toadd&r_id=${obj.r_id }"></a></td>
                  </tr>
						<h3>欢迎注册边界艺术馆</h3>						
						<div class="vali">
							<input type="text" name="u_name" value="" class="uersname" placeholder="请输入用户名" id="u_names" maxlength="20" size="30">
						</div>
					
						<div class="vali">
							<input type="password" name="u_pwd" value="" placeholder="请填写长度为6-20个字符的密码" class="pasw" id="u_pwds" size="33" maxlength="20">
						</div>
						<div class="vali">
							<input type="password" name="u_rpwd" value="" placeholder="请再次输入密码" id="u_rpwds" class="pasws" size="33" maxlength="20">
						</div>
						<div class="vali">
								<input type="text" name="u_phone" value="" placeholder="请输入电话" class="phone" size="33" maxlength="20" id="u_phone">
							</div>
						<div class="vali">
							<input type="text" name="u_email" value="" class="eal" placeholder="请输入邮箱,邮箱格式,123@163.com" size="33" maxlength="20" id="u_email">
						</div>
						<div class="vali">
							<input type="text" name="u_addr" value="" class="Required" placeholder="请输入地址" size="33" maxlength="20" id="u_addr">
						</div>
						<div class="vali reqtps">
								<input type="text" class="Requireds" value="" name="" placeholder="请输入验证码" style="width: 70%;"/>
								<span id="code" class="nocode">验证码</span>
						</div>
						
						 <c:if test="${message != null}">
                  <tr>
                    <td height="37" colspan="2">&nbsp;<label><span style="color:red">${message}</span></label></td>
                  </tr>
				  </c:if>				
						<div class="submit">
							<input type="submit" class="button" id="check" value="立即注册" >
						</div>
					 </form>		
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$.myvali({
			myform:".form2",								//表单id
			mybtn:".btn",									//提交表单按钮id	
			myVali:".vali",									//input父盒子的class，可自定义类名

			Required:".Required",							//验证必填选项，值为Required,input自己加class
			RequiredTps:["请输入地址"],					//只验证不为空提示

			Requireds:".Requireds",							//验证必填不同提示，值为Requireds,input自己加class
			reqtps:".reqtps",								//验证不为空不同提示,input父盒子的class,可自定义类名
//			Reqlength:[[2,4]],								//只验证不为空,设置最小长度和最大长度
//			ReqlengthTps:["+不为空1"],						//验证不为空长度提示
			RequiredsTps:["请输入验证码 "],				//默认提示

			myName:".uersname",								//用户名id或class
			myName2:".nicheng",								//昵称id或class
			
			myPassword:".pasw",								//密码id或class
			myConfirmPassword:".pasws",						//确认密码id或class

			myCard:".cid",									//身份证验证id或class
			
			// myPhone1:"#v",								//修改手机号(原手机号用这个验证)id或class
			// phoneIsServer1:false,						//手机号是否与数据库验证，true为是，默认false为否
			// phoneIsServerUrl1:["1.php"],					//手机号与数据库验证的路径
			// phoneIsServerType1:"post",					//以什么方式提交
			// phoneIsServerDType1:"json",					//以什么格式提交

			myPhone:".phone",								//手机号id或class
			// phoneIsServer:false,							//手机号是否与数据库验证，true为是，默认false为否
			// phoneIsServerUrl:["1.php"],					//手机号与数据库验证的路径
			// phoneIsServerType:"post",					//以什么方式提交
			// phoneIsServerDType:"json",					//以什么格式提交

			isPhoneCode:true,								//开启手机短信验证，true开启，默认false不开启(此项功能与myPhone配合验证)
			phoneCodeBtn:".codebtn",						//发送手机验证码id或class（按钮）
			count:30,										//发送短信验证码倒计时，默认60s（按钮）
			codeBtnCol1:["rgb(150, 150, 150)"],				//短信验证码倒计时（按钮，通过验证前）颜色
			codeBtnCol2:["#333"],							//短信验证码倒计时（按钮，通过验证后）颜色
			// isPhoneCodeUrl:["1.php"],					//发送手机验证码与数据库验证的路径（按钮）
			// isPhoneCodeType:"post",						//以什么方式提交（按钮）
			// isPhoneCodeDType:"json",						//以什么格式提交（按钮）


			phoneCodeInput:".phcode",						//短信验证码id或class（输入框）
			// phoneCodeInputUrl:["1.php"],					//短信验证码与数据库验证的路径（输入框）
			// phoneCodeInputType:"post",					//以什么方式提交（输入框）
			// phoneCodeInputDType:"json",					//以什么格式提交（输入框）
			
			myMailbox:".eal",								//邮箱id或class
			// mailboxIsServer:false,						//邮箱是否要与数据库验证，默认false为否
			// mailboxIsServerUrl:["1.php"],				//邮箱与数据库验证的路径
			// mailboxIsServerType:"post",					//以什么方式提交
			// mailboxIsServerDType:"json",					//以什么格式提交

			// myCode:"#v",									//验证码id或class
			// CodeIsServerUrl:["1.php"],					//验证码与数据库验证的路径
			// CodeIsServerType:"post",						//以什么方式提交
			// CodeIsServerDType:"json",					//以什么格式提交

			// PwdStrong:true,								//密码强度验证，默认false不开启，true开启
			// isStrongTps:["弱","中","强"],				//密码强度提示，可自定义提示
				
			// myNameMinLength:3,							//用户名最小长度，不写默认长度3
			// myNameMaxLength:12,							//用户名最大长度，不写默认长度12
			
			// myNameMinLength2:3,							//昵称最小长度，不写默认长度3
			// myNameMaxLength2:12,							//昵称最大长度，不写默认长度12

			// myPasswordMinLength:6,						//密码最小长度，不写默认长度6
			// myPasswordMaxLength:16,						//密码最大长度，不写默认长度16
			
			// corrCol:"#4E7504",							//设置正确提示文字的颜色，不设置默认绿色
			// errCol:"red",								//设置错误提示文字的颜色，不设置默认红色
		});
		
	</script>
	<script src="zhuce/js/jquery-1.12.3.min.js"></script>
<script type="text/javascript" src="zhuce/js/code.js"></script> 
</body>
</html>