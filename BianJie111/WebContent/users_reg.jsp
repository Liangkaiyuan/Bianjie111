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
<title>欢迎注册</title>

<link href='https://fonts.googleapis.com/css?family=Montserrat:400,600,700%7CSource+Sans+Pro:400,600,700' rel='stylesheet'>

<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script> 
$(document).ready(function(){
	  
	 $("#u_names").blur(function(){
		 var user = {username:$("#u_names").val()};
		
		  $.ajax(
		   {url:"u_namescheck",
		   data:user,
		   async:true,
		   type:"POST",
		   dataType:"html",
		   success:function(result){		  
		 $("#msg").html(result); }
			   
	        });  
         }); 
})  

 
</script>

	<link type="text/css" rel="stylesheet" href="css/registter.css">
 
</head>

<body>
 
 
		 
	<div class="body">
		<div class="vli">
			<div class="wrapper move">
				<div id="register">
						<html:form action="/users.do?m=reg" method="post"  onsubmit="return checkreg();">
					<a href="<%=request.getContextPath() %>/orders.do?m=toadd&r_id=${obj.r_id }"></a>
						<h3>欢迎注册边界艺术馆</h3>
						<div class="vali">
							用户名：<input type="text" name="u_name" value=""  placeholder="请输入用户名" id="u_names" maxlength="20" size="30" autocomplete="off">
						</div>
						<div class="vali">
							密码：<input type="password" name="u_pwd" value="" placeholder="请填写长度为6-20个字符的密码" class="pasw" id="u_pwds" size="33" maxlength="20" autocomplete="off">
						</div>
						<div class="vali">
							确认密码：<input type="password" name="u_rpwd" value="" placeholder="请再次输入密码" id="u_rpwds" class="pasws" size="33" maxlength="20" autocomplete="off">
						</div>
						<div class="vali">
								电话：<input type="text" name="u_phone" value="" placeholder="请输入电话" class="phone" size="33" maxlength="20" id="u_phone" autocomplete="off">
							</div>
						<div class="vali">
							邮箱：<input type="text" name="u_email" value="" class="eal" placeholder="请输入邮箱,邮箱格式,123@163.com" size="33" maxlength="20" id="u_email" autocomplete="off">
						</div>
						<div class="vali">
							家庭地址：<input type="text" name="u_addr" value="" class="Required" placeholder="请输入地址" size="33" maxlength="20" id="u_addr" autocomplete="off">
						</div>
						<div class="vali">
						性别：<select  name="sel"
											onchange="this.form.u_sex.value = this.value">
												<option value="">请选择性别</option>
												<option value="男">男</option>
												<option value="女">女</option>
										</select> <input type="text" name="u_sex" id="u_sex" maxlength="5" style="display: none;"></td>
									
							 </div>
						<div class="submit">
						 <c:if test="${message != null}">
                  <tr>
                    <td height="37" colspan="2">&nbsp;<label><span style="color:red">${message}</span></label></td>
                  </tr>
				  </c:if>
							<input type="submit" class="btn" id="check" value="立即注册" >
						</div>
					 </html:form>	
				</div>
			</div>
		</div>
	</div>	 
 
		 
		 
		 
		 
</body>
</html>
