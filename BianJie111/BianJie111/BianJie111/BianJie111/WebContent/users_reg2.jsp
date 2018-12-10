<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="gbk"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tld/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tld/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tld/struts-logic.tld" prefix="logic"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ע��</title>
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
//����alert("���ڸ�ʽ����ȷ����ȷ��ʽΪ��2014-01-01");
//����return;
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
						<h3>��ӭע��߽�������</h3>						
						<div class="vali">
							<input type="text" name="u_name" value="" class="uersname" placeholder="�������û���" id="u_names" maxlength="20" size="30">
						</div>
					
						<div class="vali">
							<input type="password" name="u_pwd" value="" placeholder="����д����Ϊ6-20���ַ�������" class="pasw" id="u_pwds" size="33" maxlength="20">
						</div>
						<div class="vali">
							<input type="password" name="u_rpwd" value="" placeholder="���ٴ���������" id="u_rpwds" class="pasws" size="33" maxlength="20">
						</div>
						<div class="vali">
								<input type="text" name="u_phone" value="" placeholder="������绰" class="phone" size="33" maxlength="20" id="u_phone">
							</div>
						<div class="vali">
							<input type="text" name="u_email" value="" class="eal" placeholder="����������,�����ʽ,123@163.com" size="33" maxlength="20" id="u_email">
						</div>
						<div class="vali">
							<input type="text" name="u_addr" value="" class="Required" placeholder="�������ַ" size="33" maxlength="20" id="u_addr">
						</div>
						<div class="vali reqtps">
								<input type="text" class="Requireds" value="" name="" placeholder="��������֤��" style="width: 70%;"/>
								<span id="code" class="nocode">��֤��</span>
						</div>
						
						 <c:if test="${message != null}">
                  <tr>
                    <td height="37" colspan="2">&nbsp;<label><span style="color:red">${message}</span></label></td>
                  </tr>
				  </c:if>				
						<div class="submit">
							<input type="submit" class="button" id="check" value="����ע��" >
						</div>
					 </form>		
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$.myvali({
			myform:".form2",								//��id
			mybtn:".btn",									//�ύ����ťid	
			myVali:".vali",									//input�����ӵ�class�����Զ�������

			Required:".Required",							//��֤����ѡ�ֵΪRequired,input�Լ���class
			RequiredTps:["�������ַ"],					//ֻ��֤��Ϊ����ʾ

			Requireds:".Requireds",							//��֤���ͬ��ʾ��ֵΪRequireds,input�Լ���class
			reqtps:".reqtps",								//��֤��Ϊ�ղ�ͬ��ʾ,input�����ӵ�class,���Զ�������
//			Reqlength:[[2,4]],								//ֻ��֤��Ϊ��,������С���Ⱥ���󳤶�
//			ReqlengthTps:["+��Ϊ��1"],						//��֤��Ϊ�ճ�����ʾ
			RequiredsTps:["��������֤�� "],				//Ĭ����ʾ

			myName:".uersname",								//�û���id��class
			myName2:".nicheng",								//�ǳ�id��class
			
			myPassword:".pasw",								//����id��class
			myConfirmPassword:".pasws",						//ȷ������id��class

			myCard:".cid",									//���֤��֤id��class
			
			// myPhone1:"#v",								//�޸��ֻ���(ԭ�ֻ����������֤)id��class
			// phoneIsServer1:false,						//�ֻ����Ƿ������ݿ���֤��trueΪ�ǣ�Ĭ��falseΪ��
			// phoneIsServerUrl1:["1.php"],					//�ֻ��������ݿ���֤��·��
			// phoneIsServerType1:"post",					//��ʲô��ʽ�ύ
			// phoneIsServerDType1:"json",					//��ʲô��ʽ�ύ

			myPhone:".phone",								//�ֻ���id��class
			// phoneIsServer:false,							//�ֻ����Ƿ������ݿ���֤��trueΪ�ǣ�Ĭ��falseΪ��
			// phoneIsServerUrl:["1.php"],					//�ֻ��������ݿ���֤��·��
			// phoneIsServerType:"post",					//��ʲô��ʽ�ύ
			// phoneIsServerDType:"json",					//��ʲô��ʽ�ύ

			isPhoneCode:true,								//�����ֻ�������֤��true������Ĭ��false������(�������myPhone�����֤)
			phoneCodeBtn:".codebtn",						//�����ֻ���֤��id��class����ť��
			count:30,										//���Ͷ�����֤�뵹��ʱ��Ĭ��60s����ť��
			codeBtnCol1:["rgb(150, 150, 150)"],				//������֤�뵹��ʱ����ť��ͨ����֤ǰ����ɫ
			codeBtnCol2:["#333"],							//������֤�뵹��ʱ����ť��ͨ����֤����ɫ
			// isPhoneCodeUrl:["1.php"],					//�����ֻ���֤�������ݿ���֤��·������ť��
			// isPhoneCodeType:"post",						//��ʲô��ʽ�ύ����ť��
			// isPhoneCodeDType:"json",						//��ʲô��ʽ�ύ����ť��


			phoneCodeInput:".phcode",						//������֤��id��class�������
			// phoneCodeInputUrl:["1.php"],					//������֤�������ݿ���֤��·���������
			// phoneCodeInputType:"post",					//��ʲô��ʽ�ύ�������
			// phoneCodeInputDType:"json",					//��ʲô��ʽ�ύ�������
			
			myMailbox:".eal",								//����id��class
			// mailboxIsServer:false,						//�����Ƿ�Ҫ�����ݿ���֤��Ĭ��falseΪ��
			// mailboxIsServerUrl:["1.php"],				//���������ݿ���֤��·��
			// mailboxIsServerType:"post",					//��ʲô��ʽ�ύ
			// mailboxIsServerDType:"json",					//��ʲô��ʽ�ύ

			// myCode:"#v",									//��֤��id��class
			// CodeIsServerUrl:["1.php"],					//��֤�������ݿ���֤��·��
			// CodeIsServerType:"post",						//��ʲô��ʽ�ύ
			// CodeIsServerDType:"json",					//��ʲô��ʽ�ύ

			// PwdStrong:true,								//����ǿ����֤��Ĭ��false��������true����
			// isStrongTps:["��","��","ǿ"],				//����ǿ����ʾ�����Զ�����ʾ
				
			// myNameMinLength:3,							//�û�����С���ȣ���дĬ�ϳ���3
			// myNameMaxLength:12,							//�û�����󳤶ȣ���дĬ�ϳ���12
			
			// myNameMinLength2:3,							//�ǳ���С���ȣ���дĬ�ϳ���3
			// myNameMaxLength2:12,							//�ǳ���󳤶ȣ���дĬ�ϳ���12

			// myPasswordMinLength:6,						//������С���ȣ���дĬ�ϳ���6
			// myPasswordMaxLength:16,						//������󳤶ȣ���дĬ�ϳ���16
			
			// corrCol:"#4E7504",							//������ȷ��ʾ���ֵ���ɫ��������Ĭ����ɫ
			// errCol:"red",								//���ô�����ʾ���ֵ���ɫ��������Ĭ�Ϻ�ɫ
		});
		
	</script>
	<script src="zhuce/js/jquery-1.12.3.min.js"></script>
<script type="text/javascript" src="zhuce/js/code.js"></script> 
</body>
</html>