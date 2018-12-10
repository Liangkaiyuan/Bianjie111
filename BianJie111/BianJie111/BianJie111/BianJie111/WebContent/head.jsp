<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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

</head>
<body>
<!-- Bg Overlay -->
  <div class="content-overlay"></div>

  <!-- Sidenav -->    
  <header class="sidenav" id="sidenav">

    <!-- close -->
    <div class="sidenav__close">
      <button class="sidenav__close-button" id="sidenav__close-button" aria-label="close sidenav">
        <i class="ui-close sidenav__close-icon"></i>
      </button>
    </div>
    
    <!-- Nav -->
    <nav class="sidenav__menu-container">
      <ul class="sidenav__menu" role="menubar">
        <li>
          <a href="a.jsp" class="sidenav__menu-url">首页</a>    
        </li>
  
             
              		<li><a href="users_login.jsp" class="sidenav__menu-url">用户登录注册</a></li>
              		<li><a href="users_login.jsp" class="sidenav__menu-url">普通用户登录</a></li>
									<li><a href="face_reg.jsp" class="sidenav__menu-url">管理员人脸注册</a></li>
									<li><a href="facelogin.jsp" class="sidenav__menu-url">管理员人脸登录</a></li>
									<li><a href="admin/users_login.jsp" class="sidenav__menu-url">管理员密码登录</a></li>
        <!-- Categories -->
        <li><a href="<%=request.getContextPath() %>/rooms.do?m=list" class="sidenav__menu-url">客房预定</a></li>
											<li><a href="<%=request.getContextPath() %>/orders.do?m=list" class="sidenav__menu-url">我的客房订单</a></li>											
											<li><a href="<%=request.getContextPath() %>/comments.do?m=list" class="sidenav__menu-url">在线留言</a></li>		
      
      </ul>
    </nav>

    <div class="socials sidenav__socials"> 
      
    </div>
  </header> <!-- end sidenav -->

  <main class="main oh" id="main">

    <!-- Top Bar -->
    <div class="top-bar d-none d-lg-block">
      <div class="container">
        <div class="row">

          <!-- Top menu -->
          <div class="col-lg-6">
            <ul class="top-menu">
            <li><a>联系与预定电话：0635——8418899，13562050460</a></li>
             
                          
            </ul>
          </div>
          
          <!-- Socials -->
          <div class="col-lg-6">
            <div class="socials nav__socials socials--nobase socials--white justify-content-end"> 
             
            </div>
          </div>

        </div>
      </div>
    </div> <!-- end top bar -->        

    <!-- Navigation -->
    <header class="nav">

      <div class="nav__holder nav--sticky">
        <div class="container relative">
          <div class="flex-parent">

            <!-- Side Menu Button -->
            <button class="nav-icon-toggle" id="nav-icon-toggle" aria-label="Open side menu">
              <span class="nav-icon-toggle__box">
                <span class="nav-icon-toggle__inner"></span>
              </span>
            </button> 

            <!-- Logo -->
            <a href="a.jsp" class="logo">
              <img class="logo__img" src="img/logo_default.png" srcset="img/logo_default.png 1x, img/logo_default@2x.png 2x" alt="logo">
            </a>

            <nav class="flex-child nav__wrap d-none d-lg-block">
								<ul class="nav__menu">

									<li>
										<a href="a.jsp">首页</a>
									</li>
									<li class="nav__dropdown">
										<a href="huodongzongye.html">艺术馆展览</a>
										
									</li>

              <li class="nav__dropdown">
										<a href="#">边界艺宿</a>
										<ul class="nav__dropdown-menu">	  
										    
																						    									
								
											<li><a href="<%=request.getContextPath() %>/rooms.do?m=list" class="ma">客房预定</a></li>
											<li><a href="<%=request.getContextPath() %>/orders.do?m=list" class="ma">我的客房订单</a></li>											
											<li><a href="<%=request.getContextPath() %>/comments.do?m=list" class="ma"">在线留言</a></li>												
										</ul>
									</li>
									
									<li class="nav__dropdown">
										<a href="canguanzhinan.html">参观服务</a>
										<ul class="nav__dropdown-menu">	  						
											<li><a href="travel_around.html">周边旅游</a></li>															
										</ul>
									</li>
									
									
									
									<li class="nav__dropdown">
										<a href="#a">新闻资讯</a>
										<ul class="nav__dropdown-menu">
										<li><a href="about4.html">通知公告</a></li>
                                        <li><a href="huodongzongye.html">活动信息</a></li>                                                                           
										</ul>
									</li>
									
									<li class="nav__dropdown">
										<a href="#">支持我们</a>
										<ul class="nav__dropdown-menu">
											<li><a href="about1.html">成为会员</a></li>
											<li><a href="joinus.html">加入我们</a></li>
												<li><a href="about2.html">捐赠艺术家名录</a></li>																																																																												
										</ul>
									</li>
									<li class="nav__dropdown">
										<a href="#">用户登录信息</a>
										<ul class="nav__dropdown-menu">
										<li><a href="users_login.jsp">用户登录注册</a>
										<a href="users_login.jsp">普通用户登录</a>	</li>
											<li class="nav__dropdown">
				<a href="#">人脸项目</a>
												<ul class="nav__dropdown-menu">
													<li>
													<a href="facelogin_users.jsp">用户人脸登录</a>	<br />
						<a href="facelogin_admin.jsp">管理员人脸登录</a>	<br />
						<a href="admin_face_reg.jsp">管理员人脸注册</a><br />
                         <a href="admin/users_login.jsp">密码登录管理员后台</a><br />
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
              <div class="nav__right-item nav__search">
                <a href="#" class="nav__search-trigger" id="nav__search-trigger">
                  <i class="ui-search nav__search-trigger-icon"></i>
                </a>
                <div class="nav__search-box" id="nav__search-box">
                  <form class="nav__search-form">
                    <input type="text" placeholder="点击查询" class="nav__search-input">
                    <button type="submit" class="search-button btn btn-lg btn-color btn-button">
                      <i class="ui-search nav__search-icon"></i>
                    </button>
                  </form>
                </div>                
              </div>             

            </div> <!-- end nav right -->            
        
          </div> <!-- end flex-parent -->
        </div> <!-- end container -->

      </div>
    </header> <!-- end navigation -->
</body>
</html>