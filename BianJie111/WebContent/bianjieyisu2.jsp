<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>边界艺宿</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<meta content="yes" name="apple-mobile-web-app-capable" />
		<meta content="black" name="apple-mobile-web-app-status-bar-style" />
		<meta name="format-detection" content="telephone=no" />
		<meta name=renderer content=webkit>
			<!-- Css -->
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/font-icons.css" />
		<link rel="stylesheet" href="css/style.css" />
		
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
	</head>

	<body id="longPage" class="gh0  longPage   bodypage cn">
	  <jsp:include page="head.jsp"></jsp:include>

		<div id="sitecontent" class="ff_sitecontent" style="padding-top:0px">
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
					<div class="module_container" style="padding-top:0px">
						<div class="container_target wow">您的位置：
							<a href="index.jsp">首页</a><i class="fa fa-angle-right"></i>
							
							<a href="">边界艺宿</a>
						</div>
						<div class="container_category wow movedx" data-movedx-mid="2" data-movedx-distance="15">
						</div>

						<div class="clear"></div>
					</div>
				</div>
				
				<div class="content">
					<div class="mpageEditor module">
						<div class="module_container" style="padding-top:0px">
							<div class="container_header wow">
								<p class="title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;边界艺宿：“住在美术馆里”</p>
								<p class="subtitle"></p>
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
														<p style="text-align:left"><img alt="undefined" height="259" src="./statics/images/logo1.jpg" width="440" title="undefined" /></p>
													</td>
													<td style="text-align:left; width:5%">&nbsp;</td>
													<td style="vertical-align: top; width: 55%; word-break: break-all;">
														<p style="text-align:left"><h3><a href="<%=request.getContextPath() %>/rooms.do?m=list" class="ma">点击这里预定房间</a></h3></p>
														<p><br/></p>
														<p>边界兿宿是边界美术馆旗下的艺术客栈，与边界美术馆相辅相成，是边界兿宿的主题“住在美术馆里”。
														边界艺宿共18间客房，设标准间4间，榻榻米房2间，普通大床8间，艺术套房3间，儿童房1间。价位200~400之间。
														面向客户群：喜爱艺术，尊重艺术，愿意感受艺术氛围的客户群。订房电话：0635——8418899，13562050460，
														地址：山东聊城古城区古楼南大街（戏台对过）。
														边界美术馆理念：“让艺术融入寻常生活中，让艺术生活常态化”
借“边界”之名破“边界”之实
艺术与生活息息相关，艺术的内容与形式是有边有界的，但艺术之于生活却是无边无界的，因为艺术是人的行为，而生活也是人的行为，最终艺术与生活是人的体验。
边界美术馆的宗旨是让人们直接体验艺术，生活在艺术的氛围里，边界兿宿是边界美术馆艺术体验的补充部分，是艺术体验的直观感受。
边界美术馆注重艺术品质，注重生活品质，关注当代艺术、关注当代人们艺术素养需求，更加注重青年艺术家的培养，搭建跨边界性的艺术探索与交流，促进国内外艺术家、艺术机构、艺术活动之间的良性互动，以及艺术与寻常生活的平衡关系，使人们了解艺术、热爱艺术、热爱生活，探讨艺术与社会、艺术与人类的课题。
边界美术馆的场馆位于山东聊城市古楼南大街，毗邻光岳楼、海源阁，占地3000平方米，秉承“边界”的学术理念，建筑风格是明清仿古建筑，但内装修风格遵循当代，是传统与当代的对话，呈现出独特的美学风格。

边界美术馆是聊城市油画学会交流基地，边界美术馆在挖掘本土油画艺术家的同时，关注当地油画事业的发展。聊城是书画之乡，多年传统书画艺术长足发展，而油画作为当代中国艺术的重要组成部分在聊城的发展相对滞后，但近几年通过边界美术馆和聊城油画学会的共同努力，聊城出现了不少在国内外享有盛誉的油画家，是聊城油画的骄傲，更是聊城人的骄傲。
依托聊城油画学会的学术资源，边界美术馆在继续推广油画艺术的同时，更加关注当代艺术，关注传统与当代的传承，关注艺术各门类的共融发展，以“边界”之名打破“边界”之实。
														
             </p>
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
 <!--footer  -->
		<div id="footer">
			<p>
				<span class="ellipsis">
          
        </span>
				<a class="beian" href="javascript:;" style="color: #363636;vertical-align: top;margin-left: 10px;display: inline-block;" target="_blank">

				</a>
			</p>
		</div>

      <hr>	
			<div class="row">
			<footer style="padding-bottom:20px;  padding-left:50px">			
			    <div style="width:1248px">
			    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size=2>地址：聊城市东昌府南大街&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话：8888-888-888&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮箱：12345678@qq.com</font>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="contact us.html"><font size=2 color="black">申办展览</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="about_us.html"><font size=2 color="black">关于我们</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								 <a href="contact us.html"><font size=2 color="black">联系我们</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								 <a href="joinus.html"><font size=2 color="black">加入我们</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								 <font size=2>开放时间：8:00-17:00&nbsp;&nbsp;周一闭馆（法定节假日除外）</font>													
						</div>

</footer>
			<!-- end footer -->
	</body>

</body>
</html>