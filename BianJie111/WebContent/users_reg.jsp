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
<title>��ӭע��</title>

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
						<h3>��ӭע��߽�������</h3>
						<div class="vali">
							�û�����<input type="text" name="u_name" value=""  placeholder="�������û���" id="u_names" maxlength="20" size="30" autocomplete="off">
						</div>
						<div class="vali">
							���룺<input type="password" name="u_pwd" value="" placeholder="����д����Ϊ6-20���ַ�������" class="pasw" id="u_pwds" size="33" maxlength="20" autocomplete="off">
						</div>
						<div class="vali">
							ȷ�����룺<input type="password" name="u_rpwd" value="" placeholder="���ٴ���������" id="u_rpwds" class="pasws" size="33" maxlength="20" autocomplete="off">
						</div>
						<div class="vali">
								�绰��<input type="text" name="u_phone" value="" placeholder="������绰" class="phone" size="33" maxlength="20" id="u_phone" autocomplete="off">
							</div>
						<div class="vali">
							���䣺<input type="text" name="u_email" value="" class="eal" placeholder="����������,�����ʽ,123@163.com" size="33" maxlength="20" id="u_email" autocomplete="off">
						</div>
						<div class="vali">
							��ͥ��ַ��<input type="text" name="u_addr" value="" class="Required" placeholder="�������ַ" size="33" maxlength="20" id="u_addr" autocomplete="off">
						</div>
						<div class="vali">
						�Ա�<select  name="sel"
											onchange="this.form.u_sex.value = this.value">
												<option value="">��ѡ���Ա�</option>
												<option value="��">��</option>
												<option value="Ů">Ů</option>
										</select> <input type="text" name="u_sex" id="u_sex" maxlength="5" style="display: none;"></td>
									
							 </div>
						<div class="submit">
						 <c:if test="${message != null}">
                  <tr>
                    <td height="37" colspan="2">&nbsp;<label><span style="color:red">${message}</span></label></td>
                  </tr>
				  </c:if>
							<input type="submit" class="btn" id="check" value="����ע��" >
						</div>
					 </html:form>	
				</div>
			</div>
		</div>
	</div>	 
 
		 
		 
		 
		 
</body>
</html>
