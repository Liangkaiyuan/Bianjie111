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


	function checkreg(){
		var u_name = $("#u_names").attr("value");
		var u_pwd = $("#u_pwds").attr("value");
		var u_rpwd = $("#u_rpwds").attr("value");
		var u_email = $("#u_email").attr("value");
		var u_phone = $("#u_phone").attr("value");
		var u_addr = $("#u_addr").attr("value");
		var u_qq = $("#u_qq").attr("value");
		if(u_name.length == 0){
			alert("�û��˺Ų���Ϊ��");
			return false;
		}
		if(u_pwd.length == 0){
			alert("���벻��Ϊ��");
			return false;
		}
		
		if(u_rpwd.length == 0){
			alert("ȷ�����벻��Ϊ��");
			return false;
		}
		
		if(u_rpwd != u_pwd){
			alert("�������벻һ��");
			return false;
		}
		if(u_email.length == 0){
			alert("�����ַ����Ϊ��");
			return false;
		}
		if(u_phone.length == 0){
			alert("�绰���벻��Ϊ��");
			return false;
		}
		if(u_addr.length == 0){
			alert("��ͥ��ַ����Ϊ��");
			return false;
		}
		if(u_qq.length == 0){
			alert("QQ���벻��Ϊ��");
			return false;
		}
		
	}
</script>
</head>

<body>
   <jsp:include page="head.jsp"></jsp:include>

		<html:form action="/users.do?m=reg" method="post"  onsubmit="return checkreg();">
			    <table width="491" border="0" align="center">
                  <tr>
                    <td height="35" colspan="2">&nbsp;<a href="<%=request.getContextPath() %>/orders.do?m=toadd&r_id=${obj.r_id }"></a></td>
                  </tr>
                  <tr>
                    <td width="108" height="33" align="right">&nbsp;&nbsp;�û�����<span
												style="color: red">*</span>&nbsp;
                      <label></label></td>
                    <td width="373">&nbsp;<input name="u_name" id="u_names" type="text" size="20" maxlength="11" autocomplete="off"/><span id="msg">������������ַ�</span></td>
                  </tr>
                  <tr>
                    <td height="34" align="right">���룺<span
												style="color: red">*</span></td>
                    <td height="30">&nbsp;<input name="u_pwd" id="u_pwds"  type="password" size="33" maxlength="20" autocomplete="off"/></td>
                  </tr>
				   <tr>
                    <td height="34" align="right">ȷ�����룺<span
												style="color: red">*</span></td>
                    <td height="34">&nbsp;<input name="u_rpwd" id="u_rpwds"  type="password" size="33" maxlength="20" autocomplete="off"/></td>
                  </tr>
                  <tr>
                    <td height="34" align="right">���䣺<span
												style="color: red">*</span></td>
                    <td height="34">&nbsp;<input name="u_email" id="u_email"  type="text" size="33" maxlength="20" autocomplete="off"/></td>
                  </tr>
                  <tr>
                    <td height="34" align="right">�绰��<span
												style="color: red">*</span></td>
                    <td height="34">&nbsp;<input name="u_phone" id="u_phone"  type="text" size="33" maxlength="11" autocomplete="off"/></td>
                  </tr>
                  <tr>
                    <td height="34" align="right">��ͥ��ַ��<span
												style="color: red">*</span></td>
                    <td height="34">&nbsp;<input name="u_addr" id="u_addr"  type="text" size="33" maxlength="11" autocomplete="off"/></td>
                  </tr>
                  
                  <input name="u_base64" id="u_base64"  type="text" size="33" value="1" autocomplete="off" style="display: none;"/></td>
                 
                 
                  <tr>
										<td height="34" align="right" ><label>�Ա�<span
												style="color: red">*</span></label></td>
										<td height="34" ><select name="sel"
											onchange="this.form.u_sex.value = this.value">
												<option value="">��ѡ���Ա�</option>
												<option value="��">��</option>
												<option value="Ů">Ů</option>
										</select> <input type="text" name="u_sex" id="u_sex" maxlength="5" style="display: none;"></td>
									</tr>
                  
                  
                  
				  <c:if test="${message != null}">
                  <tr>
                    <td height="37" colspan="2">&nbsp;<label><span style="color:red">${message}</span></label></td>
                  </tr>
				  </c:if>
                  <tr>
                    <td height="31" colspan="2" align="center">&nbsp;
                    <br />
                     	<input class="button" type="submit" value="ע ��" >
                     		
                     	<input class="button" type="reset" value="����" >	
					 </td>
                  </tr>
                  <tr>
                    <td height="201" colspan="2" valign="top">&nbsp;</td>
                  </tr>
                </table>
		 </html:form>				
			
		<script src="js/jquery.min.js"></script>
 
  <script src="js/easing.min.js"></script>
  <script src="js/owl-carousel.min.js"></script>
  <script src="js/flickity.pkgd.min.js"></script>
  <script src="js/twitterFetcher_min.js"></script>
  <script src="js/jquery.newsTicker.min.js"></script>  
  <script src="js/modernizr.min.js"></script>
  <script src="js/scripts.js"></script>
</body>
</html>
