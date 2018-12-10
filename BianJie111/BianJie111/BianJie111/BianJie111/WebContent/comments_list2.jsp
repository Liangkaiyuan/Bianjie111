<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ÔÚÏßÁôÑÔ</title>

		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<meta content="yes" name="apple-mobile-web-app-capable" />
		<meta content="black" name="apple-mobile-web-app-status-bar-style" />
		<meta name="format-detection" content="telephone=no" />
		<meta name=renderer content=webkit>
		<link rel="shortcut icon" href="img/favicon.ico">
		<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">
		<link rel="stylesheet" type="text/css" href="./statics/css/lib2.css">
		<link rel="stylesheet" type="text/css" href="./statics/css/style.5486.css">
		<link rel="stylesheet" type="text/css" href="./statics/css/wred.css" id="themeCssPath">
		<link rel="stylesheet" type="text/css" href="./statics/css/5486.css" id="ucssurl">
		<script type="text/javascript" src="./statics/js/jquery.min.js"></script>
		<script type="text/javascript" src="./statics/js/org.1494058893.js" data-main="baseMain"></script>
		<script type="text/javascript" src="./statics/js/5486.js"></script>
		
		<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-image: url(images/bg.gif)">
 <jsp:include flush="true" page="top.jsp"></jsp:include>
<br />		
		<div id="sitecontent" class="ff_sitecontent">
			<script>
				var searchAddr = window.location.origin + '/search/s/';

				function jumpToSearch($el) {
					var searchInfor = encodeURIComponent(encodeURIComponent($el.val())) + '/';
					window.open(searchAddr + searchInfor);
				}
				$('.searchGroup .searchSub').click(function() {

					jumpToSearch($(this).parent().find('input'));
					return false;
				});
				$('.searchGroup input').on({
					'keydown': function(ev) {
						if(ev.keyCode == 13) {
							jumpToSearch($(this));
						}
					},
					'blur': function() {
						var _this = this;
						setTimeout(function() {
							$(_this).val("");
						}, 200);
					}
				});

				$(function() {
					$('#topSlider video').each(function(i, v) {
						if(v.paused) {
							v.play();
						}
					})
				});
			</script>
			<div class="npagePage pageEditor" id="page_about">
				
				<div class="npagePage ff_pageList">
				
				<div id="pageTarget" class="ff_pageTarget module">
					<div class="module_container">
						<div class="container_target wow">ÄúµÄÎ»ÖÃ£º
							<a href="index.jsp">Ê×Ò³</a><i class="fa fa-angle-right"></i>
							<a>¹ØÓÚ</a><i class="fa fa-angle-right"></i>
							<a href="javascript:;">ÔÚÏßÁôÑÔ</a>
						</div>
						

				
					</div>
				</div>
				
				<div class="content">
					<div class="mpageEditor module">
						<div class="module_container">
							<div class="container_header wow">
								<p class="title">ÔÚÏßÁôÑÔ</p>
								<p class="subtitle">The art museum</p>
							</div>
							<div class="container_content">
								<div class="content_wrapper">
									<div class="postbody">
										<table style="width:1100px">
											<tbody>
												<tr class="firstRow"></tr>
											</tbody>
										</table>
										<table style="width:1100px">
											<tbody>
												<tr class="firstRow"></tr>
											</tbody>
										</table>
										<table border="0" style="height:22px; width:1100px">
											<tbody>
												<tr class="firstRow"></tr>
											</tbody>
										</table>
										<table border="0" style="width:1100px">
											<tbody>
												<tr class="firstRow">
													<td style="vertical-align:top; width:40%">
														<p style="text-align:left"></p>
													</td>
													<td style="text-align:left; width:5%">&nbsp;</td>
													<td style="vertical-align: top; width: 55%; word-break: break-all;">
														<p style="text-align:left"><br/></p>
														<table width="969" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
   
    <td width="726" valign="top"><table width="700" border="0" align="center" cellpadding="0" cellspacing="0"  class="right_box">
      <tr>
        <td height="39" align="center" class="subject">&nbsp;&nbsp;<c:choose>
					<c:when test="${USERS == null}">
						Çë<a href="<%=request.getContextPath() %>/users_login.jsp">µÇÂ¼</a>ºó·¢±íÁôÑÔ£¡
					</c:when>
					<c:otherwise>
						<a href="<%=request.getContextPath() %>/comments.do?m=toadd">ÎÒÒªÁôÑÔ</a>
					</c:otherwise>
					</c:choose></td>
      </tr>
      <tr>
        <td height="455" valign="top" class="content">
	
		<c:forEach items="${pageinfo.list}" var="obj" varStatus="con">
			
		
			    <table width="600" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#018EC3">
                  
                  <tr>
                    <td width="75" height="92" rowspan="2" align="right" valign="top" bgcolor="#FFFFFF">ÁôÑÔÓÃ»§£º<br /></td>
                    <td width="518" height="23" valign="top" bgcolor="#FFFFFF">${obj.u_name}</td>
                  </tr>
                  <tr>
                    <td bgcolor="#FFFFFF">${obj.c_info}</td>
                  </tr>
				  <c:if test="${obj.c_replay != null && obj.c_replay != ''}">
                  <tr>
                    <td align="right" bgcolor="#FFFFFF">
							ÒÕ¹Ý»Ø¸´£º</td>
                    <td bgcolor="#FFFFFF">${obj.c_replay } </td>
                  </tr>
				  </c:if>
                  <tr>
                    <td align="right" bgcolor="#FFFFFF">Ê±¼ä£º</td>
                    <td bgcolor="#FFFFFF">${fn:substring(obj.c_time,0,16) }</td>
                  </tr>
                </table>
		 
		      <div class="info"></div>
			  	<br />
		  	</c:forEach>
				<p style="text-align:center">
						<jsp:include page="/pageinfo.jsp">
							<jsp:param value="comments.do?m=list" name="path"/>
						</jsp:include>
				</p>			
		
		</td>
      </tr>
    </table></td>
  </tr>

</table>
													</td>
												</tr>
											</tbody>
										</table>
										<table style="width:1100px">
											<tbody>
												<tr class="firstRow"></tr>
											</tbody>
										</table>
										<hr/>
										<table style="width:1100px">
											<tbody>
												<tr class="firstRow"></tr>
											</tbody>
										</table>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div id="shares">
			<a href="javascript:;" target="_blank" id="sweibo">
				<i class="fa fa-weibo"></i>
			</a>
			<a href="javascript:;" id="sweixin">
				<i class="fa fa-mobile"></i>
			</a>
			<a href="javascript:;" id="gotop">
				<i class="fa fa-angle-up"></i>
			</a>
		</div>
		<div class="fixed" id="fixed_weixin">
			<div class="fixed-container">
				<div id="qrcode"></div>
				<p>É¨Ãè¶þÎ¬Âë·ÖÏíµ½Î¢ÐÅ</p>
			</div>
		</div>
		<div id="online_open">
			<i class="fa fa-comments-o"></i>
		</div>
		<div id="online_lx">
			<div id="olx_head">ÔÚÏß×ÉÑ¯
				<i class="fa fa-times fr" id="online_close"></i>
			</div>
			<ul id="olx_qq">
				<li>
					<a href="javascript:;">
						<i class="fa fa-qq"></i>986482
					</a>
				</li>
			</ul>
			<div id="olx_tel">
				<div>
					<i class="fa fa-phone"></i> ÁªÏµµç»°
				</div>
				<p>
					400-888-8888<br/> </p>
			</div>
		</div>
		<a id="openAssist" href="javascript:;">
			<i class="icon iconfont icon-add"></i>
		</a>
		<div id="assistBtn">
			<a href="javascript:;" onclick="$('html,body').scrollTop(0);return false;">
				<i class="fa fa-angle-up"></i>
			</a>
			<a class="_fa-tel" href="javascript:;">
				<i class="fa fa-phone"></i>
			</a>
			<a class="_fa-qq" href="javascript:;">
				<i class="fa fa-qq"></i>
			</a>
		</div>
	</body>
</html>