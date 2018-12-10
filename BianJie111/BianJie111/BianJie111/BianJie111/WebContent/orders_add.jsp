<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/rl.js"></script>


<link href='https://fonts.googleapis.com/css?family=Montserrat:400,600,700%7CSource+Sans+Pro:400,600,700' rel='stylesheet'>

		<!-- Css -->
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/font-icons.css" />
		<link rel="stylesheet" href="css/style.css" />
<link rel="shortcut icon" href="img/favicon.ico">
		<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">



<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<body>
   <jsp:include page="head.jsp"></jsp:include>

	
	<c:choose>
		<c:when test="${USERS == null}">
			<script>
	     alert("请登陆后！在订购");
   		window.location.href="<%=request.getContextPath()%>/hotel.do?m=index";
			</script>
		</c:when>
	</c:choose>
	<br /><br /><br />
	<table  border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>

			<td width="726" valign="top"><table border="0"
					align="center" cellpadding="0" cellspacing="0" class="right_box">
					<tr>
						<td height="39" align="center" class="subject">我要订房</td>
					</tr>
					<tr>
						<td height="455" valign="top" class="content"><html:form action="/orders.do?m=add" method="post" onsubmit="return checkadd();">
								<p>&nbsp;</p>
								<input name="o_rid" id="o_rid" type="hidden" value="${r_id }" />
								<table  border="0" align="center" cellpadding="1"
									cellspacing="1" bgcolor="#018EC3">

									<tr>
										<td width="108" height="33" align="right" bgcolor="#FFFFFF">&nbsp;&nbsp;<label>入住时间<span
												style="color: red">*</span></label></td>
										<td width="373" bgcolor="#FFFFFF"><input name="o_stime"
											onclick="SelectDate(this.name)" id="o_stime" type="text"
											size="30" maxlength="20" autocomplete="off" /></td>
									</tr>
									<tr>
										<td height="34" align="right" bgcolor="#FFFFFF"><label>退房时间<span
												style="color: red">*</span></label></td>
										<td height="34" bgcolor="#FFFFFF"><input name="o_etime"
											onclick="SelectDate(this.name)" id="o_etime" type="text"
											size="30" maxlength="20" autocomplete="off" /></td>
									</tr>
									<tr>
										<td height="34" align="right" bgcolor="#FFFFFF"><label>身份证号码<span
												style="color: red">*</span></label></td>
										<td height="34" bgcolor="#FFFFFF"><input name="o_idcard"
											id="o_idcard" type="text" size="30" maxlength="18"
											autocomplete="off" /></td>
									</tr>
									<tr>
										<td height="34" align="right" bgcolor="#FFFFFF"><label>性别<span
												style="color: red">*</span></label></td>
										<td height="34" bgcolor="#FFFFFF"><select name="sel"
											onchange="this.form.o_sex.value = this.value">
												<option value="">请选择性别</option>
												<option value="男">男</option>
												<option value="女">女</option>
										</select> <input type="text" name="o_sex" id="o_sex" maxlength="5" style="display: none;"></td>
									</tr>
								
									<tr>
										<td height="34" align="right" bgcolor="#FFFFFF"><label>入住人姓名<span
												style="color: red">*</span></label></td>
										<td height="34" bgcolor="#FFFFFF"><input name="o_name"
											id="o_name" type="text" size="30" maxlength="5"
											autocomplete="off" /></td>
									</tr>
									<tr>
										<td height="34" align="right" bgcolor="#FFFFFF"><label>联系电话<span
												style="color: red">*</span></label></td>
										<td height="34" bgcolor="#FFFFFF"><input name="o_tel"
											id="o_tel" type="text" size="30" maxlength="11"
											autocomplete="off" /></td>
									</tr>

									<c:if test="${message != null}">
										<tr>
											<td height="37" colspan="2" bgcolor="#FFFFFF">&nbsp;<label><span
													style="color: red">${message}</span></label></td>
										</tr>
									</c:if>
									<tr>
										<td height="31" colspan="2" align="center" bgcolor="#FFFFFF">&nbsp;
											<input type="submit" onsubmit="return checkadd();"
											value="我要预定" /> <input class="button" type="submit"
											value="重 置" />
										</td>
									</tr>
								</table>
							</html:form></td>
					</tr>
				</table></td>
		</tr>

	</table>
   
	    <script src="js/lazysizes.min.js"></script>
	  <script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/easing.min.js"></script>
		<script src="js/owl-carousel.min.js"></script>
		<script src="js/flickity.pkgd.min.js"></script>
		<script src="js/modernizr.min.js"></script>
		<script src="js/scripts.js"></script>
	  
	  
	  
	  
	  
	  </body>