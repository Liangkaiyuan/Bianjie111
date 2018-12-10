<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<head>
<title>�����ݹ���ϵͳ��̨</title>
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/images/SimpleBlog.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script> 
	function checkadd(){
		var r_name = $("#r_name").attr("value");
		var r_price = $("#r_price").attr("value");
		var r_bed = $("#r_bed").attr("value");
		var r_zc = $("#r_zc").attr("value");
		var r_web = $("#r_web").attr("value");
		var r_info = $("#r_info").attr("value");
		
		if(r_name.length == 0){
			alert("�ͷ����Ʋ���Ϊ��");
			return false;
		}
		
		
		if(r_price.length == 0){
			alert("�۸���Ϊ��");
			return false;
		}
		if(r_bed.length == 0){
			alert("���Ͳ���Ϊ��");
			return false;
		}
		if(r_zc.length == 0){
			alert("��Ͳ���Ϊ��");
			return false;
		}
		if(r_web.length == 0){
			alert("���߲���Ϊ��");
			return false;
		}
		if(r_info.length == 0){
			alert("��鲻��Ϊ��");
			return false;
		}
		
	}
</script>
</head>

<body>
<!-- Wrap -->
<div id="wrap">
		
		<jsp:include flush="true" page="head.jsp"></jsp:include>
		<!--Content Wrap -->
		<div id="content-wrap">
			
			<div id="main">
				<h3>�� ��</h3>
				<html:form action="/rooms.do?m=update_admin" method="post"  
					enctype="multipart/form-data" onsubmit="return checkadd();">
					<input type="hidden" name="r_id" value="${obj.r_id }"/>
	        		<p>
					<label>�ͷ�����<span style="color:red">*</span></label>
					<input name="r_name" id="r_name" value="${obj.r_name }" type="text" size="30" maxlength="20"/>
					<label>ͼƬ<span style="color:red">*</span></label>
					<html:file property="imgs"  styleId="imgs"/>
					<label>�۸�<span style="color:red">*</span></label>
					<input name="r_price" id="r_price"  value="${obj.r_price }" type="text" size="20" maxlength="20"/>
					<label>����<span style="color:red">*</span></label>
					<input name="r_bed" id="r_bed"  value="${obj.r_bed }"  type="text" size="20" maxlength="20"/>
					<label>���<span style="color:red">*</span></label>
					<input name="r_zc" id="r_zc" value="${obj.r_zc }"  type="text" size="20" maxlength="20"/>
					<label>����<span style="color:red">*</span></label>
					<input name="r_web" id="r_web" value="${obj.r_web }" type="text" size="20" maxlength="20"/>
					<label>����<span style="color:red">*</span></label>
					 <textarea rows="5" cols="50" id="r_info" name="r_info">${obj.r_info }</textarea>
					<br />	
					<c:if test="${message != null}">
						<label><span style="color:red">${message}</span></label>
					</c:if>
					<br />	
					<input class="button" type="submit" value="�� ��" />	
					<input class="button" type="submit" value="�� ��" />		
					</p>					
				</html:form>				
				<br />				
									
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
