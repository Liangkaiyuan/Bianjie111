<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="gbk"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>边界艺宿客房</title>

<link href="yishuzhuye/css/revolution-slider.css" rel="stylesheet"
	type="text/css">
<link href="yishuzhuye/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<link href="yishuzhuye/css/font-awesome.css" rel="stylesheet"
	type="text/css">
<link href="yishuzhuye/css/style.css" rel="stylesheet" type="text/css">





<link
	href='https://fonts.googleapis.com/css?family=Montserrat:400,600,700%7CSource+Sans+Pro:400,600,700'
	rel='stylesheet'>

<!-- Css -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-icons.css" />
<link rel="stylesheet" href="css/style.css" />
<script src="js/lazysizes.min.js"></script>

<link rel="shortcut icon" href="img/favicon.ico">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">





</head>

<body>
	
   <jsp:include page="head.jsp"></jsp:include>

	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<section>
	<div id="mainslider2">
		<div class="slider-2">
			<div class="fullscreen-container-2">
				<div class="fullscreenbanner-banner-2">
					<ul>
						<li data-transition="slide" data-slotamount="10"><img
							class="img-responsive" alt=""
							src="yishuzhuye/images/home2-slider2-img.png" />
							<div class="caption lfl" data-x="center" data-y="center"
								data-speed="1000" data-start="1000" data-easing="easeOutExpo">
								<div class="slider-text clearfix">
									<div class="text-box">
										<h2>艺术展厅</h2>
										<p>艺术和酒店的完美结合</p>
									</div>
									<div class="slider2-button">
										<div class="signup-btn">
											
										</div>
									</div>
								</div>
							</div></li>
						<li data-transition="slide" data-slotamount="10"><img
							class="img-responsive" alt=""
							src="yishuzhuye/images/home2-sliger2-img2.png" />
							<div class="caption sfb" data-x="center" data-y="center"
								data-speed="1000" data-start="1000" data-easing="easeOutExpo">
								<div class="slider-text clearfix">
									<div class="text-box">
										<h2>客房标配</h2>
										<p>艺术客房与现代都市相结合</p>
									</div>
									<div class="slider2-button">
										<div class="signup-btn">
											
										</div>
									</div>
								</div>
							</div></li>
						<li data-transition="slide" data-slotamount="10"><img
							class="img-responsive" alt=""
							src="yishuzhuye/images/home2-slider2-img3.png" />
							<div class="caption lfr" data-x="center" data-y="center"
								data-speed="1000" data-start="1000" data-easing="easeOutExpo">
								<div class="slider-text clearfix">
									<div class="text-box">
										<h2>宽敞明亮环境</h2>
										<p>房间舒适，设备齐全</p>
									</div>
									<div class="slider2-button">
										<div class="signup-btn">
											
										</div>
									</div>
								</div>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</section>
	<div>&nbsp;</div>
	<section>
	<div class="container">
		<div class="featured-properties mrgb6x clearfix animated out"
			data-delay="0" data-animation="fadeInUp">
			<div class="section-heading mrgt7x mrgb7x">
				<h3>
					<span>艺宿客房</span>
				</h3>
			</div>



			<c:forEach items="${pageinfo.list}" var="obj" varStatus="con">



				<div class="section-detail">
					<div class="col-md-4 col-sm-6">
						<div class="home2 property-box border-hover animated out"
							data-delay="0" data-animation="fadeInUp">
							<div class="appartment-img">
								<a
									href="<%=request.getContextPath() %>/rooms.do?m=info&amp;r_id=${obj.r_id }"><img
									src="<%=request.getContextPath() %>/${obj.r_img}"
									alt="${obj.r_name }" class="img-responsive" alt="#" /></a>
								<div class="room-price">
									<span>${obj.r_price }<sup>/晚</sup></span>
								</div>
							</div>
							<div class="property-text">
								<div class="resort-name">
									<h4>
										<strong>名称：</strong><a
											href="<%=request.getContextPath() %>/rooms.do?m=info&r_id=${obj.r_id }">${obj.r_name }</a>
									</h4>
									<div class="rating">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<p>${obj.r_info }</p>
								</div>
								<div class="detail-btn mrgt4x mrgb3x">
									<a
										href="<%=request.getContextPath() %>/orders.do?m=toadd&r_id=${obj.r_id }"
										class="more-detail"><i class="fa fa-angle-right"></i>点击预定</a>
								</div>
							</div>
							<ul class="home2 appartment-detail">
								<li>床型：${obj.r_bed }</li>
								<li>2 Beds</li>
								<li>宽带：${obj.r_web}</li>
								<li></li>
							</ul>
						</div>

					</div>
				</div>
		</div>

		</c:forEach>
		<div>&nbsp;</div>
		<div style="text-align: center;">
			<jsp:include page="/pageinfo.jsp">
				<jsp:param value="rooms.do?m=list" name="path" />
			</jsp:include>
		</div>
	</div>


	</section>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>
	<div>&nbsp;</div>


	<section class="bg-dark parallex mrgb4x">
	<div class="container">
		<div class="inner-text">
			<h2>边界艺术客房</h2>
			<span> </span>
			<p>带领您的家人和朋友一起感受艺术的同时，可以住在艺术馆里。</p>
			<p>尽情感受艺术和现代都市带给你的美好.</p>
		</div>
	</div>
	</section>

	<script src="yishuzhuye/js/jquery.js" type="text/javascript"></script>
	<script src="yishuzhuye/js/jquery-ui.js" type="text/javascript"></script>
	<script src="yishuzhuye/js/bootstrap.js" type="text/javascript"></script>
	<script type="text/javascript" src="yishuzhuye/js/jquery.appear.js"></script>
	<script type="text/javascript"
		src="yishuzhuye/js/jquery.mixitup.min.js"></script>
	<script type="text/javascript" src="yishuzhuye/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="yishuzhuye/js/jquery.photobox.js"></script>
	<script src="yishuzhuye/js/jquery.themepunch.revolution.js"
		type="text/javascript"></script>
	<script src="yishuzhuye/js/jquery.themepunch.tools.min.js"
		type="text/javascript"></script>
	<script type="text/javascript" src="yishuzhuye/js/scripts.js"></script>



<div id="back-to-top">
      <a href="#top" aria-label="Go to top"><i class="ui-arrow-up"></i></a>
    </div>



	<script src="js/owl-carousel.min.js"></script>
	<script src="js/flickity.pkgd.min.js"></script>
	<script src="js/modernizr.min.js"></script>
	<script src="js/scripts.js"></script>


</body>
</html>