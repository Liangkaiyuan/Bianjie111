<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
  <title>边界艺宿</title>

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

</head>

<body class="style-default style-rounded">
   <jsp:include page="head.jsp"></jsp:include>

    <!-- Breadcrumbs -->
    <div class="container">
      <ul class="breadcrumbs">
        <li class="breadcrumbs__item">
          <a href="index.jsp" class="breadcrumbs__url">首页</a>
        </li>
        
        <li class="breadcrumbs__item breadcrumbs__item--current">
         边界艺宿
        </li>
      </ul>
    </div>

    <div class="main-container container" id="main-container">            
      <!-- post content -->
      
      <div class="blog__content mb-72" style="text-align: center;">
        <h1 >边界艺宿<br />&nbsp;&nbsp;&nbsp;&nbsp;</h1>
        
      </div> 
      
      
      	<div>
      		<img src="" style="float: left;">
        </div>      
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
      <!-- end post content -->
    </div> <!-- end main container -->

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