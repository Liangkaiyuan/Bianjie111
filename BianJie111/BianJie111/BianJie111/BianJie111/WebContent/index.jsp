<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>聊城边界艺术馆</title>

  <meta charset="utf-8">
  <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="">

  <!-- Google Fonts -->
  <link href='https://fonts.googleapis.com/css?family=Montserrat:400,600,700%7CSource+Sans+Pro:400,600,700' rel='stylesheet'>

  <!-- Css -->
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <link rel="stylesheet" href="css/font-icons.css" />
  <link rel="stylesheet" href="css/style.css" />

  <!-- Favicons -->
  <link rel="shortcut icon" href="img/favicon.ico">
  <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
  <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

  <!-- Lazyload (must be placed in head in order to work) -->
  <script src="js/lazysizes.min.js"></script>


<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <script type="text/javascript" src="/js/jquery.js"></script>
        <script type="text/javascript" src="/js/rl.js"></script>

    <link rel="stylesheet" type="text/css" href="lunbotu/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="lunbotu/css/htmleaf-demo.css">
	<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="lunbotu/css/main.css">
<style type="text/css">
#a{
color: red;
}

</style>

<script type="text/javascript">
function submit() {
	//document.getElementById("id").innerHTML //获取文本的内容；
   //document.getElementById("myform").submit();
	var text=document.getElementById("text").value //获取文本框的内容；	
	//alert(text);	
	$.ajax({
		//参数地址
		url : "Submit",
		//传递方式
		type : "post",       
		//需要传递到后台的参数
		data : {
			"text" : text
		},
		//回调函数	
		success : function(data) {			
			//alert(data);
			var dv = document.getElementById( "msg" );  // 取得DIV对象
		    dv.innerText = data; 
		},
		error : function() {
			alert("appid已经过期,请联系梁开愿");
		}		
	});
}
</script>




</head>

<body class="bg-light style-default style-rounded">
  
  <jsp:include page="head.jsp"></jsp:include>
  

    <!-- Trending Now -->
    <div class="container">
      <div class="trending-now">
        <span class="trending-now__label">
          <i class="ui-flash"></i>
        公告信息</span>
        <div class="newsticker">
          <ul class="newsticker__list">
            <li class="newsticker__item"><a href="news?action=show&newsId=${headNews.newsId }" title="${headNews.title }">${fn:substring(headNews.title,0,10) }</a></li>          
            <li class="newsticker__item"><a href="specialpart.html" class="newsticker__item-url">自助式酒吧，满足您的开怀畅饮和友人的闲谈</a></li>
            <li class="newsticker__item"><a href="<%=request.getContextPath() %>/rooms.do?m=list" class="newsticker__item-url">榻榻米房间：现在订购即可享受5折优惠</a></li>
          </ul>
        </div>
        <div class="newsticker-buttons">
          <button class="newsticker-button newsticker-button--prev" id="newsticker-button--prev" aria-label="next article"><i class="ui-arrow-left"></i></button>
          <button class="newsticker-button newsticker-button--next" id="newsticker-button--next" aria-label="previous article"><i class="ui-arrow-right"></i></button>
        </div>
      </div>
    </div>
<!-- 首页开始区域 -->
    

    <div class="main-container container pt-24" id="main-container">         

      <!-- Content -->
      <div class="row">

        <!-- Posts -->
        <div class="col-lg-8 blog__content">
          
          <!-- Latest News -->
          <section class="section tab-post mb-16">
            <div class="title-wrap title-wrap--line">
              <h3 class="section-title">艺术家作品在线展厅</h3>

              <div class="tabs tab-post__tabs"> 
                <ul class="tabs__list">
                  <li class="tabs__item tabs__item--active">
                    <a href="#tab-all" class="tabs__trigger">第一页</a>
                  </li>
                  <li class="tabs__item">
                    <a href="#tab-world" class="tabs__trigger">第二页</a>
                  </li>
                  <li class="tabs__item"><a href="RoomShow.html" >3D画廊</a></li>                  
                </ul> <!-- end tabs -->
              </div>
            </div>

            <!-- tab content -->
<div class="tabs__content tabs__content-trigger tab-post__tabs-content">

								<div class="tabs__content-pane tabs__content-pane--active" id="tab-all">
									<div class="row card-row">
										<div class="col-md-6">
											<article class="entry card">
												<div class="entry__img-holder card__img-holder">
													<a href="artist.html">
														<div class="thumb-container thumb-70">
															<img data-src="./statics/images/hhy01.jpg" src="img/empty.png" class="entry__img lazyload" alt="" />
														</div>
													</a>
													<a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--violet">黄海燕</a>
												</div>

												<div class="entry__body card__body">
													<div class="entry__header">

														<h2 class="entry__title">
                            <a href="artist.html">_状态·聆听之十六</a>
                          </h2>
														<ul class="entry__meta">
                      <li class="entry__meta-author">
                        <span>来自</span>
                        <a href="artist.html">黄海燕作品</a>
                      </li>
                      
                    </ul>
													</div>
													<div class="entry__excerpt">
														<p>聊城大学书画艺术研究院副院长 ...</p>
													</div>
												</div>
											</article>
										</div>
										<div class="col-md-6">
											<article class="entry card">
												<div class="entry__img-holder card__img-holder">
													<a href="artist1.html">
														<div class="thumb-container thumb-70">
															<img data-src="./statics/images/lj01.jpg" src="img/empty.png" class="entry__img lazyload" alt="" />
														</div>
													</a>
													<a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--purple">李建</a>
												</div>

												<div class="entry__body card__body">
													<div class="entry__header">

														<h2 class="entry__title">
                      <a href="artist1.html">池塘印象</a>
                    </h2>
                    <ul class="entry__meta">
                      <li class="entry__meta-author">
                        <span>来自</span>
                        <a href="artist1.html">李健作品</a>
                      </li>
                      
                    </ul>
													</div>
													<div class="entry__excerpt">
														<p>人们都说画很美，让你住在画里。你能住下去吗？ ...</p>
													</div>
												</div>
											</article>
										</div>
										<div class="col-md-6">
											<article class="entry card">
												<div class="entry__img-holder card__img-holder">
													<a href="artist2.html">
														<div class="thumb-container thumb-70">
															<img data-src="./statics/images/qbg01.jpg" src="img/empty.png" class="entry__img lazyload" alt="" />
														</div>
													</a>
													<a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--orange">邱保贵</a>
												</div>

												<div class="entry__body card__body">
													<div class="entry__header">

														 <h2 class="entry__title">
                      <a href="artist2.html">红樱桃之一</a>
                    </h2>
                    <ul class="entry__meta">
                      <li class="entry__meta-author">
                        <span>来自</span>
                        <a href="artist2.html">邱保贵作品</a>
                      </li>
                      
                    </ul>
													</div>
													<div class="entry__excerpt">
														<p>无视妙言空作物，岂可如画又惘谈 ...</p>
													</div>
												</div>
											</article>
										</div>
										<div class="col-md-6">
											<article class="entry card">
												<div class="entry__img-holder card__img-holder">
													<a href="artist3.html">
														<div class="thumb-container thumb-70">
															<img data-src="./statics/images/syc01.jpg" src="img/empty.png" class="entry__img lazyload" alt="" />
														</div>
													</a>
													<a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--green">孙印昌</a>
												</div>

												<div class="entry__body card__body">
													<div class="entry__header">
<h2 class="entry__title">
                      <a href="artist3.html">春秋</a>
                    </h2>
                    <ul class="entry__meta">
                      <li class="entry__meta-author">
                        <span>来自</span>
                        <a href="artist3.html">孙印昌作品</a>
                      </li>
                     
                    </ul>
													</div>
													<div class="entry__excerpt">
														<p>那看不尽的繁华，留下背影的牵挂 ...</p>
													</div>
												</div>
											</article>
										</div>
									</div>
								</div>
								
								
								
								
								
								<!-- end pane 1 -->

								<div class="tabs__content-pane" id="tab-world">
									<div class="row card-row">
										<div class="col-md-6">
											<article class="entry card">
												<div class="entry__img-holder card__img-holder">
													<a href="artist4.html">
														<div class="thumb-container thumb-70">
															<img data-src="./statics/images/wpl01.jpg" src="img/empty.png" class="entry__img lazyload" alt="" />
														</div>
													</a>
													<a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--violet">汪培利</a>
												</div>

												<div class="entry__body card__body">
													<div class="entry__header">

														<h2 class="entry__title">
                            <a href="artist.html">彼岸</a>
                          </h2>
														<ul class="entry__meta">
                      <li class="entry__meta-author">
                        <span>来自</span>
                        <a href="artist4.html">汪培利作品</a>
                      </li>
                      
                    </ul>
													</div>
													<div class="entry__excerpt">
														<p>画中有诗，诗中有画 ...</p>
													</div>
												</div>
											</article>
										</div>
										<div class="col-md-6">
											<article class="entry card">
												<div class="entry__img-holder card__img-holder">
													<a href="artist5.html">
														<div class="thumb-container thumb-70">
															<img data-src="./statics/images/zcf01.jpg" src="img/empty.png" class="entry__img lazyload" alt="" />
														</div>
													</a>
													<a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--purple">张常峰</a>
												</div>

												<div class="entry__body card__body">
													<div class="entry__header">

														<h2 class="entry__title">
                      <a href="artist1.html">碧水蓝天</a>
                    </h2>
                    <ul class="entry__meta">
                      <li class="entry__meta-author">
                        <span>来自</span>
                        <a href="artist5.html">张常峰作品</a>
                      </li>
                      
                    </ul>
													</div>
													<div class="entry__excerpt">
														<p>艺术，就是自然与人 ...</p>
													</div>
												</div>
											</article>
										</div>
										<div class="col-md-6">
											<article class="entry card">
												<div class="entry__img-holder card__img-holder">
													<a href="artist6.html">
														<div class="thumb-container thumb-70">
															<img data-src="./statics/images/zq01.jpg" src="img/empty.png" class="entry__img lazyload" alt="" />
														</div>
													</a>
													<a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--orange">张启</a>
												</div>

												<div class="entry__body card__body">
													<div class="entry__header">

														 <h2 class="entry__title">
                      <a href="artist6.html">苍天|厚土</a>
                    </h2>
                    <ul class="entry__meta">
                      <li class="entry__meta-author">
                        <span>来自</span>
                        <a href="artist6.html">张启作品</a>
                      </li>
                      
                    </ul>
													</div>
													<div class="entry__excerpt">
														<p>艺术家用脑，而不是用手去画 ...</p>
													</div>
												</div>
											</article>
										</div>
										<div class="col-md-6">
											<article class="entry card">
												<div class="entry__img-holder card__img-holder">
													<a href="artist7.html">
														<div class="thumb-container thumb-70">
															<img data-src="./statics/images/zxt01.jpg" src="img/empty.png" class="entry__img lazyload" alt="" />
														</div>
													</a>
													<a href="#" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--green">张西同</a>
												</div>

												<div class="entry__body card__body">
													<div class="entry__header">
<h2 class="entry__title">
                      <a href="artist7.html">断想者</a>
                    </h2>
                    <ul class="entry__meta">
                      <li class="entry__meta-author">
                        <span>来自</span>
                        <a href="artist7.html">张西同作品</a>
                      </li>
                     
                    </ul>
													</div>
													<div class="entry__excerpt">
														<p>最接近雕刻的绘画最完美 ...</p>
													</div>
												</div>
											</article>
										</div>
									</div>
								<!-- end pane 2 -->

							</div> <!-- end tab content -->            
          </section> <!-- end latest news -->

        </div> <!-- end posts -->

        <!-- Sidebar -->
        <aside class="col-lg-4 sidebar sidebar--right">

          

          <!-- Widget Newsletter -->
          <section class="service" id="service">
						<aside class="widget widget_mc4wp_form_widget">
							<h3 class="widget-title">用户信息与资料</h3>
							<!-- end widget newsletter -->
						<a href="facelogin_users.jsp">用户人脸登录</a>	<br />
						<a href="facelogin_admin.jsp">管理员人脸登录</a>	<br />
						<a href="admin_face_reg.jsp">管理员人脸注册</a><br />
<a href="admin/users_login.jsp">密码登录管理员后台</a><br />

	<c:choose>
	  <c:when test="${USERS == null}">	  
	 
	 <p id="a"> 默认用户名：123&nbsp;&nbsp;&nbsp;
	  默认密码：123	</p>
	<form id="loginform" method="post" action="<%=request.getContextPath() %>/users.do?m=login" onsubmit="return checklogin();">
      <table width="96%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="24" colspan="2" align="center">会员中心</td>
        </tr>
        <tr>
          <td width="31%" height="35" align="right">用户名：</td>
          <td width="69%"><input type="text" name="u_name" id="u_name" class="input" /></td>
        </tr>
        <tr>
          <td height="25" align="right">密码：</td>
          <td><input type="password" name="u_pwd" id="u_pwd" class="input" /></td>
        </tr>
        <tr>
        <c:if test="${message != null}">
								<label><span style="color:red">${message }</span></label>
							</c:if>
          <td height="25" align="right">&nbsp;</td>
          <td><label>
            <input type="submit" name="Submit2" value="登陆" />&nbsp;<br /><a href="<%=request.getContextPath() %>/users.do?m=toreg">注册</a>
          </label></td>
        </tr>
      </table>
	  </form>
	  
	  </c:when>
					<c:otherwise>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="33%" height="35">&nbsp;</td>
          <td width="67%">用户中心</td>
        </tr>
        <tr>
          <td height="25" align="right">&nbsp;</td>
          <td>欢迎用户：${USERS.u_name }登陆</td>
        </tr>
        <tr>
          <td height="25" align="right">&nbsp;</td>
          <td><a href="<%=request.getContextPath() %>/orders.do?m=list"><span>我的订单</span></a></td>
        </tr>
        <tr>
          <td height="25" align="right">&nbsp;</td>
          <td><a href="<%=request.getContextPath() %>/users.do?m=toupdate_info"><span>修改个人信息</span></a></td>
        </tr>
        <tr>
          <td height="25" align="right">&nbsp;</td>
          <td><a href="<%=request.getContextPath() %>/users.do?m=toinsert_face"><span>本账户人脸注册</span></a></td>
        </tr>
        <tr>
          <td height="25" align="right">&nbsp;</td>
          <td><a href="<%=request.getContextPath() %>/users_pwd.jsp"><span>修改密码</span></a>&nbsp;&nbsp;<a href="<%=request.getContextPath() %>/exit.jsp"><span>退出</span></a></td>
        </tr>
      </table>
	  </c:otherwise>
				</c:choose>
							
							<br/>
							<h4 class="widget-title">聊城实时天气</h4>
							<div class="socials socials--wide socials--large">
								<font color="#593E34"><strong>今天是：</strong>
									<script language=JavaScript>
										today = new Date();

										function initArray() {
											this.length = initArray.arguments.length
											for (var i = 0; i < this.length; i++)
												this[i + 1] = initArray.arguments[i]
										}
										var d = new initArray(
											"星期日",
											"星期一",
											"星期二",
											"星期三",
											"星期四",
											"星期五",
											"星期六");
										document.write(
											"2018年&nbsp;",
											today.getMonth() + 1, "月&nbsp;",
											today.getDate(), "日&nbsp;",
											d[today.getDay() + 1],"&nbsp;&nbsp;",
											today.getHours(), "时",//获取当前小时数(0-23)
                      today.getMinutes(), "分&nbsp;",//获取当前分钟数(0-59)                     
											
											"</font>");
									</script>
								</font>
								<iframe width="420" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&py=liaocheng&num=3&site=14"></iframe>
							</div>	
						</aside>
						</section> <!-- end widget newsletter -->  
						<!-- Widget Popular Posts -->
						
						
          <aside class="widget widget-popular-posts">
            <h3 class="widget-title">人工智能专区</h3>
           <br/>
           <h3 class="widget-title">智能机器人</h3>
           输入对话内容如：北京天气 <br/>
    <input type="text" name="text" id="text"/>
   <input type="button"  value="提交" onclick="submit()"/>
   <div >机器人回复：</div><div id="msg"></div>
   <br/><br/>
   
          </aside> <!-- end widget popular posts -->     
        </aside> <!-- end sidebar -->
  
      </div> <!-- end content -->

    
    <!-- Featured Posts Grid -->
			<section class="featured-posts-grid">
				<div class="container">
					<div class="row row-8">

						<div class="col-lg-6">

							<!-- Small post -->
							<div class="featured-posts-grid__item featured-posts-grid__item--sm">
								<article class="entry card post-list featured-posts-grid__entry">
									<div class="entry__img-holder post-list__img-holder card__img-holder" style="background-image: url(img/content/hero/hero_post_23.jpg)">
										<a href="huodong_lcdxmsxykt.html" class="thumb-url"></a>
										<img src="img/content/hero/hero_post_1.jpg" alt="" class="entry__img d-none">
										<a href="huodong_lcdxmsxykt.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--violet">研讨活动</a>
									</div>

									<div class="entry__body post-list__body card__body">
										<h2 class="entry__title">
                    <a href="huodong_lcdxmsxykt.html"><font size=5>酒店1</font></a>
                  </h2>
										<ul class="entry__meta">
											<li class="entry__meta-author">
												<span>边界艺术馆</span>
											</li>
											<li class="entry__meta-date">
												2018.06.23
											</li>
										</ul>
									</div>
								</article>
							</div>
							<!-- end post -->

							<!-- Small post -->
							<div class="featured-posts-grid__item featured-posts-grid__item--sm">
								<article class="entry card post-list featured-posts-grid__entry">
									<div class="entry__img-holder post-list__img-holder card__img-holder" style="background-image: url(img/content/hero/hero_post_24.jpg)">
										<a href="huodong_yypjh.html" class="thumb-url"></a>
										<img src="img/content/hero/hero_post_2.jpg" alt="" class="entry__img d-none">
										<a href="huodong_yypjh.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--purple">交流会</a>
									</div>

									<div class="entry__body post-list__body card__body">
										<h2 class="entry__title">
                    <a href="huodong_yypjh.html"><font size=5>酒店12</font></a>
                  </h2>
										<ul class="entry__meta">
											<li class="entry__meta-author">
												<span>边界艺术馆</span>
											</li>
											<li class="entry__meta-date">
												2018.05.16
											</li>
										</ul>
									</div>
								</article>
							</div>
							<!-- end post -->

							<!-- Small post -->
							<div class="featured-posts-grid__item featured-posts-grid__item--sm">
								<article class="entry card post-list featured-posts-grid__entry">
									<div class="entry__img-holder post-list__img-holder card__img-holder" style="background-image: url(img/content/hero/hero_post_25.jpg)">
										<a href="huodong_zxmsjykt.html" class="thumb-url"></a>
										<img src="img/content/hero/hero_post_3.jpg" alt="" class="entry__img d-none">
										<a href="huodong_zxmsjykt.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--blue">公共教育</a>
									</div>

									<div class="entry__body post-list__body card__body">
										<h2 class="entry__title">
                    <a href="huodong_zxmsjykt.html"><font size=5>酒店13</font></a>
                  </h2>
										<ul class="entry__meta">
											<li class="entry__meta-author">
												<span>边界艺术馆</span>
											</li>
											<li class="entry__meta-date">
												2018.05.07
											</li>
										</ul>
									</div>
								</article>
							</div>
							<!-- end post -->

						</div>
						<!-- end col -->

          <div class="col-lg-6">

            <!-- Large post -->
            <div class="featured-posts-grid__item featured-posts-grid__item--lg">
              <article class="entry card featured-posts-grid__entry">
                <div class="entry__img-holder card__img-holder">
                  <div>&nbsp;</div>
                    <!--
                    	作者：offline
                    	时间：2018-08-23
                    	描述：轮播图
                    -->
     <div class="htmleaf-container">	
		<div class="container">
		<div class="trent-slider">
			<div class="t-slide current-t-slide">
				<img src="lunbotu/img/1.jpg" alt="" />
			</div>
			<div class="t-slide">
				<img src="lunbotu/img/2.jpg" alt="" />
			</div>
			<div class="t-slide">
				<img src="lunbotu/img/3.jpg" alt="" />
			</div>
			<div class="t-slide">
				<img src="lunbotu/img/4.jpg" alt="" />
			</div>
			<div class="t-slider-controls">
				<div class="arrow right-arrow">
					<div class="arrow-container">
						<div class="arrow-icon"><i class="fa fa-chevron-right" aria-hidden="true"></i></div>
					</div>
				</div>
				<div class="arrow left-arrow">
					<div class="arrow-container">
						<div class="arrow-icon"><i class="fa fa-chevron-left" aria-hidden="true"></i></div>
					</div>
				</div>
				<div class="t-load-bar">
					<div class="inner-load-bar"></div>
				</div>
				<div class="t-dots-container">
					<div class="t-slide-dots-wrap">
						<div class="t-slide-dots">

						</div>
					</div>
				</div>
			</div>
		</div>
		</div>		
	</div>
          
		<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="lunbotu/js/jquery-1.11.0.min.js"><\/script>')</script>
	<script src="lunbotu/js/main.js"></script>
        <!--
        	作者：offline
        	时间：2018-08-23
        	描述：结束轮播
        -->            
                    
                    
                 
                  <a href="categories.html" class="entry__meta-category entry__meta-category--label entry__meta-category--align-in-corner entry__meta-category--green">艺宿</a>
                </div>

                <div class="entry__body card__body">   
                  <h2 class="entry__title">
                    <a href="<%=request.getContextPath() %>/rooms.do?m=list" class="ma">边界艺宿：“体验住在艺术馆的感觉”(预定房间)</a>
                  </h2>
                  <ul class="entry__meta">
                    <li class="entry__meta-author">
                      <span>来自</span>
                      <a href="#">边界艺术馆</a>
                    </li>
                    <li class="entry__meta-date">
                      8 21, 2018
                    </li>              
                  </ul>
                </div>
              </article>
            </div> <!-- end large post -->
          </div>          

        </div>
      </div>
    </section> <!-- end featured posts grid -->
    
    
    
    




      <!-- Posts from categories -->
      <section class="section mb-0">
        <div class="row">

          <!-- Technology -->
          <div class="col-md-6">
            <div class="title-wrap title-wrap--line">
              <h3 class="section-title">热点新闻推荐</h3>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <article class="entry thumb thumb--size-2">
                  <div class="entry__img-holder thumb__img-holder" style="background-image: url('img/tp/5.jpg');">
                    <div class="bottom-gradient"></div>
                    <div class="thumb-text-holder thumb-text-holder--1">   
                      <h2 class="thumb-entry-title">
                        <a href="single-post5.html">“丝绸之路——从写实到写意”杨晓阳美术作品暨创作文献展开幕</a>
                      </h2>
                      <ul class="entry__meta">
                        <li class="entry__meta-author">
                          <span>by</span>
                          <a href="#">边界艺术馆</a>
                        </li>
                        <li class="entry__meta-date">
                          7 21, 2018
                        </li>
                      </ul>
                    </div>
                    <a href="single-post5.html" class="thumb-url"></a>
                  </div>
                </article>
              </div>
              <div class="col-lg-6">
                <ul class="post-list-small post-list-small--dividers post-list-small--arrows mb-24">
                  
                    <article class="post-list-small__entry">
                      <div class="post-list-small__body">
                        <h3 class="post-list-small__entry-title">
                        <c:forEach var="hotSpotNews" items="${hotSpotNewsList }">
						<li class="post-list-small__item"><a href="news?action=show&newsId=${hotSpotNews.newsId }" title="${hotSpotNews.title }">${fn:substring(hotSpotNews.title,0,15) }</a></li>
					
					</c:forEach>
                      </h3>
                      </div>                  
                    </article>
               
                  
                </ul>
              </div>
            </div>            
          </div> <!-- end technology -->

          <!-- Travel -->
          <div class="col-md-6">
          <tr><c:forEach var="allIndexNews" items="${allIndexNewsList }" varStatus="allStatus">
	<c:if test="${allStatus.index%3==0 }">
		<div class="row-fluid">
	</c:if>
	<c:forEach var="indexNews" items="${allIndexNews }" varStatus="oneStatus">
		<c:if test="${oneStatus.first }">
            <div class="title-wrap title-wrap--line">
              <h3 class="section-title">${newsTypeList.get(allStatus.index).typeName } <span class="more"><a href="news?action=list&typeId=${newsTypeList.get(allStatus.index).newsTypeId }">更多...</a></span></h3>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <article class="entry thumb thumb--size-2">
                  <div class="entry__img-holder thumb__img-holder" style="background-image: url('img/content/yishujia/尹少淳.jpg');">
                    <div class="bottom-gradient"></div>
                    <div class="thumb-text-holder thumb-text-holder--1">   
                      <h2 class="thumb-entry-title">
                        <a href="huodong1.html">边界艺术馆艺术讲堂——之“少儿美育”系列</a>
                      </h2>
                      <ul class="entry__meta">
                        <li class="entry__meta-author">
                          <span>by</span>
                          <a href="#">边界艺术馆</a>
                        </li>
                        <li class="entry__meta-date">
                          7 21, 2018
                        </li>
                      </ul>
                    </div>
                    <a href="huodong1.html" class="thumb-url"></a>
                  </div>
                </article>
              </div>
              <div class="col-lg-6">
                <ul class="post-list-small post-list-small--dividers post-list-small--arrows mb-24">
                  <li class="post-list-small__item">
                    <article class="post-list-small__entry">
                      <div class="post-list-small__body">
                        <h3 class="post-list-small__entry-title">
                        
                        
                        
			<div class="span4">
			<div class="data_list news_list" >
				<div class="dataHeader"></div>
				<div class="datas">
					<ul class="post-list-small post-list-small--dividers post-list-small--arrows mb-24">
		</c:if>
		<li class="post-list-small__item"><fmt:formatDate value="${indexNews.publishDate }" type="date" pattern="MM-dd"/>&nbsp;<a href="news?action=show&newsId=${indexNews.newsId }" title="${indexNews.title }">${fn:substring(indexNews.title,0,18) }</a></li>
		<c:if test="${oneStatus.last }">
					</ul>
						</div>
					</div>
				</div>
		</c:if>
	</c:forEach>
	<c:if test="${allStatus.index%3==0 || allStatus.last }">
		</div>
	</c:if>
</c:forEach></tr>
                 </h3>
                      </div>                  
                    </article>
                  </li>                 
                </ul>
              </div>
            </div>            
          </div> <!-- end travel -->

        </div>                
      </section> <!-- end posts from categories -->






      
      <!-- Content Secondary -->
      <div class="row">
            <div class="title-wrap title-wrap--line">              
            </div>     
      </div> <!-- content secondary -->      
    </div> <!-- end main container -->
    <!-- Footer -->
    <footer class="footer footer--dark">
      <div class="container">
        <div class="footer__widgets">
          <div class="row">
            <div class="col-lg-3 col-md-6">
              <aside class="widget widget-logo">
                    
                    <article class="post-list-small__entry clearfix">
                         <h4 style="color: white;" class="widget-title">开馆时间：</h4> 
                      <div class="post-list-small__body">
                        <h3 class="post-list-small__entry-title">
                          <a href="">开放时间：8:00-17:00&nbsp;&nbsp;周末闭馆（法定节假日除外）</a>
                        </h3>
                        <ul class="entry__meta">
                          
                        </ul>
                      </div>                  
                    </article>
                  </li>
              </aside>
            </div>

            <div class="col-lg-2 col-md-6">
              <aside class="widget widget_nav_menu">
                <h4 class="widget-title">艺术馆</h4>
                <ul>
                  <li><a href="about_us.html">问题咨询</a></li>
                  <li><a href="joinus.html">加入我们</a></li>
                  <li><a href="canguanzhinan.html">参观指南</a></li>                  
                </ul>
              </aside>
            </div>  

            <div class="col-lg-4 col-md-6">
              <aside class="widget widget-popular-posts">
                <h4 class="widget-title"></h4>
                <ul class="post-list-small">
                  <li class="post-list-small__item">
                    <article class="post-list-small__entry clearfix">
                           <h4 style="color: white;" class="widget-title">关于我们：</h4> 
                      <div class="post-list-small__body">
                        <h3 class="post-list-small__entry-title">
                          <a href="canguanzhinan.html">地址：聊城市东昌府南大街<br/><br/>电话：0635——8418899 <br/><br/>  邮箱：1093595726@qq.com</a>
                        </h3>
                        <ul class="entry__meta">                         
                          <li class="entry__meta-date">                        
                          </li>
                        </ul>
                      </div>                  
                    </article>
                  </li>    
                </ul>
              </aside>              
            </div>

            <div class="col-lg-3 col-md-6">
              <aside class="widget widget_mc4wp_form_widget">
                <h4 class="widget-title">提出您的宝贵意见</h4>
                <p class="newsletter__text">
                  <i class="ui-email newsletter__icon"></i>
                  发送您的意见或者建议给我们。
                </p>
                <form class="mc4wp-form" method="post">
                  <div class="mc4wp-form-fields">
                    <div class="form-group">
                      <input type="email" name="EMAIL" placeholder="您的邮箱" required="">
                    </div>
                    <div class="form-group">
                      <input type="submit" class="btn btn-lg btn-color" value="发送">
                    </div>
                  </div>
                </form>                
              </aside>
            </div>

          </div>
        </div>    
      </div> <!-- end container -->
    </footer> <!-- end footer -->

    <div id="back-to-top">
      <a href="#top" aria-label="Go to top"><i class="ui-arrow-up"></i></a>
    </div>

  </main> <!-- end main-wrapper -->

  
  <!-- jQuery Scripts -->
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/easing.min.js"></script>
  <script src="js/owl-carousel.min.js"></script>
  <script src="js/flickity.pkgd.min.js"></script>
  <script src="js/twitterFetcher_min.js"></script>
  <script src="js/jquery.newsTicker.min.js"></script>  
  <script src="js/modernizr.min.js"></script>
  <script src="js/scripts.js"></script>

</body>
</html>