<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
		
		<!--
        	作者：offline
        	时间：2018-07-24
        	描述：轮播图
        -->
       <link rel="stylesheet" type="text/css" href="lunbotu/css/normalize.css" />
	   <link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	   <link rel="stylesheet" href="lunbotu/css/main.css">
	
	     <!--
        	作者：offline
        	时间：2018-07-24
        	描述：登录注册
        -->
        <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
        <script type="text/javascript" src="/js/jquery.js"></script>
        <script type="text/javascript" src="/js/rl.js"></script>
       
   

	     
<title>边界艺术馆</title>
</head>
<body class="bg-light style-default style-rounded">

<header class="nav">

				<div class="nav__holder nav--sticky">
					<div class="container relative">
						<div class="flex-parent">

							<!-- Side Menu Button -->
							<button class="nav-icon-toggle" id="nav-icon-toggle" aria-label="Open side menu">
              
            </button>
                            
<!--横向导航栏 -->	<!-- Logo<img class="logo__img" src="img/logo_default.png" srcset="img/logo_default.png 1x, img/logo_default@2x.png 2x" alt="logo"> -->
							<a href="index.jsp" class="logo">
								<h2>边界艺术馆</h2>
							</a>

							<!-- Nav-wrap -->
							<nav class="flex-child nav__wrap d-none d-lg-block">
								<ul class="nav__menu">

									<li>
										<a href="index.jsp">首页</a>
									</li>
									

									<li class="nav__dropdown">
										<a href="#">艺术馆展览</a>
										<ul class="nav__dropdown-menu">
										
										    <li><a href="yishujia.html">艺术家</a></li>
										    <li><a href="huodongzongye.html">当前展览</a></li>
											<li><a href="zhanlanhuigu.html">展览回顾</a></li>
											<li><a href="zhanlanyugao.html">展览预告</a></li>
											<li><a href="RoomShow.html">3D画廊</a></li>
											<li><a href="quanjing01.html">全景1</a></li>
											<li><a href="quanjing02.html">全景2</a></li>
										</ul>
									</li>

<li class="nav__dropdown">
										<a href="#">边界艺宿</a>
										<ul class="nav__dropdown-menu">	  
										    
																						    									
											<li><a href="bianjieyisu.jsp">艺宿客房</a></li>
											<li><a href="<%=request.getContextPath() %>/rooms.do?m=list" class="ma">客房预定</a></li>
											<li><a href="<%=request.getContextPath() %>/orders.do?m=list" class="ma">我的客房订单</a></li>											
											<li><a href="<%=request.getContextPath() %>/comments.do?m=list" class="ma"">在线留言</a></li>												
										</ul>
									</li>
									
									<li class="nav__dropdown">
										<a href="#">参观服务</a>
										<ul class="nav__dropdown-menu">	  
										    
																						    									
											<li><a href="canguanzhinan.html">参观指南</a></li>
											<li><a href="contact us.html">申办展览</a></li>
											<li><a href="contact us.html">联系我们</a></li>
											<li><a href="about_us.html">问题咨询</a></li>
											<li><a href="travel_around.html">周边旅游</a></li>
											
																						
										</ul>
									</li>
									
									
									
									<li class="nav__dropdown">
										<a href="#a">新闻资讯</a>
										<ul class="nav__dropdown-menu">
										<li><a href="about4.html">通知公告</a></li>
                                        <li><a href="huodongzongye.html">活动信息</a></li>
                                               <li class="nav__dropdown">
                                        <a href="huodongzongye.html">在建项目</a>
                                               <ul class="nav__dropdown-menu">
													<li><a href="404.html">边界文化课题研究</a></li>
													<li><a href="404.html">读书分享</a></li>
													<li><a href="404.html">公共艺术教育</a></li>
													<li><a href="404.html">沙龙研讨</a></li>
													<li><a href="404.html">艺术衍生品</a></li>								
											   </ul>                                       
										</ul>
									</li>
									
									<li class="nav__dropdown">
										<a href="#">支持我们</a>
										<ul class="nav__dropdown-menu">
											<li><a href="about1.html">成为会员</a></li>
											<li><a href="joinus.html">加入我们</a></li>
											<li><a href="contact us.html">活动赞助</a></li>
											<li><a href="contact us.html">作品捐赠</a></li>
												<li><a href="about2.html">捐赠艺术家名录</a></li>																																																																												
										</ul>
									</li>
									<li class="nav__dropdown">
										<a href="#">用户登录信息</a>
										<ul class="nav__dropdown-menu">
										<li><a href="users_login.jsp">用户登录注册</a></li>	
											<li class="nav__dropdown">
											<a href="facelogin.jsp">人脸识别登录后台</a>
												<ul class="nav__dropdown-menu">
													<li><a href="users_login.jsp">普通用户登录</a></li>
													<li><a href="face_reg.jsp">管理员人脸注册</a></li>
													<li><a href="facelogin.jsp">管理员人脸登录</a></li>
													<li><a href="admin/users_login.jsp" class="ma">管理员密码登录</a></li>
														</li>											
												</ul>
											<li><a href="admin/users_login.jsp">后台管理</a></li>
											 <li><a href="<%=request.getContextPath() %>/comments.do?m=list" class="ma"">在线留言</a></li>																					
										</li>
									
									
                                  

								</ul>
								<!-- end menu -->
							</nav>
							<!-- end nav-wrap -->

							<!-- Nav Right -->
							<div class="nav__right">

								<!-- Search -->
								

							</div>
							<!-- end nav right -->

						</div>
						<!-- end flex-parent -->
					</div>
					<!-- end container -->

				</div>
			</header>
			<!-- end navigation -->

			<!-- Trending Now -->
			<div class="container">
				<div class="trending-now">
					<span class="trending-now__label">
          <i class="ui-flash"></i>
        公告信息</span>
					<div class="newsticker">
						<ul class="newsticker__list">
							<li class="newsticker__item"><a href="#" class="newsticker__item-url">边界艺术馆盛大开业！！！！ </a></li>
							<li class="newsticker__item"><a href="#" class="newsticker__item-url">一家集艺术与酒店于一身的艺术馆</a></li>
							<li class="newsticker__item"><a href="#" class="newsticker__item-url">让您体验到住在美术馆里的美好感觉</a></li>
						</ul>
					</div>
					<div class="newsticker-buttons">
						<button class="newsticker-button newsticker-button--prev" id="newsticker-button--prev" aria-label="next article"><i class="ui-arrow-left"></i></button>
						<button class="newsticker-button newsticker-button--next" id="newsticker-button--next" aria-label="previous article"><i class="ui-arrow-right"></i></button>
					</div>
				</div>
			</div>

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
                    <a href="huodong_lcdxmsxykt.html"><font size=5>聊城大学美术学院研究生课外课堂</font></a>
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
                    <a href="huodong_yypjh.html"><font size=5>音乐品鉴会</font></a>
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
                    <a href="huodong_zxmsjykt.html"><font size=5>中学美术教育课堂</font></a>
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
										                   <!--
                                        	作者：offline
                                        	时间：2018-07-24
                                        	描述：轮播图
                                        -->			
			     <div class="htmleaf-container">
		
		<div class="container">
		<div class="trent-slider">
			<div class="t-slide current-t-slide">
				<a href="#"><img src="lunbotu/img/9.jpg" alt="" /></a>
			</div>
			<div class="t-slide">
				<img src="lunbotu/img/10.jpg" alt="" />
			</div>
			<div class="t-slide">
				<img src="lunbotu/img/11.jpg" alt="" />
			</div>
			<div class="t-slide">
				<img src="lunbotu/img/12.jpg" alt="" />
			</div>
			<div class="t-slider-controls">
				<div class="arrow right-arrow">
					<div class="arrow-container">
						<div class="arrow-icon"><i class="fa fa-chevron-right" ></i></div>
					</div>
				</div>
				<div class="arrow left-arrow">
					<div class="arrow-container">
						<div class="arrow-icon"><i class="fa fa-chevron-left" ></i></div>
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
</div>


<!-- end lunbo -->
									<div class="entry__body card__body">
										<h2 class="entry__title">
                    <a href="huodong_lydfznsdb(lcz).html">边界艺宿—住在美术馆里</a>
                  </h2>
										<ul class="entry__meta">
											<li class="entry__meta-author">
												<span>边界艺术馆</span>												
											</li>
											<li class="entry__meta">
												边界艺宿
											</li>
										</ul>
									</div>
								</article>
							</div>
							<!-- end large post -->
						</div>

					</div>
				</div>
			</section>
			<!-- end featured posts grid -->

			<div class="main-container container pt-24" id="main-container">

				<!-- Content -->
				<div class="row">

					<!-- Posts -->
			<div class="col-lg-8 blog__content">

						<!-- Latest News -->
						<section class="section tab-post mb-16">
							<div class="title-wrap title-wrap--line">
								<h3 class="section-title">艺术家作品</h3>

								<div class="tabs tab-post__tabs">
									<ul class="tabs__list">
										<li class="tabs__item tabs__item--active">
											<a href="#tab-all" class="tabs__trigger">First</a>
										</li>
										<li class="tabs__item">
											<a href="#tab-world" class="tabs__trigger">Second</a>
										</li>
										
									</ul>
									<!-- end tabs -->
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

							</div>
							<!-- end tab content -->
						</section>
						<!-- end latest news -->

					</div>
					<!-- end posts -->

					<!--用户信息与资料 -->
					<aside class="col-lg-4 sidebar sidebar--right">


						<!-- Widget Newsletter -->
						<section class="service" id="service">
						<aside class="widget widget_mc4wp_form_widget">
							<h4 class="widget-title">用户信息与资料</h4>
							<!-- end widget newsletter -->
						

	 
	  <c:choose>
	  <c:when test="${USERS == null}">	  
	  默认用户名：123&nbsp;&nbsp;&nbsp;<a href="face_reg.jsp">人脸识别登录后台</a><br />
	  默认密码：123
			
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
            <input type="submit" name="Submit2" value="登陆" />&nbsp;&nbsp;<a href="<%=request.getContextPath() %>/users.do?m=toreg">注册</a>
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
						</section>
						<!-- end widget newsletter -->

						
						<!-- 艺术家简介 -->
						<aside class="widget widget-popular-posts">
							<a href="yishujia.html"><h4 class="widget-title">艺术家简介</h4></a>
							<ul class="post-list-small">
								<li class="post-list-small__item">
									<article class="post-list-small__entry clearfix">
										<div class="post-list-small__img-holder">
											<div class="thumb-container thumb-100">
												<a href="artist_detail.html">
													<img  src="./statics/images/huanghaiyan2.jpg" alt="" class="post-list-small__img--rounded lazyload">
												</a>
											</div>
										</div>
										<div class="post-list-small__body">
											<h3 class="post-list-small__entry-title">
                      <a href="artist_detail.html">黄海燕，聊城大学书画艺术研究院副院长、美术学院副教授，美术学（西方绘画研究）...</a>
                    </h3>
											<ul class="entry__meta">
												<li class="entry__meta-author">
													<span>来自</span>
													<a href="artist_detail.html">黄海燕</a>
												</li>
												<li class="entry__meta-date">
													1972~
												</li>
											</ul>
										</div>
									</article>
								</li>
								<li class="post-list-small__item">
									<article class="post-list-small__entry clearfix">
										<div class="post-list-small__img-holder">
											<div class="thumb-container thumb-100">
												<a href="artist_detail3.html">
													<img  src="./statics/images/qiubaogui2.jpg" alt="" class="post-list-small__img--rounded lazyload">
												</a>
											</div>
										</div>
										<div class="post-list-small__body">
											<h3 class="post-list-small__entry-title">
                      <a href="artist_detail3.html">邱保贵,  
广州美术学院油画系学术型硕士，中国美术家协会会员，山东省美术家协会会员...</a>
                    </h3>
											<ul class="entry__meta">
												<li class="entry__meta-author">
													<span>来自</span>
													<a href="artist_detail3.html">邱保贵</a>
												</li>
												<li class="entry__meta-date">
													
												</li>
											</ul>
										</div>
									</article>
								</li>
								<li class="post-list-small__item">
									<article class="post-list-small__entry clearfix">
										<div class="post-list-small__img-holder">
											<div class="thumb-container thumb-100">
												<a href="artist_detail4.html">
													<img src="./statics/images/sunyinchang2.jpg" alt="" class="post-list-small__img--rounded lazyload">
												</a>
											</div>
										</div>
										<div class="post-list-small__body">
											<h3 class="post-list-small__entry-title">
                      <a href="artist_detail4.html">孙印昌，男，现为中国美术家协会会员，聊城市油画学会副主席，2013年获山东省...</a>
                    </h3>
											<ul class="entry__meta">
												<li class="entry__meta-author">
													<span>来自</span>
													<a href="artist_detail4.html">孙印昌</a>
												</li>
												<li class="entry__meta-date">
													1970~
												</li>
											</ul>
										</div>
									</article>
								</li>
								<li class="post-list-small__item">
									<article class="post-list-small__entry clearfix">
										<div class="post-list-small__img-holder">
											<div class="thumb-container thumb-100">
												<a href="artist_detail7.html">
													<img  src="./statics/images/zhangqi2.jpg" alt="" class="post-list-small__img--rounded lazyload">
												</a>
											</div>
										</div>
										<div class="post-list-small__body">
											<h3 class="post-list-small__entry-title">
                      <a href="artist_detail7.html">张启，1986年毕业于山东艺术学院，1992年进修于中央美术学院，2003年结业于...</a>
                    </h3>
											<ul class="entry__meta">
												<li class="entry__meta-author">
													<span>来自</span>
													<a href="artist_detail7.html">张启</a>
												</li>
												<li class="entry__meta-date">
													1963~
												</li>
											</ul>
										</div>
									</article>
								</li>
							</ul>
						</aside>
					<!-- end sidebar -->
				</div>
				<!-- end content -->
				
				
        <!-- Video posts -->
				<section class="section mb-24">
					<div class="title-wrap title-wrap--line">
					</div>
					<div class="row card-row">
				
						<div class="col-md-6">
							<article class="entry card">
								<div class="entry__img-holder card__img-holder">
									<div class="htmleaf-container">

										<div class="wrapper">
											<div class="js-video">
												<video width="320" height="240" controls poster="videos/vedio/a.jpg">  <source src="videos/vedio/a.mp4" type="video/mp4"> 
					<p>您的浏览器不支持html5视频播放</p>
					</video>

												<!-- ui -->

											</div>
											<!-- js-video -->
										</div>
										<!-- wrapper -->
									</div>
									<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
									<script>
										window.jQuery || document.write('<script src="videos/js/jquery-1.11.0.min.js"><\/script>')
									</script>
									<script src="http://cdn.bootcss.com/jqueryui/1.11.0/jquery-ui.min.js"></script>
									<script src="videos/js/vedio.js"></script>
								</div>
								<!--
        	作者：offline
        	时间：2018-07-24
        	描述：播放结束
           -->
								<div class="entry__body card__body">
									<div class="entry__header">
										<h2 class="entry__title">
                    <a href="#">视频：艺术的独特力量--大师梵高</a>
                  </h2>
										<ul class="entry__meta">
											<li class="entry__meta-author">
												<span>来自</span>
												<a href="#">艺术中国</a>
											</li>
											<li class="entry__meta-date">
												8 21, 2018
											</li>
										</ul>
									</div>
									<div class="entry__excerpt">
										<p>艺术在我们生活中无处不在，在于人们善于发现艺术的价值 ...</p>
									</div>
								</div>
							</article>
						</div>
							<div class="col-md-6">
							
							<div class="row">
								<div class="col-lg-6">
									<article class="entry thumb thumb--size-2">
										<div class="entry__img-holder thumb__img-holder" style="background-image: url('img/content/yishujia/金善贤.jpg');">
											<div class="bottom-gradient"></div>
											<div class="thumb-text-holder thumb-text-holder--1">
												<h2 class="thumb-entry-title">
                        <a href="huodong6.html">边界艺术馆艺术讲堂：画的力量——美术心理与美术疗愈解析</a>
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
											<a href="" class="thumb-url"></a>
										</div>
									</article>
								</div>
								<div class="col-lg-6">
									<ul class="post-list-small post-list-small--dividers post-list-small--arrows mb-24">
										<li class="post-list-small__item">
											<article class="post-list-small__entry">
												<div class="post-list-small__body">
													<h3 class="post-list-small__entry-title">
                          <a href="huodong2.html">边界艺术馆艺术讲堂 非物质文化遗产保护的中国实践</a>
                        </h3>
												</div>
											</article>
										</li>
										<li class="post-list-small__item">
											<article class="post-list-small__entry">
												<div class="post-list-small__body">
													<h3 class="post-list-small__entry-title">
                          <a href="huodong3.html">边界艺术馆艺术讲堂之“解读艺术大展”</a>
                        </h3>
												</div>
											</article>
										</li>
										<li class="post-list-small__item">
											<article class="post-list-small__entry">
												<div class="post-list-small__body">
													<h3 class="post-list-small__entry-title">
                          <a href="huodong4.html">边界艺术馆艺术讲堂——之“少儿美育”系列</a>
                        </h3>
												</div>
											</article>
										</li>
										<li class="post-list-small__item">
											<article class="post-list-small__entry">
												<div class="post-list-small__body">
													<h3 class="post-list-small__entry-title">
                          <a href="huodong5.html">边界艺术馆展厅艺术沙龙：吕寿琨与香港新水墨实验</a>
                        </h3>
												</div>
											</article>
										</li>
									</ul>
								</div>
								<div class="entry__body card__body">
									<div class="entry__header">
										<h2 class="entry__title">
                    <a href="huodongzongye.html">艺术馆活动信息概述</a>
                  </h2>
										<ul class="entry__meta">
											<li class="entry__meta-author">
												<span>来源</span>
												<a href="#">边界艺术馆</a>
											</li>
											<li class="entry__meta-date">
												8 21, 2018
											</li>
										</ul>
									</div>
									<div class="entry__excerpt">
										<p>艺术馆活动信息的体现 ...</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					
				</section>
				<!-- end video posts -->
				<!-- Posts from categories -->
				<!-- Carousel posts -->
				<section class="section mb-0">
					<div class="title-wrap title-wrap--line title-wrap--pr">
						<h3 class="section-title">特色专区</h3>
					</div>

					<!-- Slider -->
					<div id="owl-posts" class="owl-carousel owl-theme owl-carousel--arrows-outside">
						<article class="entry thumb thumb--size-1">
							<div class="entry__img-holder thumb__img-holder" style="background-image: url('img/content/carousel/bar.jpg');">
								<div class="bottom-gradient"></div>
								<div class="thumb-text-holder">
									<h2 class="thumb-entry-title">
                  <a href="specialpart.html">自助酒吧</a>
                </h2>
								</div>
								<a href="specialpart.html" class="thumb-url"></a>
							</div>
						</article>
						<article class="entry thumb thumb--size-1">
							<div class="entry__img-holder thumb__img-holder" style="background-image: url('img/content/carousel/library.jpg');">
								<div class="bottom-gradient"></div>
								<div class="thumb-text-holder">
									<h2 class="thumb-entry-title">
                  <a href="specialpart1.html">唯美书房</a>
                </h2>
								</div>
								<a href="specialpart1.html" class="thumb-url"></a>
							</div>
						</article>
						<article class="entry thumb thumb--size-1">
							<div class="entry__img-holder thumb__img-holder" style="background-image: url('img/content/carousel/court.jpg');">
								<div class="bottom-gradient"></div>
								<div class="thumb-text-holder">
									<h2 class="thumb-entry-title">
                  <a href="specialpart2.html">庭院一角</a>
                </h2>
								</div>
								<a href="specialpart2.html" class="thumb-url"></a>
							</div>
						</article>
						<article class="entry thumb thumb--size-1">
							<div class="entry__img-holder thumb__img-holder" style="background-image: url('img/content/carousel/passageway.jpg');">
								<div class="bottom-gradient"></div>
								<div class="thumb-text-holder">
									<h2 class="thumb-entry-title">
                  <a href="specialpart3.html">走廊</a>
                </h2>
								</div>
								<a href="specialpart3.html" class="thumb-url"></a>
							</div>
						</article>
						<article class="entry thumb thumb--size-1">
							<div class="entry__img-holder thumb__img-holder" style="background-image: url('img/content/carousel/lobby.jpg');">
								<div class="bottom-gradient"></div>
								<div class="thumb-text-holder">
									<h2 class="thumb-entry-title">
                  <a href="specialpart4.html">茶室</a>
                </h2>
								</div>
								<a href="specialpart4.html" class="thumb-url"></a>
							</div>
						</article>
					</div>
					<!-- end slider -->

				</section>
				<!-- end carousel posts -->
				
				
				
				
  <!--footer  -->
 <hr>	
			<div class="row">
			<footer style="padding-bottom:20px;  padding-left:50px">			
			    <div style="width:1248px">
			    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size=2>地址：聊城市东昌府南大街&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话：0635——8418899&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮箱：1093595726@qq.com</font>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="contact us.html"><font size=2 color="black">申办展览</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="about_us.html"><font size=2 color="black">问题咨询</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								 <a href="contact us.html"><font size=2 color="black">联系我们</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								 <a href="joinus.html"><font size=2 color="black">加入我们</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								 <font size=2>开放时间：8:00-17:00&nbsp;&nbsp;周一闭馆（法定节假日除外）</font>													
						</div>

</footer>
<div id="back-to-top">
      <a href="#top" aria-label="Go to top"><i class="ui-arrow-up"></i></a>
    </div>
			<!-- end footer -->
		</main>
		<!-- end main-wrapper -->

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